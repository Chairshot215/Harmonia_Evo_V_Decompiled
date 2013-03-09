.class final Lcom/google/appinventor/components/runtime/Canvas$CanvasView;
.super Landroid/view/View;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CanvasView"
.end annotation


# instance fields
.field private backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private bitmap:Landroid/graphics/Bitmap;

.field private canvas:Landroid/graphics/Canvas;

.field private completeCache:Landroid/graphics/Bitmap;

.field private scaledBackgroundBitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Canvas;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Canvas;Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x20

    const/16 v1, 0x30

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;

    return-void
.end method

.method static synthetic access$1000(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;II)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->getPixelColor(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->completeCache:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->buildCache()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->clearDrawingLayer()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Canvas;
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;Ljava/lang/String;IIF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->drawTextAtAngle(Ljava/lang/String;IIF)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;II)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->getBackgroundPixelColor(II)I

    move-result v0

    return v0
.end method

.method private buildCache()Landroid/graphics/Bitmap;
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->setDrawingCacheEnabled(Z)V

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->destroyDrawingCache()V

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v4, v4, v0, v1}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->layout(IIII)V

    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->draw(Landroid/graphics/Canvas;)V

    move-object v0, v2

    :cond_0
    return-object v0
.end method

.method private clearDrawingLayer()V
    .locals 3

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->invalidate()V

    return-void
.end method

.method private drawTextAtAngle(Ljava/lang/String;IIF)V
    .locals 4

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;

    neg-float v1, p4

    int-to-float v2, p2

    int-to-float v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;

    int-to-float v1, p2

    int-to-float v2, p3

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    #getter for: Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Canvas;->access$500(Lcom/google/appinventor/components/runtime/Canvas;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->invalidate()V

    return-void
.end method

.method private getBackgroundPixelColor(II)I
    .locals 6

    const/4 v5, 0x0

    const v4, 0xffffff

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lt p2, v0, :cond_2

    :cond_0
    move v0, v4

    :cond_1
    :goto_0
    return v0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->scaledBackgroundBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->scaledBackgroundBitmap:Landroid/graphics/Bitmap;

    :cond_3
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->scaledBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    #getter for: Lcom/google/appinventor/components/runtime/Canvas;->backgroundColor:I
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas;->access$400(Lcom/google/appinventor/components/runtime/Canvas;)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    #getter for: Lcom/google/appinventor/components/runtime/Canvas;->backgroundColor:I
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas;->access$400(Lcom/google/appinventor/components/runtime/Canvas;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :cond_5
    move v0, v4

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "Canvas"

    const-string v1, "Returning COLOR_NONE (exception) from getBackgroundPixelColor."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    goto :goto_0
.end method

.method private getPixelColor(II)I
    .locals 4

    const v3, 0xffffff

    const/4 v2, 0x0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lt p2, v0, :cond_1

    :cond_0
    move v0, v3

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->completeCache:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    #getter for: Lcom/google/appinventor/components/runtime/Canvas;->sprites:Ljava/util/List;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas;->access$000(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/Sprite;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->getBackgroundPixelColor(II)I

    move-result v0

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->buildCache()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->completeCache:Landroid/graphics/Bitmap;

    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->completeCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->getPixel(II)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "Canvas"

    const-string v1, "Returning COLOR_NONE (exception) from getPixelColor."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method private getSize(II)I
    .locals 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/high16 v2, 0x4000

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/high16 v2, -0x8000

    if-ne v0, v2, :cond_1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, p2

    goto :goto_0
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->completeCache:Landroid/graphics/Bitmap;

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    #getter for: Lcom/google/appinventor/components/runtime/Canvas;->sprites:Ljava/util/List;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas;->access$000(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/Sprite;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Sprite;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    const/4 v1, 0x1

    #setter for: Lcom/google/appinventor/components/runtime/Canvas;->drawn:Z
    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/Canvas;->access$102(Lcom/google/appinventor/components/runtime/Canvas;Z)Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->getSize(II)I

    move-result v1

    invoke-direct {p0, p2, v0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->getSize(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->setMeasuredDimension(II)V

    return-void

    :cond_0
    const/16 v0, 0x20

    const/16 v1, 0x30

    move v2, v1

    move v1, v0

    move v0, v2

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne p1, v0, :cond_0

    if-eq p2, v1, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v2, p1, p2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v4

    if-eqz v4, :cond_2

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;

    :goto_0
    iput-object v7, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->scaledBackgroundBitmap:Landroid/graphics/Bitmap;

    :cond_1
    return-void

    :cond_2
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    new-instance v3, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v5, v5, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v4, p2

    invoke-direct {v0, v6, v6, v1, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v2, v3, v0, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->dontGrabTouchEventsForComponent()V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    #getter for: Lcom/google/appinventor/components/runtime/Canvas;->motionEventParser:Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas;->access$200(Lcom/google/appinventor/components/runtime/Canvas;)Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->parse(Landroid/view/MotionEvent;)V

    const/4 v0, 0x1

    return v0
.end method

.method public setBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    #setter for: Lcom/google/appinventor/components/runtime/Canvas;->backgroundColor:I
    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/Canvas;->access$402(Lcom/google/appinventor/components/runtime/Canvas;I)I

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->clearDrawingLayer()V

    return-void
.end method

.method setBackgroundImage(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    if-nez p1, :cond_2

    const-string v1, ""

    :goto_0
    #setter for: Lcom/google/appinventor/components/runtime/Canvas;->backgroundImagePath:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/Canvas;->access$302(Lcom/google/appinventor/components/runtime/Canvas;Ljava/lang/String;)Ljava/lang/String;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->scaledBackgroundBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    #getter for: Lcom/google/appinventor/components/runtime/Canvas;->backgroundImagePath:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas;->access$300(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    #getter for: Lcom/google/appinventor/components/runtime/Canvas;->backgroundImagePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Canvas;->access$300(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    #getter for: Lcom/google/appinventor/components/runtime/Canvas;->backgroundColor:I
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas;->access$400(Lcom/google/appinventor/components/runtime/Canvas;)I

    move-result v0

    invoke-super {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->clearDrawingLayer()V

    return-void

    :cond_2
    move-object v1, p1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "Canvas"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to load "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    #getter for: Lcom/google/appinventor/components/runtime/Canvas;->backgroundImagePath:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Canvas;->access$300(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
