.class public Lcom/htc/android/htcime/util/SmartCAPSentinel;
.super Landroid/os/Handler;
.source "SmartCAPSentinel.java"


# static fields
.field private static final EXPIRE_TIMEOUT:I = 0x1f4


# instance fields
.field private isSubscribed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcime/util/SmartCAPSentinel;->isSubscribed:Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcime/util/SmartCAPSentinel;->isSubscribed:Z

    .line 41
    return-void
.end method

.method public deal()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcime/util/SmartCAPSentinel;->isSubscribed:Z

    .line 36
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/htc/android/htcime/util/SmartCAPSentinel;->cancel()V

    .line 26
    return-void
.end method

.method public isSubscribed()Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/htc/android/htcime/util/SmartCAPSentinel;->isSubscribed:Z

    return v0
.end method

.method public subscribe()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/htcime/util/SmartCAPSentinel;->isSubscribed:Z

    .line 19
    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/util/SmartCAPSentinel;->removeMessages(I)V

    .line 20
    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/util/SmartCAPSentinel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/android/htcime/util/SmartCAPSentinel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 21
    return-void
.end method
