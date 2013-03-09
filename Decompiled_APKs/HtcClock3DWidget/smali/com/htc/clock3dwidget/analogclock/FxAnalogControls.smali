.class public Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;
.super Ljava/lang/Object;
.source "FxAnalogControls.java"


# static fields
.field private static final HOUR:Ljava/lang/String; = "timeline.flip_hour"

.field private static final MIN:Ljava/lang/String; = "timeline.flip_minute"

.field private static final TILT:Ljava/lang/String; = "timeline.tiltanim"


# instance fields
.field public mCityLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field public mCityName:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field public mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

.field public mDigital_Hour_ten:Lcom/htc/fusion/fx/FxTimelineControl;

.field public mDigital_Hour_unit:Lcom/htc/fusion/fx/FxTimelineControl;

.field public mDigital_Minute:Lcom/htc/clock3dwidget/util/DigitControl;

.field public mDigital_Minute_ten:Lcom/htc/fusion/fx/FxTimelineControl;

.field public mDigital_Minute_unit:Lcom/htc/fusion/fx/FxTimelineControl;

.field public mFxClockBase:Lcom/htc/fusion/fx/FxTimelineControl;

.field public mFxClockDate:Lcom/htc/fusion/fx/FxTimelineControl;

.field public mFxClockHour:Lcom/htc/fusion/fx/FxTimelineControl;

.field public mFxClockMinute:Lcom/htc/fusion/fx/FxTimelineControl;

.field public mFxClockNumbers:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mFxDigitalHour:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mFxDigitalMinute:Lcom/htc/fusion/fx/FxTimelineControl;

.field public mFxHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

.field public mFxPBHour:Lcom/htc/fusion/fx/controls/FxProgressBar;

.field public mFxPBMin:Lcom/htc/fusion/fx/controls/FxProgressBar;

.field public mFxPBSec:Lcom/htc/fusion/fx/controls/FxProgressBar;

.field public mFxPBUintHour:Lcom/htc/fusion/fx/controls/FxProgressBar;

.field public mFxPBUnitMin:Lcom/htc/fusion/fx/controls/FxProgressBar;

.field public mFxTextAMPM:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field public mFxTextAMPM_night:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field public mFxTextDate:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field public mFxTextDate_night:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field public mFxTextHour:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field public mFxTextLongDate:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field public mFxTextMinute:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field public mFxTextSecond:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field public mFxTextWeekDay:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field public mFxTextWeekDay_night:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field public mFxTimeLineGear01:Lcom/htc/fusion/fx/FxTimelineControl;

.field public mFxTimeLineGear02:Lcom/htc/fusion/fx/FxTimelineControl;

.field public mFxTimeLineGear03:Lcom/htc/fusion/fx/FxTimelineControl;

.field public mFxTimeLineGear04:Lcom/htc/fusion/fx/FxTimelineControl;

.field public mFxTimeLineGear05:Lcom/htc/fusion/fx/FxTimelineControl;

.field public mFxTimelineAmPm:Lcom/htc/fusion/fx/FxTimelineControl;

.field public mFxTimelineAmPmOpp:Lcom/htc/fusion/fx/FxTimelineControl;

.field public mFxTimelineClock:Lcom/htc/fusion/fx/FxTimelineControl;

.field public mFxTimelineClockAmPm:Lcom/htc/fusion/fx/FxTimelineControl;

.field public mFxTimelineWiggle:Lcom/htc/fusion/fx/FxTimelineControl;

.field public mHourCap:Lcom/htc/fusion/fx/FxTimelineControl;

.field public mMarkerHour:Lcom/htc/fusion/fx/Marker;

.field public mMarkerMin:Lcom/htc/fusion/fx/Marker;

.field public mMinCap:Lcom/htc/fusion/fx/FxTimelineControl;

.field public mTileMark:Lcom/htc/fusion/fx/Marker;

.field public mTiltAnime:Lcom/htc/fusion/fx/FxTimelineControl;


# direct methods
.method public constructor <init>(Lcom/htc/fusion/fx/FxScene;Lcom/htc/clock3dwidget/ClockRes;)V
    .locals 4
    .parameter "scene"
    .parameter "res"

    .prologue
    const/4 v3, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v0, nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, v0, v3}, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->getFxControls(Lcom/htc/fusion/fx/FxScene;Lcom/htc/clock3dwidget/ClockRes;Ljava/util/ArrayList;[Lcom/htc/fusion/fx/FxObject;)V

    .line 88
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v1

    .line 89
    .local v1, objs:[Lcom/htc/fusion/fx/FxObject;
    invoke-direct {p0, p1, p2, v3, v1}, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->getFxControls(Lcom/htc/fusion/fx/FxScene;Lcom/htc/clock3dwidget/ClockRes;Ljava/util/ArrayList;[Lcom/htc/fusion/fx/FxObject;)V

    .line 91
    invoke-direct {p0}, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->setupControls()V

    .line 92
    invoke-direct {p0}, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->reset()V

    .line 93
    return-void
.end method

.method private getFxControls(Lcom/htc/fusion/fx/FxScene;Lcom/htc/clock3dwidget/ClockRes;Ljava/util/ArrayList;[Lcom/htc/fusion/fx/FxObject;)V
    .locals 4
    .parameter "scene"
    .parameter "res"
    .parameter
    .parameter "objs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/fusion/fx/FxScene;",
            "Lcom/htc/clock3dwidget/ClockRes;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Lcom/htc/fusion/fx/FxObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 96
    .local p3, nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p3, :cond_26

    const/4 v2, 0x1

    .line 97
    .local v2, name:Z
    :goto_0
    const/4 v0, 0x0

    .line 98
    .local v0, index:I
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->hitboxClock:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 99
    if-eqz v2, :cond_27

    .line 100
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->hitboxClock:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_0
    :goto_1
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->progressBarHourHand:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 107
    if-eqz v2, :cond_28

    .line 108
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->progressBarHourHand:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_1
    :goto_2
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->progressBarMinuteHand:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 114
    if-eqz v2, :cond_29

    .line 115
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->progressBarMinuteHand:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_2
    :goto_3
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->progressBarSecondHand:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 121
    if-eqz v2, :cond_2a

    .line 122
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->progressBarSecondHand:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_3
    :goto_4
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->progressBarUnitHourHand:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 129
    if-eqz v2, :cond_2b

    .line 130
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->progressBarUnitHourHand:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_4
    :goto_5
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->progressBarUnitMinuteHand:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 136
    if-eqz v2, :cond_2c

    .line 137
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->progressBarUnitMinuteHand:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_5
    :goto_6
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->textLabelCityName:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 144
    if-eqz v2, :cond_2d

    .line 145
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->textLabelCityName:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_6
    :goto_7
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->textLabelCityLabel:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 152
    if-eqz v2, :cond_2e

    .line 153
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->textLabelCityLabel:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_7
    :goto_8
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->timelineHourTen:Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 160
    if-eqz v2, :cond_2f

    .line 161
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->timelineHourTen:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    :cond_8
    :goto_9
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->timelineHourUnit:Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 169
    if-eqz v2, :cond_30

    .line 170
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->timelineHourUnit:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_9
    :goto_a
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->timelineMinuteTen:Ljava/lang/String;

    if-eqz v3, :cond_a

    .line 176
    if-eqz v2, :cond_31

    .line 177
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->timelineMinuteTen:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_a
    :goto_b
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->timelineMinuteUinit:Ljava/lang/String;

    if-eqz v3, :cond_b

    .line 183
    if-eqz v2, :cond_32

    .line 184
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->timelineMinuteUinit:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_b
    :goto_c
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->timelineGear01:Ljava/lang/String;

    if-eqz v3, :cond_c

    .line 190
    if-eqz v2, :cond_33

    .line 191
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->timelineGear01:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_c
    :goto_d
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->timelineGear02:Ljava/lang/String;

    if-eqz v3, :cond_d

    .line 197
    if-eqz v2, :cond_34

    .line 198
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->timelineGear02:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_d
    :goto_e
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->timelineGear03:Ljava/lang/String;

    if-eqz v3, :cond_e

    .line 204
    if-eqz v2, :cond_35

    .line 205
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->timelineGear03:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_e
    :goto_f
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->timelineGear04:Ljava/lang/String;

    if-eqz v3, :cond_f

    .line 211
    if-eqz v2, :cond_36

    .line 212
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->timelineGear04:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_f
    :goto_10
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->timelineGear05:Ljava/lang/String;

    if-eqz v3, :cond_10

    .line 218
    if-eqz v2, :cond_37

    .line 219
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->timelineGear05:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_10
    :goto_11
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->timelineWiggle:Ljava/lang/String;

    if-eqz v3, :cond_11

    .line 225
    if-eqz v2, :cond_38

    .line 226
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->timelineWiggle:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_11
    :goto_12
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->textLabelHour:Ljava/lang/String;

    if-eqz v3, :cond_12

    .line 232
    if-eqz v2, :cond_39

    .line 233
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->textLabelHour:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_12
    :goto_13
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->textLabelMinute:Ljava/lang/String;

    if-eqz v3, :cond_13

    .line 239
    if-eqz v2, :cond_3a

    .line 240
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->textLabelMinute:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_13
    :goto_14
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->textLabelSecond:Ljava/lang/String;

    if-eqz v3, :cond_14

    .line 246
    if-eqz v2, :cond_3b

    .line 247
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->textLabelSecond:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_14
    :goto_15
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->timelineClockBase:Ljava/lang/String;

    if-eqz v3, :cond_15

    .line 254
    if-eqz v2, :cond_3c

    .line 255
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->timelineClockBase:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    :cond_15
    :goto_16
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->timelineClockNumbers:Ljava/lang/String;

    if-eqz v3, :cond_16

    .line 262
    if-eqz v2, :cond_3d

    .line 263
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->timelineClockNumbers:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_16
    :goto_17
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->timelineClockDate:Ljava/lang/String;

    if-eqz v3, :cond_17

    .line 269
    if-eqz v2, :cond_3e

    .line 270
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->timelineClockDate:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    :cond_17
    :goto_18
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->timelineClockHour:Ljava/lang/String;

    if-eqz v3, :cond_18

    .line 276
    if-eqz v2, :cond_3f

    .line 277
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->timelineClockHour:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_18
    :goto_19
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->timelineClockMinute:Ljava/lang/String;

    if-eqz v3, :cond_19

    .line 283
    if-eqz v2, :cond_40

    .line 284
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->timelineClockMinute:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_19
    :goto_1a
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->timelineClock:Ljava/lang/String;

    if-eqz v3, :cond_1a

    .line 292
    if-eqz v2, :cond_41

    .line 293
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->timelineClock:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    :cond_1a
    :goto_1b
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->timelineAmPm:Ljava/lang/String;

    if-eqz v3, :cond_1b

    .line 299
    if-eqz v2, :cond_42

    .line 300
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->timelineAmPm:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    :cond_1b
    :goto_1c
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->timelineAmPmOpp:Ljava/lang/String;

    if-eqz v3, :cond_1c

    .line 306
    if-eqz v2, :cond_43

    .line 307
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->timelineAmPmOpp:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    :cond_1c
    :goto_1d
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->timelineClockAmPm:Ljava/lang/String;

    if-eqz v3, :cond_1d

    .line 314
    if-eqz v2, :cond_44

    .line 315
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->timelineClockAmPm:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    :cond_1d
    :goto_1e
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->textLabelClockDate:Ljava/lang/String;

    if-eqz v3, :cond_1e

    .line 322
    if-eqz v2, :cond_45

    .line 323
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->textLabelClockDate:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    :cond_1e
    :goto_1f
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->textLabelClockLongDate:Ljava/lang/String;

    if-eqz v3, :cond_1f

    .line 329
    if-eqz v2, :cond_46

    .line 330
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->textLabelClockLongDate:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    :cond_1f
    :goto_20
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->textLabelClockWeekDay:Ljava/lang/String;

    if-eqz v3, :cond_20

    .line 336
    if-eqz v2, :cond_47

    .line 337
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->textLabelClockWeekDay:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    :cond_20
    :goto_21
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->textLabalClockAmPm:Ljava/lang/String;

    if-eqz v3, :cond_21

    .line 343
    if-eqz v2, :cond_48

    .line 344
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->textLabalClockAmPm:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    :cond_21
    :goto_22
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->textLabelClockDate_night:Ljava/lang/String;

    if-eqz v3, :cond_22

    .line 351
    if-eqz v2, :cond_49

    .line 352
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->textLabelClockDate_night:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    :cond_22
    :goto_23
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->textLabelClockWeekDay_night:Ljava/lang/String;

    if-eqz v3, :cond_23

    .line 358
    if-eqz v2, :cond_4a

    .line 359
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->textLabelClockWeekDay_night:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    :cond_23
    :goto_24
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->textLabalClockAmPm_night:Ljava/lang/String;

    if-eqz v3, :cond_24

    .line 365
    if-eqz v2, :cond_4b

    .line 366
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->textLabalClockAmPm_night:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    :cond_24
    :goto_25
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->timelineFlipHour:Ljava/lang/String;

    if-eqz v3, :cond_25

    .line 372
    if-eqz v2, :cond_4c

    .line 373
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->timelineFlipHour:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    :cond_25
    :goto_26
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->timelineFlipMinute:Ljava/lang/String;

    if-eqz v3, :cond_51

    .line 379
    if-eqz v2, :cond_4d

    .line 380
    iget-object v3, p2, Lcom/htc/clock3dwidget/ClockRes;->timelineFlipMinute:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v0

    .line 386
    .end local v0           #index:I
    .local v1, index:I
    :goto_27
    if-eqz v2, :cond_4e

    .line 387
    const-string v3, "timeline.tiltanim"

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    :goto_28
    if-eqz v2, :cond_4f

    .line 393
    const-string v3, "timeline.flip_hour"

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    :goto_29
    if-eqz v2, :cond_50

    .line 399
    const-string v3, "timeline.flip_minute"

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 403
    .end local v1           #index:I
    .restart local v0       #index:I
    :goto_2a
    return-void

    .line 96
    .end local v0           #index:I
    .end local v2           #name:Z
    :cond_26
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 102
    .restart local v0       #index:I
    .restart local v2       #name:Z
    :cond_27
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-object v3, p4, v0

    check-cast v3, Lcom/htc/fusion/fx/controls/FxHitbox;

    iput-object v3, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    goto/16 :goto_1

    .line 110
    :cond_28
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-object v3, p4, v0

    check-cast v3, Lcom/htc/fusion/fx/controls/FxProgressBar;

    iput-object v3, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxPBHour:Lcom/htc/fusion/fx/controls/FxProgressBar;

    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    goto/16 :goto_2

    .line 117
    :cond_29
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-object v3, p4, v0

    check-cast v3, Lcom/htc/fusion/fx/controls/FxProgressBar;

    iput-object v3, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxPBMin:Lcom/htc/fusion/fx/controls/FxProgressBar;

    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    goto/16 :goto_3

    .line 124
    :cond_2a
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-object v3, p4, v0

    check-cast v3, Lcom/htc/fusion/fx/controls/FxProgressBar;

    iput-object v3, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxPBSec:Lcom/htc/fusion/fx/controls/FxProgressBar;

    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    goto/16 :goto_4

    .line 132
    :cond_2b
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-object v3, p4, v0

    check-cast v3, Lcom/htc/fusion/fx/controls/FxProgressBar;

    iput-object v3, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxPBUintHour:Lcom/htc/fusion/fx/controls/FxProgressBar;

    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    goto/16 :goto_5

    .line 139
    :cond_2c
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-object v3, p4, v0

    check-cast v3, Lcom/htc/fusion/fx/controls/FxProgressBar;

    iput-object v3, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxPBUnitMin:Lcom/htc/fusion/fx/controls/FxProgressBar;

    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    goto/16 :goto_6

    .line 147
    :cond_2d
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-object v3, p4, v0

    check-cast v3, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v3, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mCityName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    goto/16 :goto_7

    .line 155
    :cond_2e
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-object v3, p4, v0

    check-cast v3, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v3, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mCityLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    goto/16 :goto_8

    .line 163
    :cond_2f
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-object v3, p4, v0

    check-cast v3, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v3, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mDigital_Hour_ten:Lcom/htc/fusion/fx/FxTimelineControl;

    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    goto/16 :goto_9

    .line 172
    :cond_30
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-object v3, p4, v0

    check-cast v3, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v3, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mDigital_Hour_unit:Lcom/htc/fusion/fx/FxTimelineControl;

    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    goto/16 :goto_a

    .line 179
    :cond_31
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-object v3, p4, v0

    check-cast v3, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v3, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mDigital_Minute_ten:Lcom/htc/fusion/fx/FxTimelineControl;

    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    goto/16 :goto_b

    .line 186
    :cond_32
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-object v3, p4, v0

    check-cast v3, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v3, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mDigital_Minute_unit:Lcom/htc/fusion/fx/FxTimelineControl;

    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    goto/16 :goto_c

    .line 193
    :cond_33
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-object v3, p4, v0

    check-cast v3, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v3, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxTimeLineGear01:Lcom/htc/fusion/fx/FxTimelineControl;

    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    goto/16 :goto_d

    .line 200
    :cond_34
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-object v3, p4, v0

    check-cast v3, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v3, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxTimeLineGear02:Lcom/htc/fusion/fx/FxTimelineControl;

    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    goto/16 :goto_e

    .line 207
    :cond_35
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-object v3, p4, v0

    check-cast v3, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v3, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxTimeLineGear03:Lcom/htc/fusion/fx/FxTimelineControl;

    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    goto/16 :goto_f

    .line 214
    :cond_36
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-object v3, p4, v0

    check-cast v3, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v3, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxTimeLineGear04:Lcom/htc/fusion/fx/FxTimelineControl;

    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    goto/16 :goto_10

    .line 221
    :cond_37
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-object v3, p4, v0

    check-cast v3, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v3, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxTimeLineGear05:Lcom/htc/fusion/fx/FxTimelineControl;

    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    goto/16 :goto_11

    .line 228
    :cond_38
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-object v3, p4, v0

    check-cast v3, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v3, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxTimelineWiggle:Lcom/htc/fusion/fx/FxTimelineControl;

    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    goto/16 :goto_12

    .line 235
    :cond_39
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-object v3, p4, v0

    check-cast v3, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v3, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxTextHour:Lcom/htc/fusion/fx/controls/FxTextLabel;

    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    goto/16 :goto_13

    .line 242
    :cond_3a
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-object v3, p4, v0

    check-cast v3, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v3, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxTextMinute:Lcom/htc/fusion/fx/controls/FxTextLabel;

    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    goto/16 :goto_14

    .line 249
    :cond_3b
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-object v3, p4, v0

    check-cast v3, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v3, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxTextSecond:Lcom/htc/fusion/fx/controls/FxTextLabel;

    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    goto/16 :goto_15

    .line 257
    :cond_3c
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-object v3, p4, v0

    check-cast v3, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v3, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxClockBase:Lcom/htc/fusion/fx/FxTimelineControl;

    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    goto/16 :goto_16

    .line 265
    :cond_3d
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-object v3, p4, v0

    check-cast v3, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v3, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxClockNumbers:Lcom/htc/fusion/fx/FxTimelineControl;

    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    goto/16 :goto_17

    .line 272
    :cond_3e
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-object v3, p4, v0

    check-cast v3, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v3, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxClockDate:Lcom/htc/fusion/fx/FxTimelineControl;

    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    goto/16 :goto_18

    .line 279
    :cond_3f
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-object v3, p4, v0

    check-cast v3, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v3, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxClockHour:Lcom/htc/fusion/fx/FxTimelineControl;

    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    goto/16 :goto_19

    .line 286
    :cond_40
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-object v3, p4, v0

    check-cast v3, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v3, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxClockMinute:Lcom/htc/fusion/fx/FxTimelineControl;

    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    goto/16 :goto_1a

    .line 295
    :cond_41
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-object v3, p4, v0

    check-cast v3, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v3, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxTimelineClock:Lcom/htc/fusion/fx/FxTimelineControl;

    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    goto/16 :goto_1b

    .line 302
    :cond_42
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-object v3, p4, v0

    check-cast v3, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v3, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxTimelineAmPm:Lcom/htc/fusion/fx/FxTimelineControl;

    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    goto/16 :goto_1c

    .line 309
    :cond_43
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-object v3, p4, v0

    check-cast v3, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v3, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxTimelineAmPmOpp:Lcom/htc/fusion/fx/FxTimelineControl;

    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    goto/16 :goto_1d

    .line 317
    :cond_44
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-object v3, p4, v0

    check-cast v3, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v3, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxTimelineClockAmPm:Lcom/htc/fusion/fx/FxTimelineControl;

    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    goto/16 :goto_1e

    .line 325
    :cond_45
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-object v3, p4, v0

    check-cast v3, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v3, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxTextDate:Lcom/htc/fusion/fx/controls/FxTextLabel;

    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    goto/16 :goto_1f

    .line 332
    :cond_46
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-object v3, p4, v0

    check-cast v3, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v3, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxTextLongDate:Lcom/htc/fusion/fx/controls/FxTextLabel;

    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    goto/16 :goto_20

    .line 339
    :cond_47
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-object v3, p4, v0

    check-cast v3, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v3, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxTextWeekDay:Lcom/htc/fusion/fx/controls/FxTextLabel;

    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    goto/16 :goto_21

    .line 346
    :cond_48
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-object v3, p4, v0

    check-cast v3, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v3, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxTextAMPM:Lcom/htc/fusion/fx/controls/FxTextLabel;

    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    goto/16 :goto_22

    .line 354
    :cond_49
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-object v3, p4, v0

    check-cast v3, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v3, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxTextDate_night:Lcom/htc/fusion/fx/controls/FxTextLabel;

    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    goto/16 :goto_23

    .line 361
    :cond_4a
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-object v3, p4, v0

    check-cast v3, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v3, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxTextWeekDay_night:Lcom/htc/fusion/fx/controls/FxTextLabel;

    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    goto/16 :goto_24

    .line 368
    :cond_4b
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-object v3, p4, v0

    check-cast v3, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v3, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxTextAMPM_night:Lcom/htc/fusion/fx/controls/FxTextLabel;

    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    goto/16 :goto_25

    .line 375
    :cond_4c
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-object v3, p4, v0

    check-cast v3, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v3, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxDigitalHour:Lcom/htc/fusion/fx/FxTimelineControl;

    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    goto/16 :goto_26

    .line 382
    :cond_4d
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-object v3, p4, v0

    check-cast v3, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v3, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxDigitalMinute:Lcom/htc/fusion/fx/FxTimelineControl;

    goto/16 :goto_27

    .line 389
    :cond_4e
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    aget-object v3, p4, v1

    check-cast v3, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v3, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mTiltAnime:Lcom/htc/fusion/fx/FxTimelineControl;

    move v1, v0

    .end local v0           #index:I
    .restart local v1       #index:I
    goto/16 :goto_28

    .line 395
    :cond_4f
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    aget-object v3, p4, v1

    check-cast v3, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v3, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mHourCap:Lcom/htc/fusion/fx/FxTimelineControl;

    move v1, v0

    .end local v0           #index:I
    .restart local v1       #index:I
    goto/16 :goto_29

    .line 401
    :cond_50
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    aget-object v3, p4, v1

    check-cast v3, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v3, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mMinCap:Lcom/htc/fusion/fx/FxTimelineControl;

    goto/16 :goto_2a

    :cond_51
    move v1, v0

    .end local v0           #index:I
    .restart local v1       #index:I
    goto/16 :goto_27
.end method

.method private reset()V
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mCityName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mCityName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxTextDate:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_1

    .line 447
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxTextDate:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 450
    :cond_1
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxTextAMPM:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_2

    .line 451
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxTextAMPM:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 454
    :cond_2
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxTextLongDate:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_3

    .line 455
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxTextLongDate:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 457
    :cond_3
    return-void
.end method

.method private setupControls()V
    .locals 4

    .prologue
    const/16 v2, 0x19

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 406
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabled(Z)V

    .line 408
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabledGestures(I)V

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxTimelineClock:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxTimelineClock:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v2, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(II)V

    .line 415
    :cond_1
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxDigitalHour:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_2

    .line 416
    new-instance v0, Lcom/htc/clock3dwidget/util/DigitControl;

    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxDigitalHour:Lcom/htc/fusion/fx/FxTimelineControl;

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/htc/clock3dwidget/util/DigitControl;-><init>(Lcom/htc/fusion/fx/FxTimelineControl;I)V

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    .line 417
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    invoke-virtual {v0, v3}, Lcom/htc/clock3dwidget/util/DigitControl;->setCurrentNumber(I)V

    .line 419
    :cond_2
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxDigitalMinute:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_3

    .line 420
    new-instance v0, Lcom/htc/clock3dwidget/util/DigitControl;

    iget-object v1, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mFxDigitalMinute:Lcom/htc/fusion/fx/FxTimelineControl;

    const/16 v2, 0x3c

    invoke-direct {v0, v1, v2}, Lcom/htc/clock3dwidget/util/DigitControl;-><init>(Lcom/htc/fusion/fx/FxTimelineControl;I)V

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mDigital_Minute:Lcom/htc/clock3dwidget/util/DigitControl;

    .line 421
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mDigital_Minute:Lcom/htc/clock3dwidget/util/DigitControl;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/clock3dwidget/util/DigitControl;->setAmPm(I)V

    .line 422
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mDigital_Minute:Lcom/htc/clock3dwidget/util/DigitControl;

    invoke-virtual {v0, v3}, Lcom/htc/clock3dwidget/util/DigitControl;->setCurrentNumber(I)V

    .line 426
    :cond_3
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mTiltAnime:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_4

    .line 427
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mTiltAnime:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "tilt"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mTileMark:Lcom/htc/fusion/fx/Marker;

    .line 431
    :cond_4
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mHourCap:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_5

    .line 432
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mHourCap:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "tilt"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mMarkerHour:Lcom/htc/fusion/fx/Marker;

    .line 436
    :cond_5
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mMinCap:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_6

    .line 437
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mMinCap:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "tilt"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mMarkerMin:Lcom/htc/fusion/fx/Marker;

    .line 439
    :cond_6
    return-void
.end method


# virtual methods
.method public bind()V
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    invoke-virtual {v0}, Lcom/htc/clock3dwidget/util/DigitControl;->bind()V

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mDigital_Minute:Lcom/htc/clock3dwidget/util/DigitControl;

    if-eqz v0, :cond_1

    .line 464
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mDigital_Minute:Lcom/htc/clock3dwidget/util/DigitControl;

    invoke-virtual {v0}, Lcom/htc/clock3dwidget/util/DigitControl;->bind()V

    .line 466
    :cond_1
    return-void
.end method

.method public unbind()V
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mDigital_Hour:Lcom/htc/clock3dwidget/util/DigitControl;

    invoke-virtual {v0}, Lcom/htc/clock3dwidget/util/DigitControl;->unbind()V

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mDigital_Minute:Lcom/htc/clock3dwidget/util/DigitControl;

    if-eqz v0, :cond_1

    .line 473
    iget-object v0, p0, Lcom/htc/clock3dwidget/analogclock/FxAnalogControls;->mDigital_Minute:Lcom/htc/clock3dwidget/util/DigitControl;

    invoke-virtual {v0}, Lcom/htc/clock3dwidget/util/DigitControl;->unbind()V

    .line 475
    :cond_1
    return-void
.end method
