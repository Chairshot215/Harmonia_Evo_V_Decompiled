.class public Lcom/htc/weatheridlescreen/activity/WISActivity;
.super Lcom/htc/fusion/fx/FxActivity;
.source "WISActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final LOG_FLAG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "WIS"

.field private static final PREFIX:Ljava/lang/String; = "[WISActivity] "

.field private static final RESULT_CITY:I = 0x1


# instance fields
.field mDataUpdateCallback:Lcom/htc/weatheridlescreen/data/WeatherDataLoader$DataUpdateCallback;

.field private mFxScene:Lcom/htc/fusion/fx/FxScene;

.field private mFxSceneBG:Lcom/htc/fusion/fx/FxScene;

.field private mHasWeatherData:Z

.field private mPreference:Landroid/content/SharedPreferences;

.field private mWISFxScreen:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

.field private mWeatherDaraLoader:Lcom/htc/weatheridlescreen/data/WeatherDataLoader;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Lcom/htc/fusion/fx/FxActivity;-><init>()V

    .line 25
    iput-object v1, p0, Lcom/htc/weatheridlescreen/activity/WISActivity;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    .line 26
    iput-object v1, p0, Lcom/htc/weatheridlescreen/activity/WISActivity;->mWISFxScreen:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    .line 27
    iput-object v1, p0, Lcom/htc/weatheridlescreen/activity/WISActivity;->mPreference:Landroid/content/SharedPreferences;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/weatheridlescreen/activity/WISActivity;->mHasWeatherData:Z

    .line 31
    iput-object v1, p0, Lcom/htc/weatheridlescreen/activity/WISActivity;->mFxSceneBG:Lcom/htc/fusion/fx/FxScene;

    .line 33
    iput-object v1, p0, Lcom/htc/weatheridlescreen/activity/WISActivity;->mWeatherDaraLoader:Lcom/htc/weatheridlescreen/data/WeatherDataLoader;

    .line 34
    new-instance v0, Lcom/htc/weatheridlescreen/activity/WISActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/weatheridlescreen/activity/WISActivity$1;-><init>(Lcom/htc/weatheridlescreen/activity/WISActivity;)V

    iput-object v0, p0, Lcom/htc/weatheridlescreen/activity/WISActivity;->mDataUpdateCallback:Lcom/htc/weatheridlescreen/data/WeatherDataLoader$DataUpdateCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/weatheridlescreen/activity/WISActivity;)Lcom/htc/weatheridlescreen/fusion/WISFxScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/weatheridlescreen/activity/WISActivity;->mWISFxScreen:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/weatheridlescreen/activity/WISActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/htc/weatheridlescreen/activity/WISActivity;->mHasWeatherData:Z

    return p1
.end method

.method private startCitySelectActivity()V
    .locals 4

    .prologue
    .line 145
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 146
    .local v1, intent:Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 154
    :goto_0
    return-void

    .line 148
    :cond_0
    const-string v2, "com.htc.WeatherWidget"

    const-string v3, "com.htc.WeatherWidget.OptionActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/htc/weatheridlescreen/activity/WISActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 121
    if-nez p3, :cond_0

    .line 122
    invoke-super {p0, p1, p2, p3}, Lcom/htc/fusion/fx/FxActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 140
    :goto_0
    return-void

    .line 125
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 139
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/htc/fusion/fx/FxActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 128
    :pswitch_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 130
    const-string v2, "code_"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, code:Ljava/lang/String;
    const-string v2, "name_"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, name:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 134
    const-string v0, "CurrentCity"

    .line 135
    :cond_2
    invoke-virtual {p0}, Lcom/htc/weatheridlescreen/activity/WISActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3, v0}, Lcom/htc/weatheridlescreen/WISPreference;->setStringSharePreference(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_1

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 51
    invoke-super {p0, p1}, Lcom/htc/fusion/fx/FxActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const-string v0, "WeatherIdleScreen_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/weatheridlescreen/activity/WISActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/weatheridlescreen/activity/WISActivity;->mPreference:Landroid/content/SharedPreferences;

    .line 55
    iget-object v0, p0, Lcom/htc/weatheridlescreen/activity/WISActivity;->mPreference:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/htc/weatheridlescreen/activity/WISActivity;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 59
    :cond_0
    const-string v0, "Port/Lockscreen_weather.m10"

    invoke-virtual {p0, v0}, Lcom/htc/weatheridlescreen/activity/WISActivity;->setScene(Ljava/lang/String;)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/weatheridlescreen/activity/WISActivity;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    .line 60
    const-string v0, "Port/Lockscreen_weather_bg.m10"

    invoke-static {v0, v4}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/weatheridlescreen/activity/WISActivity;->mFxSceneBG:Lcom/htc/fusion/fx/FxScene;

    .line 61
    new-instance v0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    invoke-virtual {p0}, Lcom/htc/weatheridlescreen/activity/WISActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/weatheridlescreen/activity/WISActivity;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    iget-object v3, p0, Lcom/htc/weatheridlescreen/activity/WISActivity;->mFxSceneBG:Lcom/htc/fusion/fx/FxScene;

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;-><init>(Landroid/content/Context;Lcom/htc/fusion/fx/FxScene;ZLcom/htc/fusion/fx/FxScene;)V

    iput-object v0, p0, Lcom/htc/weatheridlescreen/activity/WISActivity;->mWISFxScreen:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    .line 64
    invoke-virtual {p0}, Lcom/htc/weatheridlescreen/activity/WISActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 67
    new-instance v0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;

    invoke-virtual {p0}, Lcom/htc/weatheridlescreen/activity/WISActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/weatheridlescreen/activity/WISActivity;->mWeatherDaraLoader:Lcom/htc/weatheridlescreen/data/WeatherDataLoader;

    .line 68
    iget-object v0, p0, Lcom/htc/weatheridlescreen/activity/WISActivity;->mWeatherDaraLoader:Lcom/htc/weatheridlescreen/data/WeatherDataLoader;

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/htc/weatheridlescreen/activity/WISActivity;->mWeatherDaraLoader:Lcom/htc/weatheridlescreen/data/WeatherDataLoader;

    invoke-virtual {v0}, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->initHandler()V

    .line 70
    iget-object v0, p0, Lcom/htc/weatheridlescreen/activity/WISActivity;->mWeatherDaraLoader:Lcom/htc/weatheridlescreen/data/WeatherDataLoader;

    iget-object v1, p0, Lcom/htc/weatheridlescreen/activity/WISActivity;->mDataUpdateCallback:Lcom/htc/weatheridlescreen/data/WeatherDataLoader$DataUpdateCallback;

    invoke-virtual {v0, v1}, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->setDataUpdateCallback(Lcom/htc/weatheridlescreen/data/WeatherDataLoader$DataUpdateCallback;)V

    .line 71
    iget-object v0, p0, Lcom/htc/weatheridlescreen/activity/WISActivity;->mWeatherDaraLoader:Lcom/htc/weatheridlescreen/data/WeatherDataLoader;

    invoke-virtual {v0}, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->requestWeatherData()V

    .line 75
    :cond_1
    invoke-direct {p0}, Lcom/htc/weatheridlescreen/activity/WISActivity;->startCitySelectActivity()V

    .line 76
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    iget-object v0, p0, Lcom/htc/weatheridlescreen/activity/WISActivity;->mPreference:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/htc/weatheridlescreen/activity/WISActivity;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 84
    iput-object v1, p0, Lcom/htc/weatheridlescreen/activity/WISActivity;->mPreference:Landroid/content/SharedPreferences;

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/htc/weatheridlescreen/activity/WISActivity;->mWeatherDaraLoader:Lcom/htc/weatheridlescreen/data/WeatherDataLoader;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/htc/weatheridlescreen/activity/WISActivity;->mWeatherDaraLoader:Lcom/htc/weatheridlescreen/data/WeatherDataLoader;

    invoke-virtual {v0}, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->unInitHandler()V

    .line 88
    iput-object v1, p0, Lcom/htc/weatheridlescreen/activity/WISActivity;->mWeatherDaraLoader:Lcom/htc/weatheridlescreen/data/WeatherDataLoader;

    .line 90
    :cond_1
    invoke-super {p0}, Lcom/htc/fusion/fx/FxActivity;->onDestroy()V

    .line 91
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/htc/weatheridlescreen/activity/WISActivity;->mWISFxScreen:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/htc/weatheridlescreen/activity/WISActivity;->mWISFxScreen:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    invoke-virtual {v0}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->onPause()V

    .line 99
    :cond_0
    invoke-super {p0}, Lcom/htc/fusion/fx/FxActivity;->onPause()V

    .line 100
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/htc/weatheridlescreen/activity/WISActivity;->mHasWeatherData:Z

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/htc/weatheridlescreen/activity/WISActivity;->mWISFxScreen:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/htc/weatheridlescreen/activity/WISActivity;->mWISFxScreen:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    invoke-virtual {v0}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->checkCurrentWeatherCondition()Z

    .line 114
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/htc/fusion/fx/FxActivity;->onResume()V

    .line 115
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/htc/weatheridlescreen/activity/WISActivity;->mWeatherDaraLoader:Lcom/htc/weatheridlescreen/data/WeatherDataLoader;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/htc/weatheridlescreen/activity/WISActivity;->mWeatherDaraLoader:Lcom/htc/weatheridlescreen/data/WeatherDataLoader;

    invoke-virtual {v0}, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->requestWeatherData()V

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 159
    const-string v0, "WIS_WeatherCityCode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/htc/weatheridlescreen/activity/WISActivity;->mWeatherDaraLoader:Lcom/htc/weatheridlescreen/data/WeatherDataLoader;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/htc/weatheridlescreen/activity/WISActivity;->mWeatherDaraLoader:Lcom/htc/weatheridlescreen/data/WeatherDataLoader;

    invoke-virtual {v0}, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->resetCityForWeatherDataReceiver()V

    .line 162
    iget-object v0, p0, Lcom/htc/weatheridlescreen/activity/WISActivity;->mWeatherDaraLoader:Lcom/htc/weatheridlescreen/data/WeatherDataLoader;

    invoke-virtual {v0}, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->requestWeatherData()V

    .line 165
    :cond_0
    return-void
.end method
