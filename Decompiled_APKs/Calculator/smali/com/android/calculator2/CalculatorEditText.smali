.class public Lcom/android/calculator2/CalculatorEditText;
.super Landroid/widget/EditText;
.source "CalculatorEditText.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/calculator2/CalculatorEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, 0x1

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/calculator2/CalculatorEditText;->enableHtcTextSelection(ZI)V

    .line 19
    invoke-direct {p0, p1}, Lcom/android/calculator2/CalculatorEditText;->setFontTypeface(Landroid/content/Context;)V

    .line 20
    const v0, 0x80001

    invoke-virtual {p0, v0}, Lcom/android/calculator2/CalculatorEditText;->setInputType(I)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, Lcom/android/calculator2/CalculatorEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const/4 v0, 0x1

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/calculator2/CalculatorEditText;->enableHtcTextSelection(ZI)V

    .line 27
    invoke-direct {p0, p1}, Lcom/android/calculator2/CalculatorEditText;->setFontTypeface(Landroid/content/Context;)V

    .line 28
    const v0, 0x80001

    invoke-virtual {p0, v0}, Lcom/android/calculator2/CalculatorEditText;->setInputType(I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    const/4 v0, 0x1

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/calculator2/CalculatorEditText;->enableHtcTextSelection(ZI)V

    .line 35
    invoke-direct {p0, p1}, Lcom/android/calculator2/CalculatorEditText;->setFontTypeface(Landroid/content/Context;)V

    .line 36
    const v0, 0x80001

    invoke-virtual {p0, v0}, Lcom/android/calculator2/CalculatorEditText;->setInputType(I)V

    .line 37
    return-void
.end method

.method private setFontTypeface(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f04

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 52
    .local v1, helvetica:Z
    if-eqz v1, :cond_0

    .line 53
    new-instance v0, Ljava/io/File;

    const-string v2, "/system/fonts/HelveticaNeueOTS.ttf"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, fontFile:Ljava/io/File;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 55
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/calculator2/CalculatorEditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 60
    .end local v0           #fontFile:Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 57
    .restart local v0       #fontFile:Ljava/io/File;
    :cond_1
    const-string v2, "Calculator"

    const-string v3, "Font file not found."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 42
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/ContextMenu;->hasVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    const v1, 0x1020024

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 44
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 48
    .end local v0           #item:Landroid/view/MenuItem;
    :cond_0
    return-void
.end method
