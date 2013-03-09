.class public Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;
.super Landroid/widget/LinearLayout;
.source "HtcPreferenceHeaderItemView.java"


# static fields
.field private static sSpecialLayout:Z


# instance fields
.field private mIconImageView:Landroid/widget/ImageView;

.field private mSummaryTextView:Landroid/widget/TextView;

.field private mTitleTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;->sSpecialLayout:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;->initialize(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    invoke-direct {p0, p1}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;->initialize(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    invoke-direct {p0, p1}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;->initialize(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method private static inflateIconImageView(Landroid/content/Context;)Landroid/widget/ImageView;
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x2

    const/high16 v4, 0x40c0

    .line 216
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 217
    .local v0, imageView:Landroid/widget/ImageView;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 221
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x7f080027

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setId(I)V

    .line 226
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 232
    .local v1, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v6, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 234
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v6, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 238
    const/16 v3, 0x11

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 240
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    return-object v0
.end method

.method private static inflateLinearLayout(Landroid/content/Context;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 12
    .parameter "context"
    .parameter "linearLayout"

    .prologue
    const/4 v11, 0x0

    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 171
    .local v4, res:Landroid/content/res/Resources;
    new-instance v8, Landroid/widget/AbsListView$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    const v8, 0x10500ac

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 182
    const/4 v8, 0x1

    new-array v0, v8, [I

    const v8, 0x10102fd

    aput v8, v0, v11

    .line 183
    .local v0, attrs:[I
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 184
    .local v6, ta:Landroid/content/res/TypedArray;
    invoke-virtual {v6, v11}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 185
    .local v1, background:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 186
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 189
    const/16 v8, 0x10

    invoke-virtual {p1, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 193
    const/4 v3, 0x0

    .line 194
    .local v3, left:I
    const/4 v7, 0x0

    .line 197
    .local v7, top:I
    const/4 v5, 0x0

    .line 198
    .local v5, right:I
    const/4 v2, 0x0

    .line 199
    .local v2, bottom:I
    invoke-virtual {p1, v3, v7, v5, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 201
    return-object p1
.end method

.method private static inflateRelativeLayout(Landroid/content/Context;)Landroid/widget/RelativeLayout;
    .locals 7
    .parameter "context"

    .prologue
    const/4 v4, -0x2

    const/high16 v6, 0x40c0

    const/4 v5, 0x1

    .line 258
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 260
    .local v1, relativeLayout:Landroid/widget/RelativeLayout;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 267
    .local v2, res:Landroid/content/res/Resources;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f80

    invoke-direct {v0, v4, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 276
    .local v0, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v3, 0x4000

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v5, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 278
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v5, v6, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 280
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v5, v6, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 282
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v5, v6, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 285
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    return-object v1
.end method

.method private static inflateSummaryTextView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, -0x2

    const v3, 0x1020016

    .line 352
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 357
    .local v1, textView:Landroid/widget/TextView;
    const v2, 0x1020010

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 361
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 366
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 369
    sget-boolean v2, Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;->sSpecialLayout:Z

    if-eqz v2, :cond_0

    .line 371
    const/4 v2, 0x7

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 380
    :goto_0
    const v2, 0x2030025

    invoke-virtual {v1, p0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 383
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 386
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 388
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 390
    return-object v1

    .line 375
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

    .line 302
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 307
    .local v1, textView:Landroid/widget/TextView;
    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 312
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 317
    .local v0, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 320
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 323
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 326
    const v2, 0x2030012

    invoke-virtual {v1, p0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 328
    sget-boolean v2, Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;->sSpecialLayout:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 330
    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 334
    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    return-object v1
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, locale:Ljava/lang/String;
    const-string v6, "iw"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "ar"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 110
    :cond_0
    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;->sSpecialLayout:Z

    .line 115
    :goto_0
    invoke-static {p1, p0}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;->inflateLinearLayout(Landroid/content/Context;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 116
    .local v0, container:Landroid/widget/LinearLayout;
    invoke-static {p1}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;->inflateIconImageView(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v1

    .line 117
    .local v1, iconImageView:Landroid/widget/ImageView;
    invoke-static {p1}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;->inflateRelativeLayout(Landroid/content/Context;)Landroid/widget/RelativeLayout;

    move-result-object v3

    .line 118
    .local v3, subContainer:Landroid/widget/RelativeLayout;
    invoke-static {p1}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;->inflateTitleTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v5

    .line 119
    .local v5, titleTextView:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;->inflateSummaryTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v4

    .line 121
    .local v4, summaryTextView:Landroid/widget/TextView;
    sget-boolean v6, Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;->sSpecialLayout:Z

    if-eqz v6, :cond_2

    .line 129
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 130
    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 131
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 132
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 147
    :goto_1
    iput-object v1, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;->mIconImageView:Landroid/widget/ImageView;

    .line 148
    iput-object v5, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;->mTitleTextView:Landroid/widget/TextView;

    .line 149
    iput-object v4, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;->mSummaryTextView:Landroid/widget/TextView;

    .line 150
    return-void

    .line 112
    .end local v0           #container:Landroid/widget/LinearLayout;
    .end local v1           #iconImageView:Landroid/widget/ImageView;
    .end local v3           #subContainer:Landroid/widget/RelativeLayout;
    .end local v4           #summaryTextView:Landroid/widget/TextView;
    .end local v5           #titleTextView:Landroid/widget/TextView;
    :cond_1
    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;->sSpecialLayout:Z

    goto :goto_0

    .line 141
    .restart local v0       #container:Landroid/widget/LinearLayout;
    .restart local v1       #iconImageView:Landroid/widget/ImageView;
    .restart local v3       #subContainer:Landroid/widget/RelativeLayout;
    .restart local v4       #summaryTextView:Landroid/widget/TextView;
    .restart local v5       #titleTextView:Landroid/widget/TextView;
    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 142
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 143
    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 144
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_1
.end method


# virtual methods
.method public bindWrapHeader(Lcom/htc/preference/HtcPreferenceActivity$Header;)V
    .locals 2
    .parameter "header"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;->mIconImageView:Landroid/widget/ImageView;

    iget v1, p1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;->mTitleTextView:Landroid/widget/TextView;

    iget v1, p1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 104
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;->mSummaryTextView:Landroid/widget/TextView;

    iget v1, p1, Lcom/htc/preference/HtcPreferenceActivity$Header;->summaryRes:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 105
    return-void
.end method

.method public getIconImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;->mIconImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getSummaryTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;->mSummaryTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitleTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;->mTitleTextView:Landroid/widget/TextView;

    return-object v0
.end method
