.class public Lcom/android/settings/framework/preference/storage/HtcInternalSdCardEncryptPreference;
.super Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;
.source "HtcInternalSdCardEncryptPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDeviceManager3LM:Landroid/os/IDeviceManager3LM;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardEncryptPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardEncryptPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;-><init>(Landroid/content/Context;)V

    .line 37
    const-string v0, "DeviceManager3LM"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IDeviceManager3LM$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceManager3LM;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardEncryptPreference;->mDeviceManager3LM:Landroid/os/IDeviceManager3LM;

    .line 40
    return-void
.end method


# virtual methods
.method protected getCustomDatabaseDefaultValue()Z
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method protected getCustomDatabaseKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    const-string v0, "sd_encryption"

    return-object v0
.end method

.method protected getCustomDatabaseTable()Lcom/android/settings/framework/database/HtcDatabaseTable;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/android/settings/framework/database/HtcDatabaseTable;->SECURE:Lcom/android/settings/framework/database/HtcDatabaseTable;

    return-object v0
.end method

.method protected getCustomKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    const-string v0, "memory_phone_storage_encrypt"

    return-object v0
.end method

.method protected getCustomSummaryOff()Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardEncryptPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c06e8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomSummaryOn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardEncryptPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c06e7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardEncryptPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c06e6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onChange(Z)Z
    .locals 7
    .parameter "newState"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 44
    if-eqz p1, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardEncryptPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 46
    .local v2, bundle:Landroid/os/Bundle;
    const-string v0, "storage_type"

    sget-object v1, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;->PHONE_STORAGE:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;

    invoke-virtual {v1}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;->ordinal()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 48
    const-string v0, "action_type"

    sget-object v1, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;->ENCRYPT:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;

    invoke-virtual {v1}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;->ordinal()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardEncryptPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceActivity;

    const-class v1, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c06f2

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardEncryptPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual/range {v0 .. v6}, Lcom/htc/preference/HtcPreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 70
    :goto_0
    return v6

    .line 57
    .end local v2           #bundle:Landroid/os/Bundle;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardEncryptPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 58
    .restart local v2       #bundle:Landroid/os/Bundle;
    const-string v0, "storage_type"

    sget-object v1, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;->PHONE_STORAGE:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;

    invoke-virtual {v1}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;->ordinal()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    const-string v0, "action_type"

    sget-object v1, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;->UNENCRYPT:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;

    invoke-virtual {v1}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;->ordinal()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardEncryptPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceActivity;

    const-class v1, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c06f5

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardEncryptPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual/range {v0 .. v6}, Lcom/htc/preference/HtcPreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0
.end method

.method protected onHandledGetValueMessage(Z)V
    .locals 4
    .parameter "checked"

    .prologue
    const/4 v3, 0x0

    .line 79
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getInternalSdCardStorageState()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, status:Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "mounted_ro"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 85
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardEncryptPreference;->dispatchEnabledMessage(Z)V

    .line 90
    :goto_0
    iget-object v2, p0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardEncryptPreference;->mDeviceManager3LM:Landroid/os/IDeviceManager3LM;

    if-eqz v2, :cond_1

    .line 92
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardEncryptPreference;->mDeviceManager3LM:Landroid/os/IDeviceManager3LM;

    invoke-interface {v2}, Landroid/os/IDeviceManager3LM;->isSdEncryptionRequired()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 93
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardEncryptPreference;->dispatchEnabledMessage(Z)V

    .line 94
    const v2, 0x7f0c06e7

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardEncryptPreference;->setSummary(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;->onHandledGetValueMessage(Z)V

    .line 102
    return-void

    .line 87
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardEncryptPreference;->dispatchEnabledMessage(Z)V

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardEncryptPreference;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
