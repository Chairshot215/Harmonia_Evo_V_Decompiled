.class public Lcom/htc/weather/WeatherVideo;
.super Ljava/lang/Object;
.source "WeatherVideo.java"


# static fields
.field public static final ACTION_MEDIA_RELEASE:Ljava/lang/String; = "com.htc.ml.VST_MEDIA_RELEASE"

.field public static final DEFAULT_CONDITION:I = 0x1

.field public static final DEFAULT_VIDEO_INDEX:I = 0x0

.field public static final DEFAULT_VIDEO_PATH:Ljava/lang/String; = null

.field public static final IMAGE_MAPPING_VIDEO:[Ljava/lang/String; = null

.field public static final LOG_TAG:Ljava/lang/String; = "WeatherVideo"

.field private static final PREFIX_PATH:Ljava/lang/String; = "/system/media/weather/"

.field public static final RESOURCE_PACKAGE_NAME:Ljava/lang/String; = "com.htc.weathervideo.base"

.field public static final mWeatherVideoMapArray:[I

.field private static final path:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "weather_sunny.mp4"

    aput-object v1, v0, v3

    const-string v1, "weather_clear.mp4"

    aput-object v1, v0, v4

    const-string v1, "weather_thunderstorm_day.mp4"

    aput-object v1, v0, v5

    const-string v1, "weather_thunderstorm_night.mp4"

    aput-object v1, v0, v6

    const-string v1, "weather_cloudy_day.mp4"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "weather_cloudy_night.mp4"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "weather_fog_day.mp4"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "weather_fog_night.mp4"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "weather_hot.mp4"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "weather_partly_cloud.mp4"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "weather_partly_sunny.mp4"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "weather_rain.mp4"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "weather_rain_night.mp4"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "weather_snow_day.mp4"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "weather_snow_night.mp4"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "weather_windy_day.mp4"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "weather_windy_night.mp4"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "weather_partly_cloud_night.mp4"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/weather/WeatherVideo;->path:[Ljava/lang/String;

    .line 41
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "weather_sunny"

    aput-object v1, v0, v3

    const-string v1, "weather_clear"

    aput-object v1, v0, v4

    const-string v1, "weather_thunderstorm_day"

    aput-object v1, v0, v5

    const-string v1, "weather_thunderstorm_night"

    aput-object v1, v0, v6

    const-string v1, "weather_cloudy_day"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "weather_cloudy_night"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "weather_fog_day"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "weather_fog_night"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "weather_hot"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "weather_partly_cloud"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "weather_partly_sunny"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "weather_rain_day"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "weather_rain_night"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "weather_snow_day"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "weather_snow_night"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "weather_windy_day"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "weather_windy_night"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "weather_partly_cloud_night"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/weather/WeatherVideo;->IMAGE_MAPPING_VIDEO:[Ljava/lang/String;

    .line 71
    const/16 v0, 0x2c

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/weather/WeatherVideo;->mWeatherVideoMapArray:[I

    .line 83
    sget-object v0, Lcom/htc/weather/WeatherVideo;->path:[Ljava/lang/String;

    aget-object v0, v0, v3

    sput-object v0, Lcom/htc/weather/WeatherVideo;->DEFAULT_VIDEO_PATH:Ljava/lang/String;

    return-void

    .line 71
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIconIdByVideoOrder(I)I
    .locals 4
    .parameter "order"

    .prologue
    .line 131
    const/4 v1, 0x1

    .line 133
    .local v1, id:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Lcom/htc/weather/WeatherVideo;->mWeatherVideoMapArray:[I

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 134
    sget-object v3, Lcom/htc/weather/WeatherVideo;->mWeatherVideoMapArray:[I

    aget v3, v3, v0

    if-ne p0, v3, :cond_0

    .line 135
    add-int/lit8 v1, v0, 0x1

    move v2, v1

    .line 139
    .end local v1           #id:I
    .local v2, id:I
    :goto_1
    return v2

    .line 133
    .end local v2           #id:I
    .restart local v1       #id:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    .line 139
    .end local v1           #id:I
    .restart local v2       #id:I
    goto :goto_1
.end method

.method public static getVideoCount()I
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/htc/weather/WeatherVideo;->path:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public static getVideoFileIndexByIcon(Ljava/lang/String;)I
    .locals 3
    .parameter "id"

    .prologue
    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, in:I
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 145
    const/4 v1, 0x0

    .line 146
    .local v1, index:I
    if-ltz v0, :cond_0

    sget-object v2, Lcom/htc/weather/WeatherVideo;->mWeatherVideoMapArray:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 147
    sget-object v2, Lcom/htc/weather/WeatherVideo;->mWeatherVideoMapArray:[I

    aget v1, v2, v0

    .line 149
    :cond_0
    return v1
.end method

.method public static getVideoFilePath(I)Ljava/lang/String;
    .locals 2
    .parameter "order"

    .prologue
    .line 125
    if-ltz p0, :cond_0

    sget-object v0, Lcom/htc/weather/WeatherVideo;->path:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-le p0, v0, :cond_1

    .line 126
    :cond_0
    const/4 v0, 0x0

    .line 127
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/media/weather/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/weather/WeatherVideo;->path:[Ljava/lang/String;

    aget-object v1, v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getVideoFilePathByIcon(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "iconId"

    .prologue
    .line 99
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2

    .line 100
    :cond_0
    const-string v2, ""

    .line 110
    :cond_1
    :goto_0
    return-object v2

    .line 102
    :cond_2
    const/4 v0, 0x0

    .line 103
    .local v0, in:I
    const-string v2, ""

    .line 104
    .local v2, video:Ljava/lang/String;
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 106
    if-ltz v0, :cond_1

    sget-object v3, Lcom/htc/weather/WeatherVideo;->mWeatherVideoMapArray:[I

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 107
    sget-object v3, Lcom/htc/weather/WeatherVideo;->mWeatherVideoMapArray:[I

    aget v1, v3, v0

    .line 108
    .local v1, path_number:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/system/media/weather/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/weather/WeatherVideo;->path:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getVideoFilePathByIcon(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .parameter "iconId"
    .parameter "daylightflag"

    .prologue
    .line 155
    const/4 v1, 0x0

    .line 156
    .local v1, in:I
    const-string v3, ""

    .line 159
    .local v3, video:Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 164
    :goto_0
    if-ltz v1, :cond_0

    sget-object v4, Lcom/htc/weather/WeatherVideo;->mWeatherVideoMapArray:[I

    array-length v4, v4

    if-ge v1, v4, :cond_0

    .line 165
    sget-object v4, Lcom/htc/weather/WeatherVideo;->mWeatherVideoMapArray:[I

    aget v2, v4, v1

    .line 166
    .local v2, path_number:I
    sget-object v4, Lcom/htc/weather/WeatherVideo;->path:[Ljava/lang/String;

    aget-object v3, v4, v2

    .line 169
    .end local v2           #path_number:I
    :cond_0
    const-string v4, "weather_cloudy_day.mp4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 170
    if-nez p1, :cond_1

    .line 171
    const-string v4, "/system/media/weather/weather_cloudy_night.mp4"

    .line 204
    :goto_1
    return-object v4

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v4, "WeatherVideo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cant parse iconId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 175
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_1
    const-string v4, "weather_thunderstorm_day.mp4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 176
    if-nez p1, :cond_2

    .line 177
    const-string v4, "/system/media/weather/weather_thunderstorm_night.mp4"

    goto :goto_1

    .line 181
    :cond_2
    const-string v4, "weather_fog_day.mp4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 182
    if-nez p1, :cond_3

    .line 183
    const-string v4, "/system/media/weather/weather_fog_night.mp4"

    goto :goto_1

    .line 187
    :cond_3
    const-string v4, "weather_rain.mp4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 188
    if-nez p1, :cond_4

    .line 189
    const-string v4, "/system/media/weather/weather_rain_night.mp4"

    goto :goto_1

    .line 193
    :cond_4
    const-string v4, "weather_snow_day.mp4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 194
    if-nez p1, :cond_5

    .line 195
    const-string v4, "/system/media/weather/weather_snow_night.mp4"

    goto :goto_1

    .line 199
    :cond_5
    const-string v4, "weather_windy_day.mp4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 200
    if-nez p1, :cond_6

    .line 201
    const-string v4, "/system/media/weather/weather_windy_night.mp4"

    goto :goto_1

    .line 204
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/system/media/weather/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public static getVideoFilePathWindyType(Z)Ljava/lang/String;
    .locals 2
    .parameter "isDayTime"

    .prologue
    .line 114
    if-eqz p0, :cond_0

    .line 115
    sget-object v0, Lcom/htc/weather/WeatherVideo;->path:[Ljava/lang/String;

    const/16 v1, 0xf

    aget-object v0, v0, v1

    .line 117
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/htc/weather/WeatherVideo;->path:[Ljava/lang/String;

    const/16 v1, 0x10

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public static getWeatherImagePath(I)Ljava/lang/String;
    .locals 1
    .parameter "order"

    .prologue
    .line 91
    sget-object v0, Lcom/htc/weather/WeatherVideo;->IMAGE_MAPPING_VIDEO:[Ljava/lang/String;

    array-length v0, v0

    if-lt p0, v0, :cond_0

    .line 92
    const-string v0, ""

    .line 94
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/htc/weather/WeatherVideo;->IMAGE_MAPPING_VIDEO:[Ljava/lang/String;

    aget-object v0, v0, p0

    goto :goto_0
.end method
