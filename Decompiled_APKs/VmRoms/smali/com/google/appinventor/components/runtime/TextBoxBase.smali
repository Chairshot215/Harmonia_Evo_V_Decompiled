.class public abstract Lcom/google/appinventor/components/runtime/TextBoxBase;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private backgroundColor:I

.field private bold:Z

.field private defaultTextBoxDrawable:Landroid/graphics/drawable/Drawable;

.field private fontTypeface:I

.field private hint:Ljava/lang/String;

.field private italic:Z

.field private textAlignment:I

.field private textColor:I

.field protected final view:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/widget/EditText;)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->defaultTextBoxDrawable:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    const/16 v0, 0xa0

    invoke-interface {p1, p0, v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/TextBoxBase;->TextAlignment(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/TextBoxBase;->Enabled(Z)V

    iput v1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->fontTypeface:I

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    iget v1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->bold:Z

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->italic:Z

    invoke-static {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    const/high16 v0, 0x4160

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/TextBoxBase;->FontSize(F)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/TextBoxBase;->Hint(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/TextBoxBase;->Text(Ljava/lang/String;)V

    const/high16 v0, -0x100

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/TextBoxBase;->TextColor(I)V

    return-void
.end method


# virtual methods
.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The background color of the input box.  You can choose a color by name in the Designer or in the Blocks Editor.  The default background color is \'default\' (shaded 3-D look)."
    .end annotation

    iget v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->backgroundColor:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    iput p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->backgroundColor:I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setBackgroundColor(Landroid/widget/TextView;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->defaultTextBoxDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public Enabled(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setEnabled(Landroid/widget/TextView;Z)V

    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the user can enter text into this input box.  By default, this is true."
    .end annotation

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->isEnabled(Landroid/widget/TextView;)Z

    move-result v0

    return v0
.end method

.method public FontBold(Z)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->bold:Z

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    iget v1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->italic:Z

    invoke-static {v0, v1, p1, v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    return-void
.end method

.method public FontBold()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the font for the text should be bold.  By default, it is not."
        userVisible = false
    .end annotation

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->bold:Z

    return v0
.end method

.method public FontItalic(Z)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->italic:Z

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    iget v1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->bold:Z

    invoke-static {v0, v1, v2, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    return-void
.end method

.method public FontItalic()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the text should appear in italics.  By default, it does not."
        userVisible = false
    .end annotation

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->italic:Z

    return v0
.end method

.method public FontSize()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The font size for the text.  By default, it is 14.0 points."
        userVisible = false
    .end annotation

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getFontSize(Landroid/widget/TextView;)F

    move-result v0

    return v0
.end method

.method public FontSize(F)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "14.0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    return-void
.end method

.method public FontTypeface()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The font for the text.  The value can be changed in the Designer."
        userVisible = false
    .end annotation

    iget v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->fontTypeface:I

    return v0
.end method

.method public FontTypeface(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    iput p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->fontTypeface:I

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    iget v1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->bold:Z

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->italic:Z

    invoke-static {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    return-void
.end method

.method public GotFocus()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const-string v0, "GotFocus"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Hint()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Text that should appear faintly in the input box to provide a hint as to what the user should enter.  This can only be seen if the <code>Text</code> property is empty."
    .end annotation

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->hint:Ljava/lang/String;

    return-object v0
.end method

.method public Hint(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->hint:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method public LostFocus()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const-string v0, "LostFocus"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Text()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getText(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Text(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The text in the input box, which can be set by the programmer in the Designer or Blocks Editor, or it can be entered by the user (unless the <code>Enabled</code> property is false)."
    .end annotation

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public TextAlignment()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the text should be left justified, centered, or right justified.  By default, text is left justified."
        userVisible = false
    .end annotation

    iget v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->textAlignment:I

    return v0
.end method

.method public TextAlignment(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "textalignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    iput p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->textAlignment:I

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setAlignment(Landroid/widget/TextView;IZ)V

    return-void
.end method

.method public TextColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The color for the text.  You can choose a color by name in the Designer or in the Blocks Editor.  The default text color is black."
    .end annotation

    iget v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->textColor:I

    return v0
.end method

.method public TextColor(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    iput p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->textColor:I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    const/high16 v1, -0x100

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    return-object v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/TextBoxBase;->GotFocus()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/TextBoxBase;->LostFocus()V

    goto :goto_0
.end method
