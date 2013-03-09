.class public Lfr/clockwidget/lpsense/ForecastHelper;
.super Ljava/lang/Object;
.source "ForecastHelper.java"


# static fields
.field private static final KEY_CURRENT_CONDITION:Ljava/lang/String; = "current_condition"

.field private static final KEY_CURRENT_HIGH:Ljava/lang/String; = "current_high"

.field private static final KEY_CURRENT_HUMIDITY:Ljava/lang/String; = "current_humidity"

.field private static final KEY_CURRENT_LOW:Ljava/lang/String; = "current_low"

.field private static final KEY_CURRENT_TEMP:Ljava/lang/String; = "current_temp"

.field private static final KEY_CURRENT_WIND:Ljava/lang/String; = "current_wind"

.field private static final KEY_DAY0_CONDITION:Ljava/lang/String; = "day0_condition"

.field private static final KEY_DAY0_DAYOFWEEK:Ljava/lang/String; = "day0_dayofweek"

.field private static final KEY_DAY0_HIGH:Ljava/lang/String; = "day0_high"

.field private static final KEY_DAY0_LOW:Ljava/lang/String; = "day0_low"

.field private static final KEY_DAY1_CONDITION:Ljava/lang/String; = "day1_condition"

.field private static final KEY_DAY1_DAYOFWEEK:Ljava/lang/String; = "day1_dayofweek"

.field private static final KEY_DAY1_HIGH:Ljava/lang/String; = "day1_high"

.field private static final KEY_DAY1_LOW:Ljava/lang/String; = "day1_low"

.field private static final KEY_DAY2_CONDITION:Ljava/lang/String; = "day2_condition"

.field private static final KEY_DAY2_DAYOFWEEK:Ljava/lang/String; = "day2_dayofweek"

.field private static final KEY_DAY2_HIGH:Ljava/lang/String; = "day2_high"

.field private static final KEY_DAY2_LOW:Ljava/lang/String; = "day2_low"

.field private static final KEY_DAY3_CONDITION:Ljava/lang/String; = "day3_condition"

.field private static final KEY_DAY3_DAYOFWEEK:Ljava/lang/String; = "day3_dayofweek"

.field private static final KEY_DAY3_HIGH:Ljava/lang/String; = "day3_high"

.field private static final KEY_DAY3_LOW:Ljava/lang/String; = "day3_low"

.field private static final KEY_FORECAST_TIME:Ljava/lang/String; = "forecast_time"

.field private static final PREFS_NAME:Ljava/lang/String; = "ClockWidgetForecast"


# instance fields
.field private mPrefs:Landroid/content/SharedPreferences;

.field private mRes:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Lfr/clockwidget/lpsense/ForecastHelper;->mPrefs:Landroid/content/SharedPreferences;

    .line 35
    iput-object v0, p0, Lfr/clockwidget/lpsense/ForecastHelper;->mRes:Landroid/content/res/Resources;

    .line 38
    const-string v0, "ClockWidgetForecast"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lfr/clockwidget/lpsense/ForecastHelper;->mPrefs:Landroid/content/SharedPreferences;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lfr/clockwidget/lpsense/ForecastHelper;->mRes:Landroid/content/res/Resources;

    .line 40
    return-void
.end method

.method private getStringKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 297
    iget-object v0, p0, Lfr/clockwidget/lpsense/ForecastHelper;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 300
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lfr/clockwidget/lpsense/ForecastHelper;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getCondition(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, key:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 178
    const/4 v1, 0x0

    .line 180
    :goto_0
    return-object v1

    .line 166
    :pswitch_0
    const-string v0, "day0_condition"

    .line 180
    :goto_1
    invoke-direct {p0, v0}, Lfr/clockwidget/lpsense/ForecastHelper;->getStringKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 169
    :pswitch_1
    const-string v0, "day1_condition"

    .line 170
    goto :goto_1

    .line 172
    :pswitch_2
    const-string v0, "day2_condition"

    .line 173
    goto :goto_1

    .line 175
    :pswitch_3
    const-string v0, "day3_condition"

    .line 176
    goto :goto_1

    .line 164
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getCurrentCondition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string v0, "current_condition"

    invoke-direct {p0, v0}, Lfr/clockwidget/lpsense/ForecastHelper;->getStringKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentHigh()I
    .locals 1

    .prologue
    .line 60
    const-string v0, "current_high"

    invoke-virtual {p0, v0}, Lfr/clockwidget/lpsense/ForecastHelper;->getIntKey(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCurrentHumidity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const-string v0, "current_humidity"

    invoke-direct {p0, v0}, Lfr/clockwidget/lpsense/ForecastHelper;->getStringKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentLow()I
    .locals 1

    .prologue
    .line 68
    const-string v0, "current_low"

    invoke-virtual {p0, v0}, Lfr/clockwidget/lpsense/ForecastHelper;->getIntKey(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCurrentTemp()I
    .locals 1

    .prologue
    .line 52
    const-string v0, "current_temp"

    invoke-virtual {p0, v0}, Lfr/clockwidget/lpsense/ForecastHelper;->getIntKey(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCurrentWind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    const-string v0, "current_wind"

    invoke-direct {p0, v0}, Lfr/clockwidget/lpsense/ForecastHelper;->getStringKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDayofWeek(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, key:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 107
    const/4 v1, 0x0

    .line 109
    :goto_0
    return-object v1

    .line 95
    :pswitch_0
    const-string v0, "day0_dayofweek"

    .line 109
    :goto_1
    invoke-direct {p0, v0}, Lfr/clockwidget/lpsense/ForecastHelper;->getStringKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 98
    :pswitch_1
    const-string v0, "day1_dayofweek"

    .line 99
    goto :goto_1

    .line 101
    :pswitch_2
    const-string v0, "day2_dayofweek"

    .line 102
    goto :goto_1

    .line 104
    :pswitch_3
    const-string v0, "day3_dayofweek"

    .line 105
    goto :goto_1

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getForecastTime()J
    .locals 2

    .prologue
    .line 289
    const-string v0, "forecast_time"

    invoke-virtual {p0, v0}, Lfr/clockwidget/lpsense/ForecastHelper;->getLongKey(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHigh(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, key:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 220
    const/high16 v1, -0x8000

    .line 222
    :goto_0
    return v1

    .line 208
    :pswitch_0
    const-string v0, "day0_high"

    .line 222
    :goto_1
    invoke-virtual {p0, v0}, Lfr/clockwidget/lpsense/ForecastHelper;->getIntKey(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 211
    :pswitch_1
    const-string v0, "day1_high"

    .line 212
    goto :goto_1

    .line 214
    :pswitch_2
    const-string v0, "day2_high"

    .line 215
    goto :goto_1

    .line 217
    :pswitch_3
    const-string v0, "day3_high"

    .line 218
    goto :goto_1

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getIntKey(Ljava/lang/String;)I
    .locals 2
    .parameter "key"

    .prologue
    const/high16 v1, -0x8000

    .line 313
    iget-object v0, p0, Lfr/clockwidget/lpsense/ForecastHelper;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    move v0, v1

    .line 316
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lfr/clockwidget/lpsense/ForecastHelper;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getLongKey(Ljava/lang/String;)J
    .locals 3
    .parameter "key"

    .prologue
    const-wide/16 v1, 0x0

    .line 329
    iget-object v0, p0, Lfr/clockwidget/lpsense/ForecastHelper;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    move-wide v0, v1

    .line 332
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lfr/clockwidget/lpsense/ForecastHelper;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getLow(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 247
    const/4 v0, 0x0

    .line 248
    .local v0, key:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 262
    const/high16 v1, -0x8000

    .line 264
    :goto_0
    return v1

    .line 250
    :pswitch_0
    const-string v0, "day0_low"

    .line 264
    :goto_1
    invoke-virtual {p0, v0}, Lfr/clockwidget/lpsense/ForecastHelper;->getIntKey(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 253
    :pswitch_1
    const-string v0, "day1_low"

    .line 254
    goto :goto_1

    .line 256
    :pswitch_2
    const-string v0, "day2_low"

    .line 257
    goto :goto_1

    .line 259
    :pswitch_3
    const-string v0, "day3_low"

    .line 260
    goto :goto_1

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setCondition(ILjava/lang/String;)V
    .locals 1
    .parameter "index"
    .parameter "condition"

    .prologue
    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, key:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 202
    :goto_0
    return-void

    .line 187
    :pswitch_0
    const-string v0, "day0_condition"

    .line 201
    :goto_1
    invoke-virtual {p0, v0, p2}, Lfr/clockwidget/lpsense/ForecastHelper;->setStringKey(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :pswitch_1
    const-string v0, "day1_condition"

    .line 191
    goto :goto_1

    .line 193
    :pswitch_2
    const-string v0, "day2_condition"

    .line 194
    goto :goto_1

    .line 196
    :pswitch_3
    const-string v0, "day3_condition"

    .line 197
    goto :goto_1

    .line 185
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setCurrentCondition(Ljava/lang/String;)V
    .locals 1
    .parameter "condition"

    .prologue
    .line 48
    const-string v0, "current_condition"

    invoke-virtual {p0, v0, p1}, Lfr/clockwidget/lpsense/ForecastHelper;->setStringKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public setCurrentHigh(I)V
    .locals 1
    .parameter "high"

    .prologue
    .line 64
    const-string v0, "current_high"

    invoke-virtual {p0, v0, p1}, Lfr/clockwidget/lpsense/ForecastHelper;->setIntKey(Ljava/lang/String;I)V

    .line 65
    return-void
.end method

.method public setCurrentHumidity(Ljava/lang/String;)V
    .locals 1
    .parameter "humidity"

    .prologue
    .line 80
    const-string v0, "current_humidity"

    invoke-virtual {p0, v0, p1}, Lfr/clockwidget/lpsense/ForecastHelper;->setStringKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public setCurrentLow(I)V
    .locals 1
    .parameter "low"

    .prologue
    .line 72
    const-string v0, "current_low"

    invoke-virtual {p0, v0, p1}, Lfr/clockwidget/lpsense/ForecastHelper;->setIntKey(Ljava/lang/String;I)V

    .line 73
    return-void
.end method

.method public setCurrentTemp(I)V
    .locals 1
    .parameter "temp"

    .prologue
    .line 56
    const-string v0, "current_temp"

    invoke-virtual {p0, v0, p1}, Lfr/clockwidget/lpsense/ForecastHelper;->setIntKey(Ljava/lang/String;I)V

    .line 57
    return-void
.end method

.method public setCurrentWind(Ljava/lang/String;)V
    .locals 1
    .parameter "wind"

    .prologue
    .line 88
    const-string v0, "current_wind"

    invoke-virtual {p0, v0, p1}, Lfr/clockwidget/lpsense/ForecastHelper;->setStringKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public setDayofWeek(ILjava/lang/String;)V
    .locals 5
    .parameter "index"
    .parameter "dayOfWeek"

    .prologue
    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, key:Ljava/lang/String;
    const/4 v1, 0x0

    .line 115
    .local v1, val:Ljava/lang/String;
    iget-object v3, p0, Lfr/clockwidget/lpsense/ForecastHelper;->mRes:Landroid/content/res/Resources;

    if-nez v3, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v3, p0, Lfr/clockwidget/lpsense/ForecastHelper;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f050008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, weekNames:[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v3, v2

    const/4 v4, 0x7

    if-lt v3, v4, :cond_0

    .line 122
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 124
    :pswitch_0
    const-string v0, "day0_dayofweek"

    .line 138
    :goto_1
    const-string v3, "SUN"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 139
    const/4 v3, 0x0

    aget-object v1, v2, v3

    .line 141
    :cond_2
    const-string v3, "MON"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 142
    const/4 v3, 0x1

    aget-object v1, v2, v3

    .line 144
    :cond_3
    const-string v3, "TUE"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 145
    const/4 v3, 0x2

    aget-object v1, v2, v3

    .line 147
    :cond_4
    const-string v3, "WED"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 148
    const/4 v3, 0x3

    aget-object v1, v2, v3

    .line 150
    :cond_5
    const-string v3, "THU"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 151
    const/4 v3, 0x4

    aget-object v1, v2, v3

    .line 153
    :cond_6
    const-string v3, "FRI"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 154
    const/4 v3, 0x5

    aget-object v1, v2, v3

    .line 156
    :cond_7
    const-string v3, "SAT"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 157
    const/4 v3, 0x6

    aget-object v1, v2, v3

    .line 159
    :cond_8
    invoke-virtual {p0, v0, v1}, Lfr/clockwidget/lpsense/ForecastHelper;->setStringKey(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :pswitch_1
    const-string v0, "day1_dayofweek"

    .line 128
    goto :goto_1

    .line 130
    :pswitch_2
    const-string v0, "day2_dayofweek"

    .line 131
    goto :goto_1

    .line 133
    :pswitch_3
    const-string v0, "day3_dayofweek"

    .line 134
    goto :goto_1

    .line 122
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setForecastTime(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 293
    const-string v0, "forecast_time"

    invoke-virtual {p0, v0, p1, p2}, Lfr/clockwidget/lpsense/ForecastHelper;->setLongKey(Ljava/lang/String;J)V

    .line 294
    return-void
.end method

.method public setHigh(II)V
    .locals 1
    .parameter "index"
    .parameter "high"

    .prologue
    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, key:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 244
    :goto_0
    return-void

    .line 229
    :pswitch_0
    const-string v0, "day0_high"

    .line 243
    :goto_1
    invoke-virtual {p0, v0, p2}, Lfr/clockwidget/lpsense/ForecastHelper;->setIntKey(Ljava/lang/String;I)V

    goto :goto_0

    .line 232
    :pswitch_1
    const-string v0, "day1_high"

    .line 233
    goto :goto_1

    .line 235
    :pswitch_2
    const-string v0, "day2_high"

    .line 236
    goto :goto_1

    .line 238
    :pswitch_3
    const-string v0, "day3_high"

    .line 239
    goto :goto_1

    .line 227
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setIntKey(Ljava/lang/String;I)V
    .locals 2
    .parameter "key"
    .parameter "val"

    .prologue
    .line 320
    iget-object v1, p0, Lfr/clockwidget/lpsense/ForecastHelper;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 321
    iget-object v1, p0, Lfr/clockwidget/lpsense/ForecastHelper;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 322
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 323
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 325
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setLongKey(Ljava/lang/String;J)V
    .locals 2
    .parameter "key"
    .parameter "val"

    .prologue
    .line 336
    iget-object v1, p0, Lfr/clockwidget/lpsense/ForecastHelper;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 337
    iget-object v1, p0, Lfr/clockwidget/lpsense/ForecastHelper;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 338
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 339
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 341
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setLow(II)V
    .locals 1
    .parameter "index"
    .parameter "low"

    .prologue
    .line 268
    const/4 v0, 0x0

    .line 269
    .local v0, key:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 286
    :goto_0
    return-void

    .line 271
    :pswitch_0
    const-string v0, "day0_low"

    .line 285
    :goto_1
    invoke-virtual {p0, v0, p2}, Lfr/clockwidget/lpsense/ForecastHelper;->setIntKey(Ljava/lang/String;I)V

    goto :goto_0

    .line 274
    :pswitch_1
    const-string v0, "day1_low"

    .line 275
    goto :goto_1

    .line 277
    :pswitch_2
    const-string v0, "day2_low"

    .line 278
    goto :goto_1

    .line 280
    :pswitch_3
    const-string v0, "day3_low"

    .line 281
    goto :goto_1

    .line 269
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setStringKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "val"

    .prologue
    .line 304
    iget-object v1, p0, Lfr/clockwidget/lpsense/ForecastHelper;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 305
    iget-object v1, p0, Lfr/clockwidget/lpsense/ForecastHelper;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 306
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 307
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 309
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method
