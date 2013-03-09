.class public Lcom/android/settings/DockSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DockSettings.java"


# static fields
.field private static final DIALOG_NOT_DOCKED:I = 0x1

.field private static final KEY_AUDIO_SETTINGS:Ljava/lang/String; = "dock_audio"

.field private static final KEY_DOCK_SOUNDS:Ljava/lang/String; = "dock_sounds"


# instance fields
.field private mAudioSettings:Lcom/htc/preference/HtcPreference;

.field private mDockIntent:Landroid/content/Intent;

.field private mDockSounds:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 45
    new-instance v0, Lcom/android/settings/DockSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DockSettings$1;-><init>(Lcom/android/settings/DockSettings;)V

    iput-object v0, p0, Lcom/android/settings/DockSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DockSettings;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/settings/DockSettings;->handleDockChange(Landroid/content/Intent;)V

    return-void
.end method

.method private createUndockedMessage()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 161
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 162
    .local v0, ab:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x7f0c09ba

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 163
    const v1, 0x7f0c09bb

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 164
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 165
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private handleDockChange(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 92
    iget-object v5, p0, Lcom/android/settings/DockSettings;->mAudioSettings:Lcom/htc/preference/HtcPreference;

    if-eqz v5, :cond_0

    .line 93
    const-string v5, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 95
    .local v0, dockState:I
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    if-eqz v5, :cond_1

    move v1, v3

    .line 97
    .local v1, isBluetooth:Z
    :goto_0
    if-nez v1, :cond_2

    .line 99
    iget-object v3, p0, Lcom/android/settings/DockSettings;->mAudioSettings:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 100
    iget-object v3, p0, Lcom/android/settings/DockSettings;->mAudioSettings:Lcom/htc/preference/HtcPreference;

    const v4, 0x7f0c09b9

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 119
    :goto_1
    if-eqz v0, :cond_0

    .line 122
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/settings/DockSettings;->removeDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .end local v0           #dockState:I
    .end local v1           #isBluetooth:Z
    :cond_0
    :goto_2
    return-void

    .restart local v0       #dockState:I
    :cond_1
    move v1, v4

    .line 95
    goto :goto_0

    .line 102
    .restart local v1       #isBluetooth:Z
    :cond_2
    iget-object v4, p0, Lcom/android/settings/DockSettings;->mAudioSettings:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v4, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 104
    iput-object p1, p0, Lcom/android/settings/DockSettings;->mDockIntent:Landroid/content/Intent;

    .line 105
    const v2, 0x7f0c09b9

    .line 106
    .local v2, resId:I
    packed-switch v0, :pswitch_data_0

    .line 116
    :goto_3
    iget-object v3, p0, Lcom/android/settings/DockSettings;->mAudioSettings:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v3, v2}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_1

    .line 108
    :pswitch_0
    const v2, 0x7f0c09b7

    .line 109
    goto :goto_3

    .line 111
    :pswitch_1
    const v2, 0x7f0c09b6

    .line 112
    goto :goto_3

    .line 114
    :pswitch_2
    const v2, 0x7f0c09b8

    goto :goto_3

    .line 123
    .end local v2           #resId:I
    :catch_0
    move-exception v3

    goto :goto_2

    .line 106
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initDockSettings()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 80
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "dock_audio"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DockSettings;->mAudioSettings:Lcom/htc/preference/HtcPreference;

    .line 81
    iget-object v1, p0, Lcom/android/settings/DockSettings;->mAudioSettings:Lcom/htc/preference/HtcPreference;

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/android/settings/DockSettings;->mAudioSettings:Lcom/htc/preference/HtcPreference;

    const v3, 0x7f0c09b8

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 85
    :cond_0
    const-string v1, "dock_sounds"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/DockSettings;->mDockSounds:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 86
    iget-object v1, p0, Lcom/android/settings/DockSettings;->mDockSounds:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setPersistent(Z)V

    .line 87
    iget-object v3, p0, Lcom/android/settings/DockSettings;->mDockSounds:Lcom/htc/preference/HtcCheckBoxPreference;

    const-string v1, "dock_sounds_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 89
    return-void

    :cond_1
    move v1, v2

    .line 87
    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v0, 0x7f050014

    invoke-virtual {p0, v0}, Lcom/android/settings/DockSettings;->addPreferencesFromResource(I)V

    .line 59
    invoke-direct {p0}, Lcom/android/settings/DockSettings;->initDockSettings()V

    .line 60
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 154
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/android/settings/DockSettings;->createUndockedMessage()Landroid/app/Dialog;

    move-result-object v0

    .line 157
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DockSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 75
    return-void
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 132
    iget-object v4, p0, Lcom/android/settings/DockSettings;->mAudioSettings:Lcom/htc/preference/HtcPreference;

    if-ne p2, v4, :cond_3

    .line 133
    iget-object v4, p0, Lcom/android/settings/DockSettings;->mDockIntent:Landroid/content/Intent;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/DockSettings;->mDockIntent:Landroid/content/Intent;

    const-string v5, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 136
    .local v0, dockState:I
    :goto_0
    if-nez v0, :cond_2

    .line 137
    invoke-virtual {p0, v3}, Lcom/android/settings/DockSettings;->showDialog(I)V

    .line 149
    .end local v0           #dockState:I
    :cond_0
    :goto_1
    return v3

    :cond_1
    move v0, v2

    .line 133
    goto :goto_0

    .line 139
    .restart local v0       #dockState:I
    :cond_2
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/DockSettings;->mDockIntent:Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 140
    .local v1, i:Landroid/content/Intent;
    const-string v2, "com.android.settings.bluetooth.action.DOCK_SHOW_UI"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v4, Lcom/android/settings/bluetooth/DockEventReceiver;

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 144
    .end local v0           #dockState:I
    .end local v1           #i:Landroid/content/Intent;
    :cond_3
    iget-object v4, p0, Lcom/android/settings/DockSettings;->mDockSounds:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v4, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dock_sounds_enabled"

    iget-object v6, p0, Lcom/android/settings/DockSettings;->mDockSounds:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v6}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_4

    move v2, v3

    :cond_4
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 64
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 66
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, filter:Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DockSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 68
    return-void
.end method
