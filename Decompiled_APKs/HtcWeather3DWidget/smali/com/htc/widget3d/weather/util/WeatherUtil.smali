.class public Lcom/htc/widget3d/weather/util/WeatherUtil;
.super Ljava/lang/Object;
.source "WeatherUtil.java"


# static fields
.field private static PREFS_NAME:Ljava/lang/String;

.field public static count:I

.field private static final sDaysMedium:[I

.field public static totalVideoCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "com.htc.Weather"

    sput-object v0, Lcom/htc/widget3d/weather/util/WeatherUtil;->PREFS_NAME:Ljava/lang/String;

    .line 351
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/widget3d/weather/util/WeatherUtil;->sDaysMedium:[I

    .line 364
    const/4 v0, 0x3

    sput v0, Lcom/htc/widget3d/weather/util/WeatherUtil;->totalVideoCount:I

    .line 365
    const/4 v0, 0x0

    sput v0, Lcom/htc/widget3d/weather/util/WeatherUtil;->count:I

    return-void

    .line 351
    nop

    :array_0
    .array-data 0x4
        0x60t 0x0t 0x4t 0x1t
        0x61t 0x0t 0x4t 0x1t
        0x62t 0x0t 0x4t 0x1t
        0x63t 0x0t 0x4t 0x1t
        0x64t 0x0t 0x4t 0x1t
        0x65t 0x0t 0x4t 0x1t
        0x66t 0x0t 0x4t 0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDateString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "dat"

    .prologue
    .line 117
    if-eqz p1, :cond_0

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 118
    :cond_0
    const-string v0, ""

    .line 147
    :goto_0
    return-object v0

    .line 120
    :cond_1
    const/4 v1, 0x0

    .line 121
    .local v1, diff:I
    const/16 v2, 0x14

    .line 122
    .local v2, dpyLen:I
    const-string v3, "MON"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "Monday"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 124
    :cond_2
    const/4 v1, 0x1

    .line 145
    :cond_3
    :goto_1
    sget-object v3, Lcom/htc/widget3d/weather/util/WeatherUtil;->sDaysMedium:[I

    aget v3, v3, v1

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, dayStr:Ljava/lang/String;
    goto :goto_0

    .line 125
    .end local v0           #dayStr:Ljava/lang/String;
    :cond_4
    const-string v3, "TUE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "Tuesday"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 127
    :cond_5
    const/4 v1, 0x2

    goto :goto_1

    .line 128
    :cond_6
    const-string v3, "WED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "Wednesday"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 130
    :cond_7
    const/4 v1, 0x3

    goto :goto_1

    .line 131
    :cond_8
    const-string v3, "THU"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "Thursday"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 133
    :cond_9
    const/4 v1, 0x4

    goto :goto_1

    .line 134
    :cond_a
    const-string v3, "FRI"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "Friday"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 136
    :cond_b
    const/4 v1, 0x5

    goto :goto_1

    .line 137
    :cond_c
    const-string v3, "SAT"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "Saturday"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 139
    :cond_d
    const/4 v1, 0x6

    goto :goto_1

    .line 140
    :cond_e
    const-string v3, "SUN"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "Sunday"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 142
    :cond_f
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getForecastIconResId(Landroid/content/Context;[Ljava/lang/String;)[I
    .locals 4
    .parameter "context"
    .parameter "id"

    .prologue
    .line 52
    array-length v0, p1

    .line 53
    .local v0, count:I
    new-array v2, v0, [I

    .line 56
    .local v2, ret:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 57
    aget-object v3, p1, v1

    invoke-static {v3}, Lcom/htc/widget3d/weather/util/RefreshUtil;->safe_parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {p0, v3}, Lcom/htc/widget3d/weather/util/IconPicker;->getForecastIconId(Landroid/content/Context;I)I

    move-result v3

    aput v3, v2, v1

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    :cond_0
    return-object v2
.end method

.method public static getForecastScenePath(I)Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 209
    packed-switch p0, :pswitch_data_0

    .line 250
    :pswitch_0
    const-string v0, "s_01.m10"

    :goto_0
    return-object v0

    .line 210
    :pswitch_1
    const-string v0, "s_01.m10"

    goto :goto_0

    .line 211
    :pswitch_2
    const-string v0, "s_02.m10"

    goto :goto_0

    .line 212
    :pswitch_3
    const-string v0, "s_03.m10"

    goto :goto_0

    .line 213
    :pswitch_4
    const-string v0, "s_04.m10"

    goto :goto_0

    .line 214
    :pswitch_5
    const-string v0, "s_05.m10"

    goto :goto_0

    .line 215
    :pswitch_6
    const-string v0, "s_06.m10"

    goto :goto_0

    .line 216
    :pswitch_7
    const-string v0, "s_07.m10"

    goto :goto_0

    .line 217
    :pswitch_8
    const-string v0, "s_08.m10"

    goto :goto_0

    .line 218
    :pswitch_9
    const-string v0, "s_11.m10"

    goto :goto_0

    .line 219
    :pswitch_a
    const-string v0, "s_12.m10"

    goto :goto_0

    .line 220
    :pswitch_b
    const-string v0, "s_13.m10"

    goto :goto_0

    .line 221
    :pswitch_c
    const-string v0, "s_14.m10"

    goto :goto_0

    .line 222
    :pswitch_d
    const-string v0, "s_15.m10"

    goto :goto_0

    .line 223
    :pswitch_e
    const-string v0, "s_16.m10"

    goto :goto_0

    .line 224
    :pswitch_f
    const-string v0, "s_17.m10"

    goto :goto_0

    .line 225
    :pswitch_10
    const-string v0, "s_18.m10"

    goto :goto_0

    .line 226
    :pswitch_11
    const-string v0, "s_19.m10"

    goto :goto_0

    .line 227
    :pswitch_12
    const-string v0, "s_20.m10"

    goto :goto_0

    .line 228
    :pswitch_13
    const-string v0, "s_21.m10"

    goto :goto_0

    .line 229
    :pswitch_14
    const-string v0, "s_22.m10"

    goto :goto_0

    .line 230
    :pswitch_15
    const-string v0, "s_23.m10"

    goto :goto_0

    .line 231
    :pswitch_16
    const-string v0, "s_24.m10"

    goto :goto_0

    .line 232
    :pswitch_17
    const-string v0, "s_25.m10"

    goto :goto_0

    .line 233
    :pswitch_18
    const-string v0, "s_26.m10"

    goto :goto_0

    .line 234
    :pswitch_19
    const-string v0, "s_29.m10"

    goto :goto_0

    .line 235
    :pswitch_1a
    const-string v0, "s_30.m10"

    goto :goto_0

    .line 236
    :pswitch_1b
    const-string v0, "s_31.m10"

    goto :goto_0

    .line 237
    :pswitch_1c
    const-string v0, "s_32.m10"

    goto :goto_0

    .line 238
    :pswitch_1d
    const-string v0, "s_33.m10"

    goto :goto_0

    .line 239
    :pswitch_1e
    const-string v0, "s_34.m10"

    goto :goto_0

    .line 240
    :pswitch_1f
    const-string v0, "s_35.m10"

    goto :goto_0

    .line 241
    :pswitch_20
    const-string v0, "s_36.m10"

    goto :goto_0

    .line 242
    :pswitch_21
    const-string v0, "s_37.m10"

    goto :goto_0

    .line 243
    :pswitch_22
    const-string v0, "s_38.m10"

    goto :goto_0

    .line 244
    :pswitch_23
    const-string v0, "s_39.m10"

    goto :goto_0

    .line 245
    :pswitch_24
    const-string v0, "s_40.m10"

    goto :goto_0

    .line 246
    :pswitch_25
    const-string v0, "s_41.m10"

    goto :goto_0

    .line 247
    :pswitch_26
    const-string v0, "s_42.m10"

    goto :goto_0

    .line 248
    :pswitch_27
    const-string v0, "s_43.m10"

    goto :goto_0

    .line 249
    :pswitch_28
    const-string v0, "s_44.m10"

    goto :goto_0

    .line 209
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_0
        :pswitch_0
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
    .end packed-switch
.end method

.method public static getMainScenePath(IZ)Ljava/lang/String;
    .locals 1
    .parameter "id"
    .parameter "isPortrait"

    .prologue
    .line 152
    if-nez p1, :cond_0

    .line 154
    sparse-switch p0, :sswitch_data_0

    .line 162
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 203
    :pswitch_0
    const-string v0, "01.m10"

    :goto_0
    return-object v0

    .line 155
    :sswitch_0
    const-string v0, "18L.m10"

    goto :goto_0

    .line 156
    :sswitch_1
    const-string v0, "31L.m10"

    goto :goto_0

    .line 157
    :sswitch_2
    const-string v0, "39L.m10"

    goto :goto_0

    .line 158
    :sswitch_3
    const-string v0, "40L.m10"

    goto :goto_0

    .line 163
    :pswitch_1
    const-string v0, "01.m10"

    goto :goto_0

    .line 164
    :pswitch_2
    const-string v0, "02.m10"

    goto :goto_0

    .line 165
    :pswitch_3
    const-string v0, "03.m10"

    goto :goto_0

    .line 166
    :pswitch_4
    const-string v0, "04.m10"

    goto :goto_0

    .line 167
    :pswitch_5
    const-string v0, "05.m10"

    goto :goto_0

    .line 168
    :pswitch_6
    const-string v0, "06.m10"

    goto :goto_0

    .line 169
    :pswitch_7
    const-string v0, "07.m10"

    goto :goto_0

    .line 170
    :pswitch_8
    const-string v0, "08.m10"

    goto :goto_0

    .line 171
    :pswitch_9
    const-string v0, "11.m10"

    goto :goto_0

    .line 172
    :pswitch_a
    const-string v0, "12.m10"

    goto :goto_0

    .line 173
    :pswitch_b
    const-string v0, "13.m10"

    goto :goto_0

    .line 174
    :pswitch_c
    const-string v0, "14.m10"

    goto :goto_0

    .line 175
    :pswitch_d
    const-string v0, "15.m10"

    goto :goto_0

    .line 176
    :pswitch_e
    const-string v0, "16.m10"

    goto :goto_0

    .line 177
    :pswitch_f
    const-string v0, "17.m10"

    goto :goto_0

    .line 178
    :pswitch_10
    const-string v0, "18.m10"

    goto :goto_0

    .line 179
    :pswitch_11
    const-string v0, "19.m10"

    goto :goto_0

    .line 180
    :pswitch_12
    const-string v0, "20.m10"

    goto :goto_0

    .line 181
    :pswitch_13
    const-string v0, "21.m10"

    goto :goto_0

    .line 182
    :pswitch_14
    const-string v0, "22.m10"

    goto :goto_0

    .line 183
    :pswitch_15
    const-string v0, "23.m10"

    goto :goto_0

    .line 184
    :pswitch_16
    const-string v0, "24.m10"

    goto :goto_0

    .line 185
    :pswitch_17
    const-string v0, "25.m10"

    goto :goto_0

    .line 186
    :pswitch_18
    const-string v0, "26.m10"

    goto :goto_0

    .line 187
    :pswitch_19
    const-string v0, "29.m10"

    goto :goto_0

    .line 188
    :pswitch_1a
    const-string v0, "30.m10"

    goto :goto_0

    .line 189
    :pswitch_1b
    const-string v0, "31.m10"

    goto :goto_0

    .line 190
    :pswitch_1c
    const-string v0, "32.m10"

    goto :goto_0

    .line 191
    :pswitch_1d
    const-string v0, "33.m10"

    goto :goto_0

    .line 192
    :pswitch_1e
    const-string v0, "34.m10"

    goto :goto_0

    .line 193
    :pswitch_1f
    const-string v0, "35.m10"

    goto :goto_0

    .line 194
    :pswitch_20
    const-string v0, "36.m10"

    goto :goto_0

    .line 195
    :pswitch_21
    const-string v0, "37.m10"

    goto :goto_0

    .line 196
    :pswitch_22
    const-string v0, "38.m10"

    goto :goto_0

    .line 197
    :pswitch_23
    const-string v0, "39.m10"

    goto :goto_0

    .line 198
    :pswitch_24
    const-string v0, "40.m10"

    goto :goto_0

    .line 199
    :pswitch_25
    const-string v0, "41.m10"

    goto :goto_0

    .line 200
    :pswitch_26
    const-string v0, "42.m10"

    goto :goto_0

    .line 201
    :pswitch_27
    const-string v0, "43.m10"

    goto/16 :goto_0

    .line 202
    :pswitch_28
    const-string v0, "44.m10"

    goto/16 :goto_0

    .line 154
    nop

    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_0
        0x1f -> :sswitch_1
        0x27 -> :sswitch_2
        0x28 -> :sswitch_3
    .end sparse-switch

    .line 162
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_0
        :pswitch_0
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
    .end packed-switch
.end method

.method public static getTimelineControlNameFs(I)Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 304
    packed-switch p0, :pswitch_data_0

    .line 346
    :pswitch_0
    const-string v0, ""

    :goto_0
    return-object v0

    .line 305
    :pswitch_1
    const-string v0, "timeline.s_01"

    goto :goto_0

    .line 306
    :pswitch_2
    const-string v0, "timeline.s_02"

    goto :goto_0

    .line 307
    :pswitch_3
    const-string v0, "timeline.s_03"

    goto :goto_0

    .line 308
    :pswitch_4
    const-string v0, "timeline.s_04"

    goto :goto_0

    .line 309
    :pswitch_5
    const-string v0, "timeline.s_05"

    goto :goto_0

    .line 310
    :pswitch_6
    const-string v0, "timeline.s_06"

    goto :goto_0

    .line 311
    :pswitch_7
    const-string v0, "timeline.s_07"

    goto :goto_0

    .line 312
    :pswitch_8
    const-string v0, "timeline.s_08"

    goto :goto_0

    .line 313
    :pswitch_9
    const-string v0, "timeline.s_11"

    goto :goto_0

    .line 314
    :pswitch_a
    const-string v0, "timeline.s_12"

    goto :goto_0

    .line 315
    :pswitch_b
    const-string v0, "timeline.s_13"

    goto :goto_0

    .line 316
    :pswitch_c
    const-string v0, "timeline.s_14"

    goto :goto_0

    .line 317
    :pswitch_d
    const-string v0, "timeline.s_15"

    goto :goto_0

    .line 318
    :pswitch_e
    const-string v0, "timeline.s_16"

    goto :goto_0

    .line 319
    :pswitch_f
    const-string v0, "timeline.s_17"

    goto :goto_0

    .line 320
    :pswitch_10
    const-string v0, "timeline.s_18"

    goto :goto_0

    .line 321
    :pswitch_11
    const-string v0, "timeline.s_19"

    goto :goto_0

    .line 322
    :pswitch_12
    const-string v0, "timeline.s_20"

    goto :goto_0

    .line 323
    :pswitch_13
    const-string v0, "timeline.s_21"

    goto :goto_0

    .line 324
    :pswitch_14
    const-string v0, "timeline.s_22"

    goto :goto_0

    .line 325
    :pswitch_15
    const-string v0, "timeline.s_23"

    goto :goto_0

    .line 326
    :pswitch_16
    const-string v0, "timeline.s_24"

    goto :goto_0

    .line 327
    :pswitch_17
    const-string v0, "timeline.s_25"

    goto :goto_0

    .line 328
    :pswitch_18
    const-string v0, "timeline.s_26"

    goto :goto_0

    .line 329
    :pswitch_19
    const-string v0, "timeline.s_29"

    goto :goto_0

    .line 330
    :pswitch_1a
    const-string v0, "timeline.s_30"

    goto :goto_0

    .line 331
    :pswitch_1b
    const-string v0, "timeline.s_31"

    goto :goto_0

    .line 332
    :pswitch_1c
    const-string v0, "timeline.s_32"

    goto :goto_0

    .line 333
    :pswitch_1d
    const-string v0, "timeline.s_33"

    goto :goto_0

    .line 334
    :pswitch_1e
    const-string v0, "timeline.s_34"

    goto :goto_0

    .line 335
    :pswitch_1f
    const-string v0, "timeline.s_35"

    goto :goto_0

    .line 336
    :pswitch_20
    const-string v0, "timeline.s_36"

    goto :goto_0

    .line 337
    :pswitch_21
    const-string v0, "timeline.s_37"

    goto :goto_0

    .line 338
    :pswitch_22
    const-string v0, "timeline.s_38"

    goto :goto_0

    .line 339
    :pswitch_23
    const-string v0, "timeline.s_39"

    goto :goto_0

    .line 340
    :pswitch_24
    const-string v0, "timeline.s_40"

    goto :goto_0

    .line 341
    :pswitch_25
    const-string v0, "timeline.s_41"

    goto :goto_0

    .line 342
    :pswitch_26
    const-string v0, "timeline.s_42"

    goto :goto_0

    .line 343
    :pswitch_27
    const-string v0, "timeline.s_43"

    goto :goto_0

    .line 344
    :pswitch_28
    const-string v0, "timeline.s_44"

    goto :goto_0

    .line 304
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_0
        :pswitch_0
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
    .end packed-switch
.end method

.method public static getTimelineControlNameMain(I)Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 256
    packed-switch p0, :pswitch_data_0

    .line 298
    :pswitch_0
    const-string v0, ""

    :goto_0
    return-object v0

    .line 257
    :pswitch_1
    const-string v0, "timeline.01"

    goto :goto_0

    .line 258
    :pswitch_2
    const-string v0, "timeline.02"

    goto :goto_0

    .line 259
    :pswitch_3
    const-string v0, "timeline.03"

    goto :goto_0

    .line 260
    :pswitch_4
    const-string v0, "timeline.04"

    goto :goto_0

    .line 261
    :pswitch_5
    const-string v0, "timeline.05"

    goto :goto_0

    .line 262
    :pswitch_6
    const-string v0, "timeline.06"

    goto :goto_0

    .line 263
    :pswitch_7
    const-string v0, "timeline.07"

    goto :goto_0

    .line 264
    :pswitch_8
    const-string v0, "timeline.08"

    goto :goto_0

    .line 265
    :pswitch_9
    const-string v0, "timeline.11"

    goto :goto_0

    .line 266
    :pswitch_a
    const-string v0, "timeline.12"

    goto :goto_0

    .line 267
    :pswitch_b
    const-string v0, "timeline.13"

    goto :goto_0

    .line 268
    :pswitch_c
    const-string v0, "timeline.14"

    goto :goto_0

    .line 269
    :pswitch_d
    const-string v0, "timeline.15"

    goto :goto_0

    .line 270
    :pswitch_e
    const-string v0, "timeline.16"

    goto :goto_0

    .line 271
    :pswitch_f
    const-string v0, "timeline.17"

    goto :goto_0

    .line 272
    :pswitch_10
    const-string v0, "timeline.18"

    goto :goto_0

    .line 273
    :pswitch_11
    const-string v0, "timeline.19"

    goto :goto_0

    .line 274
    :pswitch_12
    const-string v0, "timeline.20"

    goto :goto_0

    .line 275
    :pswitch_13
    const-string v0, "timeline.21"

    goto :goto_0

    .line 276
    :pswitch_14
    const-string v0, "timeline.22"

    goto :goto_0

    .line 277
    :pswitch_15
    const-string v0, "timeline.23"

    goto :goto_0

    .line 278
    :pswitch_16
    const-string v0, "timeline.24"

    goto :goto_0

    .line 279
    :pswitch_17
    const-string v0, "timeline.25"

    goto :goto_0

    .line 280
    :pswitch_18
    const-string v0, "timeline.26"

    goto :goto_0

    .line 281
    :pswitch_19
    const-string v0, "timeline.29"

    goto :goto_0

    .line 282
    :pswitch_1a
    const-string v0, "timeline.30"

    goto :goto_0

    .line 283
    :pswitch_1b
    const-string v0, "timeline.31"

    goto :goto_0

    .line 284
    :pswitch_1c
    const-string v0, "timeline.32"

    goto :goto_0

    .line 285
    :pswitch_1d
    const-string v0, "timeline.33"

    goto :goto_0

    .line 286
    :pswitch_1e
    const-string v0, "timeline.34"

    goto :goto_0

    .line 287
    :pswitch_1f
    const-string v0, "timeline.35"

    goto :goto_0

    .line 288
    :pswitch_20
    const-string v0, "timeline.36"

    goto :goto_0

    .line 289
    :pswitch_21
    const-string v0, "timeline.37"

    goto :goto_0

    .line 290
    :pswitch_22
    const-string v0, "timeline.38"

    goto :goto_0

    .line 291
    :pswitch_23
    const-string v0, "timeline.39"

    goto :goto_0

    .line 292
    :pswitch_24
    const-string v0, "timeline.40"

    goto :goto_0

    .line 293
    :pswitch_25
    const-string v0, "timeline.41"

    goto :goto_0

    .line 294
    :pswitch_26
    const-string v0, "timeline.42"

    goto :goto_0

    .line 295
    :pswitch_27
    const-string v0, "timeline.43"

    goto :goto_0

    .line 296
    :pswitch_28
    const-string v0, "timeline.44"

    goto :goto_0

    .line 256
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_0
        :pswitch_0
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
    .end packed-switch
.end method

.method public static isCurrentLocation(Lcom/htc/widget3d/weather/data/CityInfo;)Z
    .locals 4
    .parameter "ci"

    .prologue
    const/4 v1, 0x0

    .line 79
    if-nez p0, :cond_1

    .line 86
    :cond_0
    :goto_0
    return v1

    .line 82
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/data/CityInfo;->getLocationInfo()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v0

    .line 83
    .local v0, loc:Lcom/htc/util/weather/WeatherLocation;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.htc.htclocationservice"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isLocationSettingChecked(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 91
    :try_start_0
    const-string v3, "location"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 92
    .local v1, service:Landroid/location/LocationManager;
    const-string v3, "network"

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "gps"

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 95
    .end local v1           #service:Landroid/location/LocationManager;
    :cond_1
    :goto_0
    return v2

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, ex:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static isNetworkActive(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 100
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 101
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 102
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isNetworkRoaming(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, isRoaming:Z
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 109
    .local v1, tm:Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 112
    :cond_0
    return v0
.end method

.method public static loadSharePref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "key"
    .parameter "defaultvalue"

    .prologue
    .line 71
    sget-object v2, Lcom/htc/widget3d/weather/util/WeatherUtil;->PREFS_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 72
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, prefix:Ljava/lang/String;
    return-object v0
.end method

.method public static makeRequest(Lcom/htc/widget3d/weather/data/CityInfo;)Lcom/htc/util/weather/WSPRequest;
    .locals 4
    .parameter "cityinfo"

    .prologue
    const/4 v1, 0x0

    .line 31
    if-nez p0, :cond_1

    .line 46
    :cond_0
    :goto_0
    return-object v1

    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/data/CityInfo;->getLocationInfo()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v0

    .line 35
    .local v0, loc:Lcom/htc/util/weather/WeatherLocation;
    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.htc.htclocationservice"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 39
    invoke-static {}, Lcom/htc/util/weather/WSPUtility;->generateWSPReqestForCurrentLocation()Lcom/htc/util/weather/WSPRequest;

    move-result-object v1

    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 41
    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/util/weather/WSPUtility;->generateWSPRequestForLocCode(Ljava/lang/String;)Lcom/htc/util/weather/WSPRequest;

    move-result-object v1

    goto :goto_0

    .line 42
    :cond_3
    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 44
    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getLongitude()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/util/weather/WSPUtility;->generateWSPRequestForLatitude(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/util/weather/WSPRequest;

    move-result-object v1

    goto :goto_0
.end method

.method public static saveSharePref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 63
    sget-object v2, Lcom/htc/widget3d/weather/util/WeatherUtil;->PREFS_NAME:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 64
    .local v1, prefs:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 65
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    .line 67
    .local v0, commit:Z
    return-void
.end method

.method public static sendBroadcaseIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "context"
    .parameter "action"
    .parameter "extras"
    .parameter "value"

    .prologue
    .line 25
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 26
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 27
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 28
    return-void
.end method
