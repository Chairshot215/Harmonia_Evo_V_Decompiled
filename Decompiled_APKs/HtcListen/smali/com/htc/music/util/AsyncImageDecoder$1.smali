.class Lcom/htc/music/util/AsyncImageDecoder$1;
.super Landroid/os/Handler;
.source "AsyncImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/util/AsyncImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/util/AsyncImageDecoder;


# direct methods
.method constructor <init>(Lcom/htc/music/util/AsyncImageDecoder;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/util/AsyncImageDecoder$1;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v3, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "[AsyncImageDecoder]"

    const-string v1, "Something wrong in mUiHandler.handleMessage()"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    if-eqz v6, :cond_0

    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$000(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder$1;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mRecycleOnPause:Z
    invoke-static {v0}, Lcom/htc/music/util/AsyncImageDecoder;->access$100(Lcom/htc/music/util/AsyncImageDecoder;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder$1;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;
    invoke-static {v0}, Lcom/htc/music/util/AsyncImageDecoder;->access$200(Lcom/htc/music/util/AsyncImageDecoder;)Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder$1;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mPause:Z
    invoke-static {v0}, Lcom/htc/music/util/AsyncImageDecoder;->access$300(Lcom/htc/music/util/AsyncImageDecoder;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "[AsyncImageDecoder]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImageDecoded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder$1;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;
    invoke-static {v0}, Lcom/htc/music/util/AsyncImageDecoder;->access$200(Lcom/htc/music/util/AsyncImageDecoder;)Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    move-result-object v0

    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mKey:I
    invoke-static {v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$400(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)I

    move-result v1

    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$000(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Landroid/graphics/Bitmap;

    move-result-object v2

    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mTimeStamp:J
    invoke-static {v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$500(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)J

    move-result-wide v3

    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mVarargs:[Ljava/lang/Object;
    invoke-static {v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$600(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)[Ljava/lang/Object;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;->onImageDecoded(ILandroid/graphics/Bitmap;J[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v0, "[AsyncImageDecoder]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decoder paused, recycle current bitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$000(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    #setter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v6, v3}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$002(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder$1;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/music/util/AsyncImageDecoder;->access$700(Lcom/htc/music/util/AsyncImageDecoder;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder$1;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;
    invoke-static {v0}, Lcom/htc/music/util/AsyncImageDecoder;->access$200(Lcom/htc/music/util/AsyncImageDecoder;)Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "[AsyncImageDecoder]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImageDecoded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder$1;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;
    invoke-static {v0}, Lcom/htc/music/util/AsyncImageDecoder;->access$200(Lcom/htc/music/util/AsyncImageDecoder;)Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    move-result-object v0

    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mKey:I
    invoke-static {v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$400(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)I

    move-result v1

    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$000(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Landroid/graphics/Bitmap;

    move-result-object v2

    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mTimeStamp:J
    invoke-static {v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$500(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)J

    move-result-wide v3

    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mVarargs:[Ljava/lang/Object;
    invoke-static {v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$600(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)[Ljava/lang/Object;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;->onImageDecoded(ILandroid/graphics/Bitmap;J[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "[AsyncImageDecoder]"

    const-string v1, "onImageDecoded mListener == null, recycle bitmap"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$000(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    #setter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v6, v3}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$002(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder$1;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->quit()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
