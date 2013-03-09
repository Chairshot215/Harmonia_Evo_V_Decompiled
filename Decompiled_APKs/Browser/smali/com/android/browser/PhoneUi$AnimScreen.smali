.class Lcom/android/browser/PhoneUi$AnimScreen;
.super Ljava/lang/Object;
.source "PhoneUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/PhoneUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnimScreen"
.end annotation


# instance fields
.field private mContent:Landroid/widget/ImageView;

.field private mContentBitmap:Landroid/graphics/Bitmap;

.field private mMain:Landroid/view/View;

.field private mScale:F

.field private mTitle:Landroid/widget/ImageView;

.field private mTitleBarBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 514
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040002

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/PhoneUi$AnimScreen;->mMain:Landroid/view/View;

    .line 516
    iget-object v0, p0, Lcom/android/browser/PhoneUi$AnimScreen;->mMain:Landroid/view/View;

    const v1, 0x7f0d0005

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/browser/PhoneUi$AnimScreen;->mTitle:Landroid/widget/ImageView;

    .line 517
    iget-object v0, p0, Lcom/android/browser/PhoneUi$AnimScreen;->mMain:Landroid/view/View;

    const v1, 0x7f0d0008

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;

    .line 518
    iget-object v0, p0, Lcom/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 519
    iget-object v0, p0, Lcom/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 520
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/browser/PhoneUi$AnimScreen;->mScale:F

    .line 521
    invoke-direct {p0}, Lcom/android/browser/PhoneUi$AnimScreen;->getScaleFactor()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/browser/PhoneUi$AnimScreen;->setScaleFactor(F)V

    .line 522
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/browser/PhoneUi$AnimScreen;->mMain:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/browser/PhoneUi$AnimScreen;->mTitle:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/browser/PhoneUi$AnimScreen;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 504
    invoke-direct {p0, p1}, Lcom/android/browser/PhoneUi$AnimScreen;->setScaleFactor(F)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;

    return-object v0
.end method

.method private getScaleFactor()F
    .locals 1

    .prologue
    .line 572
    iget v0, p0, Lcom/android/browser/PhoneUi$AnimScreen;->mScale:F

    return v0
.end method

.method private setScaleFactor(F)V
    .locals 2
    .parameter "sf"

    .prologue
    .line 565
    iput p1, p0, Lcom/android/browser/PhoneUi$AnimScreen;->mScale:F

    .line 566
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 567
    .local v0, m:Landroid/graphics/Matrix;
    invoke-virtual {v0, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 568
    iget-object v1, p0, Lcom/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 569
    return-void
.end method


# virtual methods
.method public set(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "image"

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/browser/PhoneUi$AnimScreen;->mTitle:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 561
    iget-object v0, p0, Lcom/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 562
    return-void
.end method

.method public set(Lcom/android/browser/TitleBar;Landroid/webkit/WebView;)V
    .locals 8
    .parameter "tbar"
    .parameter "web"

    .prologue
    const/4 v7, 0x0

    .line 525
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 528
    :cond_1
    invoke-virtual {p1}, Lcom/android/browser/TitleBar;->getWidth()I

    move-result v4

    if-lez v4, :cond_6

    invoke-virtual {p1}, Lcom/android/browser/TitleBar;->getEmbeddedHeight()I

    move-result v4

    if-lez v4, :cond_6

    .line 529
    iget-object v4, p0, Lcom/android/browser/PhoneUi$AnimScreen;->mTitleBarBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/browser/PhoneUi$AnimScreen;->mTitleBarBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/browser/TitleBar;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/browser/PhoneUi$AnimScreen;->mTitleBarBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/browser/TitleBar;->getEmbeddedHeight()I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 532
    :cond_2
    invoke-virtual {p1}, Lcom/android/browser/TitleBar;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/browser/TitleBar;->getEmbeddedHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/browser/PhoneUi$AnimScreen;->mTitleBarBitmap:Landroid/graphics/Bitmap;

    .line 535
    :cond_3
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/android/browser/PhoneUi$AnimScreen;->mTitleBarBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 536
    .local v0, c:Landroid/graphics/Canvas;
    invoke-virtual {p1, v0}, Lcom/android/browser/TitleBar;->draw(Landroid/graphics/Canvas;)V

    .line 537
    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 541
    .end local v0           #c:Landroid/graphics/Canvas;
    :goto_1
    iget-object v4, p0, Lcom/android/browser/PhoneUi$AnimScreen;->mTitle:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/browser/PhoneUi$AnimScreen;->mTitleBarBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 542
    iget-object v4, p0, Lcom/android/browser/PhoneUi$AnimScreen;->mTitle:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 543
    invoke-virtual {p2}, Landroid/webkit/WebView;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/browser/TitleBar;->getEmbeddedHeight()I

    move-result v5

    sub-int v1, v4, v5

    .line 544
    .local v1, h:I
    iget-object v4, p0, Lcom/android/browser/PhoneUi$AnimScreen;->mContentBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/browser/PhoneUi$AnimScreen;->mContentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/webkit/WebView;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/android/browser/PhoneUi$AnimScreen;->mContentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-eq v4, v1, :cond_5

    .line 547
    :cond_4
    invoke-virtual {p2}, Landroid/webkit/WebView;->getWidth()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/browser/PhoneUi$AnimScreen;->mContentBitmap:Landroid/graphics/Bitmap;

    .line 550
    :cond_5
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/android/browser/PhoneUi$AnimScreen;->mContentBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 551
    .restart local v0       #c:Landroid/graphics/Canvas;
    invoke-virtual {p2}, Landroid/webkit/WebView;->getScrollX()I

    move-result v2

    .line 552
    .local v2, tx:I
    invoke-virtual {p2}, Landroid/webkit/WebView;->getScrollY()I

    move-result v3

    .line 553
    .local v3, ty:I
    neg-int v4, v2

    int-to-float v4, v4

    neg-int v5, v3

    invoke-virtual {p1}, Lcom/android/browser/TitleBar;->getEmbeddedHeight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 554
    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->draw(Landroid/graphics/Canvas;)V

    .line 555
    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 556
    iget-object v4, p0, Lcom/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/browser/PhoneUi$AnimScreen;->mContentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 539
    .end local v0           #c:Landroid/graphics/Canvas;
    .end local v1           #h:I
    .end local v2           #tx:I
    .end local v3           #ty:I
    :cond_6
    iput-object v7, p0, Lcom/android/browser/PhoneUi$AnimScreen;->mTitleBarBitmap:Landroid/graphics/Bitmap;

    goto :goto_1
.end method
