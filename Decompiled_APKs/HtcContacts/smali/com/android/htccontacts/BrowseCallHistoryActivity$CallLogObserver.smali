.class Lcom/android/htccontacts/BrowseCallHistoryActivity$CallLogObserver;
.super Landroid/database/ContentObserver;
.source "BrowseCallHistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/BrowseCallHistoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallLogObserver"
.end annotation


# instance fields
.field activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/BrowseCallHistoryActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/htccontacts/BrowseCallHistoryActivity;)V
    .locals 1
    .parameter "handler"
    .parameter "activity"

    .prologue
    .line 668
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 669
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$CallLogObserver;->activityRef:Ljava/lang/ref/WeakReference;

    .line 670
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 675
    iget-object v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$CallLogObserver;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/BrowseCallHistoryActivity;

    .line 676
    .local v0, activity:Lcom/android/htccontacts/BrowseCallHistoryActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 678
    invoke-virtual {v0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->notifyDirty()V

    .line 680
    :cond_0
    return-void
.end method
