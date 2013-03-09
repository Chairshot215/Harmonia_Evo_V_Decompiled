.class public Lcom/android/settings/framework/preference/storage/HtcInternalStorageEncryptPreference;
.super Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;
.source "HtcInternalStorageEncryptPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDeviceManager3LM:Landroid/os/IDeviceManager3LM;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/android/settings/framework/preference/storage/HtcInternalStorageEncryptPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/storage/HtcInternalStorageEncryptPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;-><init>(Landroid/content/Context;)V

    .line 35
    const-string v0, "DeviceManager3LM"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IDeviceManager3LM$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceManager3LM;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcInternalStorageEncryptPreference;->mDeviceManager3LM:Landroid/os/IDeviceManager3LM;

    .line 37
    return-void
.end method


# virtual methods
.method protected getCustomDatabaseDefaultValue()Z
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method protected getCustomDatabaseKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const-string v0, "data_encryption"

    return-object v0
.end method

.method protected getCustomDatabaseTable()Lcom/android/settings/framework/database/HtcDatabaseTable;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/android/settings/framework/database/HtcDatabaseTable;->SECURE:Lcom/android/settings/framework/database/HtcDatabaseTable;

    return-object v0
.end method

.method protected getCustomKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const-string v0, "memory_internal_storage_encrypt"

    return-object v0
.end method

.method protected getCustomSummary()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcInternalStorageEncryptPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c06e4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcInternalStorageEncryptPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c06e3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onChange(Z)Z
    .locals 7
    .parameter "newState"

    .prologue
    const/4 v6, 0x0

    .line 41
    if-eqz p1, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcInternalStorageEncryptPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 43
    .local v2, bundle:Landroid/os/Bundle;
    const-string v0, "storage_type"

    sget-object v1, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;->INTERNAL_STORAGE:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;

    invoke-virtual {v1}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;->ordinal()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 45
    const-string v0, "action_type"

    sget-object v1, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;->ENCRYPT:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;

    invoke-virtual {v1}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;->ordinal()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcInternalStorageEncryptPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceActivity;

    const-class v1, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c06f8

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcInternalStorageEncryptPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/preference/HtcPreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 55
    .end local v2           #bundle:Landroid/os/Bundle;
    :cond_0
    return v6
.end method

.method protected onHandledGetValueMessage(Z)V
    .locals 3
    .parameter "checked"

    .prologue
    const/4 v1, 0x0

    .line 64
    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcInternalStorageEncryptPreference;->dispatchEnabledMessage(Z)V

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcInternalStorageEncryptPreference;->mDeviceManager3LM:Landroid/os/IDeviceManager3LM;

    if-eqz v1, :cond_1

    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcInternalStorageEncryptPreference;->mDeviceManager3LM:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1}, Landroid/os/IDeviceManager3LM;->isDataEncryptionRequired()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 71
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcInternalStorageEncryptPreference;->dispatchEnabledMessage(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;->onHandledGetValueMessage(Z)V

    .line 79
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/android/settings/framework/preference/storage/HtcInternalStorageEncryptPreference;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
