.class public Lcom/htc/idlescreen/base/mode10/TimerR;
.super Ljava/lang/Object;
.source "TimerR.java"


# static fields
.field public static final TIMER_M10:Ljava/lang/String; = "Port/base/Lockscreen_timer.m10"

.field public static final TIMER_M10_LAND:Ljava/lang/String; = "Land/base/Lockscreen_timer.m10"

.field public static final TIMER_RES_DRAG_OK:[Ljava/lang/String; = null

.field public static final TIMER_RES_DRAG_OK_LAND:[Ljava/lang/String; = null

.field public static final TIMER_RES_DRAG_SETTING:[Ljava/lang/String; = null

.field public static final TIMER_RES_TEXTLABEL_EVENT:Ljava/lang/String; = "textlabel.timer_eventtime"

.field public static final TIMER_RES_TEXTLABEL_EVENTINFO:Ljava/lang/String; = "textlabel.timer_eventinfo"

.field public static final TIMER_RES_TEXTLABEL_TITLE:Ljava/lang/String; = "textlabel.timer"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ok"

    aput-object v1, v0, v3

    const-string v1, "t.btn_dismiss_positionY"

    aput-object v1, v0, v4

    const-string v1, "t.btn_dismiss_positionX"

    aput-object v1, v0, v5

    const-string v1, "t.btn_dismiss_Scale"

    aput-object v1, v0, v6

    const-string v1, "btn_dismiss_Opacity"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "hitbox.btn_dismiss"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "timeline.comp_btn_dismiss"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "unlock_indicate"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "unlock"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "textcomp.timer_dismiss"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "textlabel.timer_dismiss"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/idlescreen/base/mode10/TimerR;->TIMER_RES_DRAG_OK:[Ljava/lang/String;

    .line 35
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-eqz v0, :cond_0

    .line 36
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "setting"

    aput-object v1, v0, v3

    const-string v1, "t.btn_snooze_positionY"

    aput-object v1, v0, v4

    const-string v1, "t.btn_snooze_positionX"

    aput-object v1, v0, v5

    const-string v1, "t.btn_snooze_scale"

    aput-object v1, v0, v6

    const-string v1, "t.btn_snooze_opacity"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "hitbox.btn_snooze"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "timeline.comp_btn_snooze"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "unlock_indicate"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "unlock"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "textcomp.timer_snooze"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "textlabel.timer_snooze"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/idlescreen/base/mode10/TimerR;->TIMER_RES_DRAG_SETTING:[Ljava/lang/String;

    .line 62
    :goto_0
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ok"

    aput-object v1, v0, v3

    const-string v1, "t.btn_dismiss_positionY"

    aput-object v1, v0, v4

    const-string v1, "t.btn_dismiss_positionX"

    aput-object v1, v0, v5

    const-string v1, "t.btn_dismiss_Scale"

    aput-object v1, v0, v6

    const-string v1, "t.btn_dismiss_Opacity"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "hitbox.btn_dismiss"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "timeline.comp_btn_dismiss"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "unlock_indicate"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "unlock"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "textcomp.timer_dismiss"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "textlabel.alarm_dismiss"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/idlescreen/base/mode10/TimerR;->TIMER_RES_DRAG_OK_LAND:[Ljava/lang/String;

    return-void

    .line 49
    :cond_0
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "setting"

    aput-object v1, v0, v3

    const-string v1, "t.btn_snooze_positionY"

    aput-object v1, v0, v4

    const-string v1, "t.btn_snooze_positionX"

    aput-object v1, v0, v5

    const-string v1, "t.btn_snooze_scale"

    aput-object v1, v0, v6

    const-string v1, "t.btn_snooze_opacity"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "hitbox.btn_snooze"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "timeline.comp_btn_setting"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "unlock_indicate"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "unlock"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "textcomp.timer_snooze"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "textlabel.timer_snooze"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/idlescreen/base/mode10/TimerR;->TIMER_RES_DRAG_SETTING:[Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
