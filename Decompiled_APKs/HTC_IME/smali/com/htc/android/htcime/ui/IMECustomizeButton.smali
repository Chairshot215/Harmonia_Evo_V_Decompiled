.class public Lcom/htc/android/htcime/ui/IMECustomizeButton;
.super Landroid/widget/RelativeLayout;
.source "IMECustomizeButton.java"


# instance fields
.field private mBtnDownBg:Landroid/graphics/drawable/Drawable;

.field private mBtnUpBg:Landroid/graphics/drawable/Drawable;

.field private mButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mImageView:Landroid/widget/ImageView;

.field private mInvIcon:Landroid/graphics/drawable/Drawable;

.field private mListener:Landroid/view/View$OnTouchListener;

.field private mTextView:Landroid/widget/TextView;

.field private mUseImage:Z

.field private mUseText:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/android/htcime/ui/IMECustomizeButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    iput-object v0, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mButton:Landroid/widget/Button;

    .line 36
    iput-object v0, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mImageView:Landroid/widget/ImageView;

    .line 37
    iput-object v0, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mTextView:Landroid/widget/TextView;

    .line 41
    iput-object v0, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 42
    iput-object v0, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mInvIcon:Landroid/graphics/drawable/Drawable;

    .line 43
    iput-object v0, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mBtnDownBg:Landroid/graphics/drawable/Drawable;

    .line 44
    iput-object v0, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mBtnUpBg:Landroid/graphics/drawable/Drawable;

    .line 46
    iput-boolean v1, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mUseText:Z

    .line 47
    iput-boolean v1, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mUseImage:Z

    .line 49
    iput-object v0, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mListener:Landroid/view/View$OnTouchListener;

    .line 58
    iput-object p1, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mContext:Landroid/content/Context;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/htcime/ui/IMECustomizeButton;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mBtnDownBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/android/htcime/ui/IMECustomizeButton;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/android/htcime/ui/IMECustomizeButton;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mInvIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/android/htcime/ui/IMECustomizeButton;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/android/htcime/ui/IMECustomizeButton;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mBtnUpBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/android/htcime/ui/IMECustomizeButton;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/android/htcime/ui/IMECustomizeButton;)Landroid/view/View$OnTouchListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method private getButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 236
    const v0, 0x7f0e0033

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mButton:Landroid/widget/Button;

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mButton:Landroid/widget/Button;

    return-object v0
.end method

.method private getImageView()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 244
    const v0, 0x7f0e0034

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mImageView:Landroid/widget/ImageView;

    .line 245
    iget-object v0, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private getTextView()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 254
    const v0, 0x7f0e0031

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mTextView:Landroid/widget/TextView;

    .line 255
    iget-object v0, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private setButton(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "drawableUpBg"

    .prologue
    .line 97
    iget-object v1, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mBtnUpBg:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mBtnUpBg:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 99
    iget-object v1, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mBtnUpBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    :cond_0
    iput-object p1, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mBtnUpBg:Landroid/graphics/drawable/Drawable;

    .line 104
    invoke-direct {p0}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->getButton()Landroid/widget/Button;

    move-result-object v0

    .line 105
    .local v0, btn:Landroid/widget/Button;
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    iget-object v1, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mButton:Landroid/widget/Button;

    new-instance v2, Lcom/htc/android/htcime/ui/IMECustomizeButton$2;

    invoke-direct {v2, p0}, Lcom/htc/android/htcime/ui/IMECustomizeButton$2;-><init>(Lcom/htc/android/htcime/ui/IMECustomizeButton;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 114
    return-void
.end method

.method private setText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 193
    .local v0, tv:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 208
    iget-object v0, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mBtnUpBg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mBtnUpBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 210
    iget-object v0, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mBtnUpBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 211
    iput-object v1, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mBtnUpBg:Landroid/graphics/drawable/Drawable;

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mBtnDownBg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mBtnDownBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 216
    iget-object v0, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mBtnDownBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 217
    iput-object v1, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mBtnDownBg:Landroid/graphics/drawable/Drawable;

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 221
    iget-object v0, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 222
    iget-object v0, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 223
    iput-object v1, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 226
    :cond_2
    iget-object v0, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mInvIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 227
    iget-object v0, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mInvIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 228
    iget-object v0, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mInvIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 229
    iput-object v1, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mInvIcon:Landroid/graphics/drawable/Drawable;

    .line 231
    :cond_3
    return-void
.end method

.method public getEnabled()Z
    .locals 2

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->getButton()Landroid/widget/Button;

    move-result-object v0

    .line 204
    .local v0, btn:Landroid/widget/Button;
    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v1

    return v1
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->getButton()Landroid/widget/Button;

    move-result-object v0

    .line 199
    .local v0, btn:Landroid/widget/Button;
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 200
    return-void
.end method

.method public setImage(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "image"

    .prologue
    .line 155
    iget-object v1, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 157
    iget-object v1, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 160
    :cond_0
    iput-object p1, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 162
    invoke-direct {p0}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 163
    .local v0, img:Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 164
    return-void
.end method

.method public setImageButton(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "image"
    .parameter "drawableUpBg"

    .prologue
    .line 125
    invoke-direct {p0, p2}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->setButton(Landroid/graphics/drawable/Drawable;)V

    .line 126
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mUseImage:Z

    .line 128
    return-void
.end method

.method public setMixButton(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .parameter "text"
    .parameter "image"
    .parameter "drawableUpBg"

    .prologue
    const/4 v5, 0x1

    .line 133
    invoke-direct {p0, p3}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->setButton(Landroid/graphics/drawable/Drawable;)V

    .line 134
    invoke-virtual {p0, p2}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 137
    iget-object v4, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 139
    .local v2, r:Landroid/content/res/Resources;
    invoke-direct {p0}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 140
    .local v0, img:Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 141
    .local v1, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0x9

    invoke-virtual {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 142
    const v4, 0x7f0c0012

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 143
    const v4, 0x7f0c0013

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 145
    invoke-direct {p0}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->getTextView()Landroid/widget/TextView;

    move-result-object v3

    .line 146
    .local v3, tv:Landroid/widget/TextView;
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 148
    .restart local v1       #lp:Landroid/widget/RelativeLayout$LayoutParams;
    const v4, 0x7f0c0014

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 150
    iput-boolean v5, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mUseText:Z

    .line 151
    iput-boolean v5, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mUseImage:Z

    .line 152
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "l"
    .parameter "btnUpBg"
    .parameter "btnDownBg"
    .parameter "icon"
    .parameter "invIcon"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 63
    const v0, 0x7f0e0033

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mButton:Landroid/widget/Button;

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 66
    const v0, 0x7f0e0034

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mImageView:Landroid/widget/ImageView;

    .line 68
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->finish()V

    .line 71
    iput-object p2, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mBtnUpBg:Landroid/graphics/drawable/Drawable;

    .line 72
    if-eqz p3, :cond_2

    .end local p3
    :goto_0
    iput-object p3, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mBtnDownBg:Landroid/graphics/drawable/Drawable;

    .line 73
    iput-object p4, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 74
    if-eqz p5, :cond_3

    .end local p5
    :goto_1
    iput-object p5, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mInvIcon:Landroid/graphics/drawable/Drawable;

    .line 76
    iget-object v0, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mButton:Landroid/widget/Button;

    new-instance v1, Lcom/htc/android/htcime/ui/IMECustomizeButton$1;

    invoke-direct {v1, p0}, Lcom/htc/android/htcime/ui/IMECustomizeButton$1;-><init>(Lcom/htc/android/htcime/ui/IMECustomizeButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 92
    iput-object p1, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mListener:Landroid/view/View$OnTouchListener;

    .line 93
    return-void

    .restart local p3
    .restart local p5
    :cond_2
    move-object p3, p2

    .line 72
    goto :goto_0

    .end local p3
    :cond_3
    move-object p5, p4

    .line 74
    goto :goto_1
.end method

.method public setTextButton(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "text"
    .parameter "drawableUpBg"

    .prologue
    .line 118
    invoke-direct {p0, p2}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->setButton(Landroid/graphics/drawable/Drawable;)V

    .line 119
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->setText(Ljava/lang/String;)V

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mUseText:Z

    .line 121
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 183
    .local v0, tv:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 184
    return-void
.end method

.method public setTextSize(IF)V
    .locals 1
    .parameter "unit"
    .parameter "size"

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 188
    .local v0, tv:Landroid/widget/TextView;
    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 189
    return-void
.end method

.method public setVisibility(I)V
    .locals 4
    .parameter "visibility"

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->getButton()Landroid/widget/Button;

    move-result-object v0

    .line 168
    .local v0, btn:Landroid/widget/Button;
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 170
    iget-boolean v3, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mUseImage:Z

    if-eqz v3, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 172
    .local v1, image:Landroid/widget/ImageView;
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 175
    .end local v1           #image:Landroid/widget/ImageView;
    :cond_0
    iget-boolean v3, p0, Lcom/htc/android/htcime/ui/IMECustomizeButton;->mUseText:Z

    if-eqz v3, :cond_1

    .line 176
    invoke-direct {p0}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->getTextView()Landroid/widget/TextView;

    move-result-object v2

    .line 177
    .local v2, tv:Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    .end local v2           #tv:Landroid/widget/TextView;
    :cond_1
    return-void
.end method
