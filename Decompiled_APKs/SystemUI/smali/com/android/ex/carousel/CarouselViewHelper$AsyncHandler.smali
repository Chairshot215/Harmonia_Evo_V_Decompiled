.class Lcom/android/ex/carousel/CarouselViewHelper$AsyncHandler;
.super Landroid/os/Handler;
.source "CarouselViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/carousel/CarouselViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsyncHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/carousel/CarouselViewHelper;


# direct methods
.method constructor <init>(Lcom/android/ex/carousel/CarouselViewHelper;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/ex/carousel/CarouselViewHelper$AsyncHandler;->this$0:Lcom/android/ex/carousel/CarouselViewHelper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const v6, 0x3d0900

    const/4 v7, 0x0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/android/ex/carousel/CarouselViewHelper$AsyncHandler;->this$0:Lcom/android/ex/carousel/CarouselViewHelper;

    #getter for: Lcom/android/ex/carousel/CarouselViewHelper;->mCarouselView:Lcom/android/ex/carousel/CarouselView;
    invoke-static {v4}, Lcom/android/ex/carousel/CarouselViewHelper;->access$000(Lcom/android/ex/carousel/CarouselViewHelper;)Lcom/android/ex/carousel/CarouselView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/ex/carousel/CarouselView;->getCardCount()I

    move-result v4

    if-lt v1, v4, :cond_1

    const-string v4, "CarouselViewHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Index out of range for get, card:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v4, p1, Landroid/os/Message;->what:I

    const v5, 0xf4240

    if-lt v4, v5, :cond_2

    iget v4, p1, Landroid/os/Message;->what:I

    if-le v4, v6, :cond_3

    :cond_2
    const-string v4, "CarouselViewHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget v4, p1, Landroid/os/Message;->what:I

    const v5, 0x1e8480

    if-ge v4, v5, :cond_5

    iget-object v4, p0, Lcom/android/ex/carousel/CarouselViewHelper$AsyncHandler;->this$0:Lcom/android/ex/carousel/CarouselViewHelper;

    invoke-virtual {v4, v1}, Lcom/android/ex/carousel/CarouselViewHelper;->getTexture(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/android/ex/carousel/CarouselViewHelper$AsyncHandler;->this$0:Lcom/android/ex/carousel/CarouselViewHelper;

    #getter for: Lcom/android/ex/carousel/CarouselViewHelper;->mSyncHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/ex/carousel/CarouselViewHelper;->access$100(Lcom/android/ex/carousel/CarouselViewHelper;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v1, v7, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    :cond_4
    iget-object v4, p0, Lcom/android/ex/carousel/CarouselViewHelper$AsyncHandler;->this$0:Lcom/android/ex/carousel/CarouselViewHelper;

    invoke-virtual {v4, v1}, Lcom/android/ex/carousel/CarouselViewHelper;->getTextureParameters(I)Lcom/android/ex/carousel/CarouselViewHelper$TextureParameters;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/ex/carousel/CarouselViewHelper$AsyncHandler;->this$0:Lcom/android/ex/carousel/CarouselViewHelper;

    #getter for: Lcom/android/ex/carousel/CarouselViewHelper;->mSyncHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/ex/carousel/CarouselViewHelper;->access$100(Lcom/android/ex/carousel/CarouselViewHelper;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x4

    iget-object v6, v3, Lcom/android/ex/carousel/CarouselViewHelper$TextureParameters;->matrix:Landroid/renderscript/Matrix4f;

    invoke-virtual {v6}, Landroid/renderscript/Matrix4f;->getArray()[F

    move-result-object v6

    invoke-virtual {v4, v5, v1, v7, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_5
    iget v4, p1, Landroid/os/Message;->what:I

    const v5, 0x2dc6c0

    if-ge v4, v5, :cond_6

    iget-object v4, p0, Lcom/android/ex/carousel/CarouselViewHelper$AsyncHandler;->this$0:Lcom/android/ex/carousel/CarouselViewHelper;

    invoke-virtual {v4, v1}, Lcom/android/ex/carousel/CarouselViewHelper;->getDetailTexture(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/android/ex/carousel/CarouselViewHelper$AsyncHandler;->this$0:Lcom/android/ex/carousel/CarouselViewHelper;

    #getter for: Lcom/android/ex/carousel/CarouselViewHelper;->mSyncHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/ex/carousel/CarouselViewHelper;->access$100(Lcom/android/ex/carousel/CarouselViewHelper;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v1, v7, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_6
    iget v4, p1, Landroid/os/Message;->what:I

    if-ge v4, v6, :cond_0

    iget-object v4, p0, Lcom/android/ex/carousel/CarouselViewHelper$AsyncHandler;->this$0:Lcom/android/ex/carousel/CarouselViewHelper;

    invoke-virtual {v4, v1}, Lcom/android/ex/carousel/CarouselViewHelper;->getGeometry(I)Landroid/renderscript/Mesh;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/ex/carousel/CarouselViewHelper$AsyncHandler;->this$0:Lcom/android/ex/carousel/CarouselViewHelper;

    #getter for: Lcom/android/ex/carousel/CarouselViewHelper;->mSyncHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/ex/carousel/CarouselViewHelper;->access$100(Lcom/android/ex/carousel/CarouselViewHelper;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5, v1, v7, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0
.end method
