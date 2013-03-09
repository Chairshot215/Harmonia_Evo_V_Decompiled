.class Lcom/android/htccontacts/BrowseGroupsActivity$ForceUpdateIndicatorIdleHandler;
.super Ljava/lang/Object;
.source "BrowseGroupsActivity.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/BrowseGroupsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ForceUpdateIndicatorIdleHandler"
.end annotation


# instance fields
.field activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/BrowseGroupsActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/BrowseGroupsActivity;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 2022
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2023
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity$ForceUpdateIndicatorIdleHandler;->activityRef:Ljava/lang/ref/WeakReference;

    .line 2024
    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 5

    .prologue
    const-wide/16 v3, 0xc8

    .line 2026
    iget-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$ForceUpdateIndicatorIdleHandler;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/BrowseGroupsActivity;

    .line 2027
    .local v0, activity:Lcom/android/htccontacts/BrowseGroupsActivity;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/htccontacts/BrowseGroupsActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2028
    invoke-static {}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "BrowseGroupsActivity"

    const-string v2, "UI  IDLE!  begin to start indicator"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    :cond_0
    invoke-virtual {v0, v3, v4}, Lcom/android/htccontacts/BrowseGroupsActivity;->startIndicator(J)V

    .line 2030
    iget-object v1, v0, Lcom/android/htccontacts/BrowseGroupsActivity;->mGroupListHandler:Landroid/os/Handler;

    const/16 v2, 0x3f0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2032
    :cond_1
    const/4 v1, 0x0

    return v1
.end method
