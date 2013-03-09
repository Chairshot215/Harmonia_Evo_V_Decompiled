.class public Lcom/android/settings/DeviceManagerPreference;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DeviceManagerPreference.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;


# static fields
.field private static final CIDC:I = 0x1

.field private static final CIPRL:I = 0x2

.field private static final CI_FUMO:I = 0x0

.field private static final DM_CI_TIRGGER:Ljava/lang/String; = "com.htc.omadm.citrigger.state"

.field private static final USER_INIT_DEVICE_CONFIG:I = 0x1

.field private static final USER_INIT_FIRMWARE_UPDATE:I = 0x2

.field private static final USER_INIT_PRL_UPGRADE:I = 0x3

.field private static final WAIT_NOTIFY:I = 0x3

.field protected static waitting:Z


# instance fields
.field TAG:Ljava/lang/String;

.field private countdownAction:Ljava/lang/String;

.field private countdownSecond:Ljava/lang/String;

.field protected mCidc:Lcom/htc/preference/HtcPreference;

.field protected mCiprl:Lcom/htc/preference/HtcPreference;

.field protected mContext:Landroid/content/Context;

.field protected mFumo:Lcom/htc/preference/HtcPreference;

.field protected mHtcFota:Lcom/htc/preference/HtcPreference;

.field protected mPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/DeviceManagerPreference;->waitting:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 66
    const-string v0, "DeviceManagerPreference"

    iput-object v0, p0, Lcom/android/settings/DeviceManagerPreference;->TAG:Ljava/lang/String;

    .line 77
    const-string v0, "com.htc.android.omadm.action.countdownOmcSecond"

    iput-object v0, p0, Lcom/android/settings/DeviceManagerPreference;->countdownSecond:Ljava/lang/String;

    .line 200
    const-string v0, "com.htc.android.omadm.action.countdownOmcSession"

    iput-object v0, p0, Lcom/android/settings/DeviceManagerPreference;->countdownAction:Ljava/lang/String;

    return-void
.end method

.method private isFOTAEnabled()Z
    .locals 10

    .prologue
    .line 91
    sget-boolean v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcFOTAFlag:Z

    .line 92
    .local v8, result:Z
    const-string v0, "content://com.android.updater/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 93
    .local v1, fotaSettingUri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 95
    .local v6, cur:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DeviceManagerPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_value"

    aput-object v4, v2, v3

    const-string v3, "_name=\'enable_manual_check\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 98
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 99
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 100
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 101
    .local v9, value:Ljava/lang/String;
    const-string v0, "true"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    const/4 v8, 0x1

    .line 110
    .end local v9           #value:Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 111
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 114
    :cond_1
    :goto_1
    return v8

    .line 103
    .restart local v9       #value:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v0, "false"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const/4 v8, 0x0

    goto :goto_0

    .line 107
    .end local v9           #value:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 108
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    iget-object v0, p0, Lcom/android/settings/DeviceManagerPreference;->TAG:Ljava/lang/String;

    const-string v2, "isFOTAEnabled"

    invoke-static {v0, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    if-eqz v6, :cond_1

    .line 111
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 110
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 111
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/DeviceManagerPreference;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DeviceManagerPreference;->mContext:Landroid/content/Context;

    .line 123
    iget-object v1, p0, Lcom/android/settings/DeviceManagerPreference;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HtcBuildFlag.HtcOMADMFlag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcOMADMFlag:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v0, 0x0

    .line 146
    .local v0, prefSet:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-direct {p0}, Lcom/android/settings/DeviceManagerPreference;->isFOTAEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    new-instance v1, Lcom/htc/preference/HtcPreference;

    iget-object v2, p0, Lcom/android/settings/DeviceManagerPreference;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/DeviceManagerPreference;->mHtcFota:Lcom/htc/preference/HtcPreference;

    .line 148
    iget-object v1, p0, Lcom/android/settings/DeviceManagerPreference;->mHtcFota:Lcom/htc/preference/HtcPreference;

    const v2, 0x7f0c03db

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 149
    iget-object v1, p0, Lcom/android/settings/DeviceManagerPreference;->mHtcFota:Lcom/htc/preference/HtcPreference;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.updater.FOTA_SETTING"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setIntent(Landroid/content/Intent;)V

    .line 150
    iget-object v1, p0, Lcom/android/settings/DeviceManagerPreference;->mHtcFota:Lcom/htc/preference/HtcPreference;

    throw v0

    .line 152
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 231
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 232
    return-void
.end method

.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 6
    .parameter "preference"

    .prologue
    const/4 v5, 0x1

    .line 206
    sget-boolean v2, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isE0002:Z

    if-eqz v2, :cond_1

    .line 208
    const/16 v0, 0xb

    .line 209
    .local v0, actionVal:I
    iget-object v2, p0, Lcom/android/settings/DeviceManagerPreference;->mCidc:Lcom/htc/preference/HtcPreference;

    if-ne p1, v2, :cond_2

    .line 210
    const/4 v0, 0x7

    .line 213
    :cond_0
    :goto_0
    iput v0, p0, Lcom/android/settings/DeviceManagerPreference;->mPosition:I

    .line 214
    iget-object v2, p0, Lcom/android/settings/DeviceManagerPreference;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+onPreferenceClick:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/DeviceManagerPreference;->mPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.omadm.trigger"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 217
    .local v1, throwIntent:Landroid/content/Intent;
    const-string v2, "SESSION_TYPE"

    iget v3, p0, Lcom/android/settings/DeviceManagerPreference;->mPosition:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 218
    iget-object v2, p0, Lcom/android/settings/DeviceManagerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 220
    iget-object v2, p0, Lcom/android/settings/DeviceManagerPreference;->TAG:Ljava/lang/String;

    const-string v3, "-onPreferenceClick"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    .end local v0           #actionVal:I
    .end local v1           #throwIntent:Landroid/content/Intent;
    :cond_1
    return v5

    .line 211
    .restart local v0       #actionVal:I
    :cond_2
    iget-object v2, p0, Lcom/android/settings/DeviceManagerPreference;->mCiprl:Lcom/htc/preference/HtcPreference;

    if-ne p1, v2, :cond_0

    .line 212
    const/16 v0, 0x9

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/DeviceManagerPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_4

    .line 174
    iget-object v0, p0, Lcom/android/settings/DeviceManagerPreference;->mFumo:Lcom/htc/preference/HtcPreference;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/settings/DeviceManagerPreference;->mFumo:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DeviceManagerPreference;->mCidc:Lcom/htc/preference/HtcPreference;

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/android/settings/DeviceManagerPreference;->mCidc:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DeviceManagerPreference;->mCiprl:Lcom/htc/preference/HtcPreference;

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/android/settings/DeviceManagerPreference;->mCiprl:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 180
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/DeviceManagerPreference;->isFOTAEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/DeviceManagerPreference;->mHtcFota:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 197
    :cond_3
    :goto_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 198
    return-void

    .line 186
    :cond_4
    iget-object v0, p0, Lcom/android/settings/DeviceManagerPreference;->mFumo:Lcom/htc/preference/HtcPreference;

    if-eqz v0, :cond_5

    .line 187
    iget-object v0, p0, Lcom/android/settings/DeviceManagerPreference;->mFumo:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 188
    :cond_5
    iget-object v0, p0, Lcom/android/settings/DeviceManagerPreference;->mCidc:Lcom/htc/preference/HtcPreference;

    if-eqz v0, :cond_6

    .line 189
    iget-object v0, p0, Lcom/android/settings/DeviceManagerPreference;->mCidc:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 190
    :cond_6
    iget-object v0, p0, Lcom/android/settings/DeviceManagerPreference;->mCiprl:Lcom/htc/preference/HtcPreference;

    if-eqz v0, :cond_7

    .line 191
    iget-object v0, p0, Lcom/android/settings/DeviceManagerPreference;->mCiprl:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 192
    :cond_7
    invoke-direct {p0}, Lcom/android/settings/DeviceManagerPreference;->isFOTAEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/DeviceManagerPreference;->mHtcFota:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 155
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 160
    return-void
.end method
