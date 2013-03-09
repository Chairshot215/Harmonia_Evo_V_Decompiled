.class public Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "BluetoothAdvancedSettings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;
.implements Landroid/content/ServiceConnection;
.implements Lcom/android/settings/bluetooth/BluetoothSettingsUtils$BluetoothPreferenceController;


# static fields
.field private static final SHOW_UNSUPPORTED_SVCS:Z = false

.field public static final TAG:Ljava/lang/String; = "BluetoothAdvancedSettings"

.field private static final mSvcDisplayTitleId:[I

.field private static final mSvcExtraSettingsId:[I

.field private static final mSvcNames:[Ljava/lang/String;


# instance fields
.field private mExtraSettingsPrefMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/preference/HtcPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mPrefMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/preference/HtcCheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSvcMgr:Lcom/broadcom/bt/service/framework/IServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 51
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "bluetooth_bpp_service"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "bluetooth_dun"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "bluetooth_fm_receiver_service"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "bluetooth_fm_transmitter_service"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "bluetooth_ftp"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "bluetooth_map"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "bluetooth_opp_service"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "bluetooth_pbap"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "bluetooth_sap"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "bluetooth_test"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mSvcNames:[Ljava/lang/String;

    .line 64
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mSvcExtraSettingsId:[I

    .line 78
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mSvcDisplayTitleId:[I

    return-void

    .line 64
    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x3bt 0x2t 0xct 0x7ft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 78
    :array_1
    .array-data 0x4
        0x3ct 0x2t 0xct 0x7ft
        0x3dt 0x2t 0xct 0x7ft
        0x3et 0x2t 0xct 0x7ft
        0x3ft 0x2t 0xct 0x7ft
        0x40t 0x2t 0xct 0x7ft
        0x41t 0x2t 0xct 0x7ft
        0x42t 0x2t 0xct 0x7ft
        0x43t 0x2t 0xct 0x7ft
        0x44t 0x2t 0xct 0x7ft
        0x45t 0x2t 0xct 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mPrefMap:Ljava/util/HashMap;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mExtraSettingsPrefMap:Ljava/util/HashMap;

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mHandler:Landroid/os/Handler;

    .line 97
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$1;-><init>(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mPrefMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->initPrefs()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private initCheckboxPrefUI(Lcom/htc/preference/HtcCheckBoxPreference;)V
    .locals 1
    .parameter "pref"

    .prologue
    .line 293
    invoke-virtual {p1, p0}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 294
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setPersistent(Z)V

    .line 295
    const v0, 0x7f0c0248

    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummaryOn(I)V

    .line 296
    const v0, 0x7f0c0249

    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummaryOff(I)V

    .line 298
    return-void
.end method

.method private initPrefs()V
    .locals 11

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v4

    .line 125
    .local v4, prefScreen:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-virtual {v4}, Lcom/htc/preference/HtcPreferenceScreen;->getPreferenceCount()I

    move-result v3

    .line 126
    .local v3, prefCount:I
    sget-object v6, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mSvcNames:[Ljava/lang/String;

    array-length v6, v6

    if-ne v3, v6, :cond_1

    .line 128
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v6, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mSvcNames:[Ljava/lang/String;

    array-length v6, v6

    if-ge v0, v6, :cond_5

    .line 129
    sget-object v6, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mSvcNames:[Ljava/lang/String;

    aget-object v5, v6, v0

    .line 131
    .local v5, svcName:Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->isServiceSupported(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 128
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {v4, v0}, Lcom/htc/preference/HtcPreferenceScreen;->getPreference(I)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 133
    .local v2, pref:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-direct {p0, v2, v5}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->updateServicePref(Lcom/htc/preference/HtcCheckBoxPreference;Ljava/lang/String;)V

    goto :goto_1

    .line 137
    .end local v0           #i:I
    .end local v2           #pref:Lcom/htc/preference/HtcCheckBoxPreference;
    .end local v5           #svcName:Ljava/lang/String;
    :cond_1
    if-lez v3, :cond_2

    .line 138
    invoke-virtual {v4}, Lcom/htc/preference/HtcPreferenceScreen;->removeAll()V

    .line 142
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    sget-object v6, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mSvcNames:[Ljava/lang/String;

    array-length v6, v6

    if-ge v0, v6, :cond_5

    .line 143
    sget-object v6, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mSvcNames:[Ljava/lang/String;

    aget-object v5, v6, v0

    .line 145
    .restart local v5       #svcName:Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->isServiceSupported(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 142
    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 146
    :cond_4
    new-instance v2, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 147
    .restart local v2       #pref:Lcom/htc/preference/HtcCheckBoxPreference;
    sget-object v6, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mSvcDisplayTitleId:[I

    aget v6, v6, v0

    invoke-virtual {v2, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setTitle(I)V

    .line 148
    invoke-virtual {v2, v5}, Lcom/htc/preference/HtcCheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v4, v2}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 150
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mPrefMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->initCheckboxPrefUI(Lcom/htc/preference/HtcCheckBoxPreference;)V

    .line 152
    invoke-direct {p0, v2, v5}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->updateServicePref(Lcom/htc/preference/HtcCheckBoxPreference;Ljava/lang/String;)V

    .line 153
    sget-object v6, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mSvcExtraSettingsId:[I

    aget v6, v6, v0

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    .line 157
    new-instance v1, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 158
    .local v1, p:Lcom/htc/preference/HtcPreference;
    sget-object v6, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mSvcExtraSettingsId:[I

    aget v6, v6, v0

    invoke-virtual {v1, v6}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 159
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-class v10, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v6}, Lcom/htc/preference/HtcPreference;->setIntent(Landroid/content/Intent;)V

    .line 161
    invoke-virtual {v4, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 162
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mExtraSettingsPrefMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-virtual {v2}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v6

    if-nez v6, :cond_3

    .line 164
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_3

    .line 170
    .end local v1           #p:Lcom/htc/preference/HtcPreference;
    .end local v2           #pref:Lcom/htc/preference/HtcCheckBoxPreference;
    .end local v5           #svcName:Ljava/lang/String;
    :cond_5
    return-void
.end method

.method private isServiceSupported(Ljava/lang/String;)Z
    .locals 5
    .parameter "svcName"

    .prologue
    const/4 v1, 0x0

    .line 174
    :try_start_0
    const-string v2, "bluetooth_ftp"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "bluetooth_map"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isServiceSupported(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 180
    :cond_1
    :goto_0
    return v1

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "BluetoothAdvancedSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to get service state for service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private declared-synchronized setSvcState(Lcom/htc/preference/HtcPreference;Ljava/lang/String;ZZ)Z
    .locals 7
    .parameter "pref"
    .parameter "serviceName"
    .parameter "enable"
    .parameter "saveSetting"

    .prologue
    const/4 v6, 0x0

    .line 253
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothAdvancedSettings"

    const-string v4, "setSvcState"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    const/4 v2, -0x1

    .line 256
    .local v2, returnState:I
    :try_start_1
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mSvcMgr:Lcom/broadcom/bt/service/framework/IServiceManager;

    if-eqz v3, :cond_0

    .line 257
    if-eqz p3, :cond_1

    .line 258
    const v3, 0x7f0c024b

    invoke-virtual {p1, v3}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 259
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mSvcMgr:Lcom/broadcom/bt/service/framework/IServiceManager;

    invoke-interface {v3, p2}, Lcom/broadcom/bt/service/framework/IServiceManager;->enableService(Ljava/lang/String;)V

    .line 262
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mExtraSettingsPrefMap:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreference;

    .line 263
    .local v1, p:Lcom/htc/preference/HtcPreference;
    if-eqz v1, :cond_0

    .line 264
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 283
    .end local v1           #p:Lcom/htc/preference/HtcPreference;
    :cond_0
    :goto_0
    monitor-exit p0

    return v6

    .line 268
    :cond_1
    const v3, 0x7f0c024a

    :try_start_2
    invoke-virtual {p1, v3}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 269
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mSvcMgr:Lcom/broadcom/bt/service/framework/IServiceManager;

    invoke-interface {v3, p2, p4}, Lcom/broadcom/bt/service/framework/IServiceManager;->disableServiceWithSaveSetting(Ljava/lang/String;Z)V

    .line 272
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mExtraSettingsPrefMap:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreference;

    .line 273
    .restart local v1       #p:Lcom/htc/preference/HtcPreference;
    if-eqz v1, :cond_0

    .line 274
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 279
    .end local v1           #p:Lcom/htc/preference/HtcPreference;
    :catch_0
    move-exception v0

    .line 280
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v4, "BluetoothAdvancedSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error setting service "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " to state "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p3, :cond_2

    const-string v3, "enabled"

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 253
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #returnState:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 280
    .restart local v0       #e:Ljava/lang/Exception;
    .restart local v2       #returnState:I
    :cond_2
    :try_start_4
    const-string v3, "disabled"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private updateServicePref(Lcom/htc/preference/HtcCheckBoxPreference;Ljava/lang/String;)V
    .locals 5
    .parameter "pref"
    .parameter "svcName"

    .prologue
    const/4 v1, 0x0

    .line 307
    const-string v2, "BluetoothAdvancedSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateServicePref: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const-string v2, "bluetooth_ftp"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/settings/bluetooth/BluetoothSettingsUtils;->checkUnmountState()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 326
    :goto_0
    return-void

    .line 314
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mSvcMgr:Lcom/broadcom/bt/service/framework/IServiceManager;

    invoke-interface {v2, p2}, Lcom/broadcom/bt/service/framework/IServiceManager;->getServiceState(Ljava/lang/String;)I

    move-result v0

    .line 315
    .local v0, serviceState:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 316
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 317
    const v1, 0x7f0c024c

    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummaryOn(I)V

    .line 318
    const v1, 0x7f0c024c

    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummaryOff(I)V

    goto :goto_0

    .line 323
    .end local v0           #serviceState:I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 321
    .restart local v0       #serviceState:I
    :cond_1
    const/4 v2, 0x2

    if-ne v2, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public disableFtpSharePreference()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 329
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mPrefMap:Ljava/util/HashMap;

    const-string v2, "bluetooth_ftp"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 330
    .local v0, pref:Lcom/htc/preference/HtcCheckBoxPreference;
    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 332
    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 333
    const-string v1, "bluetooth_ftp"

    invoke-direct {p0, v0, v1, v3, v3}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->setSvcState(Lcom/htc/preference/HtcPreference;Ljava/lang/String;ZZ)Z

    .line 335
    :cond_0
    return-void
.end method

.method public disableFtpSharePreference(I)V
    .locals 4
    .parameter "summaryStringId"

    .prologue
    const/4 v3, 0x0

    .line 338
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mPrefMap:Ljava/util/HashMap;

    const-string v2, "bluetooth_ftp"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 339
    .local v0, pref:Lcom/htc/preference/HtcCheckBoxPreference;
    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 341
    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 342
    invoke-virtual {v0, p1}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 343
    const-string v1, "bluetooth_ftp"

    invoke-direct {p0, v0, v1, v3, v3}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->setSvcState(Lcom/htc/preference/HtcPreference;Ljava/lang/String;ZZ)Z

    .line 345
    :cond_0
    return-void
.end method

.method public enableFtpSharePreference()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 348
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mPrefMap:Ljava/util/HashMap;

    const-string v2, "bluetooth_ftp"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 349
    .local v0, pref:Lcom/htc/preference/HtcCheckBoxPreference;
    if-eqz v0, :cond_1

    .line 350
    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 351
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bt_svcst_bluetooth_ftp"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 353
    const-string v1, "bluetooth_ftp"

    invoke-direct {p0, v0, v1, v4, v4}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->setSvcState(Lcom/htc/preference/HtcPreference;Ljava/lang/String;ZZ)Z

    .line 355
    :cond_0
    const v1, 0x7f0c0248

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummaryOn(I)V

    .line 356
    const v1, 0x7f0c0249

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummaryOff(I)V

    .line 358
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 199
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 200
    const v0, 0x7f050007

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->addPreferencesFromResource(I)V

    .line 201
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 227
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 228
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 214
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 215
    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothSettingsUtils;->releaseListener(Lcom/android/settings/bluetooth/BluetoothSettingsUtils$BluetoothPreferenceController;)V

    .line 216
    const-string v1, "BluetoothAdvancedSettings"

    const-string v2, "onPause()..Unbinding service..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 223
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothAdvancedSettings"

    const-string v2, "Unable to unregister receiver"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "pref"
    .parameter "val"

    .prologue
    const/4 v2, 0x0

    .line 235
    const-string v3, "BluetoothAdvancedSettings"

    const-string v4, "onPreferenceChange"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    if-eqz p2, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 237
    .local v0, enable:Z
    :goto_0
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, svcName:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 239
    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->setSvcState(Lcom/htc/preference/HtcPreference;Ljava/lang/String;ZZ)Z

    move-result v2

    .line 241
    :cond_0
    return v2

    .end local v0           #enable:Z
    .end local v1           #svcName:Ljava/lang/String;
    .restart local p2
    :cond_1
    move v0, v2

    .line 236
    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 205
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 206
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 207
    .local v0, svcMgrIntent:Landroid/content/Intent;
    const-string v1, "com.broadcom.bt.app.system"

    const-string v2, "com.broadcom.bt.app.system.ServiceManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 209
    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothSettingsUtils;->requestListener(Lcom/android/settings/bluetooth/BluetoothSettingsUtils$BluetoothPreferenceController;)V

    .line 210
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 184
    invoke-static {p2}, Lcom/broadcom/bt/service/framework/IServiceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/framework/IServiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mSvcMgr:Lcom/broadcom/bt/service/framework/IServiceManager;

    .line 185
    const-string v0, "BluetoothAdvancedSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mSvcMgr:Lcom/broadcom/bt/service/framework/IServiceManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$2;-><init>(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 195
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 232
    return-void
.end method
