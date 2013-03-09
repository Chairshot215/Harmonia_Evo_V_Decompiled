.class public Lcom/android/settings/PersonalSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
.source "PersonalSettings.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PersonalSettings"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v4, 0x7f050021

    invoke-virtual {p0, v4}, Lcom/android/settings/PersonalSettings;->addPreferencesFromResource(I)V

    .line 31
    invoke-virtual {p0}, Lcom/android/settings/PersonalSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    .line 34
    .local v2, root:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-virtual {p0}, Lcom/android/settings/PersonalSettings;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v3

    .line 36
    .local v3, treeMgr:Lcom/htc/preference/HtcPreferenceManager;
    if-eqz v3, :cond_3

    .line 38
    sget-boolean v4, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isE0001:Z

    if-eqz v4, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/android/settings/PersonalSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v4

    const-string v5, "home_wallpaper_settings"

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreferenceScreen;

    .line 41
    .local v1, node:Lcom/htc/preference/HtcPreferenceScreen;
    if-eqz v1, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/android/settings/PersonalSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 46
    .end local v1           #node:Lcom/htc/preference/HtcPreferenceScreen;
    :cond_0
    sget-boolean v4, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isE0001:Z

    if-nez v4, :cond_2

    .line 47
    invoke-virtual {v3, p0}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    .line 48
    .restart local v1       #node:Lcom/htc/preference/HtcPreferenceScreen;
    if-eqz v1, :cond_2

    .line 49
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.htc.launcher.ThemeChooser.action.theme_change"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, ap:Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 53
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreferenceScreen;->setOrder(I)V

    .line 54
    const v4, 0x7f0c0369

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 55
    const v4, 0x7f0c036a

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(I)V

    .line 56
    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 57
    const-string v4, "PersonalSettings"

    const-string v5, "Failed to add scene entry"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .end local v0           #ap:Landroid/content/Intent;
    .end local v1           #node:Lcom/htc/preference/HtcPreferenceScreen;
    :cond_2
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcLiveWallpaperFlag:Z

    if-nez v4, :cond_3

    sget-boolean v4, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isE0001:Z

    if-nez v4, :cond_3

    .line 64
    invoke-virtual {v3, p0}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    .line 65
    .restart local v1       #node:Lcom/htc/preference/HtcPreferenceScreen;
    if-eqz v1, :cond_3

    .line 66
    const-string v4, "lockscreen_wallpaper_settings"

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 67
    const/16 v4, 0x28

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreferenceScreen;->setOrder(I)V

    .line 68
    const v4, 0x7f0c0365

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 69
    const v4, 0x7f0c0366

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(I)V

    .line 70
    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 71
    const-string v4, "PersonalSettings"

    const-string v5, "Failed to add scene entry"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .end local v1           #node:Lcom/htc/preference/HtcPreferenceScreen;
    :cond_3
    new-instance v4, Lcom/android/settings/framework/preference/personalize/HtcRosiePagesPreference;

    invoke-direct {v4, p0}, Lcom/android/settings/framework/preference/personalize/HtcRosiePagesPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Lcom/android/settings/framework/preference/personalize/HtcRosiePagesPreference;->addToParent(Lcom/htc/preference/HtcPreferenceScreen;)Z

    .line 79
    new-instance v4, Lcom/android/settings/framework/preference/personalize/HtcToneLinkPreference;

    invoke-direct {v4, p0}, Lcom/android/settings/framework/preference/personalize/HtcToneLinkPreference;-><init>(Landroid/content/Context;)V

    const/16 v5, 0x6e

    invoke-virtual {v4, v2, v5}, Lcom/android/settings/framework/preference/personalize/HtcToneLinkPreference;->addToParent(Lcom/htc/preference/HtcPreferenceScreen;I)Z

    .line 80
    new-instance v4, Lcom/android/settings/framework/preference/personalize/HtcWallpaperLinkPreference;

    invoke-direct {v4, p0}, Lcom/android/settings/framework/preference/personalize/HtcWallpaperLinkPreference;-><init>(Landroid/content/Context;)V

    const/16 v5, 0x78

    invoke-virtual {v4, v2, v5}, Lcom/android/settings/framework/preference/personalize/HtcWallpaperLinkPreference;->addToParent(Lcom/htc/preference/HtcPreferenceScreen;I)Z

    .line 81
    return-void
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 4
    .parameter "HtcPreferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 87
    if-eqz p2, :cond_0

    const-string v2, "lockscreen_wallpaper_settings"

    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SET_WALLPAPER_DIALOG"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, pickIntent:Landroid/content/Intent;
    const-string v2, "IS_SELECT_LOCKSCREEN"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 90
    invoke-virtual {p0, v0}, Lcom/android/settings/PersonalSettings;->startActivity(Landroid/content/Intent;)V

    .line 108
    .end local v0           #pickIntent:Landroid/content/Intent;
    :goto_0
    return v1

    .line 95
    :cond_0
    if-eqz p2, :cond_3

    const-string v2, "home_wallpaper_settings"

    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 98
    sget-boolean v2, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isB0002:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isI0001:Z

    if-eqz v2, :cond_2

    .line 99
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    .restart local v0       #pickIntent:Landroid/content/Intent;
    const v2, 0x7f0c03d4

    invoke-virtual {p0, v2}, Lcom/android/settings/PersonalSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/PersonalSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 102
    .end local v0           #pickIntent:Landroid/content/Intent;
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SET_WALLPAPER_DIALOG"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    .restart local v0       #pickIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings/PersonalSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 108
    .end local v0           #pickIntent:Landroid/content/Intent;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method
