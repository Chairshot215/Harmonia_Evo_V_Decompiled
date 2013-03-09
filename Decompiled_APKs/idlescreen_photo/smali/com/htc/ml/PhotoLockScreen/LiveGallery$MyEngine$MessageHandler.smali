.class Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MessageHandler;
.super Landroid/os/Handler;
.source "LiveGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;


# direct methods
.method constructor <init>(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 2211
    iput-object p1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MessageHandler;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const-wide/16 v10, 0x3e8

    const/4 v9, 0x5

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2213
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MessageHandler;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mDestroy:Z
    invoke-static {v5}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$100(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2310
    :goto_0
    return-void

    .line 2217
    :cond_0
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 2218
    .local v4, phoDeoIdx:I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 2220
    .local v2, imageIdx:I
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 2309
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 2222
    :pswitch_0
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MessageHandler;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #calls: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->setPhoDeoPhoto(II)V
    invoke-static {v5, v4, v2}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$2900(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;II)V

    goto :goto_1

    .line 2225
    :pswitch_1
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MessageHandler;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget v7, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->setBehindObjPhoto(II)V
    invoke-static {v5, v6, v7}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$3000(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;II)V

    .line 2229
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MessageHandler;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->lihandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$1200(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 2231
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MessageHandler;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->lihandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$1200(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x1001

    iget v7, p1, Landroid/os/Message;->arg2:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 2232
    .local v3, m:Landroid/os/Message;
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MessageHandler;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->lihandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$1200(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 2236
    .end local v3           #m:Landroid/os/Message;
    :pswitch_2
    const-string v5, "brian_LiveGallery_IdleScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LOAD_VIDEO:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2237
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MessageHandler;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #calls: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->loadVideo(I)V
    invoke-static {v5, v4}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$3100(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;I)V

    goto :goto_1

    .line 2240
    :pswitch_3
    const-string v5, "brian_LiveGallery_IdleScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "STOP_VIDEO:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2241
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MessageHandler;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #calls: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->stopVideo(I)V
    invoke-static {v5, v4}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$3200(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;I)V

    goto :goto_1

    .line 2244
    :pswitch_4
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MessageHandler;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #calls: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->showPhotoLockScreen()V
    invoke-static {v5}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$3300(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)V

    goto :goto_1

    .line 2247
    :pswitch_5
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MessageHandler;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCurrentPhoDeoIdx:I
    invoke-static {v5}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$3400(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)I

    move-result v1

    .line 2248
    .local v1, idx:I
    const/4 v0, 0x0

    .line 2251
    .local v0, counter:I
    :cond_2
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MessageHandler;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;
    invoke-static {v5}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$2400(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MessageHandler;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCurrentPhoDeoIdx:I
    invoke-static {v6}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$3400(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/ml/PhotoLockScreen/PhoDeo;

    invoke-virtual {v5}, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->getMediaStoreIdx()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 2263
    :goto_2
    const/4 v5, 0x4

    if-lt v0, v5, :cond_5

    .line 2267
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MessageHandler;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->handler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$1100(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 2255
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 2256
    const-string v5, "brian_LiveGallery_IdleScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PhoDeo not ready. Idx:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MessageHandler;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCurrentPhoDeoIdx:I
    invoke-static {v7}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$3400(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2257
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MessageHandler;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    invoke-static {v5}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$3408(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)I

    .line 2258
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MessageHandler;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCurrentPhoDeoIdx:I
    invoke-static {v5}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$3400(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)I

    move-result v5

    iget-object v6, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MessageHandler;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mPhoDeos:Ljava/util/List;
    invoke-static {v6}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$2400(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v5, v6, :cond_4

    .line 2259
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MessageHandler;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #setter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCurrentPhoDeoIdx:I
    invoke-static {v5, v8}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$3402(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;I)I

    .line 2262
    :cond_4
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MessageHandler;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCurrentPhoDeoIdx:I
    invoke-static {v5}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$3400(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)I

    move-result v5

    if-ne v1, v5, :cond_2

    goto :goto_2

    .line 2271
    :cond_5
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MessageHandler;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    iget-object v6, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MessageHandler;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCurrentPhoDeoIdx:I
    invoke-static {v6}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$3400(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)I

    move-result v6

    #calls: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->playPhoDeo(I)V
    invoke-static {v5, v6}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$3500(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;I)V

    .line 2272
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MessageHandler;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->handler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$1100(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x9

    invoke-virtual {v5, v6, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2273
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MessageHandler;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->handler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$1100(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Landroid/os/Handler;

    move-result-object v5

    const-wide/16 v6, 0x1388

    invoke-virtual {v5, v9, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 2277
    .end local v0           #counter:I
    .end local v1           #idx:I
    :pswitch_6
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MessageHandler;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #calls: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->setLoadingView(Z)V
    invoke-static {v5, v8}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$2000(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;Z)V

    .line 2278
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MessageHandler;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCurrentScene:Lcom/htc/fusion/fx/FxScene;
    invoke-static {v5}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$1800(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Lcom/htc/fusion/fx/FxScene;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MessageHandler;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mScene:Lcom/htc/fusion/fx/FxScene;
    invoke-static {v6}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$2100(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Lcom/htc/fusion/fx/FxScene;

    move-result-object v6

    if-eq v5, v6, :cond_6

    .line 2280
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MessageHandler;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    iget-object v6, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MessageHandler;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mScene:Lcom/htc/fusion/fx/FxScene;
    invoke-static {v6}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$2100(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Lcom/htc/fusion/fx/FxScene;

    move-result-object v6

    #setter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCurrentScene:Lcom/htc/fusion/fx/FxScene;
    invoke-static {v5, v6}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$1802(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;Lcom/htc/fusion/fx/FxScene;)Lcom/htc/fusion/fx/FxScene;

    .line 2281
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MessageHandler;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    iget-object v6, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MessageHandler;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mScene:Lcom/htc/fusion/fx/FxScene;
    invoke-static {v6}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$2100(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Lcom/htc/fusion/fx/FxScene;

    move-result-object v6

    invoke-virtual {v5, v6, v7}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->setScene(Lcom/htc/fusion/fx/FxScene;Z)Lcom/htc/fusion/fx/FxScene;

    .line 2283
    :cond_6
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MessageHandler;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #calls: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->playBehindObj()V
    invoke-static {v5}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$3600(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)V

    goto/16 :goto_1

    .line 2287
    :pswitch_7
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MessageHandler;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #calls: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->setLoadingView(Z)V
    invoke-static {v5, v8}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$2000(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;Z)V

    .line 2288
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MessageHandler;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCurrentScene:Lcom/htc/fusion/fx/FxScene;
    invoke-static {v5}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$1800(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Lcom/htc/fusion/fx/FxScene;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MessageHandler;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mScene:Lcom/htc/fusion/fx/FxScene;
    invoke-static {v6}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$2100(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Lcom/htc/fusion/fx/FxScene;

    move-result-object v6

    if-eq v5, v6, :cond_7

    .line 2290
    const-string v5, "brian_LiveGallery_IdleScreen"

    const-string v6, "mCurrentScene != mScene"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2291
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MessageHandler;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    iget-object v6, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MessageHandler;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mScene:Lcom/htc/fusion/fx/FxScene;
    invoke-static {v6}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$2100(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Lcom/htc/fusion/fx/FxScene;

    move-result-object v6

    #setter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mCurrentScene:Lcom/htc/fusion/fx/FxScene;
    invoke-static {v5, v6}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$1802(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;Lcom/htc/fusion/fx/FxScene;)Lcom/htc/fusion/fx/FxScene;

    .line 2292
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MessageHandler;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    iget-object v6, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MessageHandler;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mScene:Lcom/htc/fusion/fx/FxScene;
    invoke-static {v6}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$2100(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Lcom/htc/fusion/fx/FxScene;

    move-result-object v6

    invoke-virtual {v5, v6, v7}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->setScene(Lcom/htc/fusion/fx/FxScene;Z)Lcom/htc/fusion/fx/FxScene;

    .line 2294
    :cond_7
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MessageHandler;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #calls: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->playBehindLoop()V
    invoke-static {v5}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$2200(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)V

    goto/16 :goto_1

    .line 2297
    :pswitch_8
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-nez v5, :cond_8

    .line 2298
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MessageHandler;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #calls: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->setLoadingView(Z)V
    invoke-static {v5, v8}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$2000(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;Z)V

    goto/16 :goto_1

    .line 2300
    :cond_8
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MessageHandler;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #calls: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->setLoadingView(Z)V
    invoke-static {v5, v7}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$2000(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;Z)V

    goto/16 :goto_1

    .line 2303
    :pswitch_9
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MessageHandler;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #calls: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->loadPhoDeo()V
    invoke-static {v5}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$3700(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)V

    goto/16 :goto_1

    .line 2306
    :pswitch_a
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$MessageHandler;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #calls: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->setIsFolderModified()V
    invoke-static {v5}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$3800(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)V

    goto/16 :goto_1

    .line 2220
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_a
    .end packed-switch
.end method
