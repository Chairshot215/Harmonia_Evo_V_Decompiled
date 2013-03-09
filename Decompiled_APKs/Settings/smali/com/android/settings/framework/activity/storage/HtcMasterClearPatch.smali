.class public final Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;
.super Ljava/lang/Object;
.source "HtcMasterClearPatch.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mExternalStorageContainer:Landroid/view/View;

.field private mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 32
    new-instance v0, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch$1;-><init>(Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method private Log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 100
    sget-object v0, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->updateVisibilityOfExternalStorageContainer()V

    return-void
.end method

.method private updateVisibilityOfExternalStorageContainer()V
    .locals 3

    .prologue
    .line 74
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getSdCardStorageState()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, state:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->mExternalStorageContainer:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 84
    const-string v2, "removed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "bad_removal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 86
    :cond_0
    const/4 v0, 0x0

    .line 90
    .local v0, enabled:Z
    :goto_0
    iget-object v2, p0, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->mExternalStorageContainer:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 97
    .end local v0           #enabled:Z
    :cond_1
    return-void

    .line 88
    :cond_2
    const/4 v0, 0x1

    .restart local v0       #enabled:Z
    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 51
    const-string v0, "storage"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 53
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 54
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 58
    return-void
.end method

.method public setExternalStorageContainer(Landroid/view/View;)V
    .locals 0
    .parameter "container"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->mExternalStorageContainer:Landroid/view/View;

    .line 67
    invoke-direct {p0}, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->updateVisibilityOfExternalStorageContainer()V

    .line 68
    return-void
.end method
