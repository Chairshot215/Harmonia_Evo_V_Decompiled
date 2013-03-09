.class public Lcom/android/providers/media/UsbReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UsbReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/media/UsbReceiver$ReceiveHandler;
    }
.end annotation


# static fields
.field private static final CMD_START:I = 0x1

.field private static final CMD_STOP:I = 0x0

.field private static final PTP_ENABLED:I = 0x1

.field private static final PTP_UNENABLED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "UsbReceiver"


# instance fields
.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mRecvHandler:Lcom/android/providers/media/UsbReceiver$ReceiveHandler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 46
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UsbReceiverThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/media/UsbReceiver;->mHandlerThread:Landroid/os/HandlerThread;

    .line 47
    iget-object v0, p0, Lcom/android/providers/media/UsbReceiver;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 48
    new-instance v0, Lcom/android/providers/media/UsbReceiver$ReceiveHandler;

    iget-object v1, p0, Lcom/android/providers/media/UsbReceiver;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/providers/media/UsbReceiver$ReceiveHandler;-><init>(Lcom/android/providers/media/UsbReceiver;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/providers/media/UsbReceiver;->mRecvHandler:Lcom/android/providers/media/UsbReceiver$ReceiveHandler;

    .line 49
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/providers/media/UsbReceiver;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/providers/media/UsbReceiver;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 57
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 58
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 113
    iget-object v5, p0, Lcom/android/providers/media/UsbReceiver;->mRecvHandler:Lcom/android/providers/media/UsbReceiver$ReceiveHandler;

    invoke-virtual {v5}, Lcom/android/providers/media/UsbReceiver$ReceiveHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 114
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 120
    .local v1, extras:Landroid/os/Bundle;
    const-string v5, "configured"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 121
    .local v0, connected:Z
    const-string v5, "mtp"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 122
    .local v3, mtpEnabled:Z
    const-string v5, "ptp"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 124
    .local v4, ptpEnabled:Z
    if-eqz v0, :cond_2

    if-nez v3, :cond_0

    if-eqz v4, :cond_2

    .line 125
    :cond_0
    iput v6, v2, Landroid/os/Message;->arg1:I

    .line 127
    if-ne v6, v4, :cond_1

    .line 128
    iput v6, v2, Landroid/os/Message;->arg2:I

    .line 138
    :goto_0
    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 139
    iget-object v5, p0, Lcom/android/providers/media/UsbReceiver;->mRecvHandler:Lcom/android/providers/media/UsbReceiver$ReceiveHandler;

    invoke-virtual {v5, v2}, Lcom/android/providers/media/UsbReceiver$ReceiveHandler;->sendMessage(Landroid/os/Message;)Z

    .line 141
    return-void

    .line 130
    :cond_1
    iput v7, v2, Landroid/os/Message;->arg2:I

    goto :goto_0

    .line 137
    :cond_2
    iput v7, v2, Landroid/os/Message;->arg1:I

    goto :goto_0
.end method
