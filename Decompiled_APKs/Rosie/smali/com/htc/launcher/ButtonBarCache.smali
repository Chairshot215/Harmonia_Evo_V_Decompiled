.class public Lcom/htc/launcher/ButtonBarCache;
.super Landroid/widget/RelativeLayout;
.source "ButtonBarCache.java"


# instance fields
.field private isUseCacheBitmap:Z

.field private mCacheBitmap:Landroid/graphics/Bitmap;

.field private mCacheCanvas:Landroid/graphics/Canvas;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/launcher/ButtonBarCache;->mCacheBitmap:Landroid/graphics/Bitmap;

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/launcher/ButtonBarCache;->isUseCacheBitmap:Z

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/launcher/ButtonBarCache;->mCacheBitmap:Landroid/graphics/Bitmap;

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/launcher/ButtonBarCache;->isUseCacheBitmap:Z

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/launcher/ButtonBarCache;->mCacheBitmap:Landroid/graphics/Bitmap;

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/launcher/ButtonBarCache;->isUseCacheBitmap:Z

    .line 24
    return-void
.end method


# virtual methods
.method public buildCache()V
    .locals 6

    .prologue
    .line 70
    iget-object v3, p0, Lcom/htc/launcher/ButtonBarCache;->mCacheBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_2

    .line 71
    invoke-virtual {p0}, Lcom/htc/launcher/ButtonBarCache;->getWidth()I

    move-result v2

    .line 72
    .local v2, width:I
    invoke-virtual {p0}, Lcom/htc/launcher/ButtonBarCache;->getHeight()I

    move-result v0

    .line 73
    .local v0, height:I
    iget-object v3, p0, Lcom/htc/launcher/ButtonBarCache;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v1, v3, Landroid/content/res/Configuration;->orientation:I

    .line 74
    .local v1, orientation:I
    if-lez v2, :cond_1

    if-lez v0, :cond_1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->getScreenShortAxisLength()I

    move-result v3

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    iget-object v3, p0, Lcom/htc/launcher/ButtonBarCache;->mParent:Landroid/view/ViewParent;

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-eq v0, v3, :cond_3

    .line 77
    :cond_1
    const-string v3, "ButtonBarCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "buildCache error!!! width = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .end local v0           #height:I
    .end local v1           #orientation:I
    .end local v2           #width:I
    :cond_2
    :goto_0
    return-void

    .line 80
    .restart local v0       #height:I
    .restart local v1       #orientation:I
    .restart local v2       #width:I
    :cond_3
    invoke-virtual {p0}, Lcom/htc/launcher/ButtonBarCache;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/launcher/ButtonBarCache;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/launcher/ButtonBarCache;->mCacheBitmap:Landroid/graphics/Bitmap;

    .line 81
    iget-object v3, p0, Lcom/htc/launcher/ButtonBarCache;->mCacheCanvas:Landroid/graphics/Canvas;

    if-nez v3, :cond_4

    .line 82
    new-instance v3, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/htc/launcher/ButtonBarCache;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/htc/launcher/ButtonBarCache;->mCacheCanvas:Landroid/graphics/Canvas;

    .line 84
    :cond_4
    iget-object v3, p0, Lcom/htc/launcher/ButtonBarCache;->mCacheCanvas:Landroid/graphics/Canvas;

    const/4 v4, 0x0

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 85
    iget-object v3, p0, Lcom/htc/launcher/ButtonBarCache;->mCacheCanvas:Landroid/graphics/Canvas;

    invoke-super {p0, v3}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 47
    iget-boolean v0, p0, Lcom/htc/launcher/ButtonBarCache;->isUseCacheBitmap:Z

    if-eqz v0, :cond_1

    .line 48
    invoke-virtual {p0}, Lcom/htc/launcher/ButtonBarCache;->buildCache()V

    .line 49
    iget-object v0, p0, Lcom/htc/launcher/ButtonBarCache;->mCacheBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/htc/launcher/ButtonBarCache;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/ButtonBarCache;->mPaint:Landroid/graphics/Paint;

    .line 53
    :cond_0
    const/4 v0, 0x0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 54
    iget-object v0, p0, Lcom/htc/launcher/ButtonBarCache;->mCacheBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/htc/launcher/ButtonBarCache;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 59
    :goto_0
    return-void

    .line 58
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 3
    .parameter "pressed"

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/htc/launcher/ButtonBarCache;->getChildCount()I

    move-result v0

    .line 92
    .local v0, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 93
    invoke-virtual {p0, v2}, Lcom/htc/launcher/ButtonBarCache;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 94
    .local v1, childView:Landroid/view/View;
    invoke-virtual {v1, p1}, Landroid/view/View;->setPressed(Z)V

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    .end local v1           #childView:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/htc/launcher/ButtonBarCache;->isUseCacheBitmap:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 42
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final getButtonBarCahce()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/launcher/ButtonBarCache;->mCacheBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public updateOrientation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    iget-object v0, p0, Lcom/htc/launcher/ButtonBarCache;->mCacheBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/htc/launcher/ButtonBarCache;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 65
    :cond_0
    iput-object v1, p0, Lcom/htc/launcher/ButtonBarCache;->mCacheBitmap:Landroid/graphics/Bitmap;

    .line 66
    iput-object v1, p0, Lcom/htc/launcher/ButtonBarCache;->mCacheCanvas:Landroid/graphics/Canvas;

    .line 67
    return-void
.end method

.method public useCacheBitmap(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/htc/launcher/ButtonBarCache;->isUseCacheBitmap:Z

    .line 37
    return-void
.end method
