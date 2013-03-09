.class public Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;
.super Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;
.source "HtcExternalSdCardStorageGroup.java"


# static fields
.field public static final KEY:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAvailableSpace:Lcom/android/settings/framework/preference/storage/HtcExternalSdCardAvailableSpacePreference;

.field private mEncrypt:Lcom/android/settings/framework/preference/storage/HtcExternalSdCardEncryptPreference;

.field private mFormat:Lcom/android/settings/framework/preference/storage/HtcExternalSdCardFormatPreference;

.field private mMakeMoreSpace:Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMakeMoreSpacePreference;

.field private mMountToggle:Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;

.field private mTotalSpace:Lcom/android/settings/framework/preference/storage/HtcExternalSdCardTotalSpacePreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->TAG:Ljava/lang/String;

    .line 32
    sget-object v0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method


# virtual methods
.method protected getCustomKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->KEY:Ljava/lang/String;

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0a11

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isPathMatched(Ljava/lang/String;)Z
    .locals 1
    .parameter "notifiedPath"

    .prologue
    .line 69
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getSdCardStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const/4 v0, 0x1

    .line 73
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
    .line 96
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 98
    .local v0, context:Landroid/content/Context;
    new-instance v1, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardTotalSpacePreference;

    invoke-direct {v1, v0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardTotalSpacePreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mTotalSpace:Lcom/android/settings/framework/preference/storage/HtcExternalSdCardTotalSpacePreference;

    .line 99
    new-instance v1, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardAvailableSpacePreference;

    invoke-direct {v1, v0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardAvailableSpacePreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mAvailableSpace:Lcom/android/settings/framework/preference/storage/HtcExternalSdCardAvailableSpacePreference;

    .line 100
    new-instance v1, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;

    invoke-direct {v1, v0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mMountToggle:Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;

    .line 101
    new-instance v1, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMakeMoreSpacePreference;

    invoke-direct {v1, v0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMakeMoreSpacePreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mMakeMoreSpace:Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMakeMoreSpacePreference;

    .line 102
    new-instance v1, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardFormatPreference;

    invoke-direct {v1, v0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardFormatPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mFormat:Lcom/android/settings/framework/preference/storage/HtcExternalSdCardFormatPreference;

    .line 104
    invoke-virtual {p2, p0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 105
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mTotalSpace:Lcom/android/settings/framework/preference/storage/HtcExternalSdCardTotalSpacePreference;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 106
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mAvailableSpace:Lcom/android/settings/framework/preference/storage/HtcExternalSdCardAvailableSpacePreference;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 107
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mMakeMoreSpace:Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMakeMoreSpacePreference;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 108
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mMountToggle:Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 109
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mFormat:Lcom/android/settings/framework/preference/storage/HtcExternalSdCardFormatPreference;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 111
    invoke-virtual {p1, p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 112
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mTotalSpace:Lcom/android/settings/framework/preference/storage/HtcExternalSdCardTotalSpacePreference;

    invoke-virtual {p1, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 113
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mAvailableSpace:Lcom/android/settings/framework/preference/storage/HtcExternalSdCardAvailableSpacePreference;

    invoke-virtual {p1, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 114
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mMakeMoreSpace:Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMakeMoreSpacePreference;

    invoke-virtual {p1, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 115
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mMountToggle:Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;

    invoke-virtual {p1, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 116
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mFormat:Lcom/android/settings/framework/preference/storage/HtcExternalSdCardFormatPreference;

    invoke-virtual {p1, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 118
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->support3LM()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    new-instance v1, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardEncryptPreference;

    invoke-direct {v1, v0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardEncryptPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mEncrypt:Lcom/android/settings/framework/preference/storage/HtcExternalSdCardEncryptPreference;

    .line 120
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mEncrypt:Lcom/android/settings/framework/preference/storage/HtcExternalSdCardEncryptPreference;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 121
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mEncrypt:Lcom/android/settings/framework/preference/storage/HtcExternalSdCardEncryptPreference;

    invoke-virtual {p1, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 123
    :cond_0
    return-void
.end method

.method protected updateGroupStates()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mTotalSpace:Lcom/android/settings/framework/preference/storage/HtcExternalSdCardTotalSpacePreference;

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardTotalSpacePreference;->updateSummary()V

    .line 128
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mAvailableSpace:Lcom/android/settings/framework/preference/storage/HtcExternalSdCardAvailableSpacePreference;

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardAvailableSpacePreference;->updateSummary()V

    .line 129
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mMountToggle:Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->updateSummary()V

    .line 130
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mMakeMoreSpace:Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMakeMoreSpacePreference;

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMakeMoreSpacePreference;->updateState()V

    .line 131
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mFormat:Lcom/android/settings/framework/preference/storage/HtcExternalSdCardFormatPreference;

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardFormatPreference;->updateState()V

    .line 132
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->support3LM()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->mEncrypt:Lcom/android/settings/framework/preference/storage/HtcExternalSdCardEncryptPreference;

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardEncryptPreference;->updateState()V

    .line 133
    :cond_0
    return-void
.end method
