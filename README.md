# Pascal-Test-Forms
Тестирование различных сочетаний свойств главной и дочерней формы. Исходный код для Delphi и Lazarus, кроссплатформенная компиляция

## [[SOLVED] FormStyle=fsStayOnTop makes form unresponsive](https://forum.lazarus.freepascal.org/index.php?topic=42560.0)

For others running into issues like this (for this example anyway);

```pascal
_Form1_   (in the example project file I called it MainForm)
  formStyle = fsNormal
```

Call `Form2` with `Form2.**Show**; // do not use ShowModal`.

```pascal
_Form2_
  formStyle = fsNormal
  **popupParent** = **Form1** (which automatically sets **popupMode** to **pmExplicit**)
```

Call `Form3` with `Form3.**Show**`.

```pascal
_Form3_
  **formStyle** = **fsStayOnTop**
  **popupMode** = **pmAuto**
```

Now it works the way I was hoping for.

Thanks guys for helping out!
