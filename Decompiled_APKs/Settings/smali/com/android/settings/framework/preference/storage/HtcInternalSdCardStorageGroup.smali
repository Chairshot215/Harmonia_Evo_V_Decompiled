.class public Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;
.super Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;
.source "HtcInternalSdCardStorageGroup.java"


# static fields
.field public static final KEY:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAvailableSpace:Lcom/android/settings/framework/preference/storage/HtcInternalSdCardAvailableSpacePreference;

.field private mEncrypt:Lcom/android/settings/framework/preference/storage/HtcInternalSdCardEncryptPreference;

.field private mFormat:Lcom/android/settings/framework/preference/storage/HtcInternalSdCardFormatPreference;

.field private mTotalSpace:Lcom/android/settings/framework/preference/storage/HtcInternalSdCardTotalSpacePreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->TAG:Ljava/lang/String;

    .line 34
    sget-object v0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method


# virtual methods
.method protected getCustomKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->KEY:Ljava/lang/String;

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c00fb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isPathMatched(Ljava/lang/String;)Z
    .locals 1
    .parameter "notifiedPath"

    .prologue
    .line 72
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getInternalSdCardStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const/4 v0, 0x1

    .line 76
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pluginGroupComponents(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/htc/preference/HtcPreferenceScreen;)V
    .locals 3
    .parameter "fragment"
    .parameter "root"

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 102
    .local v0, context:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportSubTotalSpaceForInternalStorage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    new-instance v1, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardTotalSpacePreference;

    invoke-direct {v1, v0}, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardTotalSpacePreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->mTotalSpace:Lcom/android/settings/framework/preference/storage/HtcInternalSdCardTotalSpacePreference;

    .line 104
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->mTotalSpace:Lcom/android/settings/framework/preference/storage/HtcInternalSdCardTotalSpacePreference;

    const/4 v2, -0x5

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardTotalSpacePreference;->setOrder(I)V

    .line 106
    :cond_0
    new-instance v1, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardAvailableSpacePreference;

    invoke-direct {v1, v0}, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardAvailableSpacePreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->mAvailableSpace:Lcom/android/settings/framework/preference/storage/HtcInternalSdCardAvailableSpacePreference;

    .line 107
    new-instance v1, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardFormatPreference;

    invoke-direct {v1, v0}, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardFormatPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->mFormat:Lcom/android/settings/framework/preference/storage/HtcInternalSdCardFormatPreference;

    .line 109
    invoke-virtual {p2, p0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 110
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->mTotalSpace:Lcom/android/settings/framework/preference/storage/HtcInternalSdCardTotalSpacePreference;

    if-eqz v1, :cond_1

    .line 111
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->mTotalSpace:Lcom/android/settings/framework/preference/storage/HtcInternalSdCardTotalSpacePreference;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 113
    :cond_1
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->mAvailableSpace:Lcom/android/settings/framework/preference/storage/HtcInternalSdCardAvailableSpacePreference;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 114
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->mFormat:Lcom/android/settings/framework/preference/storage/HtcInternalSdCardFormatPreference;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 116
    invoke-virtual {p1, p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 117
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->mTotalSpace:Lcom/android/settings/framework/preference/storage/HtcInternalSdCardTotalSpacePreference;

    if-eqz v1, :cond_2

    .line 118
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->mTotalSpace:Lcom/android/settings/framework/preference/storage/HtcInternalSdCardTotalSpacePreference;

    invoke-virtual {p1, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 120
    :cond_2
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->mAvailableSpace:Lcom/android/settings/framework/preference/storage/HtcInternalSdCardAvailableSpacePreference;

    invoke-virtual {p1, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 121
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->mFormat:Lcom/android/settings/framework/preference/storage/HtcInternalSdCardFormatPreference;

    invoke-virtual {p1, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 123
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->support3LM()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Landroid/os/Environment;->hasInternalFat()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 125
    new-instance v1, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardEncryptPreference;

    invoke-direct {v1, v0}, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardEncryptPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->mEncrypt:Lcom/android/settings/framework/preference/storage/HtcInternalSdCardEncryptPreference;

    .line 126
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->mEncrypt:Lcom/android/settings/framework/preference/storage/HtcInternalSdCardEncryptPreference;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 127
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->mEncrypt:Lcom/android/settings/framework/preference/storage/HtcInternalSdCardEncryptPreference;

    invoke-virtual {p1, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 129
    :cond_3
    return-void
.end method

.method protected updateGroupStates()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->mTotalSpace:Lcom/android/settings/framework/preference/storage/HtcInternalSdCardTotalSpacePreference;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->mTotalSpace:Lcom/android/settings/framework/preference/storage/HtcInternalSdCardTotalSpacePreference;

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardTotalSpacePreference;->updateSummary()V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->mAvailableSpace:Lcom/android/settings/framework/preference/storage/HtcInternalSdCardAvailableSpacePreference;

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardAvailableSpacePreference;->updateSummary()V

    .line 137
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->mFormat:Lcom/android/settings/framework/preference/storage/HtcInternalSdCardFormatPreference;

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardFormatPreference;->updateState()V

    .line 138
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->support3LM()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Environment;->hasInternalFat()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->mEncrypt:Lcom/android/settings/framework/preference/storage/HtcInternalSdCardEncryptPreference;

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardEncryptPreference;->updateState()V

    .line 142
    :cond_1
    return-void
.end method
