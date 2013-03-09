.class public Lfr/clockwidget/lpsense/weather/WeatherUtils;
.super Ljava/lang/Object;
.source "WeatherUtils.java"


# static fields
.field private static final DAYTIME_BEGIN_HOUR:I = 0x6

.field private static final DAYTIME_END_HOUR:I = 0x12


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatTemp(Landroid/content/res/Resources;IZ)Ljava/lang/String;
    .locals 5
    .parameter "res"
    .parameter "temp"
    .parameter "useCelsius"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 251
    const/4 v0, 0x0

    .line 252
    .local v0, temperature:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 253
    invoke-static {p1}, Lfr/clockwidget/lpsense/weather/WeatherUtils;->toCelsius(I)I

    move-result p1

    .line 254
    const v1, 0x7f080004

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 258
    :goto_0
    return-object v0

    .line 256
    :cond_0
    const v1, 0x7f080003

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCityName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "location"

    .prologue
    .line 229
    const/4 v0, 0x0

    .line 230
    .local v0, city:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 231
    const/16 v2, 0x2c

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 232
    .local v1, position:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 233
    move-object v0, p0

    .line 239
    .end local v1           #position:I
    :cond_0
    :goto_0
    return-object v0

    .line 236
    .restart local v1       #position:I
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getLastMidnight()J
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 266
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 267
    .local v0, time:Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 268
    iput v1, v0, Landroid/text/format/Time;->hour:I

    .line 269
    iput v1, v0, Landroid/text/format/Time;->minute:I

    .line 270
    iput v1, v0, Landroid/text/format/Time;->second:I

    .line 271
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    return-wide v1
.end method

.method public static getWeatherCondition(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "res"
    .parameter "condition"

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 36
    const-string p1, ""

    .line 39
    :cond_0
    move-object v0, p1

    .line 40
    .local v0, conditionString:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 41
    const-string v1, "SUNNY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 42
    const v1, 0x7f080051

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 161
    :goto_0
    return-object v1

    .line 44
    :cond_1
    const-string v1, "CLEAR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 45
    const v1, 0x7f080054

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 47
    :cond_2
    const-string v1, "MOSTLY SUNNY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 48
    const v1, 0x7f080052

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 50
    :cond_3
    const-string v1, "PARTLY CLOUDY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 51
    const v1, 0x7f080059

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 53
    :cond_4
    const-string v1, "MOSTLY CLEAR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 54
    const v1, 0x7f080055

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 56
    :cond_5
    const-string v1, "PARTLY SUNNY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 57
    const v1, 0x7f080053

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 59
    :cond_6
    const-string v1, "MOSTLY CLOUDY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 60
    const v1, 0x7f080058

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 62
    :cond_7
    const-string v1, "PARTLY CLEAR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 63
    const v1, 0x7f080056

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 65
    :cond_8
    const-string v1, "CLOUDY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 66
    const v1, 0x7f080057

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 68
    :cond_9
    const-string v1, "OVERCAST"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 69
    const v1, 0x7f08005a

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 71
    :cond_a
    const-string v1, "WINDY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 72
    const v1, 0x7f08005b

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 74
    :cond_b
    const-string v1, "FLURRIES"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 75
    const v1, 0x7f08005c

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 77
    :cond_c
    const-string v1, "CHANCE OF RAIN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 78
    const v1, 0x7f08005d

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 80
    :cond_d
    const-string v1, "CHANCE OF SHOWERS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 81
    const v1, 0x7f08005e

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 83
    :cond_e
    const-string v1, "SCATTERED SHOWERS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 84
    const v1, 0x7f08005f

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 86
    :cond_f
    const-string v1, "LIGHT RAIN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 87
    const v1, 0x7f080060

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 89
    :cond_10
    const-string v1, "SHOWERS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 90
    const v1, 0x7f080061

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 92
    :cond_11
    const-string v1, "DRIZZLE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 93
    const v1, 0x7f080062

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 95
    :cond_12
    const-string v1, "RAIN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 96
    const v1, 0x7f080063

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 98
    :cond_13
    const-string v1, "HEAVY RAIN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 99
    const v1, 0x7f080064

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 101
    :cond_14
    const-string v1, "STORM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 102
    const v1, 0x7f080065

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 104
    :cond_15
    const-string v1, "THUNDERSTORM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 105
    const v1, 0x7f080066

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 107
    :cond_16
    const-string v1, "CHANCE OF STORM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 108
    const v1, 0x7f080067

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 110
    :cond_17
    const-string v1, "CHANCE OF TSTORM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 111
    const v1, 0x7f080068

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 113
    :cond_18
    const-string v1, "SCATTERED THUNDERSTORMS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 114
    const v1, 0x7f080069

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 116
    :cond_19
    const-string v1, "ISOLATED THUNDERSTORMS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 117
    const v1, 0x7f08006a

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 119
    :cond_1a
    const-string v1, "RAIN AND SNOW"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 120
    const v1, 0x7f08006b

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 122
    :cond_1b
    const-string v1, "FREEZING DRIZZLE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 123
    const v1, 0x7f08006c

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 125
    :cond_1c
    const-string v1, "SLEET"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 126
    const v1, 0x7f08006d

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 128
    :cond_1d
    const-string v1, "CHANCE OF SNOW"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 129
    const v1, 0x7f08006e

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 131
    :cond_1e
    const-string v1, "MOSTLY CLOUDY WITH SNOW"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 132
    const v1, 0x7f08006f

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 134
    :cond_1f
    const-string v1, "LIGHT SNOW"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 135
    const v1, 0x7f080070

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 137
    :cond_20
    const-string v1, "SNOW"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 138
    const v1, 0x7f080071

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 140
    :cond_21
    const-string v1, "ICY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 141
    const v1, 0x7f080072

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 143
    :cond_22
    const-string v1, "MIST"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 144
    const v1, 0x7f080073

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 146
    :cond_23
    const-string v1, "DUST"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 147
    const v1, 0x7f080074

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 149
    :cond_24
    const-string v1, "FOG"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 150
    const v1, 0x7f080075

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 152
    :cond_25
    const-string v1, "SMOKE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 153
    const v1, 0x7f080076

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 155
    :cond_26
    const-string v1, "HAZE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 156
    const v1, 0x7f080077

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 158
    :cond_27
    const-string v1, "HOT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 159
    const v1, 0x7f080078

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_28
    move-object v1, v0

    .line 161
    goto/16 :goto_0
.end method

.method public static getWeatherIcon(Ljava/lang/String;Z)I
    .locals 5
    .parameter "condition"
    .parameter "daytime"

    .prologue
    const v4, 0x7f020020

    const v3, 0x7f02001e

    const/4 v2, 0x0

    const v1, 0x7f020025

    .line 165
    if-nez p0, :cond_0

    move v0, v2

    .line 225
    :goto_0
    return v0

    .line 169
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 170
    const-string v0, "SUNNY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 171
    goto :goto_0

    .line 173
    :cond_1
    const-string v0, "CLEAR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 174
    if-eqz p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const v0, 0x7f020026

    goto :goto_0

    .line 176
    :cond_3
    const-string v0, "MOSTLY SUNNY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v4

    .line 177
    goto :goto_0

    .line 179
    :cond_4
    const-string v0, "PARTLY SUNNY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v3

    .line 180
    goto :goto_0

    .line 182
    :cond_5
    const-string v0, "PARTLY CLOUDY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "MOSTLY CLEAR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 183
    :cond_6
    if-eqz p1, :cond_7

    move v0, v4

    goto :goto_0

    :cond_7
    const v0, 0x7f020021

    goto :goto_0

    .line 185
    :cond_8
    const-string v0, "MOSTLY CLOUDY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "PARTLY CLEAR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 186
    :cond_9
    if-eqz p1, :cond_a

    move v0, v3

    goto :goto_0

    :cond_a
    const v0, 0x7f02001f

    goto :goto_0

    .line 188
    :cond_b
    const-string v0, "CLOUDY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "OVERCAST"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 189
    :cond_c
    const v0, 0x7f020016

    goto :goto_0

    .line 191
    :cond_d
    const-string v0, "WINDY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "FLURRIES"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 192
    :cond_e
    const v0, 0x7f020019

    goto/16 :goto_0

    .line 194
    :cond_f
    const-string v0, "CHANCE OF RAIN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "CHANCE OF SHOWERS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "SCATTERED SHOWERS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 195
    :cond_10
    if-eqz p1, :cond_11

    const v0, 0x7f020017

    goto/16 :goto_0

    :cond_11
    const v0, 0x7f020018

    goto/16 :goto_0

    .line 197
    :cond_12
    const-string v0, "LIGHT RAIN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "SHOWERS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "DRIZZLE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 198
    :cond_13
    const v0, 0x7f02001d

    goto/16 :goto_0

    .line 200
    :cond_14
    const-string v0, "RAIN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "HEAVY RAIN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 201
    :cond_15
    const v0, 0x7f020022

    goto/16 :goto_0

    .line 203
    :cond_16
    const-string v0, "STORM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "THUNDERSTORM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 204
    :cond_17
    const v0, 0x7f020024

    goto/16 :goto_0

    .line 206
    :cond_18
    const-string v0, "CHANCE OF STORM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "CHANCE OF TSTORM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "SCATTERED THUNDERSTORMS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "ISOLATED THUNDERSTORMS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 207
    :cond_19
    if-eqz p1, :cond_1a

    const v0, 0x7f020013

    goto/16 :goto_0

    :cond_1a
    const v0, 0x7f020014

    goto/16 :goto_0

    .line 209
    :cond_1b
    const-string v0, "RAIN AND SNOW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "FREEZING DRIZZLE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "SLEET"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 210
    :cond_1c
    const v0, 0x7f02001c

    goto/16 :goto_0

    .line 212
    :cond_1d
    const-string v0, "CHANCE OF SNOW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "MOSTLY CLOUDY WITH SNOW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 213
    :cond_1e
    if-eqz p1, :cond_1f

    const v0, 0x7f020011

    goto/16 :goto_0

    :cond_1f
    const v0, 0x7f020012

    goto/16 :goto_0

    .line 215
    :cond_20
    const-string v0, "LIGHT SNOW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "SNOW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "ICY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 216
    :cond_21
    const v0, 0x7f020023

    goto/16 :goto_0

    .line 218
    :cond_22
    const-string v0, "MIST"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "DUST"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "FOG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "SMOKE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "HAZE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 219
    :cond_23
    if-eqz p1, :cond_24

    const v0, 0x7f02001a

    goto/16 :goto_0

    :cond_24
    const v0, 0x7f02001b

    goto/16 :goto_0

    .line 221
    :cond_25
    const-string v0, "HOT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    move v0, v1

    .line 222
    goto/16 :goto_0

    :cond_26
    move v0, v2

    .line 225
    goto/16 :goto_0
.end method

.method public static isDaytime()Z
    .locals 3

    .prologue
    .line 279
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 280
    .local v0, time:Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 281
    iget v1, v0, Landroid/text/format/Time;->hour:I

    const/4 v2, 0x6

    if-lt v1, v2, :cond_0

    iget v1, v0, Landroid/text/format/Time;->hour:I

    const/16 v2, 0x12

    if-gt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDaytime(DDLjava/util/Date;D)Z
    .locals 8
    .parameter "lat"
    .parameter "lng"
    .parameter "date"
    .parameter "timezone"

    .prologue
    const-wide/16 v2, 0x0

    .line 285
    cmpl-double v1, p0, v2

    if-eqz v1, :cond_0

    cmpl-double v1, p2, v2

    if-eqz v1, :cond_0

    .line 286
    new-instance v0, Lfr/clockwidget/lpsense/weather/SunriseSunset;

    move-wide v1, p0

    move-wide v3, p2

    move-object v5, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lfr/clockwidget/lpsense/weather/SunriseSunset;-><init>(DDLjava/util/Date;D)V

    .line 287
    .local v0, sunCalculator:Lfr/clockwidget/lpsense/weather/SunriseSunset;
    invoke-virtual {v0}, Lfr/clockwidget/lpsense/weather/SunriseSunset;->doCalculation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    invoke-virtual {v0}, Lfr/clockwidget/lpsense/weather/SunriseSunset;->isDaytime()Z

    move-result v1

    .line 291
    .end local v0           #sunCalculator:Lfr/clockwidget/lpsense/weather/SunriseSunset;
    :goto_0
    return v1

    :cond_0
    invoke-static {}, Lfr/clockwidget/lpsense/weather/WeatherUtils;->isDaytime()Z

    move-result v1

    goto :goto_0
.end method

.method public static toCelsius(I)I
    .locals 2
    .parameter "fahrenheit"

    .prologue
    .line 243
    const v0, 0x3f0e38e4

    const/16 v1, 0x20

    sub-int v1, p0, v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static toFahrenheit(I)I
    .locals 2
    .parameter "celsius"

    .prologue
    .line 247
    const v0, 0x3fe66666

    int-to-float v1, p0

    mul-float/2addr v0, v1

    const/high16 v1, 0x4200

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method
