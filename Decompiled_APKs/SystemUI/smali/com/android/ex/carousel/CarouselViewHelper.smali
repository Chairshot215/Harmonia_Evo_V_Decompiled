.class public Lcom/android/ex/carousel/CarouselViewHelper;
.super Ljava/lang/Object;
.source "CarouselViewHelper.java"

# interfaces
.implements Lcom/android/ex/carousel/CarouselRS$CarouselCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/carousel/CarouselViewHelper$SyncHandler;,
        Lcom/android/ex/carousel/CarouselViewHelper$AsyncHandler;,
        Lcom/android/ex/carousel/CarouselViewHelper$DetailTextureParameters;,
        Lcom/android/ex/carousel/CarouselViewHelper$TextureParameters;
    }
.end annotation


# static fields
.field private static final REQUEST_DETAIL_TEXTURE_N:I = 0x1e8480

.field private static final REQUEST_END:I = 0x3d0900

.field private static final REQUEST_GEOMETRY_N:I = 0x2dc6c0

.field private static final REQUEST_TEXTURE_N:I = 0xf4240

.field private static final SET_DETAIL_TEXTURE_N:I = 0x2

.field private static final SET_GEOMETRY_N:I = 0x3

.field private static final SET_MATRIX_N:I = 0x4

.field private static final SET_TEXTURE_N:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CarouselViewHelper"


# instance fields
.field private DBG:Z

.field private HOLDOFF_DELAY:J

.field private mAsyncHandler:Landroid/os/Handler;

.field private mCarouselView:Lcom/android/ex/carousel/CarouselView;

.field private mContext:Landroid/content/Context;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mSyncHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ex/carousel/CarouselViewHelper;->DBG:Z

    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/android/ex/carousel/CarouselViewHelper;->HOLDOFF_DELAY:J

    iput-object p1, p0, Lcom/android/ex/carousel/CarouselViewHelper;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CarouselViewHelper.handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/ex/carousel/CarouselViewHelper;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselViewHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/ex/carousel/CarouselViewHelper$AsyncHandler;

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselViewHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/ex/carousel/CarouselViewHelper$AsyncHandler;-><init>(Lcom/android/ex/carousel/CarouselViewHelper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/ex/carousel/CarouselViewHelper;->mAsyncHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/ex/carousel/CarouselViewHelper$SyncHandler;

    invoke-direct {v0, p0}, Lcom/android/ex/carousel/CarouselViewHelper$SyncHandler;-><init>(Lcom/android/ex/carousel/CarouselViewHelper;)V

    iput-object v0, p0, Lcom/android/ex/carousel/CarouselViewHelper;->mSyncHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/ex/carousel/CarouselView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ex/carousel/CarouselViewHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/android/ex/carousel/CarouselViewHelper;->setCarouselView(Lcom/android/ex/carousel/CarouselView;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/ex/carousel/CarouselViewHelper;)Lcom/android/ex/carousel/CarouselView;
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselViewHelper;->mCarouselView:Lcom/android/ex/carousel/CarouselView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/ex/carousel/CarouselViewHelper;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselViewHelper;->mSyncHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected getAsyncHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselViewHelper;->mAsyncHandler:Landroid/os/Handler;

    return-object v0
.end method

.method protected getCarouselView()Lcom/android/ex/carousel/CarouselView;
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselViewHelper;->mCarouselView:Lcom/android/ex/carousel/CarouselView;

    return-object v0
.end method

.method public getDetailTexture(I)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDetailTextureParameters(I)Lcom/android/ex/carousel/CarouselViewHelper$DetailTextureParameters;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getGeometry(I)Landroid/renderscript/Mesh;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTexture(I)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextureParameters(I)Lcom/android/ex/carousel/CarouselViewHelper$TextureParameters;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onAnimationFinished(F)V
    .locals 0

    return-void
.end method

.method public onAnimationStarted()V
    .locals 0

    return-void
.end method

.method public onCardLongPress(I[ILandroid/graphics/Rect;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/ex/carousel/CarouselViewHelper;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CarouselViewHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCardLongPress("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onCardSelected(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/ex/carousel/CarouselViewHelper;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CarouselViewHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCardSelected("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselViewHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

.method public onDetailSelected(III)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/ex/carousel/CarouselViewHelper;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CarouselViewHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDetailSelected("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onInvalidateDetailTexture(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/ex/carousel/CarouselViewHelper;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CarouselViewHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInvalidateDetailTexture("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselViewHelper;->mAsyncHandler:Landroid/os/Handler;

    const v1, 0x1e8480

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onInvalidateGeometry(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/ex/carousel/CarouselViewHelper;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CarouselViewHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInvalidateGeometry("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselViewHelper;->mAsyncHandler:Landroid/os/Handler;

    const v1, 0x2dc6c0

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onInvalidateTexture(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/ex/carousel/CarouselViewHelper;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CarouselViewHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInvalidateTexture("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselViewHelper;->mAsyncHandler:Landroid/os/Handler;

    const v1, 0xf4240

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselViewHelper;->mCarouselView:Lcom/android/ex/carousel/CarouselView;

    invoke-virtual {v0}, Lcom/android/ex/carousel/CarouselView;->pause()V

    return-void
.end method

.method public onRequestDetailTexture(I)V
    .locals 5

    const v4, 0x1e8480

    iget-boolean v1, p0, Lcom/android/ex/carousel/CarouselViewHelper;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "CarouselViewHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRequestDetailTexture("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/ex/carousel/CarouselViewHelper;->mAsyncHandler:Landroid/os/Handler;

    add-int v2, v4, p1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselViewHelper;->mAsyncHandler:Landroid/os/Handler;

    add-int v2, v4, p1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselViewHelper;->mAsyncHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/android/ex/carousel/CarouselViewHelper;->HOLDOFF_DELAY:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public onRequestGeometry(I)V
    .locals 4

    const v3, 0x2dc6c0

    iget-boolean v0, p0, Lcom/android/ex/carousel/CarouselViewHelper;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CarouselViewHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestGeometry("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselViewHelper;->mAsyncHandler:Landroid/os/Handler;

    add-int v1, v3, p1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselViewHelper;->mAsyncHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselViewHelper;->mAsyncHandler:Landroid/os/Handler;

    add-int v2, v3, p1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onRequestTexture(I)V
    .locals 5

    const v4, 0xf4240

    iget-boolean v1, p0, Lcom/android/ex/carousel/CarouselViewHelper;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "CarouselViewHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRequestTexture("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/ex/carousel/CarouselViewHelper;->mAsyncHandler:Landroid/os/Handler;

    add-int v2, v4, p1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselViewHelper;->mAsyncHandler:Landroid/os/Handler;

    add-int v2, v4, p1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselViewHelper;->mAsyncHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/android/ex/carousel/CarouselViewHelper;->HOLDOFF_DELAY:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselViewHelper;->mCarouselView:Lcom/android/ex/carousel/CarouselView;

    invoke-virtual {v0}, Lcom/android/ex/carousel/CarouselView;->resume()V

    return-void
.end method

.method public setCarouselView(Lcom/android/ex/carousel/CarouselView;)V
    .locals 1

    iput-object p1, p0, Lcom/android/ex/carousel/CarouselViewHelper;->mCarouselView:Lcom/android/ex/carousel/CarouselView;

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselViewHelper;->mCarouselView:Lcom/android/ex/carousel/CarouselView;

    invoke-virtual {v0, p0}, Lcom/android/ex/carousel/CarouselView;->setCallback(Lcom/android/ex/carousel/CarouselRS$CarouselCallback;)V

    return-void
.end method
