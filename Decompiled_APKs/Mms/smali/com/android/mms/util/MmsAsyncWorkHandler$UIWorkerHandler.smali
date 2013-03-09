.class Lcom/android/mms/util/MmsAsyncWorkHandler$UIWorkerHandler;
.super Landroid/os/Handler;
.source "MmsAsyncWorkHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/MmsAsyncWorkHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIWorkerHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 256
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/util/MmsAsyncWorkHandler$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/android/mms/util/MmsAsyncWorkHandler$UIWorkerHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 259
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 260
    .local v1, event:I
    packed-switch v1, :pswitch_data_0

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 262
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;

    .line 263
    .local v0, args:Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;
    iget-object v2, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->handler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 264
    iget-object v2, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->handler:Landroid/os/Handler;

    check-cast v2, Lcom/android/mms/util/MmsAsyncWorkHandler;

    iget v4, p1, Landroid/os/Message;->arg2:I

    iget-object v5, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v3, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v3, Landroid/database/Cursor;

    invoke-virtual {v2, v4, v5, v3}, Lcom/android/mms/util/MmsAsyncWorkHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    goto :goto_0

    .line 260
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method
