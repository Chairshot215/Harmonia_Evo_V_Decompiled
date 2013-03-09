.class public Lcom/android/htccontacts/widget/HtcListItem2LineStampIcon;
.super Lcom/htc/widget/HtcListItem2LineStamp;
.source "HtcListItem2LineStampIcon.java"


# instance fields
.field protected isSencondaryTextLarge:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "mode"

    .prologue
    const/4 v1, 0x0

    .line 39
    if-nez p2, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcListItem2LineStamp;-><init>(Landroid/content/Context;I)V

    .line 36
    iput-boolean v1, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampIcon;->isSencondaryTextLarge:Z

    .line 41
    return-void

    .line 39
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
    .line 44
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampIcon;->mText:[Landroid/widget/TextView;

    array-length v0, v0

    if-gtz v0, :cond_0

    .line 48
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampIcon;->mText:[Landroid/widget/TextView;

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
    .line 51
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampIcon;->mText:[Landroid/widget/TextView;

    array-length v0, v0

    if-gtz v0, :cond_0

    .line 55
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampIcon;->mText:[Landroid/widget/TextView;

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
    .line 72
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampIcon;->mText:[Landroid/widget/TextView;

    array-length v0, v0

    if-gtz v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampIcon;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/TextView;->setText([CII)V

    goto :goto_0
.end method

.method public setPrimaryTextCompoundDrawablePadding(I)V
    .locals 2
    .parameter "padding"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampIcon;->mText:[Landroid/widget/TextView;

    array-length v0, v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 90
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampIcon;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto :goto_0
.end method

.method public setSecondarText([CII)V
    .locals 2
    .parameter "text"
    .parameter "start"
    .parameter "len"

    .prologue
    const/4 v1, 0x1

    .line 79
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampIcon;->mText:[Landroid/widget/TextView;

    array-length v0, v0

    if-gt v0, v1, :cond_0

    .line 83
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampIcon;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/TextView;->setText([CII)V

    goto :goto_0
.end method

.method public setSecondaryTextCompoundDrawablePadding(I)V
    .locals 2
    .parameter "padding"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampIcon;->mText:[Landroid/widget/TextView;

    array-length v0, v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 97
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampIcon;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x1

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

    .line 58
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampIcon;->mText:[Landroid/widget/TextView;

    array-length v0, v0

    if-gt v0, v1, :cond_0

    .line 62
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampIcon;->mText:[Landroid/widget/TextView;

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

    .line 65
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampIcon;->mText:[Landroid/widget/TextView;

    array-length v0, v0

    if-gt v0, v1, :cond_0

    .line 69
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampIcon;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setSecondaryTextStyle(I)V
    .locals 4
    .parameter "style"

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampIcon;->isSencondaryTextLarge:Z

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampIcon;->mFontSize:[I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/htccontacts/widget/HtcListItem2LineStampIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x205002d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    aput v2, v0, v1

    .line 104
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2LineStamp;->setSecondaryTextStyle(I)V

    .line 105
    return-void
.end method
