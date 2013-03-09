.class public Lcom/google/android/finsky/layout/CustomRadioGroup;
.super Landroid/widget/RadioGroup;
.source "CustomRadioGroup.java"


# instance fields
.field private mStripTabUnderline:I

.field private mStripTabUnderlineSelected:I

.field private mTabUnderlinePaint:Landroid/graphics/Paint;

.field private mTabUnderlineSelectedPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/CustomRadioGroup;->setWillNotDraw(Z)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/CustomRadioGroup;->setWillNotDraw(Z)V

    .line 32
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/widget/RadioGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 58
    iget-object v0, p0, Lcom/google/android/finsky/layout/CustomRadioGroup;->mTabUnderlinePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/CustomRadioGroup;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/google/android/finsky/layout/CustomRadioGroup;->mStripTabUnderline:I

    div-int/lit8 v1, v1, 0x2

    sub-int v9, v0, v1

    .line 64
    .local v9, underlineY:I
    const/4 v1, 0x0

    int-to-float v2, v9

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/CustomRadioGroup;->getWidth()I

    move-result v0

    int-to-float v3, v0

    int-to-float v4, v9

    iget-object v5, p0, Lcom/google/android/finsky/layout/CustomRadioGroup;->mTabUnderlinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 66
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/CustomRadioGroup;->getChildCount()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 67
    invoke-virtual {p0, v7}, Lcom/google/android/finsky/layout/CustomRadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    .line 68
    .local v6, child:Landroid/widget/RadioButton;
    invoke-virtual {v6}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    .line 66
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 72
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/CustomRadioGroup;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/google/android/finsky/layout/CustomRadioGroup;->mStripTabUnderlineSelected:I

    div-int/lit8 v1, v1, 0x2

    sub-int v8, v0, v1

    .line 73
    .local v8, underlineSelectedY:I
    invoke-virtual {v6}, Landroid/widget/RadioButton;->getLeft()I

    move-result v0

    int-to-float v1, v0

    int-to-float v2, v8

    invoke-virtual {v6}, Landroid/widget/RadioButton;->getRight()I

    move-result v0

    int-to-float v3, v0

    int-to-float v4, v8

    iget-object v5, p0, Lcom/google/android/finsky/layout/CustomRadioGroup;->mTabUnderlineSelectedPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public setBackendId(I)V
    .locals 5
    .parameter "backendId"

    .prologue
    const/4 v4, 0x1

    .line 35
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/CustomRadioGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 37
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0035

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/finsky/layout/CustomRadioGroup;->mStripTabUnderline:I

    .line 39
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0036

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/finsky/layout/CustomRadioGroup;->mStripTabUnderlineSelected:I

    .line 42
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/google/android/finsky/layout/CustomRadioGroup;->mTabUnderlinePaint:Landroid/graphics/Paint;

    .line 43
    iget-object v2, p0, Lcom/google/android/finsky/layout/CustomRadioGroup;->mTabUnderlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 44
    iget-object v2, p0, Lcom/google/android/finsky/layout/CustomRadioGroup;->mTabUnderlinePaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/google/android/finsky/layout/CustomRadioGroup;->mStripTabUnderline:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 45
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/google/android/finsky/layout/CustomRadioGroup;->mTabUnderlineSelectedPaint:Landroid/graphics/Paint;

    .line 46
    iget-object v2, p0, Lcom/google/android/finsky/layout/CustomRadioGroup;->mTabUnderlineSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 47
    iget-object v2, p0, Lcom/google/android/finsky/layout/CustomRadioGroup;->mTabUnderlineSelectedPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/google/android/finsky/layout/CustomRadioGroup;->mStripTabUnderlineSelected:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 49
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/CustomRadioGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendForegroundColor(Landroid/content/Context;I)I

    move-result v1

    .line 50
    .local v1, corpusColor:I
    iget-object v2, p0, Lcom/google/android/finsky/layout/CustomRadioGroup;->mTabUnderlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    iget-object v2, p0, Lcom/google/android/finsky/layout/CustomRadioGroup;->mTabUnderlineSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    return-void
.end method
