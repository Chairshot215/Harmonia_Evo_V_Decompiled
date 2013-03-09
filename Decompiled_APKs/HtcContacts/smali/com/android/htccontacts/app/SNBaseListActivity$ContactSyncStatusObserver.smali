.class Lcom/android/htccontacts/app/SNBaseListActivity$ContactSyncStatusObserver;
.super Ljava/lang/Object;
.source "SNBaseListActivity.java"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/app/SNBaseListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContactSyncStatusObserver"
.end annotation


# instance fields
.field activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/app/SNBaseListActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/app/SNBaseListActivity;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 201
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 202
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity$ContactSyncStatusObserver;->activityRef:Ljava/lang/ref/WeakReference;

    .line 203
    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .locals 2
    .parameter "which"

    .prologue
    .line 205
    iget-object v1, p0, Lcom/android/htccontacts/app/SNBaseListActivity$ContactSyncStatusObserver;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/app/SNBaseListActivity;

    .line 206
    .local v0, target:Lcom/android/htccontacts/app/SNBaseListActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/htccontacts/app/SNBaseListActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 207
    #calls: Lcom/android/htccontacts/app/SNBaseListActivity;->checkSyncStatus()V
    invoke-static {v0}, Lcom/android/htccontacts/app/SNBaseListActivity;->access$000(Lcom/android/htccontacts/app/SNBaseListActivity;)V

    .line 209
    :cond_0
    return-void
.end method
