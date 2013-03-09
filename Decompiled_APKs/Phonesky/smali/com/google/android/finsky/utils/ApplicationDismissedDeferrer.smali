.class public Lcom/google/android/finsky/utils/ApplicationDismissedDeferrer;
.super Ljava/lang/Object;
.source "ApplicationDismissedDeferrer.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/google/android/finsky/utils/ApplicationDismissedDeferrer;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/utils/ApplicationDismissedDeferrer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/android/finsky/utils/ApplicationDismissedDeferrer;->isContextPackageInBackground()Z

    move-result v0

    return v0
.end method

.method private isContextPackageInBackground()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 51
    iget-object v5, p0, Lcom/google/android/finsky/utils/ApplicationDismissedDeferrer;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 53
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0, v3, v4}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v2

    .line 54
    .local v2, tasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 68
    :cond_0
    :goto_0
    return v3

    .line 59
    :cond_1
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 60
    .local v1, task:Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v5, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v5, :cond_2

    iget-object v5, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 63
    iget-object v5, p0, Lcom/google/android/finsky/utils/ApplicationDismissedDeferrer;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    move v3, v4

    .line 68
    goto :goto_0
.end method


# virtual methods
.method public runOnApplicationClose(Ljava/lang/Runnable;I)V
    .locals 4
    .parameter "runnable"
    .parameter "pollingIntervalMs"

    .prologue
    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/google/android/finsky/utils/ApplicationDismissedDeferrer$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/finsky/utils/ApplicationDismissedDeferrer$1;-><init>(Lcom/google/android/finsky/utils/ApplicationDismissedDeferrer;Ljava/lang/Runnable;I)V

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 44
    return-void
.end method
