.class public Lcom/android/htccontacts/BackgroundWorkerHandler$WorkerHandler;
.super Landroid/os/Handler;
.source "BackgroundWorkerHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/BackgroundWorkerHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/BackgroundWorkerHandler;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/BackgroundWorkerHandler;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/htccontacts/BackgroundWorkerHandler$WorkerHandler;->this$0:Lcom/android/htccontacts/BackgroundWorkerHandler;

    .line 50
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 51
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 59
    iget v1, p1, Landroid/os/Message;->what:I

    .line 61
    .local v1, token:I
    packed-switch v1, :pswitch_data_0

    .line 85
    :pswitch_0
    const-string v2, "BackgroundWorkerHandler"

    const-string v3, "do nothing"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 67
    :pswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 68
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/database/Cursor;

    .line 70
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 71
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
