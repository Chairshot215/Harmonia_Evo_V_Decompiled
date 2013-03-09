.class public Lcom/android/phone/widget/AccumulatorText;
.super Landroid/widget/EditText;
.source "AccumulatorText.java"


# instance fields
.field private mIndex:I

.field private mMaxIndex:I

.field private mNeedLayout:Z

.field private mPaddingLeftBuffer:I

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextSizes:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/widget/AccumulatorText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 56
    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/widget/AccumulatorText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    iput v0, p0, Lcom/android/phone/widget/AccumulatorText;->mIndex:I

    .line 42
    iput v0, p0, Lcom/android/phone/widget/AccumulatorText;->mMaxIndex:I

    .line 45
    iput-boolean v0, p0, Lcom/android/phone/widget/AccumulatorText;->mNeedLayout:Z

    .line 47
    iput v0, p0, Lcom/android/phone/widget/AccumulatorText;->mPaddingLeftBuffer:I

    .line 61
    invoke-virtual {p0}, Lcom/android/phone/widget/AccumulatorText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/widget/AccumulatorText;->mTextPaint:Landroid/text/TextPaint;

    .line 62
    invoke-direct {p0}, Lcom/android/phone/widget/AccumulatorText;->initTextSize()V

    .line 64
    return-void
.end method

.method private decreaceTextSize(Ljava/lang/CharSequence;)Z
    .locals 2
    .parameter "text"

    .prologue
    .line 84
    iget v0, p0, Lcom/android/phone/widget/AccumulatorText;->mIndex:I

    if-lez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/phone/widget/AccumulatorText;->getTextWidth(Ljava/lang/CharSequence;)F

    move-result v0

    invoke-virtual {p0}, Lcom/android/phone/widget/AccumulatorText;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/phone/widget/AccumulatorText;->mTextSizes:[I

    iget v1, p0, Lcom/android/phone/widget/AccumulatorText;->mIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/phone/widget/AccumulatorText;->mIndex:I

    aget v0, v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/phone/widget/AccumulatorText;->setTextSize(F)V

    .line 87
    const/4 v0, 0x1

    .line 89
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTextWidth(Ljava/lang/CharSequence;)F
    .locals 9
    .parameter "text"

    .prologue
    .line 97
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 98
    .local v2, len:I
    new-array v6, v2, [F

    .line 99
    .local v6, widths:[F
    iget-object v7, p0, Lcom/android/phone/widget/AccumulatorText;->mTextPaint:Landroid/text/TextPaint;

    const/4 v8, 0x0

    invoke-virtual {v7, p1, v8, v2, v6}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/CharSequence;II[F)I

    .line 100
    const/4 v4, 0x0

    .line 102
    .local v4, textWidth:F
    move-object v0, v6

    .local v0, arr$:[F
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget v5, v0, v1

    .line 103
    .local v5, width:F
    add-float/2addr v4, v5

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    .end local v5           #width:F
    :cond_0
    iget v7, p0, Lcom/android/phone/widget/AccumulatorText;->mPaddingLeftBuffer:I

    int-to-float v7, v7

    add-float/2addr v7, v4

    return v7
.end method

.method private increaceTextSize(Ljava/lang/CharSequence;)Z
    .locals 2
    .parameter "text"

    .prologue
    .line 114
    iget v0, p0, Lcom/android/phone/widget/AccumulatorText;->mIndex:I

    iget v1, p0, Lcom/android/phone/widget/AccumulatorText;->mMaxIndex:I

    if-ge v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/phone/widget/AccumulatorText;->getTextWidth(Ljava/lang/CharSequence;)F

    move-result v0

    invoke-virtual {p0}, Lcom/android/phone/widget/AccumulatorText;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/phone/widget/AccumulatorText;->mTextSizes:[I

    iget v1, p0, Lcom/android/phone/widget/AccumulatorText;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/phone/widget/AccumulatorText;->mIndex:I

    aget v0, v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/phone/widget/AccumulatorText;->setTextSize(F)V

    .line 116
    invoke-direct {p0, p1}, Lcom/android/phone/widget/AccumulatorText;->getTextWidth(Ljava/lang/CharSequence;)F

    move-result v0

    invoke-virtual {p0}, Lcom/android/phone/widget/AccumulatorText;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/android/phone/widget/AccumulatorText;->mTextSizes:[I

    iget v1, p0, Lcom/android/phone/widget/AccumulatorText;->mIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/phone/widget/AccumulatorText;->mIndex:I

    aget v0, v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/phone/widget/AccumulatorText;->setTextSize(F)V

    .line 122
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 119
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private initTextSize()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/phone/widget/AccumulatorText;->mTextSizes:[I

    if-nez v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    iget v0, p0, Lcom/android/phone/widget/AccumulatorText;->mMaxIndex:I

    iput v0, p0, Lcom/android/phone/widget/AccumulatorText;->mIndex:I

    .line 132
    iget-object v0, p0, Lcom/android/phone/widget/AccumulatorText;->mTextSizes:[I

    iget v1, p0, Lcom/android/phone/widget/AccumulatorText;->mIndex:I

    aget v0, v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/phone/widget/AccumulatorText;->setTextSize(F)V

    goto :goto_0
.end method

.method private recursiveAdjustTextSize(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/android/phone/widget/AccumulatorText;->initTextSize()V

    .line 194
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/phone/widget/AccumulatorText;->mTextSizes:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 195
    invoke-direct {p0, p1}, Lcom/android/phone/widget/AccumulatorText;->decreaceTextSize(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 197
    :cond_0
    return-void

    .line 194
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/widget/EditText;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/widget/AccumulatorText;->mNeedLayout:Z

    .line 77
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 144
    invoke-super/range {p0 .. p5}, Landroid/widget/EditText;->onLayout(ZIIII)V

    .line 147
    iget-boolean v0, p0, Lcom/android/phone/widget/AccumulatorText;->mNeedLayout:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/widget/AccumulatorText;->mTextSizes:[I

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/android/phone/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/widget/AccumulatorText;->recursiveAdjustTextSize(Ljava/lang/CharSequence;)V

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/widget/AccumulatorText;->mNeedLayout:Z

    .line 151
    :cond_0
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "text"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    const/4 v1, 0x1

    .line 163
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 165
    iget-object v0, p0, Lcom/android/phone/widget/AccumulatorText;->mTextSizes:[I

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    invoke-direct {p0}, Lcom/android/phone/widget/AccumulatorText;->initTextSize()V

    goto :goto_0

    .line 175
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/widget/AccumulatorText;->getWidth()I

    move-result v0

    if-nez v0, :cond_3

    .line 176
    iput-boolean v1, p0, Lcom/android/phone/widget/AccumulatorText;->mNeedLayout:Z

    goto :goto_0

    .line 177
    :cond_3
    sub-int v0, p4, p3

    if-ne v0, v1, :cond_4

    .line 178
    invoke-direct {p0, p1}, Lcom/android/phone/widget/AccumulatorText;->decreaceTextSize(Ljava/lang/CharSequence;)Z

    goto :goto_0

    .line 179
    :cond_4
    sub-int v0, p3, p4

    if-ne v0, v1, :cond_5

    .line 180
    invoke-direct {p0, p1}, Lcom/android/phone/widget/AccumulatorText;->increaceTextSize(Ljava/lang/CharSequence;)Z

    goto :goto_0

    .line 182
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/phone/widget/AccumulatorText;->recursiveAdjustTextSize(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setLeftPaddingBuffer(I)V
    .locals 0
    .parameter "buffer"

    .prologue
    .line 204
    iput p1, p0, Lcom/android/phone/widget/AccumulatorText;->mPaddingLeftBuffer:I

    .line 205
    return-void
.end method

.method public setTextSizes(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/android/phone/widget/AccumulatorText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/widget/AccumulatorText;->setTextSizes([I)V

    .line 214
    return-void
.end method

.method public setTextSizes([I)V
    .locals 1
    .parameter "fontSizes"

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/phone/widget/AccumulatorText;->mTextSizes:[I

    .line 223
    iget-object v0, p0, Lcom/android/phone/widget/AccumulatorText;->mTextSizes:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/phone/widget/AccumulatorText;->mMaxIndex:I

    .line 224
    invoke-direct {p0}, Lcom/android/phone/widget/AccumulatorText;->initTextSize()V

    .line 225
    return-void
.end method
