.class public Lcom/htc/widget/HtcAlertDialogView;
.super Landroid/widget/RelativeLayout;
.source "HtcAlertDialogView.java"


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeDisabled:Z

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralDisabled:Z

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveDisabled:Z

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCheckedItem:I

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mCustomTitleAdded:Z

.field private mCustomTitleView:Landroid/view/View;

.field private mForceInverseBackground:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mItems:[Ljava/lang/CharSequence;

.field private mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mNegativeButtonListener:Landroid/view/View$OnClickListener;

.field private mNeutralButtonListener:Landroid/view/View$OnClickListener;

.field private mPositiveButtonListener:Landroid/view/View$OnClickListener;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCenter:Z

.field private mTitleDivider:Z

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private mWindow:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v1, -0x1

    const/4 v4, 0x0

    .line 110
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 58
    iput v1, p0, Lcom/htc/widget/HtcAlertDialogView;->mIconId:I

    .line 61
    iput-boolean v4, p0, Lcom/htc/widget/HtcAlertDialogView;->mViewSpacingSpecified:Z

    .line 69
    iput v1, p0, Lcom/htc/widget/HtcAlertDialogView;->mCheckedItem:I

    .line 78
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/widget/HtcAlertDialogView;->mTitleDivider:Z

    .line 79
    iput-boolean v4, p0, Lcom/htc/widget/HtcAlertDialogView;->mTitleCenter:Z

    .line 80
    iput-boolean v4, p0, Lcom/htc/widget/HtcAlertDialogView;->mCustomTitleAdded:Z

    .line 111
    iput-object p1, p0, Lcom/htc/widget/HtcAlertDialogView;->mContext:Landroid/content/Context;

    .line 113
    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialogView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x2090028

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcAlertDialogView;->mWindow:Landroid/view/View;

    .line 114
    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialogView;->mWindow:Landroid/view/View;

    const v2, 0x202001a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 115
    .local v0, smile:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 116
    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialogView;->mContext:Landroid/content/Context;

    const-string v2, "common_panel_navbar_hightlight"

    invoke-static {v1, v2}, Lcom/htc/res/HtcResources;->getCommonDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialogView;->mWindow:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAlertDialogView;->addView(Landroid/view/View;)V

    .line 119
    invoke-direct {p0}, Lcom/htc/widget/HtcAlertDialogView;->initView()V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, -0x1

    const/4 v4, 0x0

    .line 98
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    iput v1, p0, Lcom/htc/widget/HtcAlertDialogView;->mIconId:I

    .line 61
    iput-boolean v4, p0, Lcom/htc/widget/HtcAlertDialogView;->mViewSpacingSpecified:Z

    .line 69
    iput v1, p0, Lcom/htc/widget/HtcAlertDialogView;->mCheckedItem:I

    .line 78
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/widget/HtcAlertDialogView;->mTitleDivider:Z

    .line 79
    iput-boolean v4, p0, Lcom/htc/widget/HtcAlertDialogView;->mTitleCenter:Z

    .line 80
    iput-boolean v4, p0, Lcom/htc/widget/HtcAlertDialogView;->mCustomTitleAdded:Z

    .line 99
    iput-object p1, p0, Lcom/htc/widget/HtcAlertDialogView;->mContext:Landroid/content/Context;

    .line 101
    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialogView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x2090028

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcAlertDialogView;->mWindow:Landroid/view/View;

    .line 102
    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialogView;->mWindow:Landroid/view/View;

    const v2, 0x202001a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 103
    .local v0, smile:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 104
    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialogView;->mContext:Landroid/content/Context;

    const-string v2, "common_panel_navbar_hightlight"

    invoke-static {v1, v2}, Lcom/htc/res/HtcResources;->getCommonDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialogView;->mWindow:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAlertDialogView;->addView(Landroid/view/View;)V

    .line 106
    invoke-direct {p0}, Lcom/htc/widget/HtcAlertDialogView;->initView()V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, -0x1

    const/4 v4, 0x0

    .line 85
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    iput v1, p0, Lcom/htc/widget/HtcAlertDialogView;->mIconId:I

    .line 61
    iput-boolean v4, p0, Lcom/htc/widget/HtcAlertDialogView;->mViewSpacingSpecified:Z

    .line 69
    iput v1, p0, Lcom/htc/widget/HtcAlertDialogView;->mCheckedItem:I

    .line 78
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/widget/HtcAlertDialogView;->mTitleDivider:Z

    .line 79
    iput-boolean v4, p0, Lcom/htc/widget/HtcAlertDialogView;->mTitleCenter:Z

    .line 80
    iput-boolean v4, p0, Lcom/htc/widget/HtcAlertDialogView;->mCustomTitleAdded:Z

    .line 86
    iput-object p1, p0, Lcom/htc/widget/HtcAlertDialogView;->mContext:Landroid/content/Context;

    .line 88
    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialogView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x2090028

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcAlertDialogView;->mWindow:Landroid/view/View;

    .line 89
    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialogView;->mWindow:Landroid/view/View;

    const v2, 0x202001a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 90
    .local v0, smile:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 91
    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialogView;->mContext:Landroid/content/Context;

    const-string v2, "common_panel_navbar_hightlight"

    invoke-static {v1, v2}, Lcom/htc/res/HtcResources;->getCommonDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialogView;->mWindow:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAlertDialogView;->addView(Landroid/view/View;)V

    .line 94
    invoke-direct {p0}, Lcom/htc/widget/HtcAlertDialogView;->initView()V

    .line 95
    return-void
.end method

.method private _setCustomTitle(Landroid/view/View;)V
    .locals 0
    .parameter "customTitleView"

    .prologue
    .line 300
    iput-object p1, p0, Lcom/htc/widget/HtcAlertDialogView;->mCustomTitleView:Landroid/view/View;

    .line 301
    return-void
.end method

.method private _setIcon(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 304
    iput p1, p0, Lcom/htc/widget/HtcAlertDialogView;->mIconId:I

    .line 305
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 306
    if-lez p1, :cond_1

    .line 307
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/htc/widget/HtcAlertDialogView;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    if-nez p1, :cond_0

    .line 309
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private _setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 315
    iput-object p1, p0, Lcom/htc/widget/HtcAlertDialogView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 316
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 319
    :cond_0
    return-void
.end method

.method private _setInverseBackgroundForced(Z)V
    .locals 0
    .parameter "forceInverseBackground"

    .prologue
    .line 330
    iput-boolean p1, p0, Lcom/htc/widget/HtcAlertDialogView;->mForceInverseBackground:Z

    .line 331
    return-void
.end method

.method private _setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 322
    iput-object p1, p0, Lcom/htc/widget/HtcAlertDialogView;->mMessage:Ljava/lang/CharSequence;

    .line 323
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    :cond_0
    return-void
.end method

.method private _setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 293
    iput-object p1, p0, Lcom/htc/widget/HtcAlertDialogView;->mTitle:Ljava/lang/CharSequence;

    .line 294
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    :cond_0
    return-void
.end method

.method private _setTitleCenterEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 289
    iput-boolean p1, p0, Lcom/htc/widget/HtcAlertDialogView;->mTitleCenter:Z

    .line 290
    return-void
.end method

.method private _setTitleDividerVisible(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 285
    iput-boolean p1, p0, Lcom/htc/widget/HtcAlertDialogView;->mTitleDivider:Z

    .line 286
    return-void
.end method

.method private _setView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 344
    iput-object p1, p0, Lcom/htc/widget/HtcAlertDialogView;->mView:Landroid/view/View;

    .line 345
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mViewSpacingSpecified:Z

    .line 346
    return-void
.end method

.method private _setView(Landroid/view/View;IIII)V
    .locals 1
    .parameter "view"
    .parameter "viewSpacingLeft"
    .parameter "viewSpacingTop"
    .parameter "viewSpacingRight"
    .parameter "viewSpacingBottom"

    .prologue
    .line 335
    iput-object p1, p0, Lcom/htc/widget/HtcAlertDialogView;->mView:Landroid/view/View;

    .line 336
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mViewSpacingSpecified:Z

    .line 337
    iput p2, p0, Lcom/htc/widget/HtcAlertDialogView;->mViewSpacingLeft:I

    .line 338
    iput p3, p0, Lcom/htc/widget/HtcAlertDialogView;->mViewSpacingTop:I

    .line 339
    iput p4, p0, Lcom/htc/widget/HtcAlertDialogView;->mViewSpacingRight:I

    .line 340
    iput p5, p0, Lcom/htc/widget/HtcAlertDialogView;->mViewSpacingBottom:I

    .line 341
    return-void
.end method

.method private apply()V
    .locals 6

    .prologue
    .line 213
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mCustomTitleView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 214
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mCustomTitleView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcAlertDialogView;->_setCustomTitle(Landroid/view/View;)V

    .line 226
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mMessage:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcAlertDialogView;->_setMessage(Ljava/lang/CharSequence;)V

    .line 255
    :cond_1
    iget-boolean v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mForceInverseBackground:Z

    if-eqz v0, :cond_2

    .line 256
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcAlertDialogView;->_setInverseBackgroundForced(Z)V

    .line 263
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 264
    iget-boolean v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_7

    .line 265
    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialogView;->mView:Landroid/view/View;

    iget v2, p0, Lcom/htc/widget/HtcAlertDialogView;->mViewSpacingLeft:I

    iget v3, p0, Lcom/htc/widget/HtcAlertDialogView;->mViewSpacingTop:I

    iget v4, p0, Lcom/htc/widget/HtcAlertDialogView;->mViewSpacingRight:I

    iget v5, p0, Lcom/htc/widget/HtcAlertDialogView;->mViewSpacingBottom:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/HtcAlertDialogView;->_setView(Landroid/view/View;IIII)V

    .line 272
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mTitleDivider:Z

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcAlertDialogView;->_setTitleDividerVisible(Z)V

    .line 273
    iget-boolean v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mTitleCenter:Z

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcAlertDialogView;->_setTitleCenterEnabled(Z)V

    .line 282
    return-void

    .line 216
    :cond_4
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    .line 217
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mTitle:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcAlertDialogView;->_setTitle(Ljava/lang/CharSequence;)V

    .line 219
    :cond_5
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    .line 220
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcAlertDialogView;->_setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 222
    :cond_6
    iget v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mIconId:I

    if-ltz v0, :cond_0

    .line 223
    iget v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mIconId:I

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcAlertDialogView;->_setIcon(I)V

    goto :goto_0

    .line 268
    :cond_7
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcAlertDialogView;->_setView(Landroid/view/View;)V

    goto :goto_1
.end method

.method private centerButton(Landroid/widget/Button;)V
    .locals 13
    .parameter "button"

    .prologue
    const/16 v12, 0xf0

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/16 v9, 0x1e0

    const/16 v8, 0x140

    .line 606
    const v6, 0x3f333333

    .line 607
    .local v6, weight:F
    iget-object v7, p0, Lcom/htc/widget/HtcAlertDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 608
    .local v1, dm:Landroid/util/DisplayMetrics;
    iget-object v7, p0, Lcom/htc/widget/HtcAlertDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 611
    .local v0, conf:Landroid/content/res/Configuration;
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v7, v8, :cond_0

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eq v7, v12, :cond_1

    :cond_0
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v7, v12, :cond_4

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v7, v8, :cond_4

    .line 613
    :cond_1
    iget v7, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v10, :cond_3

    .line 614
    const v6, 0x3f028f5c

    .line 637
    :cond_2
    :goto_0
    iget-object v7, p0, Lcom/htc/widget/HtcAlertDialogView;->mWindow:Landroid/view/View;

    const v8, 0x20200b1

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 638
    .local v2, leftSpacer:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 639
    .local v3, paramsL:Landroid/widget/LinearLayout$LayoutParams;
    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 640
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 641
    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 644
    iget-object v7, p0, Lcom/htc/widget/HtcAlertDialogView;->mWindow:Landroid/view/View;

    const v8, 0x20200b8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 645
    .local v5, rightSpacer:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 646
    .local v4, paramsR:Landroid/widget/LinearLayout$LayoutParams;
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 647
    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 648
    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 650
    return-void

    .line 616
    .end local v2           #leftSpacer:Landroid/view/View;
    .end local v3           #paramsL:Landroid/widget/LinearLayout$LayoutParams;
    .end local v4           #paramsR:Landroid/widget/LinearLayout$LayoutParams;
    .end local v5           #rightSpacer:Landroid/view/View;
    :cond_3
    const v6, 0x3f70a3d7

    goto :goto_0

    .line 620
    :cond_4
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v7, v9, :cond_5

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eq v7, v8, :cond_6

    :cond_5
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v7, v8, :cond_8

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v7, v9, :cond_8

    .line 622
    :cond_6
    iget v7, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v10, :cond_7

    .line 623
    const v6, 0x3f170a3d

    goto :goto_0

    .line 625
    :cond_7
    const v6, 0x3f051eb8

    goto :goto_0

    .line 629
    :cond_8
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v8, 0x320

    if-ne v7, v8, :cond_9

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eq v7, v9, :cond_a

    :cond_9
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v7, v9, :cond_2

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v8, 0x320

    if-ne v7, v8, :cond_2

    .line 631
    :cond_a
    iget v7, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v10, :cond_b

    .line 632
    const v6, 0x3f0a3d71

    goto :goto_0

    .line 634
    :cond_b
    const v6, 0x3f066666

    goto :goto_0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mWindow:Landroid/view/View;

    const v1, 0x20200b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mButtonPositive:Landroid/widget/Button;

    .line 124
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mWindow:Landroid/view/View;

    const v1, 0x20200b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mButtonNegative:Landroid/widget/Button;

    .line 125
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mWindow:Landroid/view/View;

    const v1, 0x20200b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mButtonNeutral:Landroid/widget/Button;

    .line 126
    return-void
.end method

.method private setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V
    .locals 23
    .parameter "topPanel"
    .parameter "contentPanel"
    .parameter "customPanel"
    .parameter "hasButtons"
    .parameter "a"
    .parameter "hasTitle"
    .parameter "buttonPanel"

    .prologue
    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAlertDialogView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "popup_full_dark"

    invoke-static/range {v20 .. v21}, Lcom/htc/res/HtcResources;->getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    .line 659
    .local v10, fullDark:I
    if-nez v10, :cond_0

    .line 660
    const/16 v20, 0x0

    const v21, 0x20805e8

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 662
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAlertDialogView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "popup_top_dark"

    invoke-static/range {v20 .. v21}, Lcom/htc/res/HtcResources;->getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v17

    .line 663
    .local v17, topDark:I
    if-nez v17, :cond_1

    .line 664
    const/16 v20, 0x1

    const v21, 0x20805eb

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    .line 666
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAlertDialogView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "popup_center_dark"

    invoke-static/range {v20 .. v21}, Lcom/htc/res/HtcResources;->getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    .line 667
    .local v7, centerDark:I
    if-nez v7, :cond_2

    .line 668
    const/16 v20, 0x2

    const v21, 0x20805e5

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 670
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAlertDialogView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "popup_bottom_dark"

    invoke-static/range {v20 .. v21}, Lcom/htc/res/HtcResources;->getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 671
    .local v4, bottomDark:I
    if-nez v4, :cond_3

    .line 672
    const/16 v20, 0x3

    const v21, 0x20805e2

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 674
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAlertDialogView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "popup_full_bright"

    invoke-static/range {v20 .. v21}, Lcom/htc/res/HtcResources;->getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    .line 675
    .local v9, fullBright:I
    if-nez v9, :cond_4

    .line 676
    const/16 v20, 0x4

    const v21, 0x20805e7

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 678
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAlertDialogView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "popup_top_bright"

    invoke-static/range {v20 .. v21}, Lcom/htc/res/HtcResources;->getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v16

    .line 679
    .local v16, topBright:I
    if-nez v16, :cond_5

    .line 680
    const/16 v20, 0x5

    const v21, 0x20805ea

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    .line 682
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAlertDialogView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "popup_center_bright"

    invoke-static/range {v20 .. v21}, Lcom/htc/res/HtcResources;->getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    .line 683
    .local v6, centerBright:I
    if-nez v6, :cond_6

    .line 684
    const/16 v20, 0x6

    const v21, 0x20805e4

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 686
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAlertDialogView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "popup_bottom_bright"

    invoke-static/range {v20 .. v21}, Lcom/htc/res/HtcResources;->getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 687
    .local v3, bottomBright:I
    if-nez v3, :cond_7

    .line 688
    const/16 v20, 0x7

    const v21, 0x20805e1

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 690
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAlertDialogView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "popup_bottom_medium"

    invoke-static/range {v20 .. v21}, Lcom/htc/res/HtcResources;->getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 691
    .local v5, bottomMedium:I
    if-nez v5, :cond_8

    .line 692
    const/16 v20, 0x8

    const v21, 0x20805e3

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 694
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAlertDialogView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "popup_center_medium"

    invoke-static/range {v20 .. v21}, Lcom/htc/res/HtcResources;->getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    .line 695
    .local v8, centerMedium:I
    if-nez v8, :cond_9

    .line 696
    const/16 v20, 0x9

    const v21, 0x20805e6

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 708
    :cond_9
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v19, v0

    .line 709
    .local v19, views:[Landroid/view/View;
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v13, v0, [Z

    .line 710
    .local v13, light:[Z
    const/4 v12, 0x0

    .line 711
    .local v12, lastView:Landroid/view/View;
    const/4 v11, 0x0

    .line 713
    .local v11, lastLight:Z
    const/4 v14, 0x0

    .line 714
    .local v14, pos:I
    if-eqz p6, :cond_a

    .line 715
    aput-object p1, v19, v14

    .line 716
    const/16 v20, 0x0

    aput-boolean v20, v13, v14

    .line 717
    add-int/lit8 v14, v14, 0x1

    .line 725
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    const/16 p2, 0x0

    .end local p2
    :cond_b
    aput-object p2, v19, v14

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAlertDialogView;->mListView:Landroid/widget/ListView;

    move-object/from16 v20, v0

    if-nez v20, :cond_e

    const/16 v20, 0x0

    :goto_0
    aput-boolean v20, v13, v14

    .line 728
    add-int/lit8 v14, v14, 0x1

    .line 729
    if-eqz p3, :cond_c

    .line 730
    aput-object p3, v19, v14

    .line 731
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAlertDialogView;->mForceInverseBackground:Z

    move/from16 v20, v0

    aput-boolean v20, v13, v14

    .line 732
    add-int/lit8 v14, v14, 0x1

    .line 734
    :cond_c
    if-eqz p4, :cond_d

    .line 735
    aput-object p7, v19, v14

    .line 736
    const/16 v20, 0x1

    aput-boolean v20, v13, v14

    .line 739
    :cond_d
    const/4 v15, 0x0

    .line 740
    .local v15, setView:Z
    const/4 v14, 0x0

    :goto_1
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v14, v0, :cond_14

    .line 741
    aget-object v18, v19, v14

    .line 742
    .local v18, v:Landroid/view/View;
    if-nez v18, :cond_f

    .line 740
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 727
    .end local v15           #setView:Z
    .end local v18           #v:Landroid/view/View;
    :cond_e
    const/16 v20, 0x1

    goto :goto_0

    .line 745
    .restart local v15       #setView:Z
    .restart local v18       #v:Landroid/view/View;
    :cond_f
    if-eqz v12, :cond_10

    .line 746
    if-nez v15, :cond_12

    .line 747
    if-eqz v11, :cond_11

    move/from16 v20, v16

    :goto_3
    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 751
    :goto_4
    const/4 v15, 0x1

    .line 753
    :cond_10
    move-object/from16 v12, v18

    .line 754
    aget-boolean v11, v13, v14

    goto :goto_2

    :cond_11
    move/from16 v20, v17

    .line 747
    goto :goto_3

    .line 749
    :cond_12
    if-eqz v11, :cond_13

    move/from16 v20, v6

    :goto_5
    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    :cond_13
    move/from16 v20, v7

    goto :goto_5

    .line 757
    .end local v18           #v:Landroid/view/View;
    :cond_14
    if-eqz v12, :cond_15

    .line 758
    if-eqz v15, :cond_19

    .line 763
    if-eqz v11, :cond_18

    if-eqz p4, :cond_17

    .end local v5           #bottomMedium:I
    :goto_6
    invoke-virtual {v12, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 795
    .end local v9           #fullBright:I
    :cond_15
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAlertDialogView;->mListView:Landroid/widget/ListView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAlertDialogView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    if-eqz v20, :cond_16

    .line 796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAlertDialogView;->mListView:Landroid/widget/ListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAlertDialogView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 797
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAlertDialogView;->mCheckedItem:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_16

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAlertDialogView;->mListView:Landroid/widget/ListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAlertDialogView;->mCheckedItem:I

    move/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v20 .. v22}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAlertDialogView;->mListView:Landroid/widget/ListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAlertDialogView;->mCheckedItem:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ListView;->setSelection(I)V

    .line 802
    :cond_16
    return-void

    .restart local v5       #bottomMedium:I
    .restart local v9       #fullBright:I
    :cond_17
    move v5, v3

    .line 763
    goto :goto_6

    :cond_18
    move v5, v4

    goto :goto_6

    .line 766
    :cond_19
    if-eqz v11, :cond_1a

    .end local v9           #fullBright:I
    :goto_8
    invoke-virtual {v12, v9}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_7

    .restart local v9       #fullBright:I
    :cond_1a
    move v9, v10

    goto :goto_8
.end method

.method private setupButtons()Z
    .locals 14

    .prologue
    const v12, 0x106000b

    const/4 v9, 0x1

    const/16 v13, 0x8

    const/4 v10, 0x0

    .line 514
    const/4 v3, 0x0

    .line 515
    .local v3, defaultButton:Landroid/view/View;
    const/4 v2, 0x1

    .line 516
    .local v2, BIT_BUTTON_POSITIVE:I
    const/4 v0, 0x2

    .line 517
    .local v0, BIT_BUTTON_NEGATIVE:I
    const/4 v1, 0x4

    .line 518
    .local v1, BIT_BUTTON_NEUTRAL:I
    const/4 v7, 0x0

    .line 519
    .local v7, whichButtons:I
    iget-object v8, p0, Lcom/htc/widget/HtcAlertDialogView;->mWindow:Landroid/view/View;

    const v11, 0x20200b2

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/htc/widget/HtcAlertDialogView;->mButtonPositive:Landroid/widget/Button;

    .line 520
    iget-object v8, p0, Lcom/htc/widget/HtcAlertDialogView;->mButtonPositive:Landroid/widget/Button;

    iget-object v11, p0, Lcom/htc/widget/HtcAlertDialogView;->mPositiveButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 522
    iget-object v8, p0, Lcom/htc/widget/HtcAlertDialogView;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 523
    iget-object v8, p0, Lcom/htc/widget/HtcAlertDialogView;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v8, v13}, Landroid/widget/Button;->setVisibility(I)V

    .line 525
    iget-object v8, p0, Lcom/htc/widget/HtcAlertDialogView;->mWindow:Landroid/view/View;

    const v11, 0x20200b3

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 526
    .local v4, padding1:Landroid/view/View;
    invoke-virtual {v4, v13}, Landroid/view/View;->setVisibility(I)V

    .line 534
    .end local v4           #padding1:Landroid/view/View;
    :goto_0
    iget-boolean v8, p0, Lcom/htc/widget/HtcAlertDialogView;->mButtonPositiveDisabled:Z

    if-eqz v8, :cond_2

    .line 535
    iget-object v8, p0, Lcom/htc/widget/HtcAlertDialogView;->mButtonPositive:Landroid/widget/Button;

    const v11, 0x33ffffff

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setTextColor(I)V

    .line 536
    iget-object v8, p0, Lcom/htc/widget/HtcAlertDialogView;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 543
    :goto_1
    iget-object v8, p0, Lcom/htc/widget/HtcAlertDialogView;->mWindow:Landroid/view/View;

    const v11, 0x20200b6

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/htc/widget/HtcAlertDialogView;->mButtonNegative:Landroid/widget/Button;

    .line 544
    iget-object v8, p0, Lcom/htc/widget/HtcAlertDialogView;->mButtonNegative:Landroid/widget/Button;

    iget-object v11, p0, Lcom/htc/widget/HtcAlertDialogView;->mNegativeButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 546
    iget-object v8, p0, Lcom/htc/widget/HtcAlertDialogView;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 547
    iget-object v8, p0, Lcom/htc/widget/HtcAlertDialogView;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v8, v13}, Landroid/widget/Button;->setVisibility(I)V

    .line 549
    iget-object v8, p0, Lcom/htc/widget/HtcAlertDialogView;->mWindow:Landroid/view/View;

    const v11, 0x20200b7

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 550
    .local v5, padding2:Landroid/view/View;
    invoke-virtual {v5, v13}, Landroid/view/View;->setVisibility(I)V

    .line 562
    .end local v5           #padding2:Landroid/view/View;
    :goto_2
    iget-boolean v8, p0, Lcom/htc/widget/HtcAlertDialogView;->mButtonNegativeDisabled:Z

    if-eqz v8, :cond_5

    .line 563
    iget-object v8, p0, Lcom/htc/widget/HtcAlertDialogView;->mButtonNegative:Landroid/widget/Button;

    iget-object v11, p0, Lcom/htc/widget/HtcAlertDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x106000c

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setTextColor(I)V

    .line 564
    iget-object v8, p0, Lcom/htc/widget/HtcAlertDialogView;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 571
    :goto_3
    iget-object v8, p0, Lcom/htc/widget/HtcAlertDialogView;->mWindow:Landroid/view/View;

    const v11, 0x20200b4

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/htc/widget/HtcAlertDialogView;->mButtonNeutral:Landroid/widget/Button;

    .line 572
    iget-object v8, p0, Lcom/htc/widget/HtcAlertDialogView;->mButtonNeutral:Landroid/widget/Button;

    iget-object v11, p0, Lcom/htc/widget/HtcAlertDialogView;->mNeutralButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 574
    iget-object v8, p0, Lcom/htc/widget/HtcAlertDialogView;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 575
    iget-object v8, p0, Lcom/htc/widget/HtcAlertDialogView;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v8, v13}, Landroid/widget/Button;->setVisibility(I)V

    .line 577
    iget-object v8, p0, Lcom/htc/widget/HtcAlertDialogView;->mWindow:Landroid/view/View;

    const v11, 0x20200b5

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 578
    .local v6, padding3:Landroid/view/View;
    invoke-virtual {v6, v13}, Landroid/view/View;->setVisibility(I)V

    .line 593
    .end local v6           #padding3:Landroid/view/View;
    :goto_4
    if-ne v7, v2, :cond_8

    .line 594
    iget-object v8, p0, Lcom/htc/widget/HtcAlertDialogView;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v8}, Lcom/htc/widget/HtcAlertDialogView;->centerButton(Landroid/widget/Button;)V

    .line 601
    :cond_0
    :goto_5
    if-eqz v7, :cond_a

    move v8, v9

    :goto_6
    return v8

    .line 528
    :cond_1
    iget-object v8, p0, Lcom/htc/widget/HtcAlertDialogView;->mButtonPositive:Landroid/widget/Button;

    iget-object v11, p0, Lcom/htc/widget/HtcAlertDialogView;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 529
    iget-object v8, p0, Lcom/htc/widget/HtcAlertDialogView;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 530
    iget-object v3, p0, Lcom/htc/widget/HtcAlertDialogView;->mButtonPositive:Landroid/widget/Button;

    .line 531
    or-int/2addr v7, v2

    goto/16 :goto_0

    .line 538
    :cond_2
    iget-object v8, p0, Lcom/htc/widget/HtcAlertDialogView;->mButtonPositive:Landroid/widget/Button;

    iget-object v11, p0, Lcom/htc/widget/HtcAlertDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setTextColor(I)V

    .line 539
    iget-object v8, p0, Lcom/htc/widget/HtcAlertDialogView;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_1

    .line 553
    :cond_3
    iget-object v8, p0, Lcom/htc/widget/HtcAlertDialogView;->mButtonNegative:Landroid/widget/Button;

    iget-object v11, p0, Lcom/htc/widget/HtcAlertDialogView;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 554
    iget-object v8, p0, Lcom/htc/widget/HtcAlertDialogView;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 556
    if-nez v3, :cond_4

    .line 557
    iget-object v3, p0, Lcom/htc/widget/HtcAlertDialogView;->mButtonNegative:Landroid/widget/Button;

    .line 559
    :cond_4
    or-int/2addr v7, v0

    goto/16 :goto_2

    .line 566
    :cond_5
    iget-object v8, p0, Lcom/htc/widget/HtcAlertDialogView;->mButtonNegative:Landroid/widget/Button;

    iget-object v11, p0, Lcom/htc/widget/HtcAlertDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setTextColor(I)V

    .line 567
    iget-object v8, p0, Lcom/htc/widget/HtcAlertDialogView;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_3

    .line 580
    :cond_6
    iget-object v8, p0, Lcom/htc/widget/HtcAlertDialogView;->mButtonNeutral:Landroid/widget/Button;

    iget-object v11, p0, Lcom/htc/widget/HtcAlertDialogView;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 581
    iget-object v8, p0, Lcom/htc/widget/HtcAlertDialogView;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 583
    if-nez v3, :cond_7

    .line 584
    iget-object v3, p0, Lcom/htc/widget/HtcAlertDialogView;->mButtonNeutral:Landroid/widget/Button;

    .line 586
    :cond_7
    or-int/2addr v7, v1

    goto :goto_4

    .line 595
    :cond_8
    if-ne v7, v0, :cond_9

    .line 596
    iget-object v8, p0, Lcom/htc/widget/HtcAlertDialogView;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v8}, Lcom/htc/widget/HtcAlertDialogView;->centerButton(Landroid/widget/Button;)V

    goto :goto_5

    .line 597
    :cond_9
    if-ne v7, v1, :cond_0

    .line 598
    iget-object v8, p0, Lcom/htc/widget/HtcAlertDialogView;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v8}, Lcom/htc/widget/HtcAlertDialogView;->centerButton(Landroid/widget/Button;)V

    goto :goto_5

    :cond_a
    move v8, v10

    .line 601
    goto :goto_6
.end method

.method private setupContent(Landroid/widget/LinearLayout;)V
    .locals 6
    .parameter "contentPanel"

    .prologue
    const v5, 0x20200ac

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 487
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mWindow:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mScrollView:Landroid/widget/ScrollView;

    .line 488
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 491
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mWindow:Landroid/view/View;

    const v1, 0x20200ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mMessageView:Landroid/widget/TextView;

    .line 492
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 511
    :goto_0
    return-void

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 497
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialogView;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 499
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 500
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mScrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialogView;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 502
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 503
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mWindow:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 504
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 506
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 508
    :cond_2
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupTitle(Landroid/widget/LinearLayout;)Z
    .locals 13
    .parameter "topPanel"

    .prologue
    const/4 v1, 0x1

    const v12, 0x20200a7

    const/16 v11, 0x8

    .line 412
    const/4 v2, 0x1

    .line 414
    .local v2, hasTitle:Z
    iget-object v6, p0, Lcom/htc/widget/HtcAlertDialogView;->mCustomTitleView:Landroid/view/View;

    if-eqz v6, :cond_2

    .line 416
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v4, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 419
    .local v4, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-boolean v6, p0, Lcom/htc/widget/HtcAlertDialogView;->mCustomTitleAdded:Z

    if-eqz v6, :cond_0

    .line 420
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .line 421
    .local v3, index:I
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 424
    .end local v3           #index:I
    :cond_0
    iget-object v6, p0, Lcom/htc/widget/HtcAlertDialogView;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 425
    iput-boolean v1, p0, Lcom/htc/widget/HtcAlertDialogView;->mCustomTitleAdded:Z

    .line 428
    iget-object v6, p0, Lcom/htc/widget/HtcAlertDialogView;->mWindow:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 429
    .local v5, titleTemplate:Landroid/view/View;
    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 483
    .end local v4           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v5           #titleTemplate:Landroid/view/View;
    :cond_1
    :goto_0
    return v2

    .line 431
    :cond_2
    iget-object v6, p0, Lcom/htc/widget/HtcAlertDialogView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 433
    .local v1, hasTextTitle:Z
    :goto_1
    iget-object v6, p0, Lcom/htc/widget/HtcAlertDialogView;->mWindow:Landroid/view/View;

    const v7, 0x20200a8

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/htc/widget/HtcAlertDialogView;->mIconView:Landroid/widget/ImageView;

    .line 434
    if-eqz v1, :cond_7

    .line 437
    iget-object v6, p0, Lcom/htc/widget/HtcAlertDialogView;->mWindow:Landroid/view/View;

    const v7, 0x20200a9

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/htc/widget/HtcAlertDialogView;->mTitleView:Landroid/widget/TextView;

    .line 439
    iget-object v6, p0, Lcom/htc/widget/HtcAlertDialogView;->mTitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/htc/widget/HtcAlertDialogView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    iget-object v6, p0, Lcom/htc/widget/HtcAlertDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x20800a0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 444
    .local v0, dr:Landroid/graphics/drawable/Drawable;
    iget-object v6, p0, Lcom/htc/widget/HtcAlertDialogView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 451
    iget v6, p0, Lcom/htc/widget/HtcAlertDialogView;->mIconId:I

    if-lez v6, :cond_5

    .line 453
    iget-object v6, p0, Lcom/htc/widget/HtcAlertDialogView;->mIconView:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/htc/widget/HtcAlertDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget v8, p0, Lcom/htc/widget/HtcAlertDialogView;->mIconId:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 469
    :cond_3
    :goto_2
    iget-boolean v6, p0, Lcom/htc/widget/HtcAlertDialogView;->mTitleCenter:Z

    if-eqz v6, :cond_1

    .line 470
    iget-object v6, p0, Lcom/htc/widget/HtcAlertDialogView;->mWindow:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 471
    .local v5, titleTemplate:Landroid/widget/LinearLayout;
    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_0

    .line 431
    .end local v0           #dr:Landroid/graphics/drawable/Drawable;
    .end local v1           #hasTextTitle:Z
    .end local v5           #titleTemplate:Landroid/widget/LinearLayout;
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 455
    .restart local v0       #dr:Landroid/graphics/drawable/Drawable;
    .restart local v1       #hasTextTitle:Z
    :cond_5
    iget-object v6, p0, Lcom/htc/widget/HtcAlertDialogView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_6

    .line 456
    iget-object v6, p0, Lcom/htc/widget/HtcAlertDialogView;->mIconView:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/htc/widget/HtcAlertDialogView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 457
    :cond_6
    iget v6, p0, Lcom/htc/widget/HtcAlertDialogView;->mIconId:I

    if-nez v6, :cond_3

    .line 462
    iget-object v6, p0, Lcom/htc/widget/HtcAlertDialogView;->mTitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/htc/widget/HtcAlertDialogView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v7

    iget-object v8, p0, Lcom/htc/widget/HtcAlertDialogView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v8

    iget-object v9, p0, Lcom/htc/widget/HtcAlertDialogView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/HtcAlertDialogView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 466
    iget-object v6, p0, Lcom/htc/widget/HtcAlertDialogView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 477
    .end local v0           #dr:Landroid/graphics/drawable/Drawable;
    :cond_7
    iget-object v6, p0, Lcom/htc/widget/HtcAlertDialogView;->mWindow:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 478
    .local v5, titleTemplate:Landroid/view/View;
    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 479
    iget-object v6, p0, Lcom/htc/widget/HtcAlertDialogView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 480
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method private setupView()V
    .locals 15

    .prologue
    .line 351
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mWindow:Landroid/view/View;

    const v12, 0x20200ab

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 352
    .local v2, contentPanel:Landroid/widget/LinearLayout;
    invoke-direct {p0, v2}, Lcom/htc/widget/HtcAlertDialogView;->setupContent(Landroid/widget/LinearLayout;)V

    .line 353
    invoke-direct {p0}, Lcom/htc/widget/HtcAlertDialogView;->setupButtons()Z

    move-result v4

    .line 354
    .local v4, hasButtons:Z
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mWindow:Landroid/view/View;

    const v12, 0x20200a6

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 360
    .local v1, topPanel:Landroid/widget/LinearLayout;
    const/4 v11, 0x0

    .line 362
    .local v11, htcContext:Landroid/content/Context;
    :try_start_0
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/res/HtcResources;->getContext(Landroid/content/Context;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 367
    :goto_0
    const/4 v0, 0x0

    sget-object v12, Lcom/htc/R$styleable;->AlertDialog:[I

    const/high16 v13, 0x201

    const/4 v14, 0x0

    invoke-virtual {v11, v0, v12, v13, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 370
    .local v5, a:Landroid/content/res/TypedArray;
    invoke-direct {p0, v1}, Lcom/htc/widget/HtcAlertDialogView;->setupTitle(Landroid/widget/LinearLayout;)Z

    move-result v6

    .line 372
    .local v6, hasTitle:Z
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mWindow:Landroid/view/View;

    const v12, 0x20200b0

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 373
    .local v7, buttonPanel:Landroid/view/View;
    if-nez v4, :cond_0

    .line 374
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 377
    :cond_0
    const/4 v3, 0x0

    .line 378
    .local v3, customPanel:Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mView:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 379
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mWindow:Landroid/view/View;

    const v12, 0x20200ae

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #customPanel:Landroid/widget/FrameLayout;
    check-cast v3, Landroid/widget/FrameLayout;

    .line 380
    .restart local v3       #customPanel:Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mWindow:Landroid/view/View;

    const v12, 0x20200af

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    .line 381
    .local v8, custom:Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mView:Landroid/view/View;

    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v13, -0x1

    const/4 v14, -0x1

    invoke-direct {v12, v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v0, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    iget-boolean v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_1

    .line 383
    iget v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mViewSpacingLeft:I

    iget v12, p0, Lcom/htc/widget/HtcAlertDialogView;->mViewSpacingTop:I

    iget v13, p0, Lcom/htc/widget/HtcAlertDialogView;->mViewSpacingRight:I

    iget v14, p0, Lcom/htc/widget/HtcAlertDialogView;->mViewSpacingBottom:I

    invoke-virtual {v8, v0, v12, v13, v14}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 386
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 387
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, 0x0

    iput v12, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 396
    .end local v8           #custom:Landroid/widget/FrameLayout;
    :cond_2
    :goto_1
    if-eqz v6, :cond_4

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mMessage:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 397
    :cond_3
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mWindow:Landroid/view/View;

    const v12, 0x20200aa

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 399
    .local v9, divider:Landroid/view/View;
    iget-boolean v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mTitleDivider:Z

    if-eqz v0, :cond_6

    .line 400
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .end local v9           #divider:Landroid/view/View;
    :cond_4
    :goto_2
    move-object v0, p0

    .line 406
    invoke-direct/range {v0 .. v7}, Lcom/htc/widget/HtcAlertDialogView;->setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V

    .line 407
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 409
    return-void

    .line 363
    .end local v3           #customPanel:Landroid/widget/FrameLayout;
    .end local v5           #a:Landroid/content/res/TypedArray;
    .end local v6           #hasTitle:Z
    .end local v7           #buttonPanel:Landroid/view/View;
    :catch_0
    move-exception v10

    .line 364
    .local v10, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v10}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 390
    .end local v10           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3       #customPanel:Landroid/widget/FrameLayout;
    .restart local v5       #a:Landroid/content/res/TypedArray;
    .restart local v6       #hasTitle:Z
    .restart local v7       #buttonPanel:Landroid/view/View;
    :cond_5
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mWindow:Landroid/view/View;

    const v12, 0x20200ae

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v12, 0x8

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 402
    .restart local v9       #divider:Landroid/view/View;
    :cond_6
    const/4 v0, 0x4

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method public create()V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/htc/widget/HtcAlertDialogView;->apply()V

    .line 189
    invoke-direct {p0}, Lcom/htc/widget/HtcAlertDialogView;->setupView()V

    .line 190
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 194
    iput-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 195
    iput-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mPositiveButtonListener:Landroid/view/View$OnClickListener;

    .line 196
    iput-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 197
    iput-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mNeutralButtonListener:Landroid/view/View$OnClickListener;

    .line 198
    iput-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 199
    iput-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mNegativeButtonListener:Landroid/view/View$OnClickListener;

    .line 200
    iput-boolean v1, p0, Lcom/htc/widget/HtcAlertDialogView;->mButtonPositiveDisabled:Z

    .line 201
    iput-boolean v1, p0, Lcom/htc/widget/HtcAlertDialogView;->mButtonNeutralDisabled:Z

    .line 202
    iput-boolean v1, p0, Lcom/htc/widget/HtcAlertDialogView;->mButtonNegativeDisabled:Z

    .line 204
    iput-boolean v1, p0, Lcom/htc/widget/HtcAlertDialogView;->mTitleDivider:Z

    .line 205
    iput-boolean v1, p0, Lcom/htc/widget/HtcAlertDialogView;->mTitleCenter:Z

    .line 206
    iput-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mMessage:Ljava/lang/CharSequence;

    .line 207
    iput-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mTitle:Ljava/lang/CharSequence;

    .line 208
    iput-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 209
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mIconId:I

    .line 210
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0
    .parameter "customTitleView"

    .prologue
    .line 158
    iput-object p1, p0, Lcom/htc/widget/HtcAlertDialogView;->mCustomTitleView:Landroid/view/View;

    .line 159
    return-void
.end method

.method public setIcon(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 184
    iput p1, p0, Lcom/htc/widget/HtcAlertDialogView;->mIconId:I

    .line 185
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/htc/widget/HtcAlertDialogView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 181
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 172
    iput-object p1, p0, Lcom/htc/widget/HtcAlertDialogView;->mMessage:Ljava/lang/CharSequence;

    .line 173
    return-void
.end method

.method public setNegativeButton(ILandroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "id"
    .parameter "l"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 141
    iput-object p2, p0, Lcom/htc/widget/HtcAlertDialogView;->mNegativeButtonListener:Landroid/view/View$OnClickListener;

    .line 142
    return-void
.end method

.method public setNegativeButtonDisabled(Z)V
    .locals 0
    .parameter "disabled"

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/htc/widget/HtcAlertDialogView;->mButtonNegativeDisabled:Z

    .line 155
    return-void
.end method

.method public setNeutralButton(ILandroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "id"
    .parameter "l"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 136
    iput-object p2, p0, Lcom/htc/widget/HtcAlertDialogView;->mNeutralButtonListener:Landroid/view/View$OnClickListener;

    .line 137
    return-void
.end method

.method public setNeutralButtonDisabled(Z)V
    .locals 0
    .parameter "disabled"

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/htc/widget/HtcAlertDialogView;->mButtonNeutralDisabled:Z

    .line 151
    return-void
.end method

.method public setPositiveButton(ILandroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "id"
    .parameter "l"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcAlertDialogView;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 131
    iput-object p2, p0, Lcom/htc/widget/HtcAlertDialogView;->mPositiveButtonListener:Landroid/view/View$OnClickListener;

    .line 132
    return-void
.end method

.method public setPositiveButtonDisabled(Z)V
    .locals 0
    .parameter "disabled"

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/htc/widget/HtcAlertDialogView;->mButtonPositiveDisabled:Z

    .line 147
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 176
    iput-object p1, p0, Lcom/htc/widget/HtcAlertDialogView;->mTitle:Ljava/lang/CharSequence;

    .line 177
    return-void
.end method

.method public setTitleCenterEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/htc/widget/HtcAlertDialogView;->mTitleCenter:Z

    .line 168
    return-void
.end method

.method public setTitleDividerVisible(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/htc/widget/HtcAlertDialogView;->mTitleDivider:Z

    .line 164
    return-void
.end method
