.class public Lcom/android/settings/WallpaperTypeSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "WallpaperTypeSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    return-void
.end method

.method private populateWallpaperTypes()V
    .locals 12

    .prologue
    .line 42
    new-instance v2, Landroid/content/Intent;

    const-string v9, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/WallpaperTypeSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 44
    .local v5, pm:Landroid/content/pm/PackageManager;
    const/high16 v9, 0x1

    invoke-virtual {v5, v2, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 47
    .local v8, rList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/android/settings/WallpaperTypeSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v4

    .line 48
    .local v4, parent:Lcom/htc/preference/HtcPreferenceScreen;
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcom/htc/preference/HtcPreferenceScreen;->setOrderingAsAdded(Z)V

    .line 50
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 51
    .local v1, info:Landroid/content/pm/ResolveInfo;
    new-instance v6, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/WallpaperTypeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v6, v9}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 52
    .local v6, pref:Lcom/htc/preference/HtcPreference;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 53
    .local v7, prefIntent:Landroid/content/Intent;
    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v11, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 55
    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreference;->setIntent(Landroid/content/Intent;)V

    .line 56
    invoke-virtual {v1, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 57
    .local v3, label:Ljava/lang/CharSequence;
    if-nez v3, :cond_0

    iget-object v9, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 58
    :cond_0
    invoke-virtual {v6, v3}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {v4, v6}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_0

    .line 61
    .end local v1           #info:Landroid/content/pm/ResolveInfo;
    .end local v3           #label:Ljava/lang/CharSequence;
    .end local v6           #pref:Lcom/htc/preference/HtcPreference;
    .end local v7           #prefIntent:Landroid/content/Intent;
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f050045

    invoke-virtual {p0, v0}, Lcom/android/settings/WallpaperTypeSettings;->addPreferencesFromResource(I)V

    .line 37
    invoke-direct {p0}, Lcom/android/settings/WallpaperTypeSettings;->populateWallpaperTypes()V

    .line 38
    return-void
.end method
