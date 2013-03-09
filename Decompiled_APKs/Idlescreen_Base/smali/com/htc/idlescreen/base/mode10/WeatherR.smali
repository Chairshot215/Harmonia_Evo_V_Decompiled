.class public Lcom/htc/idlescreen/base/mode10/WeatherR;
.super Ljava/lang/Object;
.source "WeatherR.java"


# static fields
.field public static final M10:Ljava/lang/String; = "Port/base/Lockscreen_weather_alert.m10"

.field public static final M10_LAND:Ljava/lang/String; = "Land/base/Lockscreen_weather_alert.m10"

.field public static final MARK_BUILD:Ljava/lang/String; = "Build"

.field public static final MARK_EXIT:Ljava/lang/String; = "Exit"

.field public static final MARK_LOOPIN:Ljava/lang/String; = "LoopIn"

.field public static final MARK_TRANSITION:Ljava/lang/String; = "Transition"

.field public static final RES_CONTAINER_WEATHER:Ljava/lang/String; = "scenecontainer.main_weather_state"

.field public static final RES_DRAG_FORECAST:[Ljava/lang/String; = null

.field public static final RES_DRAG_SETTING:[Ljava/lang/String; = null

.field public static final RES_TEXT_CITY:Ljava/lang/String; = "textlabel.cityname"

.field public static final RES_TEXT_CONDITION:Ljava/lang/String; = "textlabel.condition"

.field public static final RES_TEXT_CURTEMP:Ljava/lang/String; = "textlabel.citytemp"

.field public static final RES_TEXT_CURTEMP3:Ljava/lang/String; = "textlabel.citytemp_3digit"

.field public static final RES_TEXT_HTEMP:Ljava/lang/String; = "textlabel.citytemphi"

.field public static final RES_TEXT_LTEMP:Ljava/lang/String; = "textlabel.citytemplow"

.field public static final RES_TL_CLOUD:Ljava/lang/String; = "Cloud_flyThru"

.field public static final RES_TL_WEATHER:Ljava/lang/String; = "timeline.weather_comp"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "forcast"

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

    sput-object v0, Lcom/htc/idlescreen/base/mode10/WeatherR;->RES_DRAG_SETTING:[Ljava/lang/String;

    .line 20
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "setting"

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

    sput-object v0, Lcom/htc/idlescreen/base/mode10/WeatherR;->RES_DRAG_FORECAST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
