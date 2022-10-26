# Pascal-Test-Forms
Тестирование различных сочетаний свойств главной и дочерней формы. Исходный код для Delphi и Lazarus, кроссплатформенная компиляция

## [[SOLVED] `FormStyle=fsStayOnTop` makes form unresponsive](https://forum.lazarus.freepascal.org/index.php?topic=42560.0)

For others running into issues like this (for this example anyway).

### `Form1`

In the example project file I called it `MainForm`

```pascal
FormStyle = fsNormal
```

Call `Form2` with `Form2.Show; // do not use ShowModal`.

### `Form2`

```pascal
FormStyle = fsNormal
PopupParent = Form1 
```

which automatically sets `PopupMode` to `pmExplicit`

Call `Form3` with `Form3.Show`.

### `Form3`

```pascal
  FormStyle = fsStayOnTop
  PopupMode = pmAuto
```

Now it works the way I was hoping for.

Thanks guys for helping out!
