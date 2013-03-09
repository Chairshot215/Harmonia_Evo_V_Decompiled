.class public Lcom/htc/idlescreen/base/ctrl/weather/LocationUtil;
.super Ljava/lang/Object;
.source "LocationUtil.java"


# static fields
.field public static final APP_LOCATION_SERVICE:Ljava/lang/String; = "com.htc.htclocationservice"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DE:Ljava/lang/String; = "de"

.field public static final EN:Ljava/lang/String; = "en"

.field public static final ES:Ljava/lang/String; = "es"

.field public static final FR:Ljava/lang/String; = "fr"

.field public static final FS:Ljava/lang/String; = "fs"

.field public static final IT:Ljava/lang/String; = "it"

.field public static final JA:Ljava/lang/String; = "ja"

.field public static final KO:Ljava/lang/String; = "ko"

.field public static final NL:Ljava/lang/String; = "nl"

.field public static final NO:Ljava/lang/String; = "no"

.field public static final PL:Ljava/lang/String; = "pl"

.field public static final RU:Ljava/lang/String; = "ru"

.field public static final TIMEZONEID:Ljava/lang/String; = "timezoneId"

.field public static final ZH:Ljava/lang/String; = "zh"

.field public static final ZHTW:Ljava/lang/String; = "zhTW"

.field public static sDefaultLocName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "content://com.htc.android.alarmclock/timezone"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/idlescreen/base/ctrl/weather/LocationUtil;->CONTENT_URI:Landroid/net/Uri;

    .line 128
    const-string v0, "Current location"

    sput-object v0, Lcom/htc/idlescreen/base/ctrl/weather/LocationUtil;->sDefaultLocName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentCityName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "mApp"

    .prologue
    const/4 v4, 0x0

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.htc.htclocationservice"

    invoke-static {v2, v3}, Lcom/htc/util/weather/WeatherUtility;->loadLocations(Landroid/content/ContentResolver;Ljava/lang/String;)[Lcom/htc/util/weather/WeatherLocation;

    move-result-object v1

    .line 19
    .local v1, current_locs:[Lcom/htc/util/weather/WeatherLocation;
    if-eqz v1, :cond_2

    array-length v2, v1

    if-lez v2, :cond_2

    .line 20
    aget-object v2, v1, v4

    invoke-virtual {v2}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, city_name:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 22
    :cond_0
    sget-object v2, Lcom/htc/idlescreen/base/ctrl/weather/LocationUtil;->sDefaultLocName:Ljava/lang/String;

    .line 26
    .end local v0           #city_name:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 23
    .restart local v0       #city_name:Ljava/lang/String;
    :cond_1
    aget-object v2, v1, v4

    invoke-virtual {v2}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 26
    .end local v0           #city_name:Ljava/lang/String;
    :cond_2
    invoke-static {p0}, Lcom/htc/idlescreen/base/ctrl/weather/LocationUtil;->getHome(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getCurrentCityTimezone(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "mApp"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "com.htc.htclocationservice"

    invoke-static {v3, v4}, Lcom/htc/util/weather/WeatherUtility;->loadLocations(Landroid/content/ContentResolver;Ljava/lang/String;)[Lcom/htc/util/weather/WeatherLocation;

    move-result-object v1

    .line 33
    .local v1, current_locs:[Lcom/htc/util/weather/WeatherLocation;
    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    .line 34
    aget-object v3, v1, v5

    invoke-virtual {v3}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, city_name:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 44
    .end local v0           #city_name:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 37
    .restart local v0       #city_name:Ljava/lang/String;
    :cond_1
    aget-object v3, v1, v5

    invoke-virtual {v3}, Lcom/htc/util/weather/WeatherLocation;->getTimezoneId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    aget-object v3, v1, v5

    invoke-virtual {v3}, Lcom/htc/util/weather/WeatherLocation;->getTimezoneId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 39
    aget-object v2, v1, v5

    invoke-virtual {v2}, Lcom/htc/util/weather/WeatherLocation;->getTimezoneId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static getHome(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .parameter "mApp"

    .prologue
    const/4 v2, 0x0

    .line 97
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    .line 99
    .local v7, id:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "timezoneId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v10, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 102
    .local v10, systemLocale:Ljava/util/Locale;
    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    .line 103
    .local v9, systemLang:Ljava/lang/String;
    sget-object v0, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v10, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const-string v9, "zhTW"

    .line 108
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/idlescreen/base/ctrl/weather/LocationUtil;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 110
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 111
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 113
    .local v8, index:I
    if-gez v8, :cond_1

    const-string v0, "en"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 115
    :cond_1
    if-ltz v8, :cond_2

    .line 116
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 121
    .end local v8           #index:I
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 122
    const/4 v6, 0x0

    .line 125
    :cond_3
    return-object v7
.end method

.method private static getTimeZoneCity(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "mApp"
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "timezoneId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v9, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 70
    .local v9, systemLocale:Ljava/util/Locale;
    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    .line 71
    .local v8, systemLang:Ljava/lang/String;
    sget-object v0, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v9, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const-string v8, "zhTW"

    .line 76
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/idlescreen/base/ctrl/weather/LocationUtil;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 78
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 79
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 81
    .local v7, index:I
    if-gez v7, :cond_1

    const-string v0, "en"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 83
    :cond_1
    if-ltz v7, :cond_2

    .line 84
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 89
    .end local v7           #index:I
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 90
    const/4 v6, 0x0

    .line 93
    :cond_3
    return-object p1
.end method

.method public static setDefaultLocName(Ljava/lang/String;)V
    .locals 0
    .parameter "defaultName"

    .prologue
    .line 131
    sput-object p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationUtil;->sDefaultLocName:Ljava/lang/String;

    .line 132
    return-void
.end method
