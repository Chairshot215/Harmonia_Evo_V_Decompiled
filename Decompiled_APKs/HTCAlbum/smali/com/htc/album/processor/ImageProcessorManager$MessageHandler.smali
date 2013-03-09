.class Lcom/htc/album/processor/ImageProcessorManager$MessageHandler;
.super Landroid/os/Handler;
.source "ImageProcessorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/processor/ImageProcessorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/processor/ImageProcessorManager;


# direct methods
.method private constructor <init>(Lcom/htc/album/processor/ImageProcessorManager;)V
    .locals 0
    .parameter

    .prologue
    .line 488
    iput-object p1, p0, Lcom/htc/album/processor/ImageProcessorManager$MessageHandler;->this$0:Lcom/htc/album/processor/ImageProcessorManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/processor/ImageProcessorManager;Lcom/htc/album/processor/ImageProcessorManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 488
    invoke-direct {p0, p1}, Lcom/htc/album/processor/ImageProcessorManager$MessageHandler;-><init>(Lcom/htc/album/processor/ImageProcessorManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 498
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 517
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 502
    :pswitch_0
    iget-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager$MessageHandler;->this$0:Lcom/htc/album/processor/ImageProcessorManager;

    #getter for: Lcom/htc/album/processor/ImageProcessorManager;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/htc/album/processor/ImageProcessorManager;->access$200(Lcom/htc/album/processor/ImageProcessorManager;)Landroid/app/Activity;

    move-result-object v0

    .line 503
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 504
    const/16 v1, 0x12e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 509
    .end local v0           #activity:Landroid/app/Activity;
    :pswitch_1
    iget-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager$MessageHandler;->this$0:Lcom/htc/album/processor/ImageProcessorManager;

    #getter for: Lcom/htc/album/processor/ImageProcessorManager;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/htc/album/processor/ImageProcessorManager;->access$200(Lcom/htc/album/processor/ImageProcessorManager;)Landroid/app/Activity;

    move-result-object v0

    .line 510
    .restart local v0       #activity:Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 511
    iget-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager$MessageHandler;->this$0:Lcom/htc/album/processor/ImageProcessorManager;

    #getter for: Lcom/htc/album/processor/ImageProcessorManager;->mRunningDlgId:I
    invoke-static {v1}, Lcom/htc/album/processor/ImageProcessorManager;->access$300(Lcom/htc/album/processor/ImageProcessorManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 512
    :cond_1
    iget-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager$MessageHandler;->this$0:Lcom/htc/album/processor/ImageProcessorManager;

    invoke-virtual {v1}, Lcom/htc/album/processor/ImageProcessorManager;->handleProcessedResult()V

    goto :goto_0

    .line 498
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
