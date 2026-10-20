program mobile_character_layout;
{$mode objfpc}
uses Math, GI_LayoutMetrics;
var M: TMobileCharacterMetrics;
procedure Check(W, H: Integer; Density: Single);
begin
  M := MeasureMobileCharacter(W, H, Density);
  if (M.Width * M.Scale > W - 15) or (M.Height * M.Scale > H - 15) then Halt(1);
  if (M.Width < 720) or (M.Height < 356) then Halt(2);
  { Five 44-unit choices, labels and gaps must fit between navigation rows. }
  if M.Height - 104 < 24 + 5 * 44 + 4 * 2 then Halt(3);
  { The actual phone must retain finger-sized targets, not shrink to desktop UI. }
  if (W = 2400) and (44 * M.Scale < 120) then Halt(4);
end;
begin
  Check(2400, 1080, 3);
  Check(1280, 576, 1.6);
  Check(1920, 1080, 2.5);
  Check(1280, 720, 2);
  Check(1024, 600, 2);
  WriteLn('Mobile character layout fits all tested landscape viewports.');
end.
