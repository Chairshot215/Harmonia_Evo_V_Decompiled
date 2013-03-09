.class public Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "WallpaperSetting.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;


# static fields
.field private static final KEY_CITY:Ljava/lang/String; = "city_select"

.field private static final KEY_SOUND:Ljava/lang/String; = "sound_effect"

.field private static final LOG_FLAG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "WeatherLiveWallpaper"

.field private static final MESG_UI_UPDATE_CITY_NAME:I = 0x99

.field private static final PREFIX:Ljava/lang/String; = "[WallpaperSetting]: "

.field private static final RESULT_CITY:I = 0x14


# instance fields
.field private mCityCode:Ljava/lang/String;

.field private mCityName:Ljava/lang/String;

.field private mCityNameHandler:Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;

.field private mContext:Landroid/content/Context;

.field private mUIHandler:Landroid/os/Handler;

.field private mbSound:Z

.field private prefCitySetting:Lcom/htc/preference/HtcPreferenceScreen;

.field private prefSoundEffect:Lcom/htc/preference/HtcCheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    .line 32
    iput-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->prefCitySetting:Lcom/htc/preference/HtcPreferenceScreen;

    .line 33
    iput-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->prefSoundEffect:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->mbSound:Z

    .line 36
    iput-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->mCityName:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->mCityCode:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->mContext:Landroid/content/Context;

    .line 40
    iput-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->mCityNameHandler:Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;

    .line 41
    iput-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->mUIHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;)Lcom/htc/preference/HtcPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->prefCitySetting:Lcom/htc/preference/HtcPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->mCityName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->mCityName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->updateCityName()V

    return-void
.end method

.method private initHanlder()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->mUIHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting$1;

    invoke-direct {v0, p0}, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting$1;-><init>(Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;)V

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->mUIHandler:Landroid/os/Handler;

    .line 214
    :cond_0
    new-instance v0, Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;

    invoke-direct {v0}, Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;-><init>()V

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->mCityNameHandler:Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;

    .line 215
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->mCityNameHandler:Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;

    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;->onInit(Landroid/content/Context;)V

    .line 216
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->mCityNameHandler:Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;

    new-instance v1, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting$2;

    invoke-direct {v1, p0}, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting$2;-><init>(Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;)V

    invoke-virtual {v0, v1}, Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;->setDataUpdateCallback(Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler$UpdateCallback;)V

    .line 223
    return-void
.end method

.method private onCreatePreferences()V
    .locals 1

    .prologue
    .line 116
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->addPreferencesFromResource(I)V

    .line 117
    const-string v0, "sound_effect"

    invoke-virtual {p0, v0}, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->prefSoundEffect:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 118
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->prefSoundEffect:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 119
    const-string v0, "city_select"

    invoke-virtual {p0, v0}, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceScreen;

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->prefCitySetting:Lcom/htc/preference/HtcPreferenceScreen;

    .line 120
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->prefCitySetting:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcPreferenceScreen;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 121
    return-void
.end method

.method private startCitySelectActivity()V
    .locals 4

    .prologue
    .line 145
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 146
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.htc.widget3d.weather"

    const-string v3, "com.htc.widget3d.weather.OptionActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const/16 v2, 0x14

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private uninitHandler()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 227
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->mCityNameHandler:Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->mCityNameHandler:Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;

    invoke-virtual {v0}, Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;->onDestroy()V

    .line 229
    iput-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->mCityNameHandler:Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x99

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 233
    iput-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->mUIHandler:Landroid/os/Handler;

    .line 235
    :cond_1
    return-void
.end method

.method private updateCityName()V
    .locals 2

    .prologue
    const/16 v1, 0x99

    .line 239
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 241
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 244
    :cond_0
    return-void
.end method

.method private updateData()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 68
    const-string v1, "WeatehrWallpaperSetting"

    invoke-virtual {p0, v1, v2}, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 69
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "pref.weatherwallpaper.enablesound"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->mbSound:Z

    .line 70
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->prefSoundEffect:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-boolean v2, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->mbSound:Z

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 72
    const-string v1, "pref.weatherwallpaper.citycode"

    const-string v2, "CurrentCity"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->mCityCode:Ljava/lang/String;

    .line 77
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 159
    packed-switch p2, :pswitch_data_0

    .line 186
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 187
    return-void

    .line 161
    :pswitch_0
    const/16 v3, 0x14

    if-ne p1, v3, :cond_0

    .line 162
    const-string v3, "code_"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, code:Ljava/lang/String;
    const-string v3, "name_"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, name:Ljava/lang/String;
    const-string v3, "app_"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, app:Ljava/lang/String;
    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    const-string v3, "com.htc.htclocationservice"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 171
    :cond_1
    const-string v1, "CurrentCity"

    .line 175
    :cond_2
    iput-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->mCityCode:Ljava/lang/String;

    .line 176
    invoke-virtual {p0}, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->save()V

    .line 177
    iget-object v3, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->mCityNameHandler:Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;

    if-eqz v3, :cond_0

    .line 178
    iget-object v3, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->mCityNameHandler:Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;

    iget-object v4, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->mCityCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;->updateCityName(Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->mContext:Landroid/content/Context;

    .line 50
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->onCreatePreferences()V

    .line 51
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->initHanlder()V

    .line 52
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->uninitHandler()V

    .line 106
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mEnterSetting:Z

    .line 107
    iput-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->prefSoundEffect:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 108
    iput-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->prefCitySetting:Lcom/htc/preference/HtcPreferenceScreen;

    .line 109
    iput-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->mContext:Landroid/content/Context;

    .line 111
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onDestroy()V

    .line 112
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->save()V

    .line 83
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mEnterSetting:Z

    .line 85
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onPause()V

    .line 86
    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 125
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->prefSoundEffect:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p1, v1, :cond_0

    move-object v0, p2

    .line 127
    check-cast v0, Ljava/lang/Boolean;

    .line 128
    .local v0, sound:Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->prefSoundEffect:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 130
    .end local v0           #sound:Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 2
    .parameter "prefer"

    .prologue
    .line 135
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, key:Ljava/lang/String;
    const-string v1, "city_select"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->startCitySelectActivity()V

    .line 138
    const/4 v1, 0x1

    .line 140
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 59
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mEnterSetting:Z

    .line 60
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->updateData()V

    .line 61
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->mCityNameHandler:Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->mCityNameHandler:Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;

    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->mCityCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;->updateCityName(Ljava/lang/String;)V

    .line 63
    :cond_0
    return-void
.end method

.method public save()V
    .locals 4

    .prologue
    .line 90
    const-string v2, "WeatehrWallpaperSetting"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 91
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 92
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->mCityCode:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 93
    const-string v2, "CurrentCity"

    iput-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->mCityCode:Ljava/lang/String;

    .line 96
    :cond_0
    const-string v2, "pref.weatherwallpaper.citycode"

    iget-object v3, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->mCityCode:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 97
    const-string v2, "pref.weatherwallpaper.enablesound"

    iget-object v3, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->prefSoundEffect:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 98
    const-string v3, "pref.weatherwallpaper.cityname"

    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->prefCitySetting:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v2}, Lcom/htc/preference/HtcPreferenceScreen;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 99
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 100
    return-void
.end method
