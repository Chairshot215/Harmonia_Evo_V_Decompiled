.class public Lcom/htc/widget/LinearPage;
.super Landroid/widget/LinearLayout;
.source "LinearPage.java"

# interfaces
.implements Lcom/htc/widget/MultiPageLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/LinearPage$ScrollRunnable;
    }
.end annotation


# static fields
.field static final SCROLL_ANIMATING:I = 0x2

.field static final SCROLL_REST:I = 0x1

.field static final TAG:Ljava/lang/String; = "LinearPage"


# instance fields
.field mCanvas:Landroid/graphics/Canvas;

.field mCount:I

.field mLandscapePageSizes:[Landroid/view/ViewGroup$LayoutParams;

.field mNextPageBitmap:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mOnPageAnimateListener:Lcom/htc/widget/MultiPageLayout$OnPageAnimateListener;

.field mOrientation:I

.field mPortraitPageSizes:[Landroid/view/ViewGroup$LayoutParams;

.field mScrollMode:I

.field mScrollRunnable:Lcom/htc/widget/LinearPage$ScrollRunnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/LinearPage;->mCount:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/LinearPage;->mOrientation:I

    invoke-direct {p0}, Lcom/htc/widget/LinearPage;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/LinearPage;->mCount:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/LinearPage;->mOrientation:I

    invoke-direct {p0}, Lcom/htc/widget/LinearPage;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/LinearPage;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/htc/widget/LinearPage;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/widget/LinearPage;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/htc/widget/LinearPage;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/widget/LinearPage;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/LinearPage;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/widget/LinearPage;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/htc/widget/LinearPage;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/widget/LinearPage;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/widget/LinearPage;->reportScrollStateChange(Z)V

    return-void
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/widget/LinearPage;->mScrollMode:I

    return-void
.end method

.method private reportScrollStateChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/LinearPage;->mOnPageAnimateListener:Lcom/htc/widget/MultiPageLayout$OnPageAnimateListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/htc/widget/LinearPage;->mOnPageAnimateListener:Lcom/htc/widget/MultiPageLayout$OnPageAnimateListener;

    invoke-interface {v0}, Lcom/htc/widget/MultiPageLayout$OnPageAnimateListener;->onToNextPage()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/LinearPage;->mOnPageAnimateListener:Lcom/htc/widget/MultiPageLayout$OnPageAnimateListener;

    invoke-interface {v0}, Lcom/htc/widget/MultiPageLayout$OnPageAnimateListener;->onBackPreviousPage()V

    goto :goto_0
.end method

.method private shrinkPage(II)V
    .locals 5

    const-string v2, "LinearPage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shrink page : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2}, Lcom/htc/widget/LinearPage;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v2, p1

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public addPage(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/widget/LinearPage;->getChildCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/LinearPage;->addPage(Landroid/view/View;I)V

    return-void
.end method

.method public addPage(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/widget/LinearPage;->addPage(Landroid/view/View;IZ)V

    return-void
.end method

.method public addPage(Landroid/view/View;IZ)V
    .locals 3

    const-string v0, "LinearPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addPage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/LinearPage;->addView(Landroid/view/View;I)V

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/LinearPage;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/LinearPage;->mScrollY:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/LinearPage;->scrollTo(II)V

    :cond_0
    return-void
.end method

.method public animateBackPreviousPage()V
    .locals 11

    const/16 v10, 0x12c

    const/4 v9, 0x2

    const/4 v5, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/htc/widget/LinearPage;->getChildCount()I

    move-result v1

    if-ge v1, v9, :cond_0

    invoke-direct {p0, v5}, Lcom/htc/widget/LinearPage;->reportScrollStateChange(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/LinearPage;->ensureScrollRunnable()V

    invoke-virtual {p0, v5}, Lcom/htc/widget/LinearPage;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v4, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_1
    const-string v5, "LinearPage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "animateBackPreviousPage() distance: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    neg-int v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-le v1, v9, :cond_2

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Lcom/htc/widget/LinearPage;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v8}, Lcom/htc/widget/LinearPage;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0, v8}, Lcom/htc/widget/LinearPage;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/htc/widget/LinearPage;->mScrollRunnable:Lcom/htc/widget/LinearPage$ScrollRunnable;

    neg-int v6, v4

    invoke-virtual {v5, v6, v10, v8}, Lcom/htc/widget/LinearPage$ScrollRunnable;->startShiftAndScale(IIZ)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/LinearPage;->measureBitmapWidth()I

    move-result v4

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/htc/widget/LinearPage;->mScrollRunnable:Lcom/htc/widget/LinearPage$ScrollRunnable;

    neg-int v6, v4

    invoke-virtual {v5, v6, v10, v8}, Lcom/htc/widget/LinearPage$ScrollRunnable;->startShift(IIZ)V

    goto :goto_0
.end method

.method public animateShiftBy(I)V
    .locals 3

    const-string v0, "LinearPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animateShiftBy() distance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/widget/LinearPage;->ensureScrollRunnable()V

    iget-object v0, p0, Lcom/htc/widget/LinearPage;->mScrollRunnable:Lcom/htc/widget/LinearPage$ScrollRunnable;

    const/16 v1, 0x258

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/htc/widget/LinearPage$ScrollRunnable;->startShift(IIZ)V

    return-void
.end method

.method public animateShiftBy(II)V
    .locals 3

    const-string v0, "LinearPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animateShiftBy() distance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/widget/LinearPage;->ensureScrollRunnable()V

    iget-object v0, p0, Lcom/htc/widget/LinearPage;->mScrollRunnable:Lcom/htc/widget/LinearPage$ScrollRunnable;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/htc/widget/LinearPage$ScrollRunnable;->startShift(IIZ)V

    return-void
.end method

.method public animateToNextPage()V
    .locals 9

    const/16 v8, 0x12c

    const/4 v7, 0x2

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/htc/widget/LinearPage;->getChildCount()I

    move-result v1

    if-ge v1, v7, :cond_0

    invoke-direct {p0, v6}, Lcom/htc/widget/LinearPage;->reportScrollStateChange(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/LinearPage;->ensureScrollRunnable()V

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/htc/widget/LinearPage;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_1
    const-string v3, "LinearPage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "animateToNextPage() distance: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-le v1, v7, :cond_2

    iget-object v3, p0, Lcom/htc/widget/LinearPage;->mScrollRunnable:Lcom/htc/widget/LinearPage$ScrollRunnable;

    invoke-virtual {v3, v2, v8, v6}, Lcom/htc/widget/LinearPage$ScrollRunnable;->startShiftAndScale(IIZ)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/LinearPage;->measureBitmapWidth()I

    move-result v2

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/htc/widget/LinearPage;->mScrollRunnable:Lcom/htc/widget/LinearPage$ScrollRunnable;

    invoke-virtual {v3, v2, v8, v6}, Lcom/htc/widget/LinearPage$ScrollRunnable;->startShift(IIZ)V

    goto :goto_0
.end method

.method createCacheBitmap()V
    .locals 8

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/LinearPage;->measureBitmapWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/widget/LinearPage;->getHeight()I

    move-result v1

    const-string v4, "LinearPage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "finish measure bitmap size, w: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", h: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/htc/widget/LinearPage;->mNextPageBitmap:Ljava/lang/ref/SoftReference;

    if-nez v4, :cond_1

    move-object v0, v5

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ne v4, v1, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v4, v2, :cond_2

    const-string v4, "LinearPage"

    const-string v5, "bitmap size the same, no need to generate another bitmap"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v4, p0, Lcom/htc/widget/LinearPage;->mNextPageBitmap:Ljava/lang/ref/SoftReference;

    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    move-object v0, v4

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v5, p0, Lcom/htc/widget/LinearPage;->mNextPageBitmap:Ljava/lang/ref/SoftReference;

    :cond_3
    if-lez v2, :cond_0

    if-lez v1, :cond_0

    const-string v4, "LinearPage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "create cache bitmap w: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", h: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/htc/widget/LinearPage;->mNextPageBitmap:Ljava/lang/ref/SoftReference;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v4, p0, Lcom/htc/widget/LinearPage;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/htc/widget/LinearPage;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :catch_0
    move-exception v3

    iput-object v5, p0, Lcom/htc/widget/LinearPage;->mNextPageBitmap:Ljava/lang/ref/SoftReference;

    goto :goto_1

    :cond_4
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Lcom/htc/widget/LinearPage;->mCanvas:Landroid/graphics/Canvas;

    goto :goto_1
.end method

.method ensureScrollRunnable()V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/LinearPage;->mScrollRunnable:Lcom/htc/widget/LinearPage$ScrollRunnable;

    if-nez v0, :cond_1

    new-instance v0, Lcom/htc/widget/LinearPage$ScrollRunnable;

    invoke-direct {v0, p0}, Lcom/htc/widget/LinearPage$ScrollRunnable;-><init>(Lcom/htc/widget/LinearPage;)V

    iput-object v0, p0, Lcom/htc/widget/LinearPage;->mScrollRunnable:Lcom/htc/widget/LinearPage$ScrollRunnable;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/htc/widget/LinearPage;->mScrollMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/LinearPage;->mScrollRunnable:Lcom/htc/widget/LinearPage$ScrollRunnable;

    invoke-virtual {v0}, Lcom/htc/widget/LinearPage$ScrollRunnable;->endScroll()V

    goto :goto_0
.end method

.method measureBitmapWidth()I
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v0, -0x1

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/htc/widget/LinearPage;->mPortraitPageSizes:[Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/LinearPage;->mLandscapePageSizes:[Landroid/view/ViewGroup$LayoutParams;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/htc/widget/LinearPage;->mOrientation:I

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/htc/widget/LinearPage;->mLandscapePageSizes:[Landroid/view/ViewGroup$LayoutParams;

    array-length v1, v1

    if-lt v1, v4, :cond_2

    iget-object v1, p0, Lcom/htc/widget/LinearPage;->mLandscapePageSizes:[Landroid/view/ViewGroup$LayoutParams;

    aget-object v1, v1, v2

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/htc/widget/LinearPage;->mLandscapePageSizes:[Landroid/view/ViewGroup$LayoutParams;

    aget-object v0, v0, v2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/htc/widget/LinearPage;->mOrientation:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/widget/LinearPage;->mPortraitPageSizes:[Landroid/view/ViewGroup$LayoutParams;

    aget-object v1, v1, v3

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/LinearPage;->mPortraitPageSizes:[Landroid/view/ViewGroup$LayoutParams;

    aget-object v0, v0, v3

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "LinearPage"

    const-string v1, "onConfigurationChanged newConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/widget/LinearPage;->mNextPageBitmap:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/LinearPage;->mNextPageBitmap:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/LinearPage;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/LinearPage;->createCacheBitmap()V

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget v0, p0, Lcom/htc/widget/LinearPage;->mScrollMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    const-string v1, "LinearPage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSizeChanged() w: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", h: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " oldW: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldH: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/widget/LinearPage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/htc/widget/LinearPage;->mOrientation:I

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    iput v0, p0, Lcom/htc/widget/LinearPage;->mOrientation:I

    invoke-virtual {p0}, Lcom/htc/widget/LinearPage;->createCacheBitmap()V

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/htc/widget/LinearPage;->mScrollRunnable:Lcom/htc/widget/LinearPage$ScrollRunnable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/LinearPage;->mScrollMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/LinearPage;->mScrollRunnable:Lcom/htc/widget/LinearPage$ScrollRunnable;

    invoke-virtual {v0}, Lcom/htc/widget/LinearPage$ScrollRunnable;->endScroll()V

    :cond_0
    return-void
.end method

.method public removePage(I)V
    .locals 3

    const-string v0, "LinearPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removePage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), and shift to 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget v1, p0, Lcom/htc/widget/LinearPage;->mScrollY:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/LinearPage;->scrollTo(II)V

    invoke-virtual {p0, p1}, Lcom/htc/widget/LinearPage;->removeViewAt(I)V

    return-void
.end method

.method public rotationChanged()V
    .locals 0

    return-void
.end method

.method public setFakeScreenBottom(I)V
    .locals 0

    return-void
.end method

.method public setFakeScreenEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setFakeScreenTop(I)V
    .locals 0

    return-void
.end method

.method public setOnPageAnimateListener(Lcom/htc/widget/MultiPageLayout$OnPageAnimateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/LinearPage;->mOnPageAnimateListener:Lcom/htc/widget/MultiPageLayout$OnPageAnimateListener;

    return-void
.end method

.method public setPagesParams([Landroid/view/ViewGroup$LayoutParams;[[I)V
    .locals 0

    return-void
.end method

.method public setPagesSize([Landroid/view/ViewGroup$LayoutParams;[Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-virtual {p1}, [Landroid/view/ViewGroup$LayoutParams;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/ViewGroup$LayoutParams;

    iput-object v0, p0, Lcom/htc/widget/LinearPage;->mPortraitPageSizes:[Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p2}, [Landroid/view/ViewGroup$LayoutParams;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/ViewGroup$LayoutParams;

    iput-object v0, p0, Lcom/htc/widget/LinearPage;->mLandscapePageSizes:[Landroid/view/ViewGroup$LayoutParams;

    return-void
.end method
