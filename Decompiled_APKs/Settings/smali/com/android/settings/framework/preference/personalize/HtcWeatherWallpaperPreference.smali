.class public final Lcom/android/settings/framework/preference/personalize/HtcWeatherWallpaperPreference;
.super Lcom/htc/preference/HtcCheckBoxPreference;
.source "HtcWeatherWallpaperPreference.java"


# static fields
.field private static final KEY:Ljava/lang/String; = "WEATHER_WALLPAPER"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    iput-object v0, p0, Lcom/android/settings/framework/preference/personalize/HtcWeatherWallpaperPreference;->mContentResolver:Landroid/content/ContentResolver;

    .line 36
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/personalize/HtcWeatherWallpaperPreference;->initialize()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/personalize/HtcWeatherWallpaperPreference;->mContentResolver:Landroid/content/ContentResolver;

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/personalize/HtcWeatherWallpaperPreference;->initialize()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/personalize/HtcWeatherWallpaperPreference;->mContentResolver:Landroid/content/ContentResolver;

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/personalize/HtcWeatherWallpaperPreference;->initialize()V

    .line 54
    return-void
.end method


# virtual methods
.method public addToParent(Lcom/htc/preference/HtcPreferenceScreen;)Z
    .locals 1
    .parameter "parent"

    .prologue
    .line 83
    if-eqz p1, :cond_0

    .line 84
    invoke-virtual {p1, p0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 85
    const/4 v0, 0x1

    .line 87
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addToParent(Lcom/htc/preference/HtcPreferenceScreen;I)Z
    .locals 1
    .parameter "parent"
    .parameter "order"

    .prologue
    .line 103
    invoke-virtual {p0, p2}, Lcom/android/settings/framework/preference/personalize/HtcWeatherWallpaperPreference;->setOrder(I)V

    .line 104
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/personalize/HtcWeatherWallpaperPreference;->addToParent(Lcom/htc/preference/HtcPreferenceScreen;)Z

    move-result v0

    return v0
.end method

.method protected initialize()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 60
    const-string v2, "WEATHER_WALLPAPER"

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/personalize/HtcWeatherWallpaperPreference;->setKey(Ljava/lang/String;)V

    .line 61
    const v2, 0x7f0c048a

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/personalize/HtcWeatherWallpaperPreference;->setTitle(I)V

    .line 62
    const v2, 0x7f0c048b

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/personalize/HtcWeatherWallpaperPreference;->setSummary(I)V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/personalize/HtcWeatherWallpaperPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "weather_wallpaper_animation_allowed"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 68
    .local v0, value:I
    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/personalize/HtcWeatherWallpaperPreference;->setChecked(Z)V

    .line 69
    return-void

    .line 68
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onClick()V
    .locals 3

    .prologue
    .line 110
    invoke-super {p0}, Lcom/htc/preference/HtcCheckBoxPreference;->onClick()V

    .line 112
    iget-object v0, p0, Lcom/android/settings/framework/preference/personalize/HtcWeatherWallpaperPreference;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/personalize/HtcWeatherWallpaperPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/personalize/HtcWeatherWallpaperPreference;->mContentResolver:Landroid/content/ContentResolver;

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/preference/personalize/HtcWeatherWallpaperPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "weather_wallpaper_animation_allowed"

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/personalize/HtcWeatherWallpaperPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 121
    return-void

    .line 117
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
