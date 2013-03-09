.class public abstract Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;
.super Lcom/htc/preference/HtcPreferenceCategory;
.source "HtcAbstractStorageGroup.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnPauseListener;
.implements Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver$OnMediaScannerEventListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mMediaReceiver:Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, v0}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 202
    new-instance v0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup$1;-><init>(Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 68
    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->initialize()V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 202
    new-instance v0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup$1;-><init>(Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 78
    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->initialize()V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 202
    new-instance v0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup$1;-><init>(Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 88
    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->initialize()V

    .line 89
    return-void
.end method

.method private Log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 226
    sget-object v0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return-void
.end method

.method private initialize()V
    .locals 3

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 100
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->getKey()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->getCustomKey()Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, text:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->setKey(Ljava/lang/String;)V

    .line 108
    .end local v1           #text:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->getCustomTitle()Ljava/lang/String;

    move-result-object v1

    .line 109
    .restart local v1       #text:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 110
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->setTitle(Ljava/lang/CharSequence;)V

    .line 114
    :cond_1
    new-instance v2, Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver;

    invoke-direct {v2, v0}, Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->mMediaReceiver:Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver;

    .line 115
    iget-object v2, p0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->mMediaReceiver:Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver;

    invoke-virtual {v2, p0}, Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver;->setOnMediaScannerEventListener(Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver$OnMediaScannerEventListener;)V

    .line 116
    const-string v2, "storage"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    iput-object v2, p0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 118
    return-void
.end method


# virtual methods
.method protected getCustomKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getCustomTitle()Ljava/lang/String;
.end method

.method protected abstract isPathMatched(Ljava/lang/String;)Z
.end method

.method public onMediaScannerStateChanged(Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver$EventParams;)V
    .locals 1
    .parameter "params"

    .prologue
    .line 197
    iget-object v0, p1, Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver$EventParams;->path:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->isPathMatched(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->updateGroupStates()V

    .line 200
    :cond_0
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->mMediaReceiver:Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver;

    invoke-virtual {v0}, Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver;->unregisterReceiver()V

    .line 177
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 178
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->mMediaReceiver:Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver;

    invoke-virtual {v0}, Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver;->registerReceiver()V

    .line 170
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->updateGroupStates()V

    .line 172
    return-void
.end method

.method public abstract pluginGroupComponents(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/htc/preference/HtcPreferenceScreen;)V
.end method

.method protected abstract updateGroupStates()V
.end method
