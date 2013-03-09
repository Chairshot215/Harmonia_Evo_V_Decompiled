.class public Lcom/android/browser/BreadCrumbView;
.super Landroid/widget/LinearLayout;
.source "BreadCrumbView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/BreadCrumbView$Crumb;,
        Lcom/android/browser/BreadCrumbView$Controller;
    }
.end annotation


# static fields
.field private static final CRUMB_PADDING:I = 0x8

.field private static final DIVIDER_PADDING:I = 0xc


# instance fields
.field private mBackButton:Landroid/widget/ImageButton;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/browser/BreadCrumbView$Controller;

.field private mCrumbPadding:I

.field private mCrumbs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/browser/BreadCrumbView$Crumb;",
            ">;"
        }
    .end annotation
.end field

.field private mDividerPadding:F

.field private mMaxVisible:I

.field private mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

.field private mUseBackButton:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/browser/BreadCrumbView;->mMaxVisible:I

    .line 83
    invoke-direct {p0, p1}, Lcom/android/browser/BreadCrumbView;->init(Landroid/content/Context;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/browser/BreadCrumbView;->mMaxVisible:I

    .line 75
    invoke-direct {p0, p1}, Lcom/android/browser/BreadCrumbView;->init(Landroid/content/Context;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/browser/BreadCrumbView;->mMaxVisible:I

    .line 66
    invoke-direct {p0, p1}, Lcom/android/browser/BreadCrumbView;->init(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/BreadCrumbView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/browser/BreadCrumbView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/browser/BreadCrumbView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/android/browser/BreadCrumbView;->mCrumbPadding:I

    return v0
.end method

.method private addBackButton()V
    .locals 6

    .prologue
    .line 171
    new-instance v2, Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/browser/BreadCrumbView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/browser/BreadCrumbView;->mBackButton:Landroid/widget/ImageButton;

    .line 172
    iget-object v2, p0, Lcom/android/browser/BreadCrumbView;->mBackButton:Landroid/widget/ImageButton;

    const v3, 0x7f02001a

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 173
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 174
    .local v0, outValue:Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/android/browser/BreadCrumbView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101030e

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 176
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    .line 177
    .local v1, resid:I
    iget-object v2, p0, Lcom/android/browser/BreadCrumbView;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 178
    iget-object v2, p0, Lcom/android/browser/BreadCrumbView;->mBackButton:Landroid/widget/ImageButton;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    iget-object v2, p0, Lcom/android/browser/BreadCrumbView;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v2, p0, Lcom/android/browser/BreadCrumbView;->mBackButton:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 182
    iget-object v2, p0, Lcom/android/browser/BreadCrumbView;->mBackButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/browser/BreadCrumbView;->addView(Landroid/view/View;I)V

    .line 183
    return-void
.end method

.method private addSeparator()V
    .locals 2

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/browser/BreadCrumbView;->makeDividerView()Landroid/widget/ImageView;

    move-result-object v0

    .line 197
    .local v0, sep:Landroid/view/View;
    invoke-direct {p0}, Lcom/android/browser/BreadCrumbView;->makeDividerLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    invoke-virtual {p0, v0}, Lcom/android/browser/BreadCrumbView;->addView(Landroid/view/View;)V

    .line 199
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .parameter "ctx"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/browser/BreadCrumbView;->mContext:Landroid/content/Context;

    .line 88
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/browser/BreadCrumbView;->setFocusable(Z)V

    .line 89
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/browser/BreadCrumbView;->mUseBackButton:Z

    .line 90
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/browser/BreadCrumbView;->mCrumbs:Ljava/util/List;

    .line 91
    iget-object v2, p0, Lcom/android/browser/BreadCrumbView;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v2, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 92
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v2, 0x9c

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/BreadCrumbView;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 93
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 94
    iget-object v2, p0, Lcom/android/browser/BreadCrumbView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 95
    .local v1, density:F
    const/high16 v2, 0x4140

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/android/browser/BreadCrumbView;->mDividerPadding:F

    .line 96
    const/high16 v2, 0x4100

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/android/browser/BreadCrumbView;->mCrumbPadding:I

    .line 97
    invoke-direct {p0}, Lcom/android/browser/BreadCrumbView;->addBackButton()V

    .line 98
    return-void
.end method

.method private makeDividerLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .prologue
    .line 209
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 211
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    iget v1, p0, Lcom/android/browser/BreadCrumbView;->mDividerPadding:F

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 212
    iget v1, p0, Lcom/android/browser/BreadCrumbView;->mDividerPadding:F

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 213
    return-object v0
.end method

.method private makeDividerView()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 202
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/browser/BreadCrumbView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 203
    .local v0, result:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/android/browser/BreadCrumbView;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 204
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 205
    return-object v0
.end method

.method private pop(Z)V
    .locals 4
    .parameter "notify"

    .prologue
    .line 217
    iget-object v2, p0, Lcom/android/browser/BreadCrumbView;->mCrumbs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 218
    .local v0, n:I
    if-lez v0, :cond_3

    .line 219
    invoke-direct {p0}, Lcom/android/browser/BreadCrumbView;->removeLastView()V

    .line 220
    iget-boolean v2, p0, Lcom/android/browser/BreadCrumbView;->mUseBackButton:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 222
    :cond_0
    invoke-direct {p0}, Lcom/android/browser/BreadCrumbView;->removeLastView()V

    .line 224
    :cond_1
    iget-object v2, p0, Lcom/android/browser/BreadCrumbView;->mCrumbs:Ljava/util/List;

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 225
    iget-boolean v2, p0, Lcom/android/browser/BreadCrumbView;->mUseBackButton:Z

    if-eqz v2, :cond_2

    .line 226
    invoke-virtual {p0}, Lcom/android/browser/BreadCrumbView;->getTopCrumb()Lcom/android/browser/BreadCrumbView$Crumb;

    move-result-object v1

    .line 227
    .local v1, top:Lcom/android/browser/BreadCrumbView$Crumb;
    if-eqz v1, :cond_4

    iget-boolean v2, v1, Lcom/android/browser/BreadCrumbView$Crumb;->canGoBack:Z

    if-eqz v2, :cond_4

    .line 228
    iget-object v2, p0, Lcom/android/browser/BreadCrumbView;->mBackButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 233
    .end local v1           #top:Lcom/android/browser/BreadCrumbView$Crumb;
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/browser/BreadCrumbView;->updateVisible()V

    .line 234
    if-eqz p1, :cond_3

    .line 235
    invoke-virtual {p0}, Lcom/android/browser/BreadCrumbView;->notifyController()V

    .line 238
    :cond_3
    return-void

    .line 230
    .restart local v1       #top:Lcom/android/browser/BreadCrumbView$Crumb;
    :cond_4
    iget-object v2, p0, Lcom/android/browser/BreadCrumbView;->mBackButton:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private pushCrumb(Lcom/android/browser/BreadCrumbView$Crumb;)V
    .locals 1
    .parameter "crumb"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/browser/BreadCrumbView;->mCrumbs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 187
    invoke-direct {p0}, Lcom/android/browser/BreadCrumbView;->addSeparator()V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BreadCrumbView;->mCrumbs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v0, p1, Lcom/android/browser/BreadCrumbView$Crumb;->crumbView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/browser/BreadCrumbView;->addView(Landroid/view/View;)V

    .line 191
    invoke-direct {p0}, Lcom/android/browser/BreadCrumbView;->updateVisible()V

    .line 192
    iget-object v0, p1, Lcom/android/browser/BreadCrumbView$Crumb;->crumbView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    return-void
.end method

.method private removeLastView()V
    .locals 2

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/android/browser/BreadCrumbView;->getChildCount()I

    move-result v0

    .line 283
    .local v0, ix:I
    if-lez v0, :cond_0

    .line 284
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/android/browser/BreadCrumbView;->removeViewAt(I)V

    .line 286
    :cond_0
    return-void
.end method

.method private updateVisible()V
    .locals 11

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 242
    const/4 v2, 0x1

    .line 243
    .local v2, childIndex:I
    iget v9, p0, Lcom/android/browser/BreadCrumbView;->mMaxVisible:I

    if-ltz v9, :cond_2

    .line 244
    invoke-virtual {p0}, Lcom/android/browser/BreadCrumbView;->size()I

    move-result v9

    iget v10, p0, Lcom/android/browser/BreadCrumbView;->mMaxVisible:I

    sub-int v6, v9, v10

    .line 245
    .local v6, invisibleCrumbs:I
    if-lez v6, :cond_1

    .line 246
    const/4 v4, 0x0

    .line 247
    .local v4, crumbIndex:I
    :goto_0
    if-ge v4, v6, :cond_1

    .line 249
    invoke-virtual {p0, v2}, Lcom/android/browser/BreadCrumbView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 250
    add-int/lit8 v2, v2, 0x1

    .line 253
    invoke-virtual {p0, v2}, Lcom/android/browser/BreadCrumbView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 254
    invoke-virtual {p0, v2}, Lcom/android/browser/BreadCrumbView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 256
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 258
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 262
    .end local v4           #crumbIndex:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/BreadCrumbView;->getChildCount()I

    move-result v1

    .line 263
    .local v1, childCount:I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 264
    invoke-virtual {p0, v2}, Lcom/android/browser/BreadCrumbView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    .line 265
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 268
    .end local v1           #childCount:I
    .end local v6           #invisibleCrumbs:I
    :cond_2
    invoke-virtual {p0}, Lcom/android/browser/BreadCrumbView;->getChildCount()I

    move-result v3

    .line 269
    .local v3, count:I
    move v5, v2

    .local v5, i:I
    :goto_2
    if-ge v5, v3, :cond_3

    .line 270
    invoke-virtual {p0, v5}, Lcom/android/browser/BreadCrumbView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    .line 269
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 273
    .end local v3           #count:I
    .end local v5           #i:I
    :cond_3
    iget-boolean v9, p0, Lcom/android/browser/BreadCrumbView;->mUseBackButton:Z

    if-eqz v9, :cond_6

    .line 274
    invoke-virtual {p0}, Lcom/android/browser/BreadCrumbView;->getTopCrumb()Lcom/android/browser/BreadCrumbView$Crumb;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {p0}, Lcom/android/browser/BreadCrumbView;->getTopCrumb()Lcom/android/browser/BreadCrumbView$Crumb;

    move-result-object v9

    iget-boolean v0, v9, Lcom/android/browser/BreadCrumbView$Crumb;->canGoBack:Z

    .line 275
    .local v0, canGoBack:Z
    :goto_3
    iget-object v9, p0, Lcom/android/browser/BreadCrumbView;->mBackButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_5

    :goto_4
    invoke-virtual {v9, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 279
    .end local v0           #canGoBack:Z
    :goto_5
    return-void

    :cond_4
    move v0, v7

    .line 274
    goto :goto_3

    .restart local v0       #canGoBack:Z
    :cond_5
    move v7, v8

    .line 275
    goto :goto_4

    .line 277
    .end local v0           #canGoBack:Z
    :cond_6
    iget-object v7, p0, Lcom/android/browser/BreadCrumbView;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_5
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 135
    :goto_0
    iget-object v0, p0, Lcom/android/browser/BreadCrumbView;->mCrumbs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/browser/BreadCrumbView;->pop(Z)V

    goto :goto_0

    .line 138
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/browser/BreadCrumbView;->pop(Z)V

    .line 139
    return-void
.end method

.method public getBaseline()I
    .locals 2

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/android/browser/BreadCrumbView;->getChildCount()I

    move-result v0

    .line 312
    .local v0, ix:I
    if-lez v0, :cond_0

    .line 315
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/android/browser/BreadCrumbView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 317
    :goto_0
    return v1

    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->getBaseline()I

    move-result v1

    goto :goto_0
.end method

.method public getMaxVisible()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/android/browser/BreadCrumbView;->mMaxVisible:I

    return v0
.end method

.method getTopCrumb()Lcom/android/browser/BreadCrumbView$Crumb;
    .locals 3

    .prologue
    .line 289
    const/4 v0, 0x0

    .line 290
    .local v0, crumb:Lcom/android/browser/BreadCrumbView$Crumb;
    iget-object v1, p0, Lcom/android/browser/BreadCrumbView;->mCrumbs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 291
    iget-object v1, p0, Lcom/android/browser/BreadCrumbView;->mCrumbs:Ljava/util/List;

    iget-object v2, p0, Lcom/android/browser/BreadCrumbView;->mCrumbs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #crumb:Lcom/android/browser/BreadCrumbView$Crumb;
    check-cast v0, Lcom/android/browser/BreadCrumbView$Crumb;

    .line 293
    .restart local v0       #crumb:Lcom/android/browser/BreadCrumbView$Crumb;
    :cond_0
    return-object v0
.end method

.method public getTopData()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/android/browser/BreadCrumbView;->getTopCrumb()Lcom/android/browser/BreadCrumbView$Crumb;

    move-result-object v0

    .line 124
    .local v0, c:Lcom/android/browser/BreadCrumbView$Crumb;
    if-eqz v0, :cond_0

    .line 125
    iget-object v1, v0, Lcom/android/browser/BreadCrumbView$Crumb;->data:Ljava/lang/Object;

    .line 127
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTopLevel()I
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/browser/BreadCrumbView;->mCrumbs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public notifyController()V
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/browser/BreadCrumbView;->mController:Lcom/android/browser/BreadCrumbView$Controller;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/browser/BreadCrumbView;->mCrumbs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/android/browser/BreadCrumbView;->mController:Lcom/android/browser/BreadCrumbView$Controller;

    iget-object v1, p0, Lcom/android/browser/BreadCrumbView;->mCrumbs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/browser/BreadCrumbView;->getTopCrumb()Lcom/android/browser/BreadCrumbView$Crumb;

    move-result-object v2

    iget-object v2, v2, Lcom/android/browser/BreadCrumbView$Crumb;->data:Ljava/lang/Object;

    invoke-interface {v0, p0, v1, v2}, Lcom/android/browser/BreadCrumbView$Controller;->onTop(Lcom/android/browser/BreadCrumbView;ILjava/lang/Object;)V

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/android/browser/BreadCrumbView;->mController:Lcom/android/browser/BreadCrumbView$Controller;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/browser/BreadCrumbView$Controller;->onTop(Lcom/android/browser/BreadCrumbView;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/browser/BreadCrumbView;->mBackButton:Landroid/widget/ImageButton;

    if-ne v0, p1, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/android/browser/BreadCrumbView;->popView()V

    .line 300
    invoke-virtual {p0}, Lcom/android/browser/BreadCrumbView;->notifyController()V

    .line 308
    :goto_0
    return-void

    .line 303
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/browser/BreadCrumbView;->getTopCrumb()Lcom/android/browser/BreadCrumbView$Crumb;

    move-result-object v0

    iget-object v0, v0, Lcom/android/browser/BreadCrumbView$Crumb;->crumbView:Landroid/view/View;

    if-eq p1, v0, :cond_1

    .line 304
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/browser/BreadCrumbView;->pop(Z)V

    goto :goto_1

    .line 306
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/BreadCrumbView;->notifyController()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 322
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 323
    iget-object v2, p0, Lcom/android/browser/BreadCrumbView;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 324
    .local v0, height:I
    invoke-virtual {p0}, Lcom/android/browser/BreadCrumbView;->getMeasuredHeight()I

    move-result v2

    if-ge v2, v0, :cond_1

    .line 327
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 328
    .local v1, mode:I
    sparse-switch v1, :sswitch_data_0

    .line 339
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/BreadCrumbView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0, v2, v0}, Lcom/android/browser/BreadCrumbView;->setMeasuredDimension(II)V

    .line 341
    .end local v1           #mode:I
    :cond_1
    :goto_0
    :sswitch_0
    return-void

    .line 330
    .restart local v1       #mode:I
    :sswitch_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    if-ge v2, v0, :cond_0

    goto :goto_0

    .line 328
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public popView()V
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/browser/BreadCrumbView;->pop(Z)V

    .line 168
    return-void
.end method

.method public pushView(Ljava/lang/String;Ljava/lang/Object;)Landroid/view/View;
    .locals 1
    .parameter "name"
    .parameter "data"

    .prologue
    .line 152
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/browser/BreadCrumbView;->pushView(Ljava/lang/String;ZLjava/lang/Object;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public pushView(Ljava/lang/String;ZLjava/lang/Object;)Landroid/view/View;
    .locals 2
    .parameter "name"
    .parameter "canGoBack"
    .parameter "data"

    .prologue
    .line 156
    new-instance v0, Lcom/android/browser/BreadCrumbView$Crumb;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/browser/BreadCrumbView$Crumb;-><init>(Lcom/android/browser/BreadCrumbView;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 157
    .local v0, crumb:Lcom/android/browser/BreadCrumbView$Crumb;
    invoke-direct {p0, v0}, Lcom/android/browser/BreadCrumbView;->pushCrumb(Lcom/android/browser/BreadCrumbView$Crumb;)V

    .line 158
    iget-object v1, v0, Lcom/android/browser/BreadCrumbView$Crumb;->crumbView:Landroid/view/View;

    return-object v1
.end method

.method public pushView(Landroid/view/View;Ljava/lang/Object;)V
    .locals 2
    .parameter "view"
    .parameter "data"

    .prologue
    .line 162
    new-instance v0, Lcom/android/browser/BreadCrumbView$Crumb;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/android/browser/BreadCrumbView$Crumb;-><init>(Lcom/android/browser/BreadCrumbView;Landroid/view/View;ZLjava/lang/Object;)V

    .line 163
    .local v0, crumb:Lcom/android/browser/BreadCrumbView$Crumb;
    invoke-direct {p0, v0}, Lcom/android/browser/BreadCrumbView;->pushCrumb(Lcom/android/browser/BreadCrumbView$Crumb;)V

    .line 164
    return-void
.end method

.method public setController(Lcom/android/browser/BreadCrumbView$Controller;)V
    .locals 0
    .parameter "ctl"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/browser/BreadCrumbView;->mController:Lcom/android/browser/BreadCrumbView$Controller;

    .line 107
    return-void
.end method

.method public setMaxVisible(I)V
    .locals 0
    .parameter "max"

    .prologue
    .line 114
    iput p1, p0, Lcom/android/browser/BreadCrumbView;->mMaxVisible:I

    .line 115
    invoke-direct {p0}, Lcom/android/browser/BreadCrumbView;->updateVisible()V

    .line 116
    return-void
.end method

.method public setUseBackButton(Z)V
    .locals 0
    .parameter "useflag"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/browser/BreadCrumbView;->mUseBackButton:Z

    .line 102
    invoke-direct {p0}, Lcom/android/browser/BreadCrumbView;->updateVisible()V

    .line 103
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/browser/BreadCrumbView;->mCrumbs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
