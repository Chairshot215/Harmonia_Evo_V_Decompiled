.class public Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;
.super Landroid/widget/LinearLayout;
.source "HtcPreferenceHeaderSwitchItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static sSpecialLayout:Z


# instance fields
.field private mHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

.field private mIconImageView:Landroid/widget/ImageView;

.field private mSummaryTextView:Landroid/widget/TextView;

.field private mSwitchPref:Landroid/widget/LinearLayout;

.field private mTitleTextView:Landroid/widget/TextView;

.field private mToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->sSpecialLayout:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 56
    invoke-direct {p0, p1}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->initialize(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    invoke-direct {p0, p1}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->initialize(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    invoke-direct {p0, p1}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->initialize(Landroid/content/Context;)V

    .line 80
    return-void
.end method

.method private static inflateIconImageView(Landroid/content/Context;)Landroid/widget/ImageView;
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, -0x2

    const/4 v5, 0x1

    const/high16 v4, 0x40c0

    .line 329
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 330
    .local v0, imageView:Landroid/widget/ImageView;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 334
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x7f080027

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setId(I)V

    .line 339
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 346
    .local v1, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v5, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 348
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v5, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 350
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v5, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 354
    const/16 v3, 0x30

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 356
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 358
    return-object v0
.end method

.method private static inflateLinearLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, -0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 264
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 265
    .local v3, res:Landroid/content/res/Resources;
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 270
    .local v2, linearLayout:Landroid/widget/LinearLayout;
    const v6, 0x7f08010f

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setId(I)V

    .line 275
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f80

    invoke-direct {v6, v10, v10, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    const v6, 0x10500ac

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 289
    const/16 v6, 0x10

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 292
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 295
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 298
    const-string v6, "item_background_holo_dark"

    invoke-static {p0, v6, v8}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    .line 301
    .local v4, resId:I
    if-eqz v4, :cond_0

    .line 303
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 313
    :goto_0
    return-object v2

    .line 306
    :cond_0
    new-array v0, v9, [I

    const v6, 0x101030e

    aput v6, v0, v8

    .line 307
    .local v0, attrs:[I
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 308
    .local v5, ta:Landroid/content/res/TypedArray;
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 309
    .local v1, background:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 310
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method private static inflateLinearLayout(Landroid/content/Context;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 8
    .parameter "context"
    .parameter "linearLayout"

    .prologue
    const/4 v7, 0x0

    .line 217
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 222
    .local v2, res:Landroid/content/res/Resources;
    const v4, 0x7f08010e

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setId(I)V

    .line 226
    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    const v4, 0x10500ac

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 237
    const/4 v4, 0x1

    new-array v0, v4, [I

    const v4, 0x10102fd

    aput v4, v0, v7

    .line 238
    .local v0, attrs:[I
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 239
    .local v3, ta:Landroid/content/res/TypedArray;
    invoke-virtual {v3, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 240
    .local v1, background:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 241
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 244
    const/16 v4, 0x10

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 246
    return-object p1
.end method

.method private static inflateRelativeLayout(Landroid/content/Context;)Landroid/widget/RelativeLayout;
    .locals 7
    .parameter "context"

    .prologue
    const/4 v4, -0x2

    const/high16 v6, 0x40c0

    const/4 v5, 0x1

    .line 374
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 376
    .local v1, relativeLayout:Landroid/widget/RelativeLayout;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 383
    .local v2, res:Landroid/content/res/Resources;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f80

    invoke-direct {v0, v4, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 392
    .local v0, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v3, 0x4000

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v5, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 394
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v5, v6, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 396
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v5, v6, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 398
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v5, v6, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 401
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 403
    return-object v1
.end method

.method private static inflateSummaryTextView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x3

    const/4 v4, -0x2

    const v3, 0x1020016

    .line 468
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 473
    .local v1, textView:Landroid/widget/TextView;
    const v2, 0x1020010

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 477
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 482
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 485
    sget-boolean v2, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->sSpecialLayout:Z

    if-eqz v2, :cond_0

    .line 487
    const/4 v2, 0x7

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 496
    :goto_0
    const v2, 0x2030025

    invoke-virtual {v1, p0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 499
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 502
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 504
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 506
    return-object v1

    .line 491
    :cond_0
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0
.end method

.method private static inflateTitleTextView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x2

    .line 418
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 423
    .local v1, textView:Landroid/widget/TextView;
    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 428
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 433
    .local v0, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 436
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 439
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 442
    const v2, 0x2030012

    invoke-virtual {v1, p0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 444
    sget-boolean v2, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->sSpecialLayout:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 446
    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 450
    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 452
    return-object v1
.end method

.method private static inflateToggleButtonView(Landroid/content/Context;)Lcom/android/settings/framework/widget/HtcToggleButton;
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, -0x2

    .line 520
    new-instance v1, Lcom/android/settings/framework/widget/HtcToggleButton;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/widget/HtcToggleButton;-><init>(Landroid/content/Context;)V

    .line 524
    .local v1, toggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;
    const v2, 0x7f080110

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/widget/HtcToggleButton;->setId(I)V

    .line 528
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 534
    .local v0, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 537
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/widget/HtcToggleButton;->setFocusable(Z)V

    .line 540
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/widget/HtcToggleButton;->setClickable(Z)V

    .line 542
    invoke-virtual {v1, v0}, Lcom/android/settings/framework/widget/HtcToggleButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 544
    return-object v1
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget-object v8, v8, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 143
    .local v3, locale:Ljava/lang/String;
    const-string v8, "iw"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "ar"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 144
    :cond_0
    const/4 v8, 0x1

    sput-boolean v8, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->sSpecialLayout:Z

    .line 149
    :goto_0
    invoke-static {p1, p0}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->inflateLinearLayout(Landroid/content/Context;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 150
    .local v1, container:Landroid/widget/LinearLayout;
    invoke-static {p1}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->inflateLinearLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 151
    .local v4, secondLevelContainer:Landroid/widget/LinearLayout;
    invoke-static {p1}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->inflateIconImageView(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v2

    .line 152
    .local v2, iconImageView:Landroid/widget/ImageView;
    invoke-static {p1}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->inflateRelativeLayout(Landroid/content/Context;)Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 153
    .local v0, ThirdLevelContainer:Landroid/widget/RelativeLayout;
    invoke-static {p1}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->inflateTitleTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v6

    .line 154
    .local v6, titleTextView:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->inflateSummaryTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v5

    .line 156
    .local v5, summaryTextView:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->inflateToggleButtonView(Landroid/content/Context;)Lcom/android/settings/framework/widget/HtcToggleButton;

    move-result-object v7

    .line 158
    .local v7, toggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;
    sget-boolean v8, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->sSpecialLayout:Z

    if-eqz v8, :cond_2

    .line 170
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 171
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 172
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 173
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 174
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 175
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 196
    :goto_1
    iput-object v2, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->mIconImageView:Landroid/widget/ImageView;

    .line 197
    iput-object v6, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->mTitleTextView:Landroid/widget/TextView;

    .line 198
    iput-object v5, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->mSummaryTextView:Landroid/widget/TextView;

    .line 199
    iput-object v7, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->mToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    .line 201
    iput-object v4, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->mSwitchPref:Landroid/widget/LinearLayout;

    .line 202
    return-void

    .line 146
    .end local v0           #ThirdLevelContainer:Landroid/widget/RelativeLayout;
    .end local v1           #container:Landroid/widget/LinearLayout;
    .end local v2           #iconImageView:Landroid/widget/ImageView;
    .end local v4           #secondLevelContainer:Landroid/widget/LinearLayout;
    .end local v5           #summaryTextView:Landroid/widget/TextView;
    .end local v6           #titleTextView:Landroid/widget/TextView;
    .end local v7           #toggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;
    :cond_1
    const/4 v8, 0x0

    sput-boolean v8, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->sSpecialLayout:Z

    goto :goto_0

    .line 188
    .restart local v0       #ThirdLevelContainer:Landroid/widget/RelativeLayout;
    .restart local v1       #container:Landroid/widget/LinearLayout;
    .restart local v2       #iconImageView:Landroid/widget/ImageView;
    .restart local v4       #secondLevelContainer:Landroid/widget/LinearLayout;
    .restart local v5       #summaryTextView:Landroid/widget/TextView;
    .restart local v6       #titleTextView:Landroid/widget/TextView;
    .restart local v7       #toggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;
    :cond_2
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 189
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 190
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 191
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 192
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 193
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_1
.end method


# virtual methods
.method public bindWrapHeader(Lcom/htc/preference/HtcPreferenceActivity$Header;)V
    .locals 1
    .parameter "header"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->mHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    .line 138
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->mSwitchPref:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    return-void
.end method

.method public getIconImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->mIconImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getSummaryTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->mSummaryTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitleTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->mTitleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getToggleButton()Lcom/android/settings/framework/widget/HtcToggleButton;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->mToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 549
    iget-object v1, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->mContext:Landroid/content/Context;

    instance-of v1, v1, Lcom/htc/preference/HtcPreferenceActivity;

    if-eqz v1, :cond_0

    .line 550
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/htc/preference/HtcPreferenceActivity;

    .line 555
    .local v0, activity:Lcom/htc/preference/HtcPreferenceActivity;
    iget-object v1, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->mHeader:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/preference/HtcPreferenceActivity;->onHeaderClick(Lcom/htc/preference/HtcPreferenceActivity$Header;I)V

    .line 558
    .end local v0           #activity:Lcom/htc/preference/HtcPreferenceActivity;
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 87
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->setClickable(Z)V

    .line 90
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 91
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->mSummaryTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 92
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->mToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/widget/HtcToggleButton;->setEnabled(Z)V

    .line 93
    return-void

    .line 87
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
