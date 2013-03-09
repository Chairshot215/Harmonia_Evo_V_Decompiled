.class public Lcom/htc/android/mail/widget/HtcPhotoButton;
.super Landroid/widget/RelativeLayout;
.source "HtcPhotoButton.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcPhotoButton"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMaxWidth:I

.field mOnClickListener:Landroid/view/View$OnClickListener;

.field mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mPhoto:Landroid/widget/ImageView;

.field private mPhotoIntrinsicWidth:I

.field private mRes:Landroid/content/res/Resources;

.field private mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v0, -0x2

    iput v0, p0, Lcom/htc/android/mail/widget/HtcPhotoButton;->mMaxWidth:I

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/widget/HtcPhotoButton;->mPhotoIntrinsicWidth:I

    .line 48
    iput-object v1, p0, Lcom/htc/android/mail/widget/HtcPhotoButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 49
    iput-object v1, p0, Lcom/htc/android/mail/widget/HtcPhotoButton;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 53
    iput-object p1, p0, Lcom/htc/android/mail/widget/HtcPhotoButton;->mContext:Landroid/content/Context;

    .line 54
    iget-object v0, p0, Lcom/htc/android/mail/widget/HtcPhotoButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/widget/HtcPhotoButton;->mRes:Landroid/content/res/Resources;

    .line 55
    invoke-direct {p0}, Lcom/htc/android/mail/widget/HtcPhotoButton;->initView()V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 v0, -0x2

    iput v0, p0, Lcom/htc/android/mail/widget/HtcPhotoButton;->mMaxWidth:I

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/widget/HtcPhotoButton;->mPhotoIntrinsicWidth:I

    .line 48
    iput-object v1, p0, Lcom/htc/android/mail/widget/HtcPhotoButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 49
    iput-object v1, p0, Lcom/htc/android/mail/widget/HtcPhotoButton;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 60
    iput-object p1, p0, Lcom/htc/android/mail/widget/HtcPhotoButton;->mContext:Landroid/content/Context;

    .line 61
    iget-object v0, p0, Lcom/htc/android/mail/widget/HtcPhotoButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/widget/HtcPhotoButton;->mRes:Landroid/content/res/Resources;

    .line 62
    invoke-direct {p0}, Lcom/htc/android/mail/widget/HtcPhotoButton;->initView()V

    .line 63
    return-void
.end method

.method private initView()V
    .locals 6

    .prologue
    const v5, 0x7f080066

    const/4 v3, 0x1

    .line 66
    iget-object v1, p0, Lcom/htc/android/mail/widget/HtcPhotoButton;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 67
    .local v0, inflator:Landroid/view/LayoutInflater;
    const v1, 0x7f030019

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 69
    const v1, 0x7f0900be

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/widget/HtcPhotoButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/android/mail/widget/HtcPhotoButton;->mText:Landroid/widget/TextView;

    .line 70
    const v1, 0x7f0900bd

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/widget/HtcPhotoButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/android/mail/widget/HtcPhotoButton;->mPhoto:Landroid/widget/ImageView;

    .line 71
    iget-object v1, p0, Lcom/htc/android/mail/widget/HtcPhotoButton;->mPhoto:Landroid/widget/ImageView;

    const v2, 0x7f020042

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    invoke-virtual {p0, v3}, Lcom/htc/android/mail/widget/HtcPhotoButton;->setClickable(Z)V

    .line 74
    iget-object v1, p0, Lcom/htc/android/mail/widget/HtcPhotoButton;->mRes:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/htc/android/mail/widget/HtcPhotoButton;->mContext:Landroid/content/Context;

    const-string v3, "common_b_button_small"

    const v4, 0x2080008

    invoke-static {v2, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/widget/HtcPhotoButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    iget-object v1, p0, Lcom/htc/android/mail/widget/HtcPhotoButton;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/htc/android/mail/widget/HtcPhotoButton;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/htc/android/mail/widget/HtcPhotoButton;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/htc/android/mail/widget/HtcPhotoButton;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/htc/android/mail/widget/HtcPhotoButton;->setPadding(IIII)V

    .line 78
    const/4 v1, -0x2

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/widget/HtcPhotoButton;->setWidth(I)V

    .line 79
    return-void
.end method


# virtual methods
.method public getButtonWidth()I
    .locals 3

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/htc/android/mail/widget/HtcPhotoButton;->getTextWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/android/mail/widget/HtcPhotoButton;->getImageWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/htc/android/mail/widget/HtcPhotoButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080066

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/htc/android/mail/widget/HtcPhotoButton;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/htc/android/mail/widget/HtcPhotoButton;->mText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/android/mail/widget/HtcPhotoButton;->mText:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTextWidth()I
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/htc/android/mail/widget/HtcPhotoButton;->mText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/android/mail/widget/HtcPhotoButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 167
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 182
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 169
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/mail/widget/HtcPhotoButton;->mPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/htc/android/mail/widget/HtcPhotoButton;->mPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 171
    iget-object v0, p0, Lcom/htc/android/mail/widget/HtcPhotoButton;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_0

    .line 176
    :pswitch_2
    iget-object v0, p0, Lcom/htc/android/mail/widget/HtcPhotoButton;->mPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/htc/android/mail/widget/HtcPhotoButton;->mPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 178
    iget-object v0, p0, Lcom/htc/android/mail/widget/HtcPhotoButton;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_0

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 187
    iget v5, p0, Lcom/htc/android/mail/widget/HtcPhotoButton;->mMaxWidth:I

    if-lez v5, :cond_0

    .line 188
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 189
    .local v4, mode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 191
    .local v3, measuredWidth:I
    iget v0, p0, Lcom/htc/android/mail/widget/HtcPhotoButton;->mMaxWidth:I

    .line 192
    .local v0, adjustedMaxWidth:I
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 193
    .local v1, adjustedWidth:I
    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 194
    .local v2, adjustedWidthMeasureSpec:I
    invoke-super {p0, v2, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 198
    .end local v0           #adjustedMaxWidth:I
    .end local v1           #adjustedWidth:I
    .end local v2           #adjustedWidthMeasureSpec:I
    .end local v3           #measuredWidth:I
    .end local v4           #mode:I
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    goto :goto_0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/android/mail/widget/HtcPhotoButton;->mPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/htc/android/mail/widget/HtcPhotoButton;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 102
    iget-object v0, p0, Lcom/htc/android/mail/widget/HtcPhotoButton;->mPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/widget/HtcPhotoButton;->mPhoto:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "drawable"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/android/mail/widget/HtcPhotoButton;->mPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/htc/android/mail/widget/HtcPhotoButton;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    iget-object v0, p0, Lcom/htc/android/mail/widget/HtcPhotoButton;->mPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/widget/HtcPhotoButton;->mPhoto:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setImageResource(I)V
    .locals 2
    .parameter "resid"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/android/mail/widget/HtcPhotoButton;->mPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/htc/android/mail/widget/HtcPhotoButton;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    iget-object v0, p0, Lcom/htc/android/mail/widget/HtcPhotoButton;->mPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/widget/HtcPhotoButton;->mPhoto:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setImageVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/android/mail/widget/HtcPhotoButton;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .parameter "maxWidth"

    .prologue
    .line 162
    iput p1, p0, Lcom/htc/android/mail/widget/HtcPhotoButton;->mMaxWidth:I

    .line 163
    return-void
.end method

.method public setText(I)V
    .locals 1
    .parameter "resid"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/htc/android/mail/widget/HtcPhotoButton;->mText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/htc/android/mail/widget/HtcPhotoButton;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 120
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/htc/android/mail/widget/HtcPhotoButton;->mText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/htc/android/mail/widget/HtcPhotoButton;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    :cond_0
    return-void
.end method

.method public setTextLayoutInCenter()V
    .locals 2

    .prologue
    .line 123
    iget-object v1, p0, Lcom/htc/android/mail/widget/HtcPhotoButton;->mText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/htc/android/mail/widget/HtcPhotoButton;->mText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 125
    .local v0, para:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 126
    iget-object v1, p0, Lcom/htc/android/mail/widget/HtcPhotoButton;->mText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    .end local v0           #para:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public setWidth(I)V
    .locals 2
    .parameter "width"

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/htc/android/mail/widget/HtcPhotoButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 153
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 154
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .end local v0           #params:Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x2

    invoke-direct {v0, p1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 157
    .restart local v0       #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 158
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/widget/HtcPhotoButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    return-void
.end method
