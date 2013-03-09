.class final Lcom/htc/android/rosie/home/HostWidgetManager$Worker;
.super Ljava/lang/Object;
.source "HostWidgetManager.java"

# interfaces
.implements Lcom/htc/android/rosie/widget/Widget$Host$Worker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/rosie/home/HostWidgetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Worker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/rosie/home/HostWidgetManager$Worker$HostContentObserver;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V
    .locals 1
    .parameter "looper"
    .parameter "callback"

    .prologue
    .line 999
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1000
    if-eqz p2, :cond_0

    .line 1001
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager$Worker;->mHandler:Landroid/os/Handler;

    .line 1004
    :goto_0
    return-void

    .line 1003
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager$Worker;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Lcom/htc/android/rosie/home/HostWidgetManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 996
    invoke-direct {p0, p1, p2}, Lcom/htc/android/rosie/home/HostWidgetManager$Worker;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 1020
    if-eqz p1, :cond_0

    .line 1021
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager$Worker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1024
    :cond_0
    return-void
.end method

.method public cancelAll()V
    .locals 2

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager$Worker;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1074
    return-void
.end method

.method public getContentObserver(Lcom/htc/android/rosie/widget/Widget$Host$Worker$ContentChangeCallback;)Landroid/database/ContentObserver;
    .locals 3
    .parameter "callback"

    .prologue
    .line 1078
    new-instance v0, Lcom/htc/android/rosie/home/HostWidgetManager$Worker$HostContentObserver;

    iget-object v1, p0, Lcom/htc/android/rosie/home/HostWidgetManager$Worker;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/htc/android/rosie/home/HostWidgetManager$Worker$HostContentObserver;-><init>(Landroid/os/Handler;Lcom/htc/android/rosie/widget/Widget$Host$Worker$ContentChangeCallback;Lcom/htc/android/rosie/home/HostWidgetManager$1;)V

    return-object v0
.end method

.method public hasMessage(I)Z
    .locals 1
    .parameter "what"

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager$Worker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public hasMessage(ILjava/lang/Object;)Z
    .locals 1
    .parameter "what"
    .parameter "object"

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager$Worker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public obtainMessage()Landroid/os/Message;
    .locals 1

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager$Worker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager$Worker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1009
    return-void
.end method

.method public postAtTime(Ljava/lang/Runnable;J)V
    .locals 1
    .parameter "r"
    .parameter "uptimeMillis"

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager$Worker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 1017
    return-void
.end method

.method public postDelayed(Ljava/lang/Runnable;J)V
    .locals 1
    .parameter "r"
    .parameter "delayMillis"

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager$Worker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1013
    return-void
.end method

.method public recall(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager$Worker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1066
    return-void
.end method

.method public recall(ILjava/lang/Object;)V
    .locals 1
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager$Worker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1070
    return-void
.end method

.method public send(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager$Worker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1029
    return-void
.end method

.method public send(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager$Worker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1041
    return-void
.end method

.method public sendAtTime(IJ)V
    .locals 1
    .parameter "what"
    .parameter "uptimeMillis"

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager$Worker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 1050
    return-void
.end method

.method public sendAtTime(Landroid/os/Message;J)V
    .locals 1
    .parameter "msg"
    .parameter "uptimeMillis"

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager$Worker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1054
    return-void
.end method

.method public sendDelayed(IJ)V
    .locals 1
    .parameter "what"
    .parameter "delayMillis"

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager$Worker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1033
    return-void
.end method

.method public sendDelayed(Landroid/os/Message;J)V
    .locals 1
    .parameter "msg"
    .parameter "delayMillis"

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager$Worker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1045
    return-void
.end method
