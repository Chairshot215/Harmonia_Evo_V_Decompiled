.class Lcom/android/htccontacts/BrowseLayerCarouselActivity$ResetNewCallFlagIdleHandler;
.super Ljava/lang/Object;
.source "BrowseLayerCarouselActivity.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/BrowseLayerCarouselActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResetNewCallFlagIdleHandler"
.end annotation


# instance fields
.field private mRefActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 748
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 749
    if-nez p1, :cond_0

    .line 750
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument \'activity\' cannot be null !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 752
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseLayerCarouselActivity$ResetNewCallFlagIdleHandler;->mRefActivity:Ljava/lang/ref/WeakReference;

    .line 753
    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 6

    .prologue
    .line 757
    iget-object v4, p0, Lcom/android/htccontacts/BrowseLayerCarouselActivity$ResetNewCallFlagIdleHandler;->mRefActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 758
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 759
    new-instance v2, Lcom/android/htccontacts/BrowseLayerCarouselActivity$ResetNewCallFlagThread;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    const-string v5, "BrowseLayerCarouselActivity.resetNewCallsFlagThread"

    invoke-direct {v2, v4, v5}, Lcom/android/htccontacts/BrowseLayerCarouselActivity$ResetNewCallFlagThread;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 762
    .local v2, t:Ljava/lang/Thread;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/Thread;->setPriority(I)V

    .line 763
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 767
    :try_start_0
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 768
    .local v3, telephonyBinder:Lcom/android/internal/telephony/ITelephony;
    if-eqz v3, :cond_0

    .line 769
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->cancelMissedCallsNotification()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 778
    .end local v2           #t:Ljava/lang/Thread;
    .end local v3           #telephonyBinder:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    const/4 v4, 0x0

    return v4

    .line 771
    .restart local v2       #t:Ljava/lang/Thread;
    :catch_0
    move-exception v1

    .line 772
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "BrowseLayerCarouselActivity"

    const-string v5, "Failed to clear missed calls notification due to remote excetpion"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 776
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #t:Ljava/lang/Thread;
    :cond_1
    const-string v4, "BrowseLayerCarouselActivity"

    const-string v5, "ResetNewCallFlagIdleHandler - queueIdle did not run because of reference activity cannot be found !"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
