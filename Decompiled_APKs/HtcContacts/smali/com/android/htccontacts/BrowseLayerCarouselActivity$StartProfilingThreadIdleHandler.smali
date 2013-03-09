.class Lcom/android/htccontacts/BrowseLayerCarouselActivity$StartProfilingThreadIdleHandler;
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
    name = "StartProfilingThreadIdleHandler"
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
    .line 721
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 722
    if-nez p1, :cond_0

    .line 723
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument \'activity\' cannot be null !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 725
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseLayerCarouselActivity$StartProfilingThreadIdleHandler;->mRefActivity:Ljava/lang/ref/WeakReference;

    .line 726
    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 4

    .prologue
    .line 730
    iget-object v2, p0, Lcom/android/htccontacts/BrowseLayerCarouselActivity$StartProfilingThreadIdleHandler;->mRefActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 731
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 732
    const-string v2, "Profiling"

    const-string v3, "idle and then go profiling"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    new-instance v1, Lcom/android/htccontacts/BrowseLayerCarouselActivity$ProfileThread;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/htccontacts/BrowseLayerCarouselActivity$ProfileThread;-><init>(Landroid/content/Context;)V

    .line 734
    .local v1, thread:Ljava/lang/Thread;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 735
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 740
    .end local v1           #thread:Ljava/lang/Thread;
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 738
    :cond_0
    const-string v2, "BrowseLayerCarouselActivity"

    const-string v3, "ResetNewCallFlagIdleHandler - queueIdle did not run because of reference activity cannot be found !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
