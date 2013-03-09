.class public Lcom/android/internal/widget/DialogTitle;
.super Landroid/widget/TextView;
.source "DialogTitle.java"


# instance fields
.field private mNotChangeTextSize:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/DialogTitle;->mNotChangeTextSize:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/DialogTitle;->mNotChangeTextSize:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/DialogTitle;->mNotChangeTextSize:Z

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 11

    const/4 v10, 0x0

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/android/internal/widget/DialogTitle;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    if-lez v3, :cond_1

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v2, v5}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0, v10}, Lcom/android/internal/widget/DialogTitle;->setSingleLine(Z)V

    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/android/internal/widget/DialogTitle;->setMaxLines(I)V

    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    sget-object v7, Landroid/R$styleable;->TextAppearance:[I

    const v8, 0x1010041

    const v9, 0x1030044

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v10, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v5, p0, Lcom/android/internal/widget/DialogTitle;->mNotChangeTextSize:Z

    if-nez v5, :cond_0

    int-to-float v5, v4

    invoke-virtual {p0, v10, v5}, Lcom/android/internal/widget/DialogTitle;->setTextSize(IF)V

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    :cond_1
    return-void
.end method

.method public setNotChangeTextSize()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/DialogTitle;->mNotChangeTextSize:Z

    return-void
.end method
