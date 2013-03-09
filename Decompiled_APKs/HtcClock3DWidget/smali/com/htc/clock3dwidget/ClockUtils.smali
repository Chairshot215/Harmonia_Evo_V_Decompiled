.class public Lcom/htc/clock3dwidget/ClockUtils;
.super Ljava/lang/Object;
.source "ClockUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/clock3dwidget/ClockUtils$1;,
        Lcom/htc/clock3dwidget/ClockUtils$ClockType;
    }
.end annotation


# static fields
.field public static SUPPORT_LAND:Z

.field public static SUPPORT_TIMELINE:Z

.field private static USE_LOCAL_PATH:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/clock3dwidget/ClockUtils;->USE_LOCAL_PATH:Z

    .line 15
    sput-boolean v1, Lcom/htc/clock3dwidget/ClockUtils;->SUPPORT_LAND:Z

    .line 16
    sput-boolean v1, Lcom/htc/clock3dwidget/ClockUtils;->SUPPORT_TIMELINE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method private static getClock03(Z)Lcom/htc/clock3dwidget/ClockRes;
    .locals 2
    .parameter "portrait"

    .prologue
    .line 174
    new-instance v0, Lcom/htc/clock3dwidget/ClockRes;

    invoke-direct {v0}, Lcom/htc/clock3dwidget/ClockRes;-><init>()V

    .line 175
    .local v0, res:Lcom/htc/clock3dwidget/ClockRes;
    invoke-static {p0}, Lcom/htc/clock3dwidget/ClockUtils;->getClock03Path(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->m10FilePath:Ljava/lang/String;

    .line 176
    const-string v1, "Clock_hitbox"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->hitboxClock:Ljava/lang/String;

    .line 177
    const-string v1, "progressbar.clock03.hour_hand"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->progressBarHourHand:Ljava/lang/String;

    .line 178
    const-string v1, "progressbar.clock03.minute_hand"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->progressBarMinuteHand:Ljava/lang/String;

    .line 179
    const-string v1, "progressbar.clock03.second_hand"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->progressBarSecondHand:Ljava/lang/String;

    .line 180
    const-string v1, "textlabel.clock"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->textLabelCityName:Ljava/lang/String;

    .line 182
    const-string v1, "timeline.clock_base"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->timelineClockBase:Ljava/lang/String;

    .line 183
    const-string v1, "timeline.clock_date"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->timelineClockDate:Ljava/lang/String;

    .line 185
    const-string v1, "textlabel.date_day"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->textLabelClockDate:Ljava/lang/String;

    .line 186
    const-string v1, "textlabel.week_day"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->textLabelClockWeekDay:Ljava/lang/String;

    .line 187
    const-string v1, "textlabel.AM"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->textLabalClockAmPm:Ljava/lang/String;

    .line 189
    const-string v1, "textlabel.date_night"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->textLabelClockDate_night:Ljava/lang/String;

    .line 190
    const-string v1, "textlabel.week_night"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->textLabelClockWeekDay_night:Ljava/lang/String;

    .line 191
    const-string v1, "textlabel.PM"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->textLabalClockAmPm_night:Ljava/lang/String;

    .line 193
    const-string v1, "timeline.Clock_03"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->timelineClock:Ljava/lang/String;

    .line 194
    return-object v0
.end method

.method private static getClock03Path(Z)Ljava/lang/String;
    .locals 2
    .parameter "portrait"

    .prologue
    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/htc/clock3dwidget/ClockUtils;->getMode10Path(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/clock3dwidget/ResUtils;->M10_CLOCK_03:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getClock04(Z)Lcom/htc/clock3dwidget/ClockRes;
    .locals 2
    .parameter "portrait"

    .prologue
    .line 202
    new-instance v0, Lcom/htc/clock3dwidget/ClockRes;

    invoke-direct {v0}, Lcom/htc/clock3dwidget/ClockRes;-><init>()V

    .line 203
    .local v0, res:Lcom/htc/clock3dwidget/ClockRes;
    invoke-static {p0}, Lcom/htc/clock3dwidget/ClockUtils;->getClock04Path(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->m10FilePath:Ljava/lang/String;

    .line 204
    const-string v1, "Clock_hitbox"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->hitboxClock:Ljava/lang/String;

    .line 205
    const-string v1, "progressbar.hour_hand"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->progressBarHourHand:Ljava/lang/String;

    .line 206
    const-string v1, "progressbar.minute_hand"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->progressBarMinuteHand:Ljava/lang/String;

    .line 207
    const-string v1, "progressbar.second_hand"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->progressBarSecondHand:Ljava/lang/String;

    .line 208
    const-string v1, "textlabel.widget_clock_city"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->textLabelCityName:Ljava/lang/String;

    .line 209
    const-string v1, "textlabel.Clock_date"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->textLabelClockDate:Ljava/lang/String;

    .line 210
    const-string v1, "timeline.Clock_04"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->timelineClock:Ljava/lang/String;

    .line 211
    return-object v0
.end method

.method private static getClock04Path(Z)Ljava/lang/String;
    .locals 2
    .parameter "portrait"

    .prologue
    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/htc/clock3dwidget/ClockUtils;->getMode10Path(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/clock3dwidget/ResUtils;->M10_CLOCK_04:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getClock05(Z)Lcom/htc/clock3dwidget/ClockRes;
    .locals 2
    .parameter "portrait"

    .prologue
    .line 219
    new-instance v0, Lcom/htc/clock3dwidget/ClockRes;

    invoke-direct {v0}, Lcom/htc/clock3dwidget/ClockRes;-><init>()V

    .line 220
    .local v0, res:Lcom/htc/clock3dwidget/ClockRes;
    invoke-static {p0}, Lcom/htc/clock3dwidget/ClockUtils;->getClock05Path(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->m10FilePath:Ljava/lang/String;

    .line 221
    const-string v1, "Clock_hitbox"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->hitboxClock:Ljava/lang/String;

    .line 222
    const-string v1, "progressbar.hour_hand"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->progressBarHourHand:Ljava/lang/String;

    .line 223
    const-string v1, "progressbar.minute_hand"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->progressBarMinuteHand:Ljava/lang/String;

    .line 224
    const-string v1, "progressbar.second_hand"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->progressBarSecondHand:Ljava/lang/String;

    .line 225
    const-string v1, "textlabel.widget_clock_city"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->textLabelCityName:Ljava/lang/String;

    .line 226
    const-string v1, "textlabel.widget_clock_month"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->textLabelClockDate:Ljava/lang/String;

    .line 227
    const-string v1, "textlabel.widget_clock_am"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->textLabalClockAmPm:Ljava/lang/String;

    .line 228
    const-string v1, "timeline.Clock_05"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->timelineClock:Ljava/lang/String;

    .line 229
    return-object v0
.end method

.method private static getClock05Path(Z)Ljava/lang/String;
    .locals 2
    .parameter "portrait"

    .prologue
    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/htc/clock3dwidget/ClockUtils;->getMode10Path(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/clock3dwidget/ResUtils;->M10_CLOCK_05:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getClock06(Z)Lcom/htc/clock3dwidget/ClockRes;
    .locals 2
    .parameter "portrait"

    .prologue
    .line 237
    new-instance v0, Lcom/htc/clock3dwidget/ClockRes;

    invoke-direct {v0}, Lcom/htc/clock3dwidget/ClockRes;-><init>()V

    .line 238
    .local v0, res:Lcom/htc/clock3dwidget/ClockRes;
    invoke-static {p0}, Lcom/htc/clock3dwidget/ClockUtils;->getClock06Path(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->m10FilePath:Ljava/lang/String;

    .line 239
    const-string v1, "Clock_hitbox"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->hitboxClock:Ljava/lang/String;

    .line 240
    const-string v1, "progressbar.clock06.hour_hand"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->progressBarHourHand:Ljava/lang/String;

    .line 241
    const-string v1, "progressbar.clock06.minute_hand"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->progressBarMinuteHand:Ljava/lang/String;

    .line 242
    const-string v1, "progressbar.clock06.second_hand"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->progressBarSecondHand:Ljava/lang/String;

    .line 243
    const-string v1, "textlabel.clock"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->textLabelCityName:Ljava/lang/String;

    .line 244
    const-string v1, "timeline.Clock_06"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->timelineClock:Ljava/lang/String;

    .line 245
    const-string v1, "timeline.gear_01"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->timelineGear01:Ljava/lang/String;

    .line 246
    const-string v1, "timeline.gear_02"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->timelineGear02:Ljava/lang/String;

    .line 247
    const-string v1, "timeline.gear_03"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->timelineGear03:Ljava/lang/String;

    .line 248
    const-string v1, "timeline.gear_04"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->timelineGear04:Ljava/lang/String;

    .line 249
    const-string v1, "timeline.gear_02_1"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->timelineGear05:Ljava/lang/String;

    .line 250
    return-object v0
.end method

.method private static getClock06Path(Z)Ljava/lang/String;
    .locals 2
    .parameter "portrait"

    .prologue
    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/htc/clock3dwidget/ClockUtils;->getMode10Path(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/clock3dwidget/ResUtils;->M10_CLOCK_06:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getClock07(Z)Lcom/htc/clock3dwidget/ClockRes;
    .locals 2
    .parameter "portrait"

    .prologue
    .line 258
    new-instance v0, Lcom/htc/clock3dwidget/ClockRes;

    invoke-direct {v0}, Lcom/htc/clock3dwidget/ClockRes;-><init>()V

    .line 259
    .local v0, res:Lcom/htc/clock3dwidget/ClockRes;
    invoke-static {p0}, Lcom/htc/clock3dwidget/ClockUtils;->getClock07Path(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->m10FilePath:Ljava/lang/String;

    .line 260
    const-string v1, "Clock_hitbox"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->hitboxClock:Ljava/lang/String;

    .line 261
    const-string v1, "progressbar.clock07.hour_hand"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->progressBarHourHand:Ljava/lang/String;

    .line 262
    const-string v1, "progressbar.clock07.minute_hand"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->progressBarMinuteHand:Ljava/lang/String;

    .line 263
    const-string v1, "progressbar.clock07.second_hand"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->progressBarSecondHand:Ljava/lang/String;

    .line 264
    const-string v1, "textlabel.widget_clock_city"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->textLabelCityName:Ljava/lang/String;

    .line 265
    const-string v1, "timeline.Clock_07"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->timelineClock:Ljava/lang/String;

    .line 266
    return-object v0
.end method

.method private static getClock07Path(Z)Ljava/lang/String;
    .locals 2
    .parameter "portrait"

    .prologue
    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/htc/clock3dwidget/ClockUtils;->getMode10Path(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/clock3dwidget/ResUtils;->M10_CLOCK_07:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getClock08(Z)Lcom/htc/clock3dwidget/ClockRes;
    .locals 2
    .parameter "portrait"

    .prologue
    .line 274
    new-instance v0, Lcom/htc/clock3dwidget/ClockRes;

    invoke-direct {v0}, Lcom/htc/clock3dwidget/ClockRes;-><init>()V

    .line 275
    .local v0, res:Lcom/htc/clock3dwidget/ClockRes;
    invoke-static {p0}, Lcom/htc/clock3dwidget/ClockUtils;->getClock08Path(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->m10FilePath:Ljava/lang/String;

    .line 276
    const-string v1, "Clock.hitbox"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->hitboxClock:Ljava/lang/String;

    .line 277
    const-string v1, "progressbar.hour_hand"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->progressBarHourHand:Ljava/lang/String;

    .line 278
    const-string v1, "progressbar.minute_hand"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->progressBarMinuteHand:Ljava/lang/String;

    .line 279
    const-string v1, "progressbar.second_hand"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->progressBarSecondHand:Ljava/lang/String;

    .line 280
    const-string v1, "textlabel.widget_clock_city"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->textLabelCityName:Ljava/lang/String;

    .line 281
    const-string v1, "timeline.am_pm"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->timelineAmPm:Ljava/lang/String;

    .line 282
    const-string v1, "timeline.Clock_08"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->timelineClock:Ljava/lang/String;

    .line 283
    return-object v0
.end method

.method private static getClock08Path(Z)Ljava/lang/String;
    .locals 2
    .parameter "portrait"

    .prologue
    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/htc/clock3dwidget/ClockUtils;->getMode10Path(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/clock3dwidget/ResUtils;->M10_CLOCK_08:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getClock09(Z)Lcom/htc/clock3dwidget/ClockRes;
    .locals 2
    .parameter "portrait"

    .prologue
    .line 291
    new-instance v0, Lcom/htc/clock3dwidget/ClockRes;

    invoke-direct {v0}, Lcom/htc/clock3dwidget/ClockRes;-><init>()V

    .line 292
    .local v0, res:Lcom/htc/clock3dwidget/ClockRes;
    invoke-static {p0}, Lcom/htc/clock3dwidget/ClockUtils;->getClock09Path(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->m10FilePath:Ljava/lang/String;

    .line 293
    const-string v1, "Clock_hitbox"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->hitboxClock:Ljava/lang/String;

    .line 294
    const-string v1, "progressbar.hour_hand"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->progressBarHourHand:Ljava/lang/String;

    .line 295
    const-string v1, "progressbar.minute_hand"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->progressBarMinuteHand:Ljava/lang/String;

    .line 296
    const-string v1, "progressbar.second_hand"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->progressBarSecondHand:Ljava/lang/String;

    .line 297
    const-string v1, "textlabel.widget_clock_city"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->textLabelCityName:Ljava/lang/String;

    .line 298
    const-string v1, "timeline.Clock_09"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->timelineClock:Ljava/lang/String;

    .line 299
    return-object v0
.end method

.method private static getClock09Path(Z)Ljava/lang/String;
    .locals 2
    .parameter "portrait"

    .prologue
    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/htc/clock3dwidget/ClockUtils;->getMode10Path(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/clock3dwidget/ResUtils;->M10_CLOCK_09:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getClock10(Z)Lcom/htc/clock3dwidget/ClockRes;
    .locals 2
    .parameter "portrait"

    .prologue
    .line 307
    new-instance v0, Lcom/htc/clock3dwidget/ClockRes;

    invoke-direct {v0}, Lcom/htc/clock3dwidget/ClockRes;-><init>()V

    .line 308
    .local v0, res:Lcom/htc/clock3dwidget/ClockRes;
    invoke-static {p0}, Lcom/htc/clock3dwidget/ClockUtils;->getClock10Path(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->m10FilePath:Ljava/lang/String;

    .line 309
    const-string v1, "Clock_hitbox"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->hitboxClock:Ljava/lang/String;

    .line 310
    const-string v1, "progressbar.hour_hand"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->progressBarHourHand:Ljava/lang/String;

    .line 311
    const-string v1, "progressbar.minute_hand"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->progressBarMinuteHand:Ljava/lang/String;

    .line 312
    const-string v1, "progressbar.second_hand"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->progressBarSecondHand:Ljava/lang/String;

    .line 313
    const-string v1, "textlabel.widget_clock_city"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->textLabelCityName:Ljava/lang/String;

    .line 314
    const-string v1, "timeline.Clock_10"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->timelineClock:Ljava/lang/String;

    .line 315
    return-object v0
.end method

.method private static getClock10Path(Z)Ljava/lang/String;
    .locals 2
    .parameter "portrait"

    .prologue
    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/htc/clock3dwidget/ClockUtils;->getMode10Path(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/clock3dwidget/ResUtils;->M10_CLOCK_10:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getClock1x1(Z)Lcom/htc/clock3dwidget/ClockRes;
    .locals 2
    .parameter "portrait"

    .prologue
    .line 369
    new-instance v0, Lcom/htc/clock3dwidget/ClockRes;

    invoke-direct {v0}, Lcom/htc/clock3dwidget/ClockRes;-><init>()V

    .line 370
    .local v0, res:Lcom/htc/clock3dwidget/ClockRes;
    invoke-static {p0}, Lcom/htc/clock3dwidget/ClockUtils;->getClock1x1Path(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->m10FilePath:Ljava/lang/String;

    .line 371
    const-string v1, "Clock_hitbox"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->hitboxClock:Ljava/lang/String;

    .line 372
    const-string v1, "progressbar.hour_hand"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->progressBarHourHand:Ljava/lang/String;

    .line 373
    const-string v1, "progressbar.minute_hand"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->progressBarMinuteHand:Ljava/lang/String;

    .line 374
    const-string v1, "progressbar.second_hand"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->progressBarSecondHand:Ljava/lang/String;

    .line 375
    const-string v1, "textlabel.widget_clock_city"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->textLabelCityName:Ljava/lang/String;

    .line 376
    const-string v1, "timeline.clock_base"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->timelineWiggle:Ljava/lang/String;

    .line 377
    const-string v1, "timeline.clock_base_day_night"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->timelineClockBase:Ljava/lang/String;

    .line 378
    const-string v1, "timeline.clock_hour"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->timelineClockHour:Ljava/lang/String;

    .line 379
    const-string v1, "timeline.clock_minute"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->timelineClockMinute:Ljava/lang/String;

    .line 380
    return-object v0
.end method

.method private static getClock1x1Path(Z)Ljava/lang/String;
    .locals 2
    .parameter "portrait"

    .prologue
    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/htc/clock3dwidget/ClockUtils;->getMode10Path(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/clock3dwidget/ResUtils;->M10_CLOCK_1x1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getClock2x2(Z)Lcom/htc/clock3dwidget/ClockRes;
    .locals 2
    .parameter "portrait"

    .prologue
    .line 341
    new-instance v0, Lcom/htc/clock3dwidget/ClockRes;

    invoke-direct {v0}, Lcom/htc/clock3dwidget/ClockRes;-><init>()V

    .line 342
    .local v0, res:Lcom/htc/clock3dwidget/ClockRes;
    invoke-static {p0}, Lcom/htc/clock3dwidget/ClockUtils;->getClock2x2Path(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->m10FilePath:Ljava/lang/String;

    .line 343
    const-string v1, "Clock_hitbox"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->hitboxClock:Ljava/lang/String;

    .line 345
    const-string v1, "timeline.clock_day_night"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->timelineClockBase:Ljava/lang/String;

    .line 346
    const-string v1, "timeline.clock_date"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->timelineClockDate:Ljava/lang/String;

    .line 348
    const-string v1, "progressbar.hour_hand"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->progressBarHourHand:Ljava/lang/String;

    .line 349
    const-string v1, "progressbar.minute_hand"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->progressBarMinuteHand:Ljava/lang/String;

    .line 350
    const-string v1, "progressbar.second_hand"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->progressBarSecondHand:Ljava/lang/String;

    .line 352
    const-string v1, "textlabel.date_day"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->textLabelClockDate:Ljava/lang/String;

    .line 353
    const-string v1, "textlabel.clock_week_day"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->textLabelClockWeekDay:Ljava/lang/String;

    .line 354
    const-string v1, "textlabel.AM_day"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->textLabalClockAmPm:Ljava/lang/String;

    .line 356
    const-string v1, "textlabel.date_night"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->textLabelClockDate_night:Ljava/lang/String;

    .line 357
    const-string v1, "textlabel.clock_week_night"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->textLabelClockWeekDay_night:Ljava/lang/String;

    .line 358
    const-string v1, "textlabel.PM_night"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->textLabalClockAmPm_night:Ljava/lang/String;

    .line 360
    const-string v1, "textlabel.clock"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->textLabelCityName:Ljava/lang/String;

    .line 361
    return-object v0
.end method

.method private static getClock2x2Path(Z)Ljava/lang/String;
    .locals 2
    .parameter "portrait"

    .prologue
    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/htc/clock3dwidget/ClockUtils;->getMode10Path(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/clock3dwidget/ResUtils;->M10_CLOCK_2x2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getClockBeam(Z)Lcom/htc/clock3dwidget/ClockRes;
    .locals 2
    .parameter "portrait"

    .prologue
    .line 428
    new-instance v0, Lcom/htc/clock3dwidget/ClockRes;

    invoke-direct {v0}, Lcom/htc/clock3dwidget/ClockRes;-><init>()V

    .line 429
    .local v0, res:Lcom/htc/clock3dwidget/ClockRes;
    invoke-static {p0}, Lcom/htc/clock3dwidget/ClockUtils;->getClockBeamPath(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->m10FilePath:Ljava/lang/String;

    .line 430
    const-string v1, "Clock_hitbox"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->hitboxClock:Ljava/lang/String;

    .line 431
    const-string v1, "progressbar.hour_hand"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->progressBarHourHand:Ljava/lang/String;

    .line 432
    const-string v1, "progressbar.minute_hand"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->progressBarMinuteHand:Ljava/lang/String;

    .line 433
    const-string v1, "progressbar.second_hand"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->progressBarSecondHand:Ljava/lang/String;

    .line 434
    const-string v1, "textlabel.widget_clock_city"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->textLabelCityName:Ljava/lang/String;

    .line 435
    const-string v1, "timeline.Clock_Beam"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->timelineClock:Ljava/lang/String;

    .line 436
    return-object v0
.end method

.method private static getClockBeamPath(Z)Ljava/lang/String;
    .locals 2
    .parameter "portrait"

    .prologue
    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/htc/clock3dwidget/ClockUtils;->getMode10Path(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/clock3dwidget/ResUtils;->M10_CLOCK_BEAM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getClockDigital(Z)Lcom/htc/clock3dwidget/ClockRes;
    .locals 2
    .parameter "portrait"

    .prologue
    .line 323
    new-instance v0, Lcom/htc/clock3dwidget/ClockRes;

    invoke-direct {v0}, Lcom/htc/clock3dwidget/ClockRes;-><init>()V

    .line 324
    .local v0, res:Lcom/htc/clock3dwidget/ClockRes;
    invoke-static {p0}, Lcom/htc/clock3dwidget/ClockUtils;->getClockDigitalPath(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->m10FilePath:Ljava/lang/String;

    .line 325
    const-string v1, "Clock_hitbox"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->hitboxClock:Ljava/lang/String;

    .line 326
    const-string v1, "timeline.digital_numbers_01"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->timelineHourTen:Ljava/lang/String;

    .line 327
    const-string v1, "timeline.digital_numbers_02"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->timelineHourUnit:Ljava/lang/String;

    .line 328
    const-string v1, "timeline.digital_numbers_03"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->timelineMinuteTen:Ljava/lang/String;

    .line 329
    const-string v1, "timeline.digital_numbers_04"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->timelineMinuteUinit:Ljava/lang/String;

    .line 330
    const-string v1, "timeline.am_pm"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->timelineAmPmOpp:Ljava/lang/String;

    .line 331
    const-string v1, "textlabel.city"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->textLabelCityName:Ljava/lang/String;

    .line 332
    const-string v1, "textlabel.digital_clock_01"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->textLabelClockLongDate:Ljava/lang/String;

    .line 333
    return-object v0
.end method

.method private static getClockDigitalPath(Z)Ljava/lang/String;
    .locals 2
    .parameter "portrait"

    .prologue
    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/htc/clock3dwidget/ClockUtils;->getMode10Path(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/clock3dwidget/ResUtils;->M10_CLOCK_DIGITAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getClockDualL(Z)Lcom/htc/clock3dwidget/ClockRes;
    .locals 2
    .parameter "portrait"

    .prologue
    .line 388
    new-instance v0, Lcom/htc/clock3dwidget/ClockRes;

    invoke-direct {v0}, Lcom/htc/clock3dwidget/ClockRes;-><init>()V

    .line 389
    .local v0, res:Lcom/htc/clock3dwidget/ClockRes;
    invoke-static {p0}, Lcom/htc/clock3dwidget/ClockUtils;->getClockDualLPath(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->m10FilePath:Ljava/lang/String;

    .line 390
    const-string v1, "Clock_hitbox"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->hitboxClock:Ljava/lang/String;

    .line 391
    const-string v1, "progressbar.hour_hand_right"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->progressBarHourHand:Ljava/lang/String;

    .line 392
    const-string v1, "progressbar.minute_hand_right"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->progressBarMinuteHand:Ljava/lang/String;

    .line 393
    const-string v1, "progressbar.second_hand_right"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->progressBarSecondHand:Ljava/lang/String;

    .line 395
    const-string v1, "timeline.clock_base_right"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->timelineClockBase:Ljava/lang/String;

    .line 396
    const-string v1, "timeline.clock_numbers_right"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->timelineClockNumbers:Ljava/lang/String;

    .line 398
    const-string v1, "textlabel.clock_left"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->textLabelCityName:Ljava/lang/String;

    .line 399
    const-string v1, "textlabel.clock_leftlocal"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->textLabelCityLabel:Ljava/lang/String;

    .line 400
    return-object v0
.end method

.method private static getClockDualLPath(Z)Ljava/lang/String;
    .locals 2
    .parameter "portrait"

    .prologue
    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/htc/clock3dwidget/ClockUtils;->getMode10Path(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/clock3dwidget/ResUtils;->M10_CLOCK_DUAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getClockDualR(Z)Lcom/htc/clock3dwidget/ClockRes;
    .locals 2
    .parameter "portrait"

    .prologue
    .line 408
    new-instance v0, Lcom/htc/clock3dwidget/ClockRes;

    invoke-direct {v0}, Lcom/htc/clock3dwidget/ClockRes;-><init>()V

    .line 409
    .local v0, res:Lcom/htc/clock3dwidget/ClockRes;
    invoke-static {p0}, Lcom/htc/clock3dwidget/ClockUtils;->getClockDualRPath(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->m10FilePath:Ljava/lang/String;

    .line 410
    const-string v1, "Clock_hitbox"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->hitboxClock:Ljava/lang/String;

    .line 411
    const-string v1, "progressbar.hour_hand_left"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->progressBarHourHand:Ljava/lang/String;

    .line 412
    const-string v1, "progressbarl.minute_hand_left"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->progressBarMinuteHand:Ljava/lang/String;

    .line 413
    const-string v1, "progressbar.second_hand_left"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->progressBarSecondHand:Ljava/lang/String;

    .line 415
    const-string v1, "timeline.clock_base_left"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->timelineClockBase:Ljava/lang/String;

    .line 416
    const-string v1, "timeline.clock_numbers_left"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->timelineClockNumbers:Ljava/lang/String;

    .line 418
    const-string v1, "textlabel.clock_right"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->textLabelCityName:Ljava/lang/String;

    .line 419
    const-string v1, "textlabel.clock_rightlocal"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->textLabelCityLabel:Ljava/lang/String;

    .line 420
    return-object v0
.end method

.method private static getClockDualRPath(Z)Ljava/lang/String;
    .locals 2
    .parameter "portrait"

    .prologue
    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/htc/clock3dwidget/ClockUtils;->getMode10Path(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/clock3dwidget/ResUtils;->M10_CLOCK_DUAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getClockPath(Lcom/htc/clock3dwidget/ClockUtils$ClockType;Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "type"
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    .line 106
    .local v0, isPortrait:Z
    :goto_0
    invoke-static {p0, v0}, Lcom/htc/clock3dwidget/ClockUtils;->getClockPath(Lcom/htc/clock3dwidget/ClockUtils$ClockType;Z)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 105
    .end local v0           #isPortrait:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getClockPath(Lcom/htc/clock3dwidget/ClockUtils$ClockType;Z)Ljava/lang/String;
    .locals 3
    .parameter "type"
    .parameter "isPortrait"

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, path:Ljava/lang/String;
    sget-object v1, Lcom/htc/clock3dwidget/ClockUtils$1;->$SwitchMap$com$htc$clock3dwidget$ClockUtils$ClockType:[I

    invoke-virtual {p0}, Lcom/htc/clock3dwidget/ClockUtils$ClockType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 170
    :goto_0
    return-object v0

    .line 113
    :pswitch_0
    invoke-static {p1}, Lcom/htc/clock3dwidget/ClockUtils;->getClock03Path(Z)Ljava/lang/String;

    move-result-object v0

    .line 114
    goto :goto_0

    .line 116
    :pswitch_1
    invoke-static {p1}, Lcom/htc/clock3dwidget/ClockUtils;->getClock04Path(Z)Ljava/lang/String;

    move-result-object v0

    .line 117
    goto :goto_0

    .line 119
    :pswitch_2
    invoke-static {p1}, Lcom/htc/clock3dwidget/ClockUtils;->getClock05Path(Z)Ljava/lang/String;

    move-result-object v0

    .line 120
    goto :goto_0

    .line 122
    :pswitch_3
    invoke-static {p1}, Lcom/htc/clock3dwidget/ClockUtils;->getClock06Path(Z)Ljava/lang/String;

    move-result-object v0

    .line 123
    goto :goto_0

    .line 125
    :pswitch_4
    invoke-static {p1}, Lcom/htc/clock3dwidget/ClockUtils;->getClock07Path(Z)Ljava/lang/String;

    move-result-object v0

    .line 126
    goto :goto_0

    .line 128
    :pswitch_5
    invoke-static {p1}, Lcom/htc/clock3dwidget/ClockUtils;->getClock08Path(Z)Ljava/lang/String;

    move-result-object v0

    .line 129
    goto :goto_0

    .line 131
    :pswitch_6
    invoke-static {p1}, Lcom/htc/clock3dwidget/ClockUtils;->getClock09Path(Z)Ljava/lang/String;

    move-result-object v0

    .line 132
    goto :goto_0

    .line 134
    :pswitch_7
    invoke-static {p1}, Lcom/htc/clock3dwidget/ClockUtils;->getClock10Path(Z)Ljava/lang/String;

    move-result-object v0

    .line 135
    goto :goto_0

    .line 137
    :pswitch_8
    invoke-static {p1}, Lcom/htc/clock3dwidget/ClockUtils;->getClock2x2Path(Z)Ljava/lang/String;

    move-result-object v0

    .line 138
    goto :goto_0

    .line 140
    :pswitch_9
    invoke-static {p1}, Lcom/htc/clock3dwidget/ClockUtils;->getClock1x1Path(Z)Ljava/lang/String;

    move-result-object v0

    .line 141
    goto :goto_0

    .line 143
    :pswitch_a
    invoke-static {p1}, Lcom/htc/clock3dwidget/ClockUtils;->getClockDigitalPath(Z)Ljava/lang/String;

    move-result-object v0

    .line 144
    goto :goto_0

    .line 146
    :pswitch_b
    invoke-static {p1}, Lcom/htc/clock3dwidget/ClockUtils;->getClockDualLPath(Z)Ljava/lang/String;

    move-result-object v0

    .line 147
    goto :goto_0

    .line 149
    :pswitch_c
    invoke-static {p1}, Lcom/htc/clock3dwidget/ClockUtils;->getClockDualRPath(Z)Ljava/lang/String;

    move-result-object v0

    .line 150
    goto :goto_0

    .line 152
    :pswitch_d
    invoke-static {p1}, Lcom/htc/clock3dwidget/ClockUtils;->getClockBeamPath(Z)Ljava/lang/String;

    move-result-object v0

    .line 153
    goto :goto_0

    .line 155
    :pswitch_e
    invoke-static {p1}, Lcom/htc/clock3dwidget/ClockUtils;->getClockRingPath(Z)Ljava/lang/String;

    move-result-object v0

    .line 156
    goto :goto_0

    .line 158
    :pswitch_f
    invoke-static {p1}, Lcom/htc/clock3dwidget/ClockUtils;->getClockSpinCyclePath(Z)Ljava/lang/String;

    move-result-object v0

    .line 159
    goto :goto_0

    .line 161
    :pswitch_10
    invoke-static {p1}, Lcom/htc/clock3dwidget/ClockUtils;->getClockWeatherPath(Z)Ljava/lang/String;

    move-result-object v0

    .line 162
    goto :goto_0

    .line 164
    :pswitch_11
    invoke-static {p1}, Lcom/htc/clock3dwidget/ClockUtils;->getClockSocialPath(Z)Ljava/lang/String;

    move-result-object v0

    .line 165
    goto :goto_0

    .line 167
    :pswitch_12
    invoke-static {p1}, Lcom/htc/clock3dwidget/ClockUtils;->getClockWeatherPath_4x1(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 111
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_11
        :pswitch_10
        :pswitch_12
    .end packed-switch
.end method

.method public static getClockRes(Lcom/htc/clock3dwidget/ClockUtils$ClockType;Landroid/content/Context;)Lcom/htc/clock3dwidget/ClockRes;
    .locals 4
    .parameter "type"
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v0, :cond_0

    .line 47
    .local v0, isPortrait:Z
    :goto_0
    const/4 v1, 0x0

    .line 48
    .local v1, res:Lcom/htc/clock3dwidget/ClockRes;
    sget-object v2, Lcom/htc/clock3dwidget/ClockUtils$1;->$SwitchMap$com$htc$clock3dwidget$ClockUtils$ClockType:[I

    invoke-virtual {p0}, Lcom/htc/clock3dwidget/ClockUtils$ClockType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 101
    :goto_1
    return-object v1

    .line 46
    .end local v0           #isPortrait:Z
    .end local v1           #res:Lcom/htc/clock3dwidget/ClockRes;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 50
    .restart local v0       #isPortrait:Z
    .restart local v1       #res:Lcom/htc/clock3dwidget/ClockRes;
    :pswitch_0
    invoke-static {v0}, Lcom/htc/clock3dwidget/ClockUtils;->getClock03(Z)Lcom/htc/clock3dwidget/ClockRes;

    move-result-object v1

    .line 51
    goto :goto_1

    .line 53
    :pswitch_1
    invoke-static {v0}, Lcom/htc/clock3dwidget/ClockUtils;->getClock04(Z)Lcom/htc/clock3dwidget/ClockRes;

    move-result-object v1

    .line 54
    goto :goto_1

    .line 56
    :pswitch_2
    invoke-static {v0}, Lcom/htc/clock3dwidget/ClockUtils;->getClock05(Z)Lcom/htc/clock3dwidget/ClockRes;

    move-result-object v1

    .line 57
    goto :goto_1

    .line 59
    :pswitch_3
    invoke-static {v0}, Lcom/htc/clock3dwidget/ClockUtils;->getClock06(Z)Lcom/htc/clock3dwidget/ClockRes;

    move-result-object v1

    .line 60
    goto :goto_1

    .line 62
    :pswitch_4
    invoke-static {v0}, Lcom/htc/clock3dwidget/ClockUtils;->getClock07(Z)Lcom/htc/clock3dwidget/ClockRes;

    move-result-object v1

    .line 63
    goto :goto_1

    .line 65
    :pswitch_5
    invoke-static {v0}, Lcom/htc/clock3dwidget/ClockUtils;->getClock08(Z)Lcom/htc/clock3dwidget/ClockRes;

    move-result-object v1

    .line 66
    goto :goto_1

    .line 68
    :pswitch_6
    invoke-static {v0}, Lcom/htc/clock3dwidget/ClockUtils;->getClock09(Z)Lcom/htc/clock3dwidget/ClockRes;

    move-result-object v1

    .line 69
    goto :goto_1

    .line 71
    :pswitch_7
    invoke-static {v0}, Lcom/htc/clock3dwidget/ClockUtils;->getClock10(Z)Lcom/htc/clock3dwidget/ClockRes;

    move-result-object v1

    .line 72
    goto :goto_1

    .line 74
    :pswitch_8
    invoke-static {v0}, Lcom/htc/clock3dwidget/ClockUtils;->getClock2x2(Z)Lcom/htc/clock3dwidget/ClockRes;

    move-result-object v1

    .line 75
    goto :goto_1

    .line 77
    :pswitch_9
    invoke-static {v0}, Lcom/htc/clock3dwidget/ClockUtils;->getClock1x1(Z)Lcom/htc/clock3dwidget/ClockRes;

    move-result-object v1

    .line 78
    goto :goto_1

    .line 80
    :pswitch_a
    invoke-static {v0}, Lcom/htc/clock3dwidget/ClockUtils;->getClockDigital(Z)Lcom/htc/clock3dwidget/ClockRes;

    move-result-object v1

    .line 81
    goto :goto_1

    .line 83
    :pswitch_b
    invoke-static {v0}, Lcom/htc/clock3dwidget/ClockUtils;->getClockDualL(Z)Lcom/htc/clock3dwidget/ClockRes;

    move-result-object v1

    .line 84
    goto :goto_1

    .line 86
    :pswitch_c
    invoke-static {v0}, Lcom/htc/clock3dwidget/ClockUtils;->getClockDualR(Z)Lcom/htc/clock3dwidget/ClockRes;

    move-result-object v1

    .line 87
    goto :goto_1

    .line 89
    :pswitch_d
    invoke-static {v0}, Lcom/htc/clock3dwidget/ClockUtils;->getClockBeam(Z)Lcom/htc/clock3dwidget/ClockRes;

    move-result-object v1

    .line 90
    goto :goto_1

    .line 92
    :pswitch_e
    invoke-static {v0}, Lcom/htc/clock3dwidget/ClockUtils;->getClockRing(Z)Lcom/htc/clock3dwidget/ClockRes;

    move-result-object v1

    .line 93
    goto :goto_1

    .line 95
    :pswitch_f
    invoke-static {v0}, Lcom/htc/clock3dwidget/ClockUtils;->getClockSpinCycle(Z)Lcom/htc/clock3dwidget/ClockRes;

    move-result-object v1

    .line 96
    goto :goto_1

    .line 98
    :pswitch_10
    invoke-static {v0}, Lcom/htc/clock3dwidget/ClockUtils;->getClockSocial(Z)Lcom/htc/clock3dwidget/ClockRes;

    move-result-object v1

    goto :goto_1

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method private static getClockRing(Z)Lcom/htc/clock3dwidget/ClockRes;
    .locals 2
    .parameter "portrait"

    .prologue
    .line 444
    new-instance v0, Lcom/htc/clock3dwidget/ClockRes;

    invoke-direct {v0}, Lcom/htc/clock3dwidget/ClockRes;-><init>()V

    .line 445
    .local v0, res:Lcom/htc/clock3dwidget/ClockRes;
    invoke-static {p0}, Lcom/htc/clock3dwidget/ClockUtils;->getClockRingPath(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->m10FilePath:Ljava/lang/String;

    .line 446
    const-string v1, "Clock_hitbox"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->hitboxClock:Ljava/lang/String;

    .line 447
    const-string v1, "progressbar.hour_hand"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->progressBarUnitHourHand:Ljava/lang/String;

    .line 448
    const-string v1, "progressbar.minute_hand"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->progressBarUnitMinuteHand:Ljava/lang/String;

    .line 449
    const-string v1, "progressbar.second_hand"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->progressBarSecondHand:Ljava/lang/String;

    .line 450
    const-string v1, "textlabel.widget_clock_city"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->textLabelCityName:Ljava/lang/String;

    .line 451
    const-string v1, "timeline.Clock_Ring"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->timelineClock:Ljava/lang/String;

    .line 453
    const-string v1, "textlabel.clock_hour"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->textLabelHour:Ljava/lang/String;

    .line 454
    const-string v1, "textlabel.clock_minute"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->textLabelMinute:Ljava/lang/String;

    .line 455
    const-string v1, "textlabel.clock_second"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->textLabelSecond:Ljava/lang/String;

    .line 456
    return-object v0
.end method

.method private static getClockRingPath(Z)Ljava/lang/String;
    .locals 2
    .parameter "portrait"

    .prologue
    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/htc/clock3dwidget/ClockUtils;->getMode10Path(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/clock3dwidget/ResUtils;->M10_CLOCK_RING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getClockSocial(Z)Lcom/htc/clock3dwidget/ClockRes;
    .locals 2
    .parameter "portrait"

    .prologue
    .line 493
    new-instance v0, Lcom/htc/clock3dwidget/ClockRes;

    invoke-direct {v0}, Lcom/htc/clock3dwidget/ClockRes;-><init>()V

    .line 494
    .local v0, res:Lcom/htc/clock3dwidget/ClockRes;
    invoke-static {p0}, Lcom/htc/clock3dwidget/ClockUtils;->getClockSocialPath(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->m10FilePath:Ljava/lang/String;

    .line 495
    const-string v1, "button.clock.hitbox"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->hitboxClock:Ljava/lang/String;

    .line 496
    const-string v1, "timeline.flip_hour"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->timelineFlipHour:Ljava/lang/String;

    .line 497
    const-string v1, "timeline.flip_minute"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->timelineFlipMinute:Ljava/lang/String;

    .line 498
    return-object v0
.end method

.method public static getClockSocialPath(Z)Ljava/lang/String;
    .locals 2
    .parameter "portrait"

    .prologue
    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/htc/clock3dwidget/ClockUtils;->getMode10Path(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/clock3dwidget/ResUtils;->M10_CLOCK_SOCIAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getClockSpinCycle(Z)Lcom/htc/clock3dwidget/ClockRes;
    .locals 2
    .parameter "portrait"

    .prologue
    .line 464
    new-instance v0, Lcom/htc/clock3dwidget/ClockRes;

    invoke-direct {v0}, Lcom/htc/clock3dwidget/ClockRes;-><init>()V

    .line 465
    .local v0, res:Lcom/htc/clock3dwidget/ClockRes;
    invoke-static {p0}, Lcom/htc/clock3dwidget/ClockUtils;->getClockSpinCyclePath(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->m10FilePath:Ljava/lang/String;

    .line 466
    const-string v1, "Clock_hitbox"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->hitboxClock:Ljava/lang/String;

    .line 467
    const-string v1, "progressbar.hour_hand"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->progressBarUnitHourHand:Ljava/lang/String;

    .line 468
    const-string v1, "progressbar.minute_hand"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->progressBarUnitMinuteHand:Ljava/lang/String;

    .line 469
    const-string v1, "progressbar.second_hand"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->progressBarSecondHand:Ljava/lang/String;

    .line 470
    const-string v1, "textlabel.widget_clock_city"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->textLabelCityName:Ljava/lang/String;

    .line 471
    const-string v1, "textlabel.clock_week"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->textLabelClockWeekDay:Ljava/lang/String;

    .line 472
    const-string v1, "textlabel.clock_date"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->textLabelClockDate:Ljava/lang/String;

    .line 474
    const-string v1, "timeline.Clock_04"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->timelineClock:Ljava/lang/String;

    .line 476
    const-string v1, "timeline.clock_ampm"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->timelineClockAmPm:Ljava/lang/String;

    .line 477
    const-string v1, "timeline.clock_number_01"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->timelineHourTen:Ljava/lang/String;

    .line 478
    const-string v1, "timeline.clock_number_02"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->timelineHourUnit:Ljava/lang/String;

    .line 479
    const-string v1, "timeline.clock_number_03"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->timelineMinuteTen:Ljava/lang/String;

    .line 480
    const-string v1, "timeline.clock_number_04"

    iput-object v1, v0, Lcom/htc/clock3dwidget/ClockRes;->timelineMinuteUinit:Ljava/lang/String;

    .line 481
    return-object v0
.end method

.method private static getClockSpinCyclePath(Z)Ljava/lang/String;
    .locals 2
    .parameter "portrait"

    .prologue
    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/htc/clock3dwidget/ClockUtils;->getMode10Path(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/clock3dwidget/ResUtils;->M10_CLOCK_SPIN_CYCLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getClockWeatherPath(Z)Ljava/lang/String;
    .locals 2
    .parameter "portrait"

    .prologue
    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/htc/clock3dwidget/ClockUtils;->getMode10Path(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/clock3dwidget/ResUtils;->M10_CLOCK_WEATHER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getClockWeatherPath_4x1(Z)Ljava/lang/String;
    .locals 2
    .parameter "portrait"

    .prologue
    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/htc/clock3dwidget/ClockUtils;->getMode10Path(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/clock3dwidget/ResUtils;->M10_CLOCK_WEATHER_4x1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMode10Path(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    .line 42
    .local v0, isPortrait:Z
    :goto_0
    invoke-static {v0}, Lcom/htc/clock3dwidget/ClockUtils;->getMode10Path(Z)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 41
    .end local v0           #isPortrait:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMode10Path(Z)Ljava/lang/String;
    .locals 1
    .parameter "portrait"

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/htc/clock3dwidget/ClockUtils;->getMode10Path(ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMode10Path(ZZ)Ljava/lang/String;
    .locals 3
    .parameter "portrait"
    .parameter "supportLand"

    .prologue
    .line 19
    const-string v0, ""

    .line 20
    .local v0, modePath:Ljava/lang/String;
    sget-boolean v1, Lcom/htc/clock3dwidget/ClockUtils;->USE_LOCAL_PATH:Z

    if-eqz v1, :cond_1

    .line 21
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Land/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33
    :goto_0
    return-object v0

    .line 24
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Port/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 27
    :cond_1
    if-nez p0, :cond_2

    if-eqz p1, :cond_2

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/sdcard/data/mode10/scenes/land/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 30
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/sdcard/data/mode10/scenes/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
