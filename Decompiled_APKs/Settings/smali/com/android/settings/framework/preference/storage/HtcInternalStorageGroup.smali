.class public Lcom/android/settings/framework/preference/storage/HtcInternalStorageGroup;
.super Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;
.source "HtcInternalStorageGroup.java"


# static fields
.field public static final KEY:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAvailableSpace:Lcom/android/settings/framework/preference/storage/HtcInternalAvailableSpacePreference;

.field private mTotalSpace:Lcom/android/settings/framework/preference/storage/HtcInternalTotalSpacePreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/storage/HtcInternalStorageGroup;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/storage/HtcInternalStorageGroup;->TAG:Ljava/lang/String;

    .line 38
    sget-object v0, Lcom/android/settings/framework/preference/storage/HtcInternalStorageGroup;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/settings/framework/preference/storage/HtcInternalStorageGroup;->KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method


# virtual methods
.method protected getCustomKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/android/settings/framework/preference/storage/HtcInternalStorageGroup;->KEY:Ljava/lang/String;

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method protected isPathMatched(Ljava/lang/String;)Z
    .locals 2
    .parameter "notifiedPath"

    .prologue
    const/4 v0, 0x1

    .line 75
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    :cond_0
    :goto_0
    return v0

    .line 79
    :cond_1
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getInternalSdCardStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pluginGroupComponents(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/htc/preference/HtcPreferenceScreen;)V
    .locals 3
    .parameter "fragment"
    .parameter "root"

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcInternalStorageGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 108
    .local v0, context:Landroid/content/Context;
    new-instance v1, Lcom/android/settings/framework/preference/storage/HtcInternalTotalSpacePreference;

    invoke-direct {v1, v0}, Lcom/android/settings/framework/preference/storage/HtcInternalTotalSpacePreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcInternalStorageGroup;->mTotalSpace:Lcom/android/settings/framework/preference/storage/HtcInternalTotalSpacePreference;

    .line 110
    new-instance v1, Lcom/android/settings/framework/preference/storage/HtcInternalAvailableSpacePreference;

    invoke-direct {v1, v0}, Lcom/android/settings/framework/preference/storage/HtcInternalAvailableSpacePreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcInternalStorageGroup;->mAvailableSpace:Lcom/android/settings/framework/preference/storage/HtcInternalAvailableSpacePreference;

    .line 113
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcInternalStorageGroup;->mTotalSpace:Lcom/android/settings/framework/preference/storage/HtcInternalTotalSpacePreference;

    const/16 v2, -0x66

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/preference/storage/HtcInternalTotalSpacePreference;->setOrder(I)V

    .line 115
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcInternalStorageGroup;->mAvailableSpace:Lcom/android/settings/framework/preference/storage/HtcInternalAvailableSpacePreference;

    const/16 v2, -0x64

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/preference/storage/HtcInternalAvailableSpacePreference;->setOrder(I)V

    .line 118
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcInternalStorageGroup;->mTotalSpace:Lcom/android/settings/framework/preference/storage/HtcInternalTotalSpacePreference;

    invoke-virtual {p2, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 120
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcInternalStorageGroup;->mAvailableSpace:Lcom/android/settings/framework/preference/storage/HtcInternalAvailableSpacePreference;

    invoke-virtual {p2, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 122
    invoke-virtual {p1, p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 123
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcInternalStorageGroup;->mTotalSpace:Lcom/android/settings/framework/preference/storage/HtcInternalTotalSpacePreference;

    invoke-virtual {p1, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 125
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcInternalStorageGroup;->mAvailableSpace:Lcom/android/settings/framework/preference/storage/HtcInternalAvailableSpacePreference;

    invoke-virtual {p1, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 126
    return-void
.end method

.method protected updateGroupStates()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcInternalStorageGroup;->mTotalSpace:Lcom/android/settings/framework/preference/storage/HtcInternalTotalSpacePreference;

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/storage/HtcInternalTotalSpacePreference;->updateSummary()V

    .line 132
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcInternalStorageGroup;->mAvailableSpace:Lcom/android/settings/framework/preference/storage/HtcInternalAvailableSpacePreference;

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/storage/HtcInternalAvailableSpacePreference;->updateSummary()V

    .line 133
    return-void
.end method
