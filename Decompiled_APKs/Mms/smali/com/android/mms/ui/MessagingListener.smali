.class public Lcom/android/mms/ui/MessagingListener;
.super Ljava/lang/Object;
.source "MessagingListener.java"


# static fields
.field private static final LOCAL_LOGV:Z = true

.field private static final TAG:Ljava/lang/String; = "MessagingListener"


# instance fields
.field private mInstance:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/mms/ui/MessagingListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingListener;->mInstance:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public getWeakReference()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/mms/ui/MessagingListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/mms/ui/MessagingListener;->mInstance:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public onConatctInfoChange()V
    .locals 2

    .prologue
    .line 26
    const-string v0, "MessagingListener"

    const-string v1, "onConatctInfoChange:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-void
.end method

.method public onDeleteDetailScreen(J)V
    .locals 0
    .parameter "thread_id"

    .prologue
    .line 37
    return-void
.end method

.method public onNewNotification(ILandroid/content/Intent;)V
    .locals 2
    .parameter "id"
    .parameter "intent"

    .prologue
    .line 34
    const-string v0, "MessagingListener"

    const-string v1, "onNewNotification:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void
.end method

.method public onRefreshAllMessagesUnreadCounts([I)V
    .locals 2
    .parameter "counts"

    .prologue
    .line 30
    const-string v0, "MessagingListener"

    const-string v1, "onRefreshAllMessagesUnreadCounts:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-void
.end method
