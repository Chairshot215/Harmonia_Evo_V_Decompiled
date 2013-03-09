.class public Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "BluetoothMapExtraSettings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;
.implements Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;
.implements Landroid/content/ServiceConnection;


# static fields
.field public static final TAG:Ljava/lang/String; = "BluetoothMapExtraSettings"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field mPrefs:[Lcom/htc/preference/HtcCheckBoxPreference;

.field protected mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSvcMgr:Lcom/broadcom/bt/service/framework/IServiceManager;

.field mSvcpref:Lcom/htc/preference/HtcCheckBoxPreference;

.field mproviders:[Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    .line 60
    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->mHandler:Landroid/os/Handler;

    .line 64
    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->mproviders:[Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;

    .line 65
    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->mPrefs:[Lcom/htc/preference/HtcCheckBoxPreference;

    .line 66
    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->mSvcpref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 68
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings$1;-><init>(Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 150
    const-string v0, "BluetoothMapExtraSettings"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 152
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 182
    const-string v0, "BluetoothMapExtraSettings"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onDestroy()V

    .line 184
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 165
    const-string v1, "BluetoothMapExtraSettings"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onPause()V

    .line 168
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_0
    :try_start_1
    invoke-virtual {p0, p0}, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 178
    :goto_1
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothMapExtraSettings"

    const-string v2, "Unable to unregister receiver"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 175
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 176
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "BluetoothMapExtraSettings"

    const-string v2, "Unable to unbind service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "pref"
    .parameter "val"

    .prologue
    const/4 v2, 0x0

    .line 194
    const-string v3, "BluetoothMapExtraSettings"

    const-string v4, "onPreferenceChange"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    if-eqz p2, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 196
    .local v0, enable:Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->mSvcpref:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p1, v3, :cond_3

    .line 200
    if-eqz v0, :cond_2

    .line 202
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->mSvcMgr:Lcom/broadcom/bt/service/framework/IServiceManager;

    const-string v4, "bluetooth_map"

    invoke-interface {v3, v4}, Lcom/broadcom/bt/service/framework/IServiceManager;->enableService(Ljava/lang/String;)V

    .line 242
    :cond_0
    :goto_1
    return v2

    .end local v0           #enable:Z
    .restart local p2
    :cond_1
    move v0, v2

    .line 195
    goto :goto_0

    .line 206
    .end local p2
    .restart local v0       #enable:Z
    :cond_2
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->mSvcMgr:Lcom/broadcom/bt/service/framework/IServiceManager;

    const-string v4, "bluetooth_map"

    invoke-interface {v3, v4}, Lcom/broadcom/bt/service/framework/IServiceManager;->disableService(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 209
    :catch_0
    move-exception v3

    goto :goto_1

    .line 215
    :cond_3
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->mPrefs:[Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v3, :cond_0

    .line 217
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->mPrefs:[Lcom/htc/preference/HtcCheckBoxPreference;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 219
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->mPrefs:[Lcom/htc/preference/HtcCheckBoxPreference;

    aget-object v3, v3, v1

    if-ne v3, p1, :cond_5

    .line 221
    if-eqz v0, :cond_4

    .line 223
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->mproviders:[Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;->providerID:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->mproviders:[Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;->datasourceID:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->mproviders:[Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;

    aget-object v6, v6, v1

    iget-object v6, v6, Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;->datasourceName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lcom/broadcom/bt/service/map/BluetoothMAP;->enableProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->mPrefs:[Lcom/htc/preference/HtcCheckBoxPreference;

    aget-object v3, v3, v1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 231
    :cond_4
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->mproviders:[Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;->providerID:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->mproviders:[Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;->datasourceID:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->mproviders:[Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;

    aget-object v6, v6, v1

    iget-object v6, v6, Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;->datasourceName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lcom/broadcom/bt/service/map/BluetoothMAP;->disableProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->mPrefs:[Lcom/htc/preference/HtcCheckBoxPreference;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 217
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public onProxyAvailable(Ljava/lang/Object;)V
    .locals 7
    .parameter "proxyObject"

    .prologue
    const/4 v6, 0x0

    .line 109
    const-string v4, "BluetoothMapExtraSettings"

    const-string v5, "onProxyAvailable"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    check-cast p1, Lcom/broadcom/bt/service/map/BluetoothMAP;

    .end local p1
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    .line 112
    new-instance v4, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-direct {v4, p0}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->mSvcpref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 113
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->mSvcpref:Lcom/htc/preference/HtcCheckBoxPreference;

    const v5, 0x7f0c0241

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcCheckBoxPreference;->setTitle(I)V

    .line 114
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->mSvcpref:Lcom/htc/preference/HtcCheckBoxPreference;

    const-string v5, "bluetooth_map"

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcCheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 115
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->mSvcpref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4, p0}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 116
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->mSvcpref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setPersistent(Z)V

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->mSvcpref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 119
    new-instance v1, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-direct {v1, p0}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 120
    .local v1, pc:Lcom/htc/preference/HtcPreferenceCategory;
    const v4, 0x7f0c0247

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 125
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    invoke-virtual {v4}, Lcom/broadcom/bt/service/map/BluetoothMAP;->enumRegisteredProviders()[Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->mproviders:[Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;

    .line 126
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->mproviders:[Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;

    if-eqz v4, :cond_0

    .line 128
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->mproviders:[Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;

    array-length v4, v4

    new-array v4, v4, [Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->mPrefs:[Lcom/htc/preference/HtcCheckBoxPreference;

    .line 129
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->mproviders:[Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 131
    new-instance v2, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-direct {v2, p0}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 132
    .local v2, pref:Lcom/htc/preference/HtcCheckBoxPreference;
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->mproviders:[Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;->datasourceName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 133
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->mproviders:[Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;

    aget-object v5, v5, v0

    iget-object v5, v5, Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;->providerID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->mproviders:[Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;

    aget-object v5, v5, v0

    iget-object v5, v5, Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;->datasourceID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 134
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->mproviders:[Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;

    aget-object v4, v4, v0

    iget-boolean v4, v4, Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;->fEnabled:Z

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 135
    invoke-virtual {v2, p0}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 136
    invoke-virtual {v2, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setPersistent(Z)V

    .line 137
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->mPrefs:[Lcom/htc/preference/HtcCheckBoxPreference;

    aput-object v2, v4, v0

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    .end local v0           #i:I
    .end local v2           #pref:Lcom/htc/preference/HtcCheckBoxPreference;
    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 143
    .local v3, svcMgrIntent:Landroid/content/Intent;
    const-string v4, "com.broadcom.bt.app.system"

    const-string v5, "com.broadcom.bt.app.system.ServiceManager"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const/4 v4, 0x1

    invoke-virtual {p0, v3, p0, v4}, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 147
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 156
    const-string v1, "BluetoothMapExtraSettings"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    .line 159
    .local v0, prefScreen:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/broadcom/bt/service/map/BluetoothMAP;->getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z

    .line 161
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 247
    const-string v0, "BluetoothMapExtraSettings"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-static {p2}, Lcom/broadcom/bt/service/framework/IServiceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/framework/IServiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->mSvcMgr:Lcom/broadcom/bt/service/framework/IServiceManager;

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->mSvcMgr:Lcom/broadcom/bt/service/framework/IServiceManager;

    const-string v1, "bluetooth_map"

    invoke-interface {v0, v1}, Lcom/broadcom/bt/service/framework/IServiceManager;->getServiceState(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->mSvcpref:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :goto_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings$2;-><init>(Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 276
    return-void

    .line 259
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothMapExtraSettings;->mSvcpref:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 262
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 189
    return-void
.end method
