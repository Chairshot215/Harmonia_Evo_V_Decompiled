.class Lcom/android/ex/carousel/CarouselRS$1;
.super Landroid/renderscript/RenderScript$RSMessageHandler;
.source "CarouselRS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/carousel/CarouselRS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/carousel/CarouselRS;


# direct methods
.method constructor <init>(Lcom/android/ex/carousel/CarouselRS;)V
    .locals 0

    iput-object p1, p0, Lcom/android/ex/carousel/CarouselRS$1;->this$0:Lcom/android/ex/carousel/CarouselRS;

    invoke-direct {p0}, Landroid/renderscript/RenderScript$RSMessageHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v6, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS$1;->this$0:Lcom/android/ex/carousel/CarouselRS;

    #getter for: Lcom/android/ex/carousel/CarouselRS;->mCallback:Lcom/android/ex/carousel/CarouselRS$CarouselCallback;
    invoke-static {v0}, Lcom/android/ex/carousel/CarouselRS;->access$000(Lcom/android/ex/carousel/CarouselRS;)Lcom/android/ex/carousel/CarouselRS$CarouselCallback;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    :sswitch_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/ex/carousel/CarouselRS$1;->mID:I

    sparse-switch v0, :sswitch_data_0

    const-string v0, "CarouselRS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown RSMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ex/carousel/CarouselRS$1;->mID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS$1;->this$0:Lcom/android/ex/carousel/CarouselRS;

    #getter for: Lcom/android/ex/carousel/CarouselRS;->mCallback:Lcom/android/ex/carousel/CarouselRS$CarouselCallback;
    invoke-static {v0}, Lcom/android/ex/carousel/CarouselRS;->access$000(Lcom/android/ex/carousel/CarouselRS;)Lcom/android/ex/carousel/CarouselRS$CarouselCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselRS$1;->mData:[I

    aget v1, v1, v9

    invoke-interface {v0, v1}, Lcom/android/ex/carousel/CarouselRS$CarouselCallback;->onCardSelected(I)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS$1;->this$0:Lcom/android/ex/carousel/CarouselRS;

    #getter for: Lcom/android/ex/carousel/CarouselRS;->mCallback:Lcom/android/ex/carousel/CarouselRS$CarouselCallback;
    invoke-static {v0}, Lcom/android/ex/carousel/CarouselRS;->access$000(Lcom/android/ex/carousel/CarouselRS;)Lcom/android/ex/carousel/CarouselRS$CarouselCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselRS$1;->mData:[I

    aget v1, v1, v9

    iget-object v2, p0, Lcom/android/ex/carousel/CarouselRS$1;->mData:[I

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/ex/carousel/CarouselRS$1;->mData:[I

    aget v3, v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/android/ex/carousel/CarouselRS$CarouselCallback;->onDetailSelected(III)V

    goto :goto_0

    :sswitch_3
    new-array v8, v4, [I

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS$1;->mData:[I

    aget v0, v0, v3

    aput v0, v8, v9

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS$1;->mData:[I

    aget v0, v0, v4

    aput v0, v8, v3

    new-instance v7, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS$1;->mData:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselRS$1;->mData:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/ex/carousel/CarouselRS$1;->mData:[I

    const/4 v3, 0x5

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/ex/carousel/CarouselRS$1;->mData:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS$1;->this$0:Lcom/android/ex/carousel/CarouselRS;

    #getter for: Lcom/android/ex/carousel/CarouselRS;->mCallback:Lcom/android/ex/carousel/CarouselRS$CarouselCallback;
    invoke-static {v0}, Lcom/android/ex/carousel/CarouselRS;->access$000(Lcom/android/ex/carousel/CarouselRS;)Lcom/android/ex/carousel/CarouselRS$CarouselCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselRS$1;->mData:[I

    aget v1, v1, v9

    invoke-interface {v0, v1, v8, v7}, Lcom/android/ex/carousel/CarouselRS$CarouselCallback;->onCardLongPress(I[ILandroid/graphics/Rect;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS$1;->this$0:Lcom/android/ex/carousel/CarouselRS;

    #getter for: Lcom/android/ex/carousel/CarouselRS;->mCallback:Lcom/android/ex/carousel/CarouselRS$CarouselCallback;
    invoke-static {v0}, Lcom/android/ex/carousel/CarouselRS;->access$000(Lcom/android/ex/carousel/CarouselRS;)Lcom/android/ex/carousel/CarouselRS$CarouselCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselRS$1;->mData:[I

    aget v1, v1, v9

    invoke-interface {v0, v1}, Lcom/android/ex/carousel/CarouselRS$CarouselCallback;->onRequestTexture(I)V

    goto/16 :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS$1;->this$0:Lcom/android/ex/carousel/CarouselRS;

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselRS$1;->mData:[I

    aget v1, v1, v9

    invoke-virtual {v0, v1, v6}, Lcom/android/ex/carousel/CarouselRS;->setTexture(ILandroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS$1;->this$0:Lcom/android/ex/carousel/CarouselRS;

    #getter for: Lcom/android/ex/carousel/CarouselRS;->mCallback:Lcom/android/ex/carousel/CarouselRS$CarouselCallback;
    invoke-static {v0}, Lcom/android/ex/carousel/CarouselRS;->access$000(Lcom/android/ex/carousel/CarouselRS;)Lcom/android/ex/carousel/CarouselRS$CarouselCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselRS$1;->mData:[I

    aget v1, v1, v9

    invoke-interface {v0, v1}, Lcom/android/ex/carousel/CarouselRS$CarouselCallback;->onInvalidateTexture(I)V

    goto/16 :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS$1;->this$0:Lcom/android/ex/carousel/CarouselRS;

    #getter for: Lcom/android/ex/carousel/CarouselRS;->mCallback:Lcom/android/ex/carousel/CarouselRS$CarouselCallback;
    invoke-static {v0}, Lcom/android/ex/carousel/CarouselRS;->access$000(Lcom/android/ex/carousel/CarouselRS;)Lcom/android/ex/carousel/CarouselRS$CarouselCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselRS$1;->mData:[I

    aget v1, v1, v9

    invoke-interface {v0, v1}, Lcom/android/ex/carousel/CarouselRS$CarouselCallback;->onRequestDetailTexture(I)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS$1;->this$0:Lcom/android/ex/carousel/CarouselRS;

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselRS$1;->mData:[I

    aget v1, v1, v9

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/ex/carousel/CarouselRS;->setDetailTexture(IFFFFLandroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS$1;->this$0:Lcom/android/ex/carousel/CarouselRS;

    #getter for: Lcom/android/ex/carousel/CarouselRS;->mCallback:Lcom/android/ex/carousel/CarouselRS$CarouselCallback;
    invoke-static {v0}, Lcom/android/ex/carousel/CarouselRS;->access$000(Lcom/android/ex/carousel/CarouselRS;)Lcom/android/ex/carousel/CarouselRS$CarouselCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselRS$1;->mData:[I

    aget v1, v1, v9

    invoke-interface {v0, v1}, Lcom/android/ex/carousel/CarouselRS$CarouselCallback;->onInvalidateDetailTexture(I)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS$1;->this$0:Lcom/android/ex/carousel/CarouselRS;

    #getter for: Lcom/android/ex/carousel/CarouselRS;->mCallback:Lcom/android/ex/carousel/CarouselRS$CarouselCallback;
    invoke-static {v0}, Lcom/android/ex/carousel/CarouselRS;->access$000(Lcom/android/ex/carousel/CarouselRS;)Lcom/android/ex/carousel/CarouselRS$CarouselCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselRS$1;->mData:[I

    aget v1, v1, v9

    invoke-interface {v0, v1}, Lcom/android/ex/carousel/CarouselRS$CarouselCallback;->onRequestGeometry(I)V

    goto/16 :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS$1;->this$0:Lcom/android/ex/carousel/CarouselRS;

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselRS$1;->mData:[I

    aget v1, v1, v9

    invoke-virtual {v0, v1, v6}, Lcom/android/ex/carousel/CarouselRS;->setGeometry(ILandroid/renderscript/Mesh;)V

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS$1;->this$0:Lcom/android/ex/carousel/CarouselRS;

    #getter for: Lcom/android/ex/carousel/CarouselRS;->mCallback:Lcom/android/ex/carousel/CarouselRS$CarouselCallback;
    invoke-static {v0}, Lcom/android/ex/carousel/CarouselRS;->access$000(Lcom/android/ex/carousel/CarouselRS;)Lcom/android/ex/carousel/CarouselRS$CarouselCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselRS$1;->mData:[I

    aget v1, v1, v9

    invoke-interface {v0, v1}, Lcom/android/ex/carousel/CarouselRS$CarouselCallback;->onInvalidateGeometry(I)V

    goto/16 :goto_0

    :sswitch_a
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS$1;->this$0:Lcom/android/ex/carousel/CarouselRS;

    #getter for: Lcom/android/ex/carousel/CarouselRS;->mCallback:Lcom/android/ex/carousel/CarouselRS$CarouselCallback;
    invoke-static {v0}, Lcom/android/ex/carousel/CarouselRS;->access$000(Lcom/android/ex/carousel/CarouselRS;)Lcom/android/ex/carousel/CarouselRS$CarouselCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/ex/carousel/CarouselRS$CarouselCallback;->onAnimationStarted()V

    goto/16 :goto_0

    :sswitch_b
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselRS$1;->this$0:Lcom/android/ex/carousel/CarouselRS;

    #getter for: Lcom/android/ex/carousel/CarouselRS;->mCallback:Lcom/android/ex/carousel/CarouselRS$CarouselCallback;
    invoke-static {v0}, Lcom/android/ex/carousel/CarouselRS;->access$000(Lcom/android/ex/carousel/CarouselRS;)Lcom/android/ex/carousel/CarouselRS$CarouselCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselRS$1;->mData:[I

    aget v1, v1, v9

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/ex/carousel/CarouselRS$CarouselCallback;->onAnimationFinished(F)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x69 -> :sswitch_2
        0x6e -> :sswitch_3
        0xc8 -> :sswitch_4
        0xd2 -> :sswitch_5
        0x12c -> :sswitch_8
        0x136 -> :sswitch_9
        0x190 -> :sswitch_a
        0x1f4 -> :sswitch_b
        0x258 -> :sswitch_6
        0x262 -> :sswitch_7
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method
