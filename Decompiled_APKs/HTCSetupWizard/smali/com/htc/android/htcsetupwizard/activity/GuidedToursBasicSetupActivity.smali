.class public Lcom/htc/android/htcsetupwizard/activity/GuidedToursBasicSetupActivity;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "GuidedToursBasicSetupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final KEY_BASIC_SETUP:Ljava/lang/String; = "basic_setup"

.field private static final KEY_CALLING_MESSAGING:Ljava/lang/String; = "calling_messaging"

.field private static final KEY_DEVICE_NAVIGATION:Ljava/lang/String; = "device_navigation"

.field private static final KEY_EMAIL_SETUP:Ljava/lang/String; = "email_setup"

.field private static final KEY_WIFI_BLUETOOTH:Ljava/lang/String; = "wifi_bluetooth"

.field private static final TAG:Ljava/lang/String; = "OOBE_GuidedToursBasicSetupActivity"

.field private static final VIDEO_CALLING_MESSAGING:Ljava/lang/String; = "Calling-Messaging_Final.mp4"

.field private static final VIDEO_DEVICE_NAVIGATION:Ljava/lang/String; = "Basics_Final.mp4"

.field private static final VIDEO_EMAIL_SETUP:Ljava/lang/String; = "Email_Final.mp4"

.field private static final VIDEO_PATH:Ljava/lang/String; = "/system/media/oobe/video"

.field private static final VIDEO_WIFI_BLUETOOTH:Ljava/lang/String; = "WiFi-BT_Final.mp4"


# instance fields
.field private mCallingMessaging:Lcom/htc/android/htcsetupwizard/activity/VideoPreference;

.field private mDeviceNavigation:Lcom/htc/android/htcsetupwizard/activity/VideoPreference;

.field private mEmailSetup:Lcom/htc/android/htcsetupwizard/activity/VideoPreference;

.field private mPreferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

.field private mWifiBluetooth:Lcom/htc/android/htcsetupwizard/activity/VideoPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    return-void
.end method

.method private initialize()V
    .locals 1

    .prologue
    .line 161
    const v0, 0x7f030013

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursBasicSetupActivity;->setContentView(I)V

    .line 162
    return-void
.end method

.method private onCreatePreferences()V
    .locals 2

    .prologue
    .line 113
    const-string v0, "OOBE_GuidedToursBasicSetupActivity"

    const-string v1, "onCreatePreferences"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const v0, 0x7f050003

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursBasicSetupActivity;->addPreferencesFromResource(I)V

    .line 115
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursBasicSetupActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursBasicSetupActivity;->mPreferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    .line 116
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursBasicSetupActivity;->updatePreferenceCategoryStatus()V

    .line 117
    return-void
.end method

.method private playVideo(Ljava/lang/String;)V
    .locals 3
    .parameter "filename"

    .prologue
    .line 79
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/media/oobe/video/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "video/mp4"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursBasicSetupActivity;->startActivity(Landroid/content/Intent;)V

    .line 83
    return-void
.end method

.method private updateCallingMessaging()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursBasicSetupActivity;->mPreferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v1, "calling_messaging"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcsetupwizard/activity/VideoPreference;

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursBasicSetupActivity;->mCallingMessaging:Lcom/htc/android/htcsetupwizard/activity/VideoPreference;

    .line 138
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursBasicSetupActivity;->mCallingMessaging:Lcom/htc/android/htcsetupwizard/activity/VideoPreference;

    const v1, 0x7f0a0039

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/VideoPreference;->setTitle(I)V

    .line 139
    return-void
.end method

.method private updateDeviceNavigation()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursBasicSetupActivity;->mPreferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v1, "device_navigation"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcsetupwizard/activity/VideoPreference;

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursBasicSetupActivity;->mDeviceNavigation:Lcom/htc/android/htcsetupwizard/activity/VideoPreference;

    .line 132
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursBasicSetupActivity;->mDeviceNavigation:Lcom/htc/android/htcsetupwizard/activity/VideoPreference;

    const v1, 0x7f0a0038

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/VideoPreference;->setTitle(I)V

    .line 133
    return-void
.end method

.method private updateEmailSetup()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursBasicSetupActivity;->mPreferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v1, "email_setup"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcsetupwizard/activity/VideoPreference;

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursBasicSetupActivity;->mEmailSetup:Lcom/htc/android/htcsetupwizard/activity/VideoPreference;

    .line 144
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursBasicSetupActivity;->mEmailSetup:Lcom/htc/android/htcsetupwizard/activity/VideoPreference;

    const v1, 0x7f0a003a

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/VideoPreference;->setTitle(I)V

    .line 145
    return-void
.end method

.method private updatePreferenceCategoryStatus()V
    .locals 2

    .prologue
    .line 121
    const-string v0, "OOBE_GuidedToursBasicSetupActivity"

    const-string v1, "updatePreferenceCategoryStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursBasicSetupActivity;->updateDeviceNavigation()V

    .line 123
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursBasicSetupActivity;->updateCallingMessaging()V

    .line 124
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursBasicSetupActivity;->updateEmailSetup()V

    .line 125
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursBasicSetupActivity;->updateWifiBluetooth()V

    .line 126
    return-void
.end method

.method private updateWifiBluetooth()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursBasicSetupActivity;->mPreferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v1, "wifi_bluetooth"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcsetupwizard/activity/VideoPreference;

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursBasicSetupActivity;->mWifiBluetooth:Lcom/htc/android/htcsetupwizard/activity/VideoPreference;

    .line 150
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursBasicSetupActivity;->mWifiBluetooth:Lcom/htc/android/htcsetupwizard/activity/VideoPreference;

    const v1, 0x7f0a003b

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/VideoPreference;->setTitle(I)V

    .line 151
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 234
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->finish()V

    .line 235
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "nRequestCode"
    .parameter "nResultCode"
    .parameter "intent"

    .prologue
    .line 240
    const-string v0, "OOBE_GuidedToursBasicSetupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult requestCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resultCode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 167
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 179
    :goto_0
    return-void

    .line 170
    :pswitch_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursBasicSetupActivity;->setResult(I)V

    .line 171
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursBasicSetupActivity;->finish()V

    goto :goto_0

    .line 175
    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursBasicSetupActivity;->setResult(I)V

    .line 176
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursBasicSetupActivity;->finish()V

    goto :goto_0

    .line 167
    :pswitch_data_0
    .packed-switch 0x7f0d0003
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursBasicSetupActivity;->initialize()V

    .line 156
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 157
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 70
    const-string v0, "OOBE_GuidedToursBasicSetupActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursBasicSetupActivity;->initialize()V

    .line 74
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursBasicSetupActivity;->onCreatePreferences()V

    .line 75
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 214
    const-string v0, "OOBE_GuidedToursBasicSetupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    sparse-switch p1, :sswitch_data_0

    .line 228
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 219
    :sswitch_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursBasicSetupActivity;->setResult(I)V

    .line 220
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 225
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 216
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x4 -> :sswitch_0
        0x52 -> :sswitch_1
        0x54 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 205
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onPause()V

    .line 206
    const-string v0, "OOBE_GuidedToursBasicSetupActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-void
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 89
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceActivity;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    .line 91
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursBasicSetupActivity;->mDeviceNavigation:Lcom/htc/android/htcsetupwizard/activity/VideoPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    const-string v0, "Basics_Final.mp4"

    invoke-direct {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursBasicSetupActivity;->playVideo(Ljava/lang/String;)V

    .line 108
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursBasicSetupActivity;->mCallingMessaging:Lcom/htc/android/htcsetupwizard/activity/VideoPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    const-string v0, "Calling-Messaging_Final.mp4"

    invoke-direct {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursBasicSetupActivity;->playVideo(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursBasicSetupActivity;->mEmailSetup:Lcom/htc/android/htcsetupwizard/activity/VideoPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 101
    const-string v0, "Email_Final.mp4"

    invoke-direct {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursBasicSetupActivity;->playVideo(Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_3
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursBasicSetupActivity;->mWifiBluetooth:Lcom/htc/android/htcsetupwizard/activity/VideoPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    const-string v0, "WiFi-BT_Final.mp4"

    invoke-direct {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursBasicSetupActivity;->playVideo(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 190
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 184
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 185
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 195
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 199
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onStop()V

    .line 200
    const-string v0, "OOBE_GuidedToursBasicSetupActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-void
.end method
