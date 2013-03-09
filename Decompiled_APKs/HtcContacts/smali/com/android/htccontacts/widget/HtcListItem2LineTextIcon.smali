.class public Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;
.super Lcom/htc/widget/HtcListItem2LineText;
.source "HtcListItem2LineTextIcon.java"


# instance fields
.field protected isSencondaryTextLarge:Z

.field private isTextGravitySet:Z

.field private mLeftMargin:I

.field private mRightMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "mode"

    .prologue
    const/4 v1, 0x0

    .line 42
    if-nez p2, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcListItem2LineText;-><init>(Landroid/content/Context;I)V

    .line 36
    iput-boolean v1, p0, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->isTextGravitySet:Z

    .line 39
    iput-boolean v1, p0, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->isSencondaryTextLarge:Z

    .line 44
    return-void

    .line 42
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public setPirmaryTextCompoundDrawableWithIntrinicBounds(IIII)V
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->mText:[Landroid/widget/TextView;

    array-length v0, v0

    if-gtz v0, :cond_0

    .line 51
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0
.end method

.method public setPirmaryTextCompoundDrawableWithIntrinicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->mText:[Landroid/widget/TextView;

    array-length v0, v0

    if-gtz v0, :cond_0

    .line 58
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setPrimaryText([CII)V
    .locals 2
    .parameter "text"
    .parameter "start"
    .parameter "len"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->mText:[Landroid/widget/TextView;

    array-length v0, v0

    if-gtz v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/TextView;->setText([CII)V

    goto :goto_0
.end method

.method public setPrimaryTextCompoundDrawablePadding(I)V
    .locals 2
    .parameter "padding"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->mText:[Landroid/widget/TextView;

    array-length v0, v0

    if-gtz v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto :goto_0
.end method

.method public setPrimaryTextGravity(I)V
    .locals 2
    .parameter "gravity"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->mText:[Landroid/widget/TextView;

    array-length v0, v0

    if-gtz v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->isTextGravitySet:Z

    goto :goto_0
.end method

.method public setSecondarText([CII)V
    .locals 2
    .parameter "text"
    .parameter "start"
    .parameter "len"

    .prologue
    const/4 v1, 0x1

    .line 82
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->mText:[Landroid/widget/TextView;

    array-length v0, v0

    if-gt v0, v1, :cond_0

    .line 86
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/TextView;->setText([CII)V

    goto :goto_0
.end method

.method public setSecondaryTextCompoundDrawablePadding(I)V
    .locals 2
    .parameter "padding"

    .prologue
    const/4 v1, 0x1

    .line 96
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->mText:[Landroid/widget/TextView;

    array-length v0, v0

    if-gt v0, v1, :cond_0

    .line 100
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto :goto_0
.end method

.method public setSecondaryTextCompoundDrawableWithIntrinicBounds(IIII)V
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v1, 0x1

    .line 61
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->mText:[Landroid/widget/TextView;

    array-length v0, v0

    if-gt v0, v1, :cond_0

    .line 65
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0
.end method

.method public setSecondaryTextCompoundDrawableWithIntrinicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v1, 0x1

    .line 68
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->mText:[Landroid/widget/TextView;

    array-length v0, v0

    if-gt v0, v1, :cond_0

    .line 72
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setSecondaryTextGravity(I)V
    .locals 2
    .parameter "gravity"

    .prologue
    const/4 v1, 0x1

    .line 111
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->mText:[Landroid/widget/TextView;

    array-length v0, v0

    if-gt v0, v1, :cond_0

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 115
    iput-boolean v1, p0, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->isTextGravitySet:Z

    goto :goto_0
.end method

.method public setSecondaryTextStyle(I)V
    .locals 4
    .parameter "style"

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->isSencondaryTextLarge:Z

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->mFontSize:[I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x205002d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    aput v2, v0, v1

    .line 123
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextStyle(I)V

    .line 124
    return-void
.end method
