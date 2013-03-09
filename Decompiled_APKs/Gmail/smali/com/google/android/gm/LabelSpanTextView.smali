.class public Lcom/google/android/gm/LabelSpanTextView;
.super Landroid/widget/TextView;
.source "LabelSpanTextView.java"

# interfaces
.implements Lcom/google/android/gm/LabelSpan$LabelSpanDimensions;


# instance fields
.field private final mLabelPadding:I

.field private final mLabelPaddingBefore:I

.field private final mLabelPaddingExtraWidth:I

.field private mMaxSpanWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/LabelSpanTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-virtual {p0}, Lcom/google/android/gm/LabelSpanTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 32
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f0e0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/LabelSpanTextView;->mLabelPadding:I

    .line 33
    const v1, 0x7f0e0026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/LabelSpanTextView;->mLabelPaddingExtraWidth:I

    .line 35
    const v1, 0x7f0e0027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/LabelSpanTextView;->mLabelPaddingBefore:I

    .line 36
    return-void
.end method


# virtual methods
.method public getMaxWidth()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/google/android/gm/LabelSpanTextView;->mMaxSpanWidth:I

    return v0
.end method

.method public getPadding()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/google/android/gm/LabelSpanTextView;->mLabelPadding:I

    return v0
.end method

.method public getPaddingBefore()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/google/android/gm/LabelSpanTextView;->mLabelPaddingBefore:I

    return v0
.end method

.method public getPaddingExtraWidth()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/google/android/gm/LabelSpanTextView;->mLabelPaddingExtraWidth:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 40
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gm/LabelSpanTextView;->getTotalPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/gm/LabelSpanTextView;->getTotalPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gm/LabelSpanTextView;->mMaxSpanWidth:I

    .line 43
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 44
    return-void
.end method
