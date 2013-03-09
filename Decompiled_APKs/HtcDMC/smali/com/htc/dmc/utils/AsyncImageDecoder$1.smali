.class Lcom/htc/dmc/utils/AsyncImageDecoder$1;
.super Landroid/os/Handler;
.source "AsyncImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dmc/utils/AsyncImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dmc/utils/AsyncImageDecoder;


# direct methods
.method constructor <init>(Lcom/htc/dmc/utils/AsyncImageDecoder;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$1;->this$0:Lcom/htc/dmc/utils/AsyncImageDecoder;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 96
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 131
    const-string v0, "[AsyncImageDecoder]"

    const-string v1, "Something wrong in mUiHandler.handleMessage()"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 98
    :pswitch_0
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;

    .line 100
    .local v6, task:Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;
    if-eqz v6, :cond_0

    #getter for: Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->access$000(Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$1;->this$0:Lcom/htc/dmc/utils/AsyncImageDecoder;

    #getter for: Lcom/htc/dmc/utils/AsyncImageDecoder;->mRecycleOnPause:Z
    invoke-static {v0}, Lcom/htc/dmc/utils/AsyncImageDecoder;->access$100(Lcom/htc/dmc/utils/AsyncImageDecoder;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    iget-object v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$1;->this$0:Lcom/htc/dmc/utils/AsyncImageDecoder;

    #getter for: Lcom/htc/dmc/utils/AsyncImageDecoder;->mListener:Lcom/htc/dmc/utils/AsyncImageDecoder$IImageDecodeListener;
    invoke-static {v0}, Lcom/htc/dmc/utils/AsyncImageDecoder;->access$200(Lcom/htc/dmc/utils/AsyncImageDecoder;)Lcom/htc/dmc/utils/AsyncImageDecoder$IImageDecodeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$1;->this$0:Lcom/htc/dmc/utils/AsyncImageDecoder;

    #getter for: Lcom/htc/dmc/utils/AsyncImageDecoder;->mPause:Z
    invoke-static {v0}, Lcom/htc/dmc/utils/AsyncImageDecoder;->access$300(Lcom/htc/dmc/utils/AsyncImageDecoder;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 103
    const-string v0, "[AsyncImageDecoder]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImageDecoded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$1;->this$0:Lcom/htc/dmc/utils/AsyncImageDecoder;

    #getter for: Lcom/htc/dmc/utils/AsyncImageDecoder;->mListener:Lcom/htc/dmc/utils/AsyncImageDecoder$IImageDecodeListener;
    invoke-static {v0}, Lcom/htc/dmc/utils/AsyncImageDecoder;->access$200(Lcom/htc/dmc/utils/AsyncImageDecoder;)Lcom/htc/dmc/utils/AsyncImageDecoder$IImageDecodeListener;

    move-result-object v0

    #getter for: Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mKey:I
    invoke-static {v6}, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->access$400(Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;)I

    move-result v1

    #getter for: Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->access$000(Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;)Landroid/graphics/Bitmap;

    move-result-object v2

    #getter for: Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mTimeStamp:J
    invoke-static {v6}, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->access$500(Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;)J

    move-result-wide v3

    #getter for: Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mArg0:Ljava/lang/Object;
    invoke-static {v6}, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->access$600(Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/htc/dmc/utils/AsyncImageDecoder$IImageDecodeListener;->onImageDecoded(ILandroid/graphics/Bitmap;JLjava/lang/Object;)V

    goto :goto_0

    .line 106
    :cond_1
    const-string v0, "[AsyncImageDecoder]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decoder paused, recycle current bitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    #getter for: Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->access$000(Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 108
    #setter for: Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v6, v3}, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->access$002(Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 109
    iget-object v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$1;->this$0:Lcom/htc/dmc/utils/AsyncImageDecoder;

    #getter for: Lcom/htc/dmc/utils/AsyncImageDecoder;->mList:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/dmc/utils/AsyncImageDecoder;->access$700(Lcom/htc/dmc/utils/AsyncImageDecoder;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$1;->this$0:Lcom/htc/dmc/utils/AsyncImageDecoder;

    #getter for: Lcom/htc/dmc/utils/AsyncImageDecoder;->mListener:Lcom/htc/dmc/utils/AsyncImageDecoder$IImageDecodeListener;
    invoke-static {v0}, Lcom/htc/dmc/utils/AsyncImageDecoder;->access$200(Lcom/htc/dmc/utils/AsyncImageDecoder;)Lcom/htc/dmc/utils/AsyncImageDecoder$IImageDecodeListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 113
    const-string v0, "[AsyncImageDecoder]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImageDecoded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$1;->this$0:Lcom/htc/dmc/utils/AsyncImageDecoder;

    #getter for: Lcom/htc/dmc/utils/AsyncImageDecoder;->mListener:Lcom/htc/dmc/utils/AsyncImageDecoder$IImageDecodeListener;
    invoke-static {v0}, Lcom/htc/dmc/utils/AsyncImageDecoder;->access$200(Lcom/htc/dmc/utils/AsyncImageDecoder;)Lcom/htc/dmc/utils/AsyncImageDecoder$IImageDecodeListener;

    move-result-object v0

    #getter for: Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mKey:I
    invoke-static {v6}, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->access$400(Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;)I

    move-result v1

    #getter for: Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->access$000(Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;)Landroid/graphics/Bitmap;

    move-result-object v2

    #getter for: Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mTimeStamp:J
    invoke-static {v6}, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->access$500(Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;)J

    move-result-wide v3

    #getter for: Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mArg0:Ljava/lang/Object;
    invoke-static {v6}, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->access$600(Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/htc/dmc/utils/AsyncImageDecoder$IImageDecodeListener;->onImageDecoded(ILandroid/graphics/Bitmap;JLjava/lang/Object;)V

    goto/16 :goto_0

    .line 116
    :cond_3
    const-string v0, "[AsyncImageDecoder]"

    const-string v1, "onImageDecoded mListener == null, recycle bitmap"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    #getter for: Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->access$000(Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 118
    #setter for: Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v6, v3}, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->access$002(Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 126
    .end local v6           #task:Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;
    :pswitch_1
    iget-object v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder$1;->this$0:Lcom/htc/dmc/utils/AsyncImageDecoder;

    invoke-virtual {v0}, Lcom/htc/dmc/utils/AsyncImageDecoder;->quit()V

    goto/16 :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
