.class public Lcom/android/browser/TabBar;
.super Landroid/widget/LinearLayout;
.source "TabBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/TabBar$TabView;
    }
.end annotation


# static fields
.field private static final PROGRESS_MAX:I = 0x64


# instance fields
.field private mActiveDrawable:Landroid/graphics/drawable/Drawable;

.field private final mActiveMatrix:Landroid/graphics/Matrix;

.field private mActiveShader:Landroid/graphics/BitmapShader;

.field private final mActiveShaderPaint:Landroid/graphics/Paint;

.field private mActivity:Landroid/app/Activity;

.field private mAddTabOverlap:I

.field private mButtonWidth:I

.field private mCurrentTextureHeight:I

.field private mCurrentTextureWidth:I

.field private final mFocusPaint:Landroid/graphics/Paint;

.field private mInactiveDrawable:Landroid/graphics/drawable/Drawable;

.field private final mInactiveMatrix:Landroid/graphics/Matrix;

.field private mInactiveShader:Landroid/graphics/BitmapShader;

.field private final mInactiveShaderPaint:Landroid/graphics/Paint;

.field private mNewTab:Landroid/widget/ImageButton;

.field private mTabControl:Lcom/android/browser/TabControl;

.field private mTabMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/browser/Tab;",
            "Lcom/android/browser/TabBar$TabView;",
            ">;"
        }
    .end annotation
.end field

.field private mTabOverlap:I

.field private mTabSliceWidth:I

.field private mTabWidth:I

.field private mTabs:Lcom/android/browser/TabScrollView;

.field private mUi:Lcom/android/browser/XLargeUi;

.field private mUiController:Lcom/android/browser/UiController;

.field private mUseQuickControls:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/browser/UiController;Lcom/android/browser/XLargeUi;)V
    .locals 5
    .parameter "activity"
    .parameter "controller"
    .parameter "ui"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 93
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 72
    iput v3, p0, Lcom/android/browser/TabBar;->mCurrentTextureWidth:I

    .line 73
    iput v3, p0, Lcom/android/browser/TabBar;->mCurrentTextureHeight:I

    .line 78
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/browser/TabBar;->mActiveShaderPaint:Landroid/graphics/Paint;

    .line 79
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/browser/TabBar;->mInactiveShaderPaint:Landroid/graphics/Paint;

    .line 80
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/browser/TabBar;->mFocusPaint:Landroid/graphics/Paint;

    .line 81
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/android/browser/TabBar;->mActiveMatrix:Landroid/graphics/Matrix;

    .line 82
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/android/browser/TabBar;->mInactiveMatrix:Landroid/graphics/Matrix;

    .line 94
    iput-object p1, p0, Lcom/android/browser/TabBar;->mActivity:Landroid/app/Activity;

    .line 95
    iput-object p2, p0, Lcom/android/browser/TabBar;->mUiController:Lcom/android/browser/UiController;

    .line 96
    iget-object v2, p0, Lcom/android/browser/TabBar;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v2}, Lcom/android/browser/UiController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/TabBar;->mTabControl:Lcom/android/browser/TabControl;

    .line 97
    iput-object p3, p0, Lcom/android/browser/TabBar;->mUi:Lcom/android/browser/XLargeUi;

    .line 98
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 99
    .local v1, res:Landroid/content/res/Resources;
    const/high16 v2, 0x7f0b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/browser/TabBar;->mTabWidth:I

    .line 100
    const v2, 0x7f020004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/TabBar;->mActiveDrawable:Landroid/graphics/drawable/Drawable;

    .line 101
    const v2, 0x7f020012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/TabBar;->mInactiveDrawable:Landroid/graphics/drawable/Drawable;

    .line 103
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/browser/TabBar;->mTabMap:Ljava/util/Map;

    .line 104
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 105
    .local v0, factory:Landroid/view/LayoutInflater;
    const v2, 0x7f04002f

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 106
    const v2, 0x7f0b001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v3, v2, v3, v3}, Lcom/android/browser/TabBar;->setPadding(IIII)V

    .line 107
    const v2, 0x7f0d006e

    invoke-virtual {p0, v2}, Lcom/android/browser/TabBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/browser/TabScrollView;

    iput-object v2, p0, Lcom/android/browser/TabBar;->mTabs:Lcom/android/browser/TabScrollView;

    .line 108
    const v2, 0x7f0d0055

    invoke-virtual {p0, v2}, Lcom/android/browser/TabBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/browser/TabBar;->mNewTab:Landroid/widget/ImageButton;

    .line 109
    iget-object v2, p0, Lcom/android/browser/TabBar;->mNewTab:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v2, p0, Lcom/android/browser/TabBar;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v2}, Lcom/android/browser/UiController;->getTabs()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/browser/TabBar;->updateTabs(Ljava/util/List;)V

    .line 112
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/browser/TabBar;->mButtonWidth:I

    .line 114
    const v2, 0x7f0b0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/browser/TabBar;->mTabOverlap:I

    .line 115
    const v2, 0x7f0b0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/browser/TabBar;->mAddTabOverlap:I

    .line 116
    const v2, 0x7f0b0004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/browser/TabBar;->mTabSliceWidth:I

    .line 118
    iget-object v2, p0, Lcom/android/browser/TabBar;->mActiveShaderPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 119
    iget-object v2, p0, Lcom/android/browser/TabBar;->mActiveShaderPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 121
    iget-object v2, p0, Lcom/android/browser/TabBar;->mInactiveShaderPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 122
    iget-object v2, p0, Lcom/android/browser/TabBar;->mInactiveShaderPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 124
    iget-object v2, p0, Lcom/android/browser/TabBar;->mFocusPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 125
    iget-object v2, p0, Lcom/android/browser/TabBar;->mFocusPaint:Landroid/graphics/Paint;

    const v3, 0x7f0b0005

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 126
    iget-object v2, p0, Lcom/android/browser/TabBar;->mFocusPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 127
    iget-object v2, p0, Lcom/android/browser/TabBar;->mFocusPaint:Landroid/graphics/Paint;

    const v3, 0x7f0a0009

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/TabBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/browser/TabBar;->mTabOverlap:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/browser/TabBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/browser/TabBar;->mTabSliceWidth:I

    return v0
.end method

.method static synthetic access$1000(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-static {p0, p1, p2}, Lcom/android/browser/TabBar;->getDrawableAsBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/browser/TabBar;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/browser/TabBar;->mInactiveDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/browser/TabBar;)Landroid/graphics/BitmapShader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/browser/TabBar;->mActiveShader:Landroid/graphics/BitmapShader;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/browser/TabBar;Landroid/graphics/BitmapShader;)Landroid/graphics/BitmapShader;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/browser/TabBar;->mActiveShader:Landroid/graphics/BitmapShader;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/browser/TabBar;)Landroid/graphics/Paint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/browser/TabBar;->mActiveShaderPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/browser/TabBar;)Landroid/graphics/BitmapShader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/browser/TabBar;->mInactiveShader:Landroid/graphics/BitmapShader;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/browser/TabBar;Landroid/graphics/BitmapShader;)Landroid/graphics/BitmapShader;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/browser/TabBar;->mInactiveShader:Landroid/graphics/BitmapShader;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/browser/TabBar;)Landroid/graphics/Paint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/browser/TabBar;->mInactiveShaderPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/browser/TabBar;)Landroid/graphics/Matrix;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/browser/TabBar;->mActiveMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/browser/TabBar;)Landroid/graphics/Matrix;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/browser/TabBar;->mInactiveMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/browser/TabBar;)Landroid/graphics/Paint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/browser/TabBar;->mFocusPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/browser/TabBar;)Lcom/android/browser/TabScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/browser/TabBar;->mTabs:Lcom/android/browser/TabScrollView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/browser/TabBar;)Lcom/android/browser/XLargeUi;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/browser/TabBar;->mUi:Lcom/android/browser/XLargeUi;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/browser/TabBar;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/browser/TabBar;->mTabMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/browser/TabBar;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/browser/TabBar;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/browser/TabBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/browser/TabBar;->mTabWidth:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/browser/TabBar;)Lcom/android/browser/TabControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/browser/TabBar;->mTabControl:Lcom/android/browser/TabControl;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/browser/TabBar;)Lcom/android/browser/UiController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/browser/TabBar;->mUiController:Lcom/android/browser/UiController;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/browser/TabBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/browser/TabBar;->mCurrentTextureWidth:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/browser/TabBar;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/android/browser/TabBar;->mCurrentTextureWidth:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/browser/TabBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/browser/TabBar;->mCurrentTextureHeight:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/browser/TabBar;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/android/browser/TabBar;->mCurrentTextureHeight:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/browser/TabBar;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/browser/TabBar;->mActiveDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private animateTabIn(Lcom/android/browser/Tab;Lcom/android/browser/TabBar$TabView;)V
    .locals 3
    .parameter "tab"
    .parameter "tv"

    .prologue
    .line 476
    const-string v1, "scaleX"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p2, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 477
    .local v0, scalex:Landroid/animation/ObjectAnimator;
    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 478
    new-instance v1, Lcom/android/browser/TabBar$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/browser/TabBar$2;-><init>(Lcom/android/browser/TabBar;Lcom/android/browser/Tab;Lcom/android/browser/TabBar$TabView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 499
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 500
    return-void

    .line 476
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private animateTabOut(Lcom/android/browser/Tab;Lcom/android/browser/TabBar$TabView;)V
    .locals 7
    .parameter "tab"
    .parameter "tv"

    .prologue
    const/4 v6, 0x2

    .line 444
    const-string v4, "scaleX"

    new-array v5, v6, [F

    fill-array-data v5, :array_0

    invoke-static {p2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 445
    .local v2, scalex:Landroid/animation/ObjectAnimator;
    const-string v4, "scaleY"

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    invoke-static {p2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 446
    .local v3, scaley:Landroid/animation/ObjectAnimator;
    const-string v4, "alpha"

    new-array v5, v6, [F

    fill-array-data v5, :array_2

    invoke-static {p2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 447
    .local v0, alpha:Landroid/animation/ObjectAnimator;
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 448
    .local v1, animator:Landroid/animation/AnimatorSet;
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    aput-object v3, v4, v5

    aput-object v0, v4, v6

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 449
    const-wide/16 v4, 0x96

    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 450
    new-instance v4, Lcom/android/browser/TabBar$1;

    invoke-direct {v4, p0, p2, p1}, Lcom/android/browser/TabBar$1;-><init>(Lcom/android/browser/TabBar;Lcom/android/browser/TabBar$TabView;Lcom/android/browser/Tab;)V

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 472
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 473
    return-void

    .line 444
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 445
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 446
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private buildTabView(Lcom/android/browser/Tab;)Lcom/android/browser/TabBar$TabView;
    .locals 2
    .parameter "tab"

    .prologue
    .line 227
    new-instance v0, Lcom/android/browser/TabBar$TabView;

    iget-object v1, p0, Lcom/android/browser/TabBar;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/browser/TabBar$TabView;-><init>(Lcom/android/browser/TabBar;Landroid/content/Context;Lcom/android/browser/Tab;)V

    .line 228
    .local v0, tabview:Lcom/android/browser/TabBar$TabView;
    iget-object v1, p0, Lcom/android/browser/TabBar;->mTabMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    invoke-virtual {v0, p0}, Lcom/android/browser/TabBar$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    return-object v0
.end method

.method private static getDrawableAsBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "drawable"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    .line 234
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 235
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 236
    .local v1, c:Landroid/graphics/Canvas;
    invoke-virtual {p0, v3, v3, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 237
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 238
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 239
    return-object v0
.end method

.method private isLoading()Z
    .locals 3

    .prologue
    .line 553
    iget-object v1, p0, Lcom/android/browser/TabBar;->mTabMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/browser/TabBar;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/TabBar$TabView;

    .line 554
    .local v0, tv:Lcom/android/browser/TabBar$TabView;
    if-eqz v0, :cond_0

    .line 555
    iget-boolean v1, v0, Lcom/android/browser/TabBar$TabView;->mInLoad:Z

    .line 557
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showUrlBar()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/browser/TabBar;->mUi:Lcom/android/browser/XLargeUi;

    invoke-virtual {v0}, Lcom/android/browser/XLargeUi;->stopWebViewScrolling()V

    .line 223
    iget-object v0, p0, Lcom/android/browser/TabBar;->mUi:Lcom/android/browser/XLargeUi;

    invoke-virtual {v0}, Lcom/android/browser/XLargeUi;->showTitleBar()V

    .line 224
    return-void
.end method


# virtual methods
.method getTabCount()I
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/browser/TabBar;->mTabMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 194
    iget-object v2, p0, Lcom/android/browser/TabBar;->mNewTab:Landroid/widget/ImageButton;

    if-ne v2, p1, :cond_1

    .line 195
    iget-object v2, p0, Lcom/android/browser/TabBar;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v2}, Lcom/android/browser/UiController;->openTabToHomePage()Lcom/android/browser/Tab;

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-object v2, p0, Lcom/android/browser/TabBar;->mTabs:Lcom/android/browser/TabScrollView;

    invoke-virtual {v2}, Lcom/android/browser/TabScrollView;->getSelectedTab()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_5

    .line 197
    iget-boolean v2, p0, Lcom/android/browser/TabBar;->mUseQuickControls:Z

    if-eqz v2, :cond_3

    .line 198
    iget-object v2, p0, Lcom/android/browser/TabBar;->mUi:Lcom/android/browser/XLargeUi;

    invoke-virtual {v2}, Lcom/android/browser/XLargeUi;->isTitleBarShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/browser/TabBar;->isLoading()Z

    move-result v2

    if-nez v2, :cond_2

    .line 199
    iget-object v2, p0, Lcom/android/browser/TabBar;->mUi:Lcom/android/browser/XLargeUi;

    invoke-virtual {v2}, Lcom/android/browser/XLargeUi;->stopEditingUrl()V

    .line 200
    iget-object v2, p0, Lcom/android/browser/TabBar;->mUi:Lcom/android/browser/XLargeUi;

    invoke-virtual {v2}, Lcom/android/browser/XLargeUi;->hideTitleBar()V

    goto :goto_0

    .line 202
    :cond_2
    iget-object v2, p0, Lcom/android/browser/TabBar;->mUi:Lcom/android/browser/XLargeUi;

    invoke-virtual {v2}, Lcom/android/browser/XLargeUi;->stopWebViewScrolling()V

    .line 203
    iget-object v2, p0, Lcom/android/browser/TabBar;->mUi:Lcom/android/browser/XLargeUi;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/browser/XLargeUi;->editUrl(Z)V

    goto :goto_0

    .line 205
    :cond_3
    iget-object v2, p0, Lcom/android/browser/TabBar;->mUi:Lcom/android/browser/XLargeUi;

    invoke-virtual {v2}, Lcom/android/browser/XLargeUi;->isTitleBarShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/android/browser/TabBar;->isLoading()Z

    move-result v2

    if-nez v2, :cond_4

    .line 206
    iget-object v2, p0, Lcom/android/browser/TabBar;->mUi:Lcom/android/browser/XLargeUi;

    invoke-virtual {v2}, Lcom/android/browser/XLargeUi;->stopEditingUrl()V

    .line 207
    iget-object v2, p0, Lcom/android/browser/TabBar;->mUi:Lcom/android/browser/XLargeUi;

    invoke-virtual {v2}, Lcom/android/browser/XLargeUi;->hideTitleBar()V

    goto :goto_0

    .line 209
    :cond_4
    invoke-direct {p0}, Lcom/android/browser/TabBar;->showUrlBar()V

    goto :goto_0

    .line 211
    :cond_5
    instance-of v2, p1, Lcom/android/browser/TabBar$TabView;

    if-eqz v2, :cond_0

    move-object v2, p1

    .line 212
    check-cast v2, Lcom/android/browser/TabBar$TabView;

    iget-object v1, v2, Lcom/android/browser/TabBar$TabView;->mTab:Lcom/android/browser/Tab;

    .line 213
    .local v1, tab:Lcom/android/browser/Tab;
    iget-object v2, p0, Lcom/android/browser/TabBar;->mTabs:Lcom/android/browser/TabScrollView;

    invoke-virtual {v2, p1}, Lcom/android/browser/TabScrollView;->getChildIndex(Landroid/view/View;)I

    move-result v0

    .line 214
    .local v0, ix:I
    if-ltz v0, :cond_0

    .line 215
    iget-object v2, p0, Lcom/android/browser/TabBar;->mTabs:Lcom/android/browser/TabScrollView;

    invoke-virtual {v2, v0}, Lcom/android/browser/TabScrollView;->setSelectedTab(I)V

    .line 216
    iget-object v2, p0, Lcom/android/browser/TabBar;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v2, v1}, Lcom/android/browser/UiController;->switchToTab(Lcom/android/browser/Tab;)Z

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 133
    iget-object v1, p0, Lcom/android/browser/TabBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 134
    .local v0, res:Landroid/content/res/Resources;
    const/high16 v1, 0x7f0b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/browser/TabBar;->mTabWidth:I

    .line 136
    iget-object v1, p0, Lcom/android/browser/TabBar;->mTabs:Lcom/android/browser/TabScrollView;

    invoke-virtual {v1}, Lcom/android/browser/TabScrollView;->updateLayout()V

    .line 137
    return-void
.end method

.method public onFavicon(Lcom/android/browser/Tab;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "tab"
    .parameter "favicon"

    .prologue
    .line 513
    iget-object v1, p0, Lcom/android/browser/TabBar;->mTabMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/TabBar$TabView;

    .line 514
    .local v0, tv:Lcom/android/browser/TabBar$TabView;
    if-eqz v0, :cond_0

    .line 515
    iget-object v1, p0, Lcom/android/browser/TabBar;->mUi:Lcom/android/browser/XLargeUi;

    invoke-virtual {v1, p2}, Lcom/android/browser/XLargeUi;->getFaviconDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/browser/TabBar$TabView;->setFavicon(Landroid/graphics/drawable/Drawable;)V

    .line 517
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/android/browser/TabBar;->getPaddingLeft()I

    move-result v0

    .line 174
    .local v0, pl:I
    invoke-virtual {p0}, Lcom/android/browser/TabBar;->getPaddingTop()I

    move-result v1

    .line 175
    .local v1, pt:I
    iget-object v4, p0, Lcom/android/browser/TabBar;->mTabs:Lcom/android/browser/TabScrollView;

    invoke-virtual {v4}, Lcom/android/browser/TabScrollView;->getMeasuredWidth()I

    move-result v2

    .line 176
    .local v2, sw:I
    sub-int v4, p4, p2

    sub-int v3, v4, v0

    .line 177
    .local v3, w:I
    iget-boolean v4, p0, Lcom/android/browser/TabBar;->mUseQuickControls:Z

    if-eqz v4, :cond_2

    .line 178
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/browser/TabBar;->mButtonWidth:I

    .line 185
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/browser/TabBar;->mTabs:Lcom/android/browser/TabScrollView;

    add-int v5, v0, v2

    sub-int v6, p5, p3

    invoke-virtual {v4, v0, v1, v5, v6}, Lcom/android/browser/TabScrollView;->layout(IIII)V

    .line 187
    iget-boolean v4, p0, Lcom/android/browser/TabBar;->mUseQuickControls:Z

    if-nez v4, :cond_1

    .line 188
    iget-object v4, p0, Lcom/android/browser/TabBar;->mNewTab:Landroid/widget/ImageButton;

    add-int v5, v0, v2

    iget v6, p0, Lcom/android/browser/TabBar;->mAddTabOverlap:I

    sub-int/2addr v5, v6

    add-int v6, v0, v2

    iget v7, p0, Lcom/android/browser/TabBar;->mButtonWidth:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/android/browser/TabBar;->mAddTabOverlap:I

    sub-int/2addr v6, v7

    sub-int v7, p5, p3

    invoke-virtual {v4, v5, v1, v6, v7}, Landroid/widget/ImageButton;->layout(IIII)V

    .line 191
    :cond_1
    return-void

    .line 180
    :cond_2
    iget-object v4, p0, Lcom/android/browser/TabBar;->mNewTab:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Lcom/android/browser/TabBar;->mAddTabOverlap:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/browser/TabBar;->mButtonWidth:I

    .line 181
    sub-int v4, v3, v2

    iget v5, p0, Lcom/android/browser/TabBar;->mButtonWidth:I

    if-ge v4, v5, :cond_0

    .line 182
    iget v4, p0, Lcom/android/browser/TabBar;->mButtonWidth:I

    sub-int v2, v3, v4

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "hspec"
    .parameter "vspec"

    .prologue
    .line 161
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 162
    invoke-virtual {p0}, Lcom/android/browser/TabBar;->getMeasuredWidth()I

    move-result v0

    .line 164
    .local v0, w:I
    iget-boolean v1, p0, Lcom/android/browser/TabBar;->mUseQuickControls:Z

    if-nez v1, :cond_0

    .line 165
    iget v1, p0, Lcom/android/browser/TabBar;->mAddTabOverlap:I

    sub-int/2addr v0, v1

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/TabBar;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/TabBar;->setMeasuredDimension(II)V

    .line 168
    return-void
.end method

.method public onNewTab(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 520
    invoke-direct {p0, p1}, Lcom/android/browser/TabBar;->buildTabView(Lcom/android/browser/Tab;)Lcom/android/browser/TabBar$TabView;

    move-result-object v0

    .line 521
    .local v0, tv:Lcom/android/browser/TabBar$TabView;
    invoke-direct {p0, p1, v0}, Lcom/android/browser/TabBar;->animateTabIn(Lcom/android/browser/Tab;Lcom/android/browser/TabBar$TabView;)V

    .line 522
    return-void
.end method

.method public onProgress(Lcom/android/browser/Tab;I)V
    .locals 2
    .parameter "tab"
    .parameter "progress"

    .prologue
    .line 525
    iget-object v1, p0, Lcom/android/browser/TabBar;->mTabMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/TabBar$TabView;

    .line 526
    .local v0, tv:Lcom/android/browser/TabBar$TabView;
    if-eqz v0, :cond_0

    .line 527
    invoke-virtual {v0, p2}, Lcom/android/browser/TabBar$TabView;->setProgress(I)V

    .line 529
    :cond_0
    return-void
.end method

.method public onRemoveTab(Lcom/android/browser/Tab;)V
    .locals 2
    .parameter "tab"

    .prologue
    .line 532
    iget-object v1, p0, Lcom/android/browser/TabBar;->mTabMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/TabBar$TabView;

    .line 533
    .local v0, tv:Lcom/android/browser/TabBar$TabView;
    if-eqz v0, :cond_0

    .line 534
    invoke-direct {p0, p1, v0}, Lcom/android/browser/TabBar;->animateTabOut(Lcom/android/browser/Tab;Lcom/android/browser/TabBar$TabView;)V

    .line 538
    :goto_0
    return-void

    .line 536
    :cond_0
    iget-object v1, p0, Lcom/android/browser/TabBar;->mTabMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onSetActiveTab(Lcom/android/browser/Tab;)V
    .locals 3
    .parameter "tab"

    .prologue
    .line 505
    iget-object v1, p0, Lcom/android/browser/TabBar;->mTabs:Lcom/android/browser/TabScrollView;

    iget-object v2, p0, Lcom/android/browser/TabBar;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2, p1}, Lcom/android/browser/TabControl;->getTabPosition(Lcom/android/browser/Tab;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/browser/TabScrollView;->setSelectedTab(I)V

    .line 506
    iget-object v1, p0, Lcom/android/browser/TabBar;->mTabMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/TabBar$TabView;

    .line 507
    .local v0, tv:Lcom/android/browser/TabBar$TabView;
    if-eqz v0, :cond_0

    .line 508
    iget-object v1, v0, Lcom/android/browser/TabBar$TabView;->mTab:Lcom/android/browser/Tab;

    invoke-virtual {v1}, Lcom/android/browser/Tab;->getLoadProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/browser/TabBar$TabView;->setProgress(I)V

    .line 510
    :cond_0
    return-void
.end method

.method public onUrlAndTitle(Lcom/android/browser/Tab;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tab"
    .parameter "url"
    .parameter "title"

    .prologue
    .line 541
    iget-object v1, p0, Lcom/android/browser/TabBar;->mTabMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/TabBar$TabView;

    .line 542
    .local v0, tv:Lcom/android/browser/TabBar$TabView;
    if-eqz v0, :cond_1

    .line 543
    if-eqz p3, :cond_2

    .line 544
    invoke-virtual {v0, p3}, Lcom/android/browser/TabBar$TabView;->setDisplayTitle(Ljava/lang/String;)V

    .line 548
    :cond_0
    :goto_0
    #calls: Lcom/android/browser/TabBar$TabView;->updateTabIcons()V
    invoke-static {v0}, Lcom/android/browser/TabBar$TabView;->access$2100(Lcom/android/browser/TabBar$TabView;)V

    .line 550
    :cond_1
    return-void

    .line 545
    :cond_2
    if-eqz p2, :cond_0

    .line 546
    invoke-static {p2}, Lcom/android/browser/UrlUtils;->stripUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/browser/TabBar$TabView;->setDisplayTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method setUseQuickControls(Z)V
    .locals 2
    .parameter "useQuickControls"

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/android/browser/TabBar;->mUseQuickControls:Z

    .line 141
    iget-object v1, p0, Lcom/android/browser/TabBar;->mNewTab:Landroid/widget/ImageButton;

    iget-boolean v0, p0, Lcom/android/browser/TabBar;->mUseQuickControls:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 143
    return-void

    .line 141
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateTabs(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/browser/Tab;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, tabs:Ljava/util/List;,"Ljava/util/List<Lcom/android/browser/Tab;>;"
    iget-object v3, p0, Lcom/android/browser/TabBar;->mTabs:Lcom/android/browser/TabScrollView;

    invoke-virtual {v3}, Lcom/android/browser/TabScrollView;->clearTabs()V

    .line 151
    iget-object v3, p0, Lcom/android/browser/TabBar;->mTabMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 152
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/Tab;

    .line 153
    .local v1, tab:Lcom/android/browser/Tab;
    invoke-direct {p0, v1}, Lcom/android/browser/TabBar;->buildTabView(Lcom/android/browser/Tab;)Lcom/android/browser/TabBar$TabView;

    move-result-object v2

    .line 154
    .local v2, tv:Lcom/android/browser/TabBar$TabView;
    iget-object v3, p0, Lcom/android/browser/TabBar;->mTabs:Lcom/android/browser/TabScrollView;

    invoke-virtual {v3, v2}, Lcom/android/browser/TabScrollView;->addTab(Landroid/view/View;)V

    goto :goto_0

    .line 156
    .end local v1           #tab:Lcom/android/browser/Tab;
    .end local v2           #tv:Lcom/android/browser/TabBar$TabView;
    :cond_0
    iget-object v3, p0, Lcom/android/browser/TabBar;->mTabs:Lcom/android/browser/TabScrollView;

    iget-object v4, p0, Lcom/android/browser/TabBar;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4}, Lcom/android/browser/TabControl;->getCurrentPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/browser/TabScrollView;->setSelectedTab(I)V

    .line 157
    return-void
.end method
