.class public Lcom/android/settings/framework/widget/HtcPreferenceCategoryView;
.super Landroid/widget/TextView;
.source "HtcPreferenceCategoryView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-direct {p0, p1}, Lcom/android/settings/framework/widget/HtcPreferenceCategoryView;->initialize(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-direct {p0, p1}, Lcom/android/settings/framework/widget/HtcPreferenceCategoryView;->initialize(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    invoke-direct {p0, p1}, Lcom/android/settings/framework/widget/HtcPreferenceCategoryView;->initialize(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    const/4 v11, 0x1

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 98
    .local v2, res:Landroid/content/res/Resources;
    new-instance v5, Landroid/widget/AbsListView$LayoutParams;

    const/4 v6, -0x1

    const/high16 v7, 0x41a8

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-static {v11, v7, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-double v7, v7

    const-wide/high16 v9, 0x3fe0

    add-double/2addr v7, v9

    double-to-int v7, v7

    invoke-direct {v5, v6, v7}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v5}, Lcom/android/settings/framework/widget/HtcPreferenceCategoryView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    const/16 v5, 0x10

    invoke-virtual {p0, v5}, Lcom/android/settings/framework/widget/HtcPreferenceCategoryView;->setGravity(I)V

    .line 108
    const v5, 0x1020016

    invoke-virtual {p0, v5}, Lcom/android/settings/framework/widget/HtcPreferenceCategoryView;->setId(I)V

    .line 111
    const v5, 0x1080219

    invoke-virtual {p0, v5}, Lcom/android/settings/framework/widget/HtcPreferenceCategoryView;->setBackgroundResource(I)V

    .line 114
    const/4 v4, 0x0

    .line 115
    .local v4, top:I
    const/4 v0, 0x0

    .line 116
    .local v0, bottom:I
    const/4 v3, 0x0

    .line 117
    .local v3, right:I
    const/high16 v5, 0x40c0

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v11, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v1, v5

    .line 119
    .local v1, left:I
    invoke-virtual {p0, v1, v4, v3, v0}, Lcom/android/settings/framework/widget/HtcPreferenceCategoryView;->setPadding(IIII)V

    .line 122
    const v5, 0x203002a

    invoke-virtual {p0, p1, v5}, Lcom/android/settings/framework/widget/HtcPreferenceCategoryView;->setTextAppearance(Landroid/content/Context;I)V

    .line 125
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p0, v5, v11}, Lcom/android/settings/framework/widget/HtcPreferenceCategoryView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 126
    return-void
.end method


# virtual methods
.method public bindWrapHeader(Lcom/htc/preference/HtcPreferenceActivity$Header;)V
    .locals 2
    .parameter "header"

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/android/settings/framework/widget/HtcPreferenceCategoryView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    iget v1, p1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 75
    return-void
.end method

.method public getTitleTextView()Landroid/widget/TextView;
    .locals 0

    .prologue
    .line 66
    return-object p0
.end method
