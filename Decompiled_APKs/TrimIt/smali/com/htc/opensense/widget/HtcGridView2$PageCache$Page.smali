.class Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;
.super Landroid/view/ViewGroup;
.source "HtcGridView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/widget/HtcGridView2$PageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Page"
.end annotation


# static fields
.field public static final IDX_LAST_PAGE:I = -0x1


# instance fields
.field private h:I

.field private mCanvas:Landroid/graphics/Canvas;

.field private mIsInit:Z

.field mNativeCreae:Z

.field private mPageBitmap:Landroid/graphics/Bitmap;

.field private mPageIndex:I

.field final synthetic this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

.field private w:I


# direct methods
.method public constructor <init>(Lcom/htc/opensense/widget/HtcGridView2$PageCache;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 3761
    iput-object p1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    .line 3762
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 3755
    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mIsInit:Z

    .line 3756
    iput-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mPageBitmap:Landroid/graphics/Bitmap;

    .line 3757
    iput-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mCanvas:Landroid/graphics/Canvas;

    .line 3758
    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mPageIndex:I

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->w:I

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->h:I

    .line 3759
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mNativeCreae:Z

    .line 3763
    return-void
.end method

.method static synthetic access$3400(Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;)Landroid/graphics/Canvas;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3750
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mCanvas:Landroid/graphics/Canvas;

    return-object v0
.end method


# virtual methods
.method IsInit()Z
    .locals 1

    .prologue
    .line 3798
    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mIsInit:Z

    return v0
.end method

.method addViewInLayout(Landroid/view/View;)V
    .locals 7
    .parameter "child"

    .prologue
    .line 3842
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 3843
    .local v4, params:Landroid/view/ViewGroup$LayoutParams;
    if-nez v4, :cond_0

    .line 3844
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 3845
    if-nez v4, :cond_0

    .line 3846
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "generateDefaultLayoutParams() cannot return null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3850
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3851
    .local v0, addRect:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 3853
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 3854
    .local v1, attachViewRect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->getChildCount()I

    move-result v2

    .line 3855
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 3856
    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 3857
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3858
    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->detachViewFromParent(I)V

    .line 3863
    :cond_1
    const/4 v5, -0x1

    invoke-virtual {p0, p1, v5, v4}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 3864
    return-void

    .line 3855
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 3815
    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v2, :cond_0

    .line 3816
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->getChildCount()I

    move-result v0

    .line 3817
    .local v0, count:I
    if-lez v0, :cond_0

    .line 3818
    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mCanvas:Landroid/graphics/Canvas;

    invoke-super {p0, v2}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3819
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_0
    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 3820
    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->detachViewFromParent(I)V

    .line 3819
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3824
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method drawBitmap(Landroid/graphics/Bitmap;II)V
    .locals 4
    .parameter "bmp"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 3831
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    .line 3832
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mCanvas:Landroid/graphics/Canvas;

    int-to-float v1, p2

    int-to-float v2, p3

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 3834
    :cond_0
    return-void
.end method

.method free()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3802
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mPageBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 3803
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mPageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3804
    iput-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mPageBitmap:Landroid/graphics/Bitmap;

    .line 3806
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_1

    .line 3807
    iput-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mCanvas:Landroid/graphics/Canvas;

    .line 3810
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mIsInit:Z

    .line 3811
    return-void
.end method

.method public getDrawingCache()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 3837
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->draw(Landroid/graphics/Canvas;)V

    .line 3838
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mPageBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method initPage(III)V
    .locals 8
    .parameter "width"
    .parameter "height"
    .parameter "pageIndex"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/16 v5, 0xff

    const/4 v4, 0x1

    .line 3766
    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mIsInit:Z

    if-ne v4, v0, :cond_0

    .line 3795
    :goto_0
    return-void

    .line 3770
    :cond_0
    const-string v0, "HtcGridView2"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "initPage pageIndex="

    aput-object v2, v1, v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, ", w="

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, ", h="

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3772
    iput p1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->w:I

    .line 3773
    iput p2, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->h:I

    .line 3774
    iput p3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mPageIndex:I

    .line 3776
    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mPageIndex:I

    if-ne v0, v6, :cond_1

    .line 3777
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mPageBitmap:Landroid/graphics/Bitmap;

    .line 3785
    :goto_1
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mPageBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mCanvas:Landroid/graphics/Canvas;

    .line 3787
    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mPageIndex:I

    if-eq v0, v6, :cond_3

    .line 3788
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    iget v1, v1, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mItemSpacingColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 3794
    :goto_2
    iput-boolean v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mIsInit:Z

    goto :goto_0

    .line 3779
    :cond_1
    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mNativeCreae:Z

    if-ne v4, v0, :cond_2

    .line 3780
    invoke-static {}, Lcom/htc/opensense/album/AlbumCommon/Constants;->getDefaultBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/htc/opensense/album/util/BitmapUtil2;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mPageBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 3782
    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mPageBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 3791
    :cond_3
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v7, v5, v5, v5}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    goto :goto_2
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 3828
    return-void
.end method
