.class public Lcom/android/settings/framework/preference/storage/HtcUsbStorageGroup;
.super Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;
.source "HtcUsbStorageGroup.java"


# static fields
.field public static final KEY:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAvailableSpace:Lcom/android/settings/framework/preference/storage/HtcUsbStorageAvailableSpacePreference;

.field private mMountToggle:Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;

.field private mTotalSpace:Lcom/android/settings/framework/preference/storage/HtcUsbStorageTotalSpacePreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/storage/HtcUsbStorageGroup;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageGroup;->TAG:Ljava/lang/String;

    .line 25
    sget-object v0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageGroup;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageGroup;->KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method


# virtual methods
.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0102

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isPathMatched(Ljava/lang/String;)Z
    .locals 1
    .parameter "notifiedPath"

    .prologue
    .line 61
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getUsbStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x1

    .line 65
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pluginGroupComponents(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/htc/preference/HtcPreferenceScreen;)V
    .locals 2
    .parameter "fragment"
    .parameter "root"

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 85
    .local v0, context:Landroid/content/Context;
    new-instance v1, Lcom/android/settings/framework/preference/storage/HtcUsbStorageAvailableSpacePreference;

    invoke-direct {v1, v0}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageAvailableSpacePreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageGroup;->mAvailableSpace:Lcom/android/settings/framework/preference/storage/HtcUsbStorageAvailableSpacePreference;

    .line 86
    new-instance v1, Lcom/android/settings/framework/preference/storage/HtcUsbStorageTotalSpacePreference;

    invoke-direct {v1, v0}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageTotalSpacePreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageGroup;->mTotalSpace:Lcom/android/settings/framework/preference/storage/HtcUsbStorageTotalSpacePreference;

    .line 87
    new-instance v1, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;

    invoke-direct {v1, v0}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageGroup;->mMountToggle:Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;

    .line 89
    invoke-virtual {p2, p0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 90
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageGroup;->mTotalSpace:Lcom/android/settings/framework/preference/storage/HtcUsbStorageTotalSpacePreference;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 91
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageGroup;->mAvailableSpace:Lcom/android/settings/framework/preference/storage/HtcUsbStorageAvailableSpacePreference;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 92
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageGroup;->mMountToggle:Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 94
    invoke-virtual {p1, p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 95
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageGroup;->mTotalSpace:Lcom/android/settings/framework/preference/storage/HtcUsbStorageTotalSpacePreference;

    invoke-virtual {p1, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 96
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageGroup;->mAvailableSpace:Lcom/android/settings/framework/preference/storage/HtcUsbStorageAvailableSpacePreference;

    invoke-virtual {p1, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 97
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageGroup;->mMountToggle:Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;

    invoke-virtual {p1, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 98
    return-void
.end method

.method protected updateGroupStates()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageGroup;->mAvailableSpace:Lcom/android/settings/framework/preference/storage/HtcUsbStorageAvailableSpacePreference;

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageAvailableSpacePreference;->updateSummary()V

    .line 103
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageGroup;->mTotalSpace:Lcom/android/settings/framework/preference/storage/HtcUsbStorageTotalSpacePreference;

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageTotalSpacePreference;->updateSummary()V

    .line 104
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageGroup;->mMountToggle:Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->updateSummary()V

    .line 105
    return-void
.end method
