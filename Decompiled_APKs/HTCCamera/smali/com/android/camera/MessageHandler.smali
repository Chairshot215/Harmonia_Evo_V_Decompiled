.class public Lcom/android/camera/MessageHandler;
.super Ljava/lang/Object;
.source "MessageHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MessageHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasMessages(Landroid/os/Handler;I)Z
    .locals 2

    if-nez p0, :cond_0

    const-string v0, "MessageHandler"

    const-string v1, "handler = null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    goto :goto_0
.end method

.method public static removeMessages(Landroid/os/Handler;I)V
    .locals 2

    if-nez p0, :cond_0

    const-string v0, "MessageHandler"

    const-string v1, "handler = null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method public static sendEmptyMessage(Landroid/os/Handler;I)V
    .locals 2

    if-nez p0, :cond_0

    const-string v0, "MessageHandler"

    const-string v1, "handler = null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public static sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V
    .locals 2

    if-nez p0, :cond_0

    const-string v0, "MessageHandler"

    const-string v1, "handler = null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public static sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V
    .locals 3

    if-nez p0, :cond_0

    const-string v1, "MessageHandler"

    const-string v2, "handler = null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public static sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V
    .locals 3

    if-nez p0, :cond_0

    const-string v1, "MessageHandler"

    const-string v2, "handler = null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p5, p6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public static sendUniqueEmptyMessage(Landroid/os/Handler;I)V
    .locals 2

    if-nez p0, :cond_0

    const-string v0, "MessageHandler"

    const-string v1, "handler = null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public static sendUniqueEmptyMessageDelayed(Landroid/os/Handler;IJ)V
    .locals 2

    if-nez p0, :cond_0

    const-string v0, "MessageHandler"

    const-string v1, "handler = null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public static sendUniqueObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V
    .locals 3

    if-nez p0, :cond_0

    const-string v1, "MessageHandler"

    const-string v2, "handler = null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public static sendUniqueObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V
    .locals 3

    if-nez p0, :cond_0

    const-string v1, "MessageHandler"

    const-string v2, "handler = null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, v0, p5, p6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
