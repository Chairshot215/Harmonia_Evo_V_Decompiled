.class public final Lcom/google/appinventor/components/runtime/Label;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->BASIC:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A Label displays a piece of text, which is specified through the <code>Text</code> property.  Other properties, all of which can be set in the Designer or Blocks Editor, control the appearance and placement of the text."
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private backgroundColor:I

.field private bold:Z

.field private fontTypeface:I

.field private italic:Z

.field private textAlignment:I

.field private textColor:I

.field private final view:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Label;->TextAlignment(I)V

    const v0, 0xffffff

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Label;->BackgroundColor(I)V

    iput v2, p0, Lcom/google/appinventor/components/runtime/Label;->fontTypeface:I

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Label;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/Label;->bold:Z

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/Label;->italic:Z

    invoke-static {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    const/high16 v0, 0x4160

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Label;->FontSize(F)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Label;->Text(Ljava/lang/String;)V

    const/high16 v0, -0x100

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Label;->TextColor(I)V

    return-void
.end method


# virtual methods
.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    iget v0, p0, Lcom/google/appinventor/components/runtime/Label;->backgroundColor:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00FFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    iput p1, p0, Lcom/google/appinventor/components/runtime/Label;->backgroundColor:I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setBackgroundColor(Landroid/widget/TextView;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    const v1, 0xffffff

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setBackgroundColor(Landroid/widget/TextView;I)V

    goto :goto_0
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

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Label;->bold:Z

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Label;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/Label;->italic:Z

    invoke-static {v0, v1, p1, v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    return-void
.end method

.method public FontBold()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Label;->bold:Z

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

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Label;->italic:Z

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Label;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/Label;->bold:Z

    invoke-static {v0, v1, v2, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    return-void
.end method

.method public FontItalic()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Label;->italic:Z

    return v0
.end method

.method public FontSize()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

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

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    return-void
.end method

.method public FontTypeface()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    iget v0, p0, Lcom/google/appinventor/components/runtime/Label;->fontTypeface:I

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

    iput p1, p0, Lcom/google/appinventor/components/runtime/Label;->fontTypeface:I

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Label;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/Label;->bold:Z

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/Label;->italic:Z

    invoke-static {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    return-void
.end method

.method public Text()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

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
    .end annotation

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public TextAlignment()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    iget v0, p0, Lcom/google/appinventor/components/runtime/Label;->textAlignment:I

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

    iput p1, p0, Lcom/google/appinventor/components/runtime/Label;->textAlignment:I

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setAlignment(Landroid/widget/TextView;IZ)V

    return-void
.end method

.method public TextColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    iget v0, p0, Lcom/google/appinventor/components/runtime/Label;->textColor:I

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

    iput p1, p0, Lcom/google/appinventor/components/runtime/Label;->textColor:I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    const/high16 v1, -0x100

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    return-object v0
.end method
