.class public Lcom/htc/weatheridlescreen/WISPreference;
.super Ljava/lang/Object;
.source "WISPreference.java"


# static fields
.field public static final KEY_WEATHER_CITY_CODE:I = 0x1

.field public static final KEY_WEATHER_CITY_NAME:I = 0x2

.field private static final LOG_FLAG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "WIS"

.field public static final PREFERENCE_NAME:Ljava/lang/String; = "WeatherIdleScreen_settings"

.field private static final PREFIX:Ljava/lang/String; = "[WISPreference] "

.field public static final WeatherCityCode:Ljava/lang/String; = "WIS_WeatherCityCode"

.field public static final WeatherCityName:Ljava/lang/String; = "WIS_WeatherCityName"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStringSharePreference(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 21
    const-string v1, "WeatherIdleScreen_settings"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 22
    .local v0, settings:Landroid/content/SharedPreferences;
    if-nez v0, :cond_0

    .line 33
    .end local p2
    :goto_0
    return-object p2

    .line 25
    .restart local p2
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 28
    :pswitch_0
    const-string v1, "WIS_WeatherCityCode"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 31
    :pswitch_1
    const-string v1, "WIS_WeatherCityName"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 25
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static setStringSharePreference(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 38
    const-string v2, "WeatherIdleScreen_settings"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 39
    .local v1, settings:Landroid/content/SharedPreferences;
    if-nez v1, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 42
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    .line 44
    packed-switch p1, :pswitch_data_0

    .line 56
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 47
    :pswitch_0
    if-nez p2, :cond_2

    .line 48
    const-string p2, "CurrentCity"

    .line 49
    :cond_2
    const-string v2, "WIS_WeatherCityCode"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 53
    :pswitch_1
    const-string v2, "WIS_WeatherCityName"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
