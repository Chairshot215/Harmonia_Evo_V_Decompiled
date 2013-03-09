.class Lcom/android/ex/carousel/CarouselViewHelper$SyncHandler;
.super Landroid/os/Handler;
.source "CarouselViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/carousel/CarouselViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SyncHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/carousel/CarouselViewHelper;


# direct methods
.method constructor <init>(Lcom/android/ex/carousel/CarouselViewHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/ex/carousel/CarouselViewHelper$SyncHandler;->this$0:Lcom/android/ex/carousel/CarouselViewHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    const/4 v5, 0x0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselViewHelper$SyncHandler;->this$0:Lcom/android/ex/carousel/CarouselViewHelper;

    #getter for: Lcom/android/ex/carousel/CarouselViewHelper;->mCarouselView:Lcom/android/ex/carousel/CarouselView;
    invoke-static {v0}, Lcom/android/ex/carousel/CarouselViewHelper;->access$000(Lcom/android/ex/carousel/CarouselViewHelper;)Lcom/android/ex/carousel/CarouselView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/carousel/CarouselView;->getCardCount()I

    move-result v0

    if-lt v1, v0, :cond_0

    const-string v0, "CarouselViewHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Index out of range for set, card:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselViewHelper$SyncHandler;->this$0:Lcom/android/ex/carousel/CarouselViewHelper;

    #getter for: Lcom/android/ex/carousel/CarouselViewHelper;->mCarouselView:Lcom/android/ex/carousel/CarouselView;
    invoke-static {v0}, Lcom/android/ex/carousel/CarouselViewHelper;->access$000(Lcom/android/ex/carousel/CarouselViewHelper;)Lcom/android/ex/carousel/CarouselView;

    move-result-object v6

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v6, v1, v0}, Lcom/android/ex/carousel/CarouselView;->setTextureForItem(ILandroid/graphics/Bitmap;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselViewHelper$SyncHandler;->this$0:Lcom/android/ex/carousel/CarouselViewHelper;

    invoke-virtual {v0, v1}, Lcom/android/ex/carousel/CarouselViewHelper;->getDetailTextureParameters(I)Lcom/android/ex/carousel/CarouselViewHelper$DetailTextureParameters;

    move-result-object v7

    if-eqz v7, :cond_2

    iget v2, v7, Lcom/android/ex/carousel/CarouselViewHelper$DetailTextureParameters;->textureOffsetX:F

    :goto_1
    if-eqz v7, :cond_3

    iget v3, v7, Lcom/android/ex/carousel/CarouselViewHelper$DetailTextureParameters;->textureOffsetY:F

    :goto_2
    if-eqz v7, :cond_4

    iget v4, v7, Lcom/android/ex/carousel/CarouselViewHelper$DetailTextureParameters;->lineOffsetX:F

    :goto_3
    if-eqz v7, :cond_1

    iget v5, v7, Lcom/android/ex/carousel/CarouselViewHelper$DetailTextureParameters;->lineOffsetY:F

    :cond_1
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselViewHelper$SyncHandler;->this$0:Lcom/android/ex/carousel/CarouselViewHelper;

    #getter for: Lcom/android/ex/carousel/CarouselViewHelper;->mCarouselView:Lcom/android/ex/carousel/CarouselView;
    invoke-static {v0}, Lcom/android/ex/carousel/CarouselViewHelper;->access$000(Lcom/android/ex/carousel/CarouselViewHelper;)Lcom/android/ex/carousel/CarouselView;

    move-result-object v0

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Bitmap;

    invoke-virtual/range {v0 .. v6}, Lcom/android/ex/carousel/CarouselView;->setDetailTextureForItem(IFFFFLandroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    move v2, v5

    goto :goto_1

    :cond_3
    move v3, v5

    goto :goto_2

    :cond_4
    move v4, v5

    goto :goto_3

    :pswitch_2
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselViewHelper$SyncHandler;->this$0:Lcom/android/ex/carousel/CarouselViewHelper;

    #getter for: Lcom/android/ex/carousel/CarouselViewHelper;->mCarouselView:Lcom/android/ex/carousel/CarouselView;
    invoke-static {v0}, Lcom/android/ex/carousel/CarouselViewHelper;->access$000(Lcom/android/ex/carousel/CarouselViewHelper;)Lcom/android/ex/carousel/CarouselView;

    move-result-object v6

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/renderscript/Mesh;

    invoke-virtual {v6, v1, v0}, Lcom/android/ex/carousel/CarouselView;->setGeometryForItem(ILandroid/renderscript/Mesh;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselViewHelper$SyncHandler;->this$0:Lcom/android/ex/carousel/CarouselViewHelper;

    #getter for: Lcom/android/ex/carousel/CarouselViewHelper;->mCarouselView:Lcom/android/ex/carousel/CarouselView;
    invoke-static {v0}, Lcom/android/ex/carousel/CarouselViewHelper;->access$000(Lcom/android/ex/carousel/CarouselViewHelper;)Lcom/android/ex/carousel/CarouselView;

    move-result-object v6

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [F

    check-cast v0, [F

    invoke-virtual {v6, v1, v0}, Lcom/android/ex/carousel/CarouselView;->setMatrixForItem(I[F)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
