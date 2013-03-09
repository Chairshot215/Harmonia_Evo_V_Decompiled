.class public Lcom/htc/store/activity/setting/SettingNotification;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "SettingNotification.java"


# static fields
.field private static final ID_FS1:I = 0x8

.field private static final ID_NOTIFICATION:I = 0x3

.field private static final PREFERENCE_SCREEN:Ljava/lang/String; = "pref_notification_root"

.field private static final REQUEST_SOUND_PICKER:I = 0x0

.field private static final SDMDEFSTRURI:Ljava/lang/String; = "SDMDefStrUri"

.field private static final SDMPICKERTITLE:Ljava/lang/String; = "SDMPicketTitle"

.field private static final SDMPICKERTYPE:Ljava/lang/String; = "SDMPickerType"

.field private static final SDMSAVEORNOT:Ljava/lang/String; = "SDMSaveOrNot"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

.field private mPreferenceNotificationSound:Lcom/htc/preference/HtcPreference;

.field private mPreferenceNotificationSoundSwitch:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mPreferenceNotificationSwitchMarkedItems:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mPreferenceNotificationSwitchUpdates:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mPreferenceNotificationVibrate:Lcom/htc/preference/HtcPreference;

.field private mPreferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/htc/store/activity/setting/SettingNotification;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/activity/setting/SettingNotification;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    return-void
.end method

.method private setNotificationEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/htc/store/activity/setting/SettingNotification;->mPreferenceNotificationSoundSwitch:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, p1}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 113
    iget-object v0, p0, Lcom/htc/store/activity/setting/SettingNotification;->mPreferenceNotificationVibrate:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v0, p1}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 114
    return-void
.end method

.method private startSoundPicker()V
    .locals 4

    .prologue
    .line 100
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 101
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.htc.sdm"

    const-string v3, "com.htc.sdm.activity.SoundPicker"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const-string v2, "SDMPickerType"

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 103
    const-string v2, "SDMDefStrUri"

    iget-object v3, p0, Lcom/htc/store/activity/setting/SettingNotification;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    invoke-virtual {v3}, Lcom/htc/store/module/PreferenceManager;->getNotificationSound()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/htc/store/activity/setting/SettingNotification;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Ljava/lang/Exception;
    const v2, 0x7f0a002c

    invoke-virtual {p0, v2}, Lcom/htc/store/activity/setting/SettingNotification;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/htc/store/util/ActivityUtils;->showStaticShortToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 107
    sget-object v2, Lcom/htc/store/activity/setting/SettingNotification;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 77
    if-nez p1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    if-eqz p3, :cond_0

    .line 78
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 79
    .local v0, sound:Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 80
    sget-object v1, Lcom/htc/store/activity/setting/SettingNotification;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Notification: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    iget-object v1, p0, Lcom/htc/store/activity/setting/SettingNotification;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    invoke-virtual {v1, v0}, Lcom/htc/store/module/PreferenceManager;->setNotificationSound(Landroid/net/Uri;)V

    .line 84
    .end local v0           #sound:Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v0, 0x7f030024

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/setting/SettingNotification;->setContentView(I)V

    .line 32
    const v0, 0x7f050001

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/setting/SettingNotification;->addPreferencesFromResource(I)V

    .line 33
    new-instance v0, Lcom/htc/store/module/PreferenceManager;

    invoke-direct {v0, p0}, Lcom/htc/store/module/PreferenceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/store/activity/setting/SettingNotification;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    .line 34
    const-string v0, "pref_notification_switch_marked_items"

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/setting/SettingNotification;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v0, p0, Lcom/htc/store/activity/setting/SettingNotification;->mPreferenceNotificationSwitchMarkedItems:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 35
    const-string v0, "pref_notification_switch_updates"

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/setting/SettingNotification;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v0, p0, Lcom/htc/store/activity/setting/SettingNotification;->mPreferenceNotificationSwitchUpdates:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 36
    const-string v0, "pref_notification_sound_switch"

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/setting/SettingNotification;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v0, p0, Lcom/htc/store/activity/setting/SettingNotification;->mPreferenceNotificationSoundSwitch:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 37
    const-string v0, "pref_notification_sound"

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/setting/SettingNotification;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/activity/setting/SettingNotification;->mPreferenceNotificationSound:Lcom/htc/preference/HtcPreference;

    .line 38
    const-string v0, "pref_notification_vibrate"

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/setting/SettingNotification;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/activity/setting/SettingNotification;->mPreferenceNotificationVibrate:Lcom/htc/preference/HtcPreference;

    .line 40
    const-string v0, "pref_notification_root"

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/setting/SettingNotification;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceScreen;

    iput-object v0, p0, Lcom/htc/store/activity/setting/SettingNotification;->mPreferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    .line 41
    iget-object v0, p0, Lcom/htc/store/activity/setting/SettingNotification;->mPreferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    iget-object v1, p0, Lcom/htc/store/activity/setting/SettingNotification;->mPreferenceNotificationSwitchUpdates:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 44
    iget-object v0, p0, Lcom/htc/store/activity/setting/SettingNotification;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    invoke-virtual {v0}, Lcom/htc/store/module/PreferenceManager;->isMarkedItemsNotificationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/store/activity/setting/SettingNotification;->setNotificationEnabled(Z)V

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/store/activity/setting/SettingNotification;->setNotificationEnabled(Z)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, result:Z
    iget-object v1, p0, Lcom/htc/store/activity/setting/SettingNotification;->mPreferenceNotificationSwitchMarkedItems:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eq p2, v1, :cond_0

    iget-object v1, p0, Lcom/htc/store/activity/setting/SettingNotification;->mPreferenceNotificationSwitchUpdates:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v1, :cond_2

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/htc/store/activity/setting/SettingNotification;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    invoke-virtual {v1}, Lcom/htc/store/module/PreferenceManager;->isMarkedItemsNotificationEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 58
    invoke-direct {p0, v4}, Lcom/htc/store/activity/setting/SettingNotification;->setNotificationEnabled(Z)V

    .line 68
    :goto_0
    sget-object v1, Lcom/htc/store/activity/setting/SettingNotification;->TAG:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "Marked items notification: "

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/htc/store/activity/setting/SettingNotification;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    invoke-virtual {v3}, Lcom/htc/store/module/PreferenceManager;->isMarkedItemsNotificationEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    sget-object v1, Lcom/htc/store/activity/setting/SettingNotification;->TAG:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "Updates notification: "

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/htc/store/activity/setting/SettingNotification;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    invoke-virtual {v3}, Lcom/htc/store/module/PreferenceManager;->isUpdatesNotificationEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    return v0

    .line 60
    :cond_1
    invoke-direct {p0, v5}, Lcom/htc/store/activity/setting/SettingNotification;->setNotificationEnabled(Z)V

    goto :goto_0

    .line 62
    :cond_2
    iget-object v1, p0, Lcom/htc/store/activity/setting/SettingNotification;->mPreferenceNotificationSound:Lcom/htc/preference/HtcPreference;

    if-ne p2, v1, :cond_3

    .line 63
    invoke-direct {p0}, Lcom/htc/store/activity/setting/SettingNotification;->startSoundPicker()V

    .line 64
    const/4 v0, 0x1

    goto :goto_0

    .line 66
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceActivity;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v0

    goto :goto_0
.end method
