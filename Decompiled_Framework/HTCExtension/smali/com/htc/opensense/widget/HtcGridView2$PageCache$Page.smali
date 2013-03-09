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

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mIsInit:Z

    iput-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mPageBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mCanvas:Landroid/graphics/Canvas;

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mPageIndex:I

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->w:I

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->h:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mNativeCreae:Z

    return-void
.end method

.method static synthetic access$3400(Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;)Landroid/graphics/Canvas;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mCanvas:Landroid/graphics/Canvas;

    return-object v0
.end method


# virtual methods
.method IsInit()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mIsInit:Z

    return v0
.end method

.method addViewInLayout(Landroid/view/View;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "generateDefaultLayoutParams() cannot return null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->detachViewFromParent(I)V

    :cond_1
    const/4 v5, -0x1

    invoke-virtual {p0, p1, v5, v4}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    return-void

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mCanvas:Landroid/graphics/Canvas;

    invoke-super {p0, v2}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    add-int/lit8 v1, v0, -0x1

    :goto_0
    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->detachViewFromParent(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method drawBitmap(Landroid/graphics/Bitmap;II)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mCanvas:Landroid/graphics/Canvas;

    int-to-float v1, p2

    int-to-float v2, p3

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method free()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mPageBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mPageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mPageBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mCanvas:Landroid/graphics/Canvas;

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mIsInit:Z

    return-void
.end method

.method public getDrawingCache()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mPageBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method initPage(III)V
    .locals 5

    const/4 v4, -0x1

    const/16 v3, 0xff

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mIsInit:Z

    if-ne v2, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->w:I

    iput p2, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->h:I

    iput p3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mPageIndex:I

    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mPageIndex:I

    if-ne v0, v4, :cond_1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mPageBitmap:Landroid/graphics/Bitmap;

    :goto_1
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mPageBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mCanvas:Landroid/graphics/Canvas;

    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mPageIndex:I

    if-eq v0, v4, :cond_3

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    iget v1, v1, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mItemSpacingColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    :goto_2
    iput-boolean v2, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mIsInit:Z

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mNativeCreae:Z

    if-ne v2, v0, :cond_2

    invoke-static {}, Lcom/htc/opensense/album/AlbumCommon/Constants;->getDefaultBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/htc/opensense/album/util/BitmapUtil2;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mPageBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mPageBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    goto :goto_2
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    return-void
.end method
