.class Lcom/htc/CustomizationSetup/AsyncTask$InternalHandler;
.super Landroid/os/Handler;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/CustomizationSetup/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 422
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/CustomizationSetup/AsyncTask$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 422
    invoke-direct {p0}, Lcom/htc/CustomizationSetup/AsyncTask$InternalHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 426
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/CustomizationSetup/AsyncTask$AsyncTaskResult;

    .line 427
    .local v0, result:Lcom/htc/CustomizationSetup/AsyncTask$AsyncTaskResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 439
    :goto_0
    return-void

    .line 430
    :pswitch_0
    iget-object v1, v0, Lcom/htc/CustomizationSetup/AsyncTask$AsyncTaskResult;->mTask:Lcom/htc/CustomizationSetup/AsyncTask;

    iget-object v2, v0, Lcom/htc/CustomizationSetup/AsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    #calls: Lcom/htc/CustomizationSetup/AsyncTask;->finish(Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/htc/CustomizationSetup/AsyncTask;->access$300(Lcom/htc/CustomizationSetup/AsyncTask;Ljava/lang/Object;)V

    goto :goto_0

    .line 433
    :pswitch_1
    iget-object v1, v0, Lcom/htc/CustomizationSetup/AsyncTask$AsyncTaskResult;->mTask:Lcom/htc/CustomizationSetup/AsyncTask;

    iget-object v2, v0, Lcom/htc/CustomizationSetup/AsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/htc/CustomizationSetup/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    goto :goto_0

    .line 436
    :pswitch_2
    iget-object v1, v0, Lcom/htc/CustomizationSetup/AsyncTask$AsyncTaskResult;->mTask:Lcom/htc/CustomizationSetup/AsyncTask;

    invoke-virtual {v1}, Lcom/htc/CustomizationSetup/AsyncTask;->onCancelled()V

    goto :goto_0

    .line 427
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
