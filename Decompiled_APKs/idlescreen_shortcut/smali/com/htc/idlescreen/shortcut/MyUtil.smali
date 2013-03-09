.class public Lcom/htc/idlescreen/shortcut/MyUtil;
.super Ljava/lang/Object;
.source "MyUtil.java"


# static fields
.field private static final LOG_PREFIX:Ljava/lang/String; = "MyUtility"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static removeAllMessage(Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 0
    .parameter "handler"
    .parameter "token"

    .prologue
    .line 57
    if-nez p0, :cond_0

    .line 61
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static removeMessage(Landroid/os/Handler;I)V
    .locals 0
    .parameter "handler"
    .parameter "what"

    .prologue
    .line 50
    if-nez p0, :cond_0

    .line 54
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method public static sendMessage(Landroid/os/Handler;I)V
    .locals 2
    .parameter "handler"
    .parameter "what"

    .prologue
    .line 18
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/htc/idlescreen/shortcut/MyUtil;->sendMessage(Landroid/os/Handler;IJ)V

    .line 19
    return-void
.end method

.method public static sendMessage(Landroid/os/Handler;IJ)V
    .locals 2
    .parameter "handler"
    .parameter "what"
    .parameter "delay"

    .prologue
    .line 22
    if-nez p0, :cond_0

    .line 31
    :goto_0
    return-void

    .line 25
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    .line 26
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public static sendMessage(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 2
    .parameter "handler"
    .parameter "msg"

    .prologue
    .line 34
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/htc/idlescreen/shortcut/MyUtil;->sendMessage(Landroid/os/Handler;Landroid/os/Message;J)V

    .line 35
    return-void
.end method

.method public static sendMessage(Landroid/os/Handler;Landroid/os/Message;J)V
    .locals 2
    .parameter "handler"
    .parameter "msg"
    .parameter "delay"

    .prologue
    .line 38
    if-nez p0, :cond_0

    .line 47
    :goto_0
    return-void

    .line 41
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    .line 42
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
