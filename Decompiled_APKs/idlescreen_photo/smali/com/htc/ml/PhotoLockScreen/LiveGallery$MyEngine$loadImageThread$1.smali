.class Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread$1;
.super Landroid/os/Handler;
.source "LiveGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;


# direct methods
.method constructor <init>(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;)V
    .locals 0
    .parameter

    .prologue
    .line 2140
    iput-object p1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread$1;->this$2:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 2142
    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread$1;->this$2:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;

    iget-object v2, v2, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #getter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mStop:Z
    invoke-static {v2}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$2700(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2167
    :goto_0
    return-void

    .line 2144
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 2148
    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread$1;->this$2:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;

    iget v3, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->loadBehindPhoto(I)V
    invoke-static {v2, v3}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->access$2800(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2150
    :catch_0
    move-exception v0

    .line 2152
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "brian_LiveGallery_IdleScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadBehindPhoto() - Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2156
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadPhoDeoParam;

    .line 2159
    .local v1, p:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadPhoDeoParam;
    :try_start_1
    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread$1;->this$2:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;

    iget v3, v1, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadPhoDeoParam;->phoDeoIdx:I

    iget v4, v1, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadPhoDeoParam;->imageIdx:I

    iget v5, v1, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadPhoDeoParam;->message:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadImageThread;->loadPhoDeoPhoto(III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2161
    :catch_1
    move-exception v0

    .line 2163
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, "brian_LiveGallery_IdleScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadPhoDeoPhoto() - Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2144
    nop

    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
