.class public Lcom/htc/weatheridlescreen/WISConsts;
.super Ljava/lang/Object;
.source "WISConsts.java"


# static fields
.field public static final ACTION_FOR_BG_EFFECT_DAY_TO_NIGHT:Ljava/lang/String; = "com.htc.weatheridlescreen.DayToNight"

.field public static final ACTION_FOR_BG_EFFECT_NIGHT_TO_DAY:Ljava/lang/String; = "com.htc.weatheridlescreen.NightToDay"

.field public static final ACTION_FOR_PENDING_BG_EFFECT_NOTIFICATION:Ljava/lang/String; = "com.htc.weatheridlescreen.PenddingBGEffectNotification"

.field public static final BG_DAY:I = 0x2

.field public static final BG_EFFECT_DAY_TO_NIGHT:I = 0x0

.field public static final BG_EFFECT_DAY_TO_RAIN:I = 0x1

.field public static final BG_EFFECT_NIGHT_TO_DAY:I = 0x2

.field public static final BG_EFFECT_NIGHT_TO_RAIN:I = 0x3

.field public static final BG_EFFECT_RAIN_TO_DAY:I = 0x4

.field public static final BG_EFFECT_RAIN_TO_NIGHT:I = 0x5

.field public static final BG_NIGHT:I = 0x3

.field public static final BG_NONE:I = 0x0

.field public static final BG_RAIN:I = 0x1

.field public static final CITY_CODE_CUR:Ljava/lang/String; = "CurrentCity"

.field public static final DELAYED_TIME:J = 0x2710L

.field public static final DEMO_CONDITION:[I = null

.field public static final EXTRA_KEY_TIMEZONE:Ljava/lang/String; = "timezone"

.field public static final LOG_FLAG:Z = false

.field public static final LOG_TAG:Ljava/lang/String; = "WIS"

.field public static final TABLE_BACKGROUND:[I = null

.field public static final WEATHER_DATA_TOTAL_COUNT:I = 0x5

.field public static final WEATHER_FORCAST_TOTAL_COUNT:I = 0x4

.field public static final WEATHER_FRAME_BUILD_FOR_FIRST:I = 0x0

.field public static final WEATHER_FRAME_BUILD_FOR_FORECAST_F:I = 0x0

.field public static final WEATHER_FRAME_BUILD_FOR_MAIN_S:I = 0x0

.field public static final WEATHER_FRAME_EXIT_FOR_FIRST:I = 0x2b2

.field public static final WEATHER_FRAME_EXIT_FOR_FORECAST_F:I = 0x28

.field public static final WEATHER_FRAME_IDLE_FOR_FORECAST_F:I = 0x1e

.field public static final WEATHER_FRAME_IN_FOR_FORECAST_S:I = 0x0

.field public static final WEATHER_FRAME_LOOPIN_FOR_FIRST:I = 0x5c

.field public static final WEATHER_FRAME_LOOPIN_FOR_MAIN_S:I = 0x4f

.field public static final WEATHER_FRAME_OUT_FOR_FORECAST_S:I = 0x28

.field public static final WEATHER_FRAME_REST_FOR_FORECAST_S:I = 0x1e

.field public static final WEATHER_MARKER_BUILD:Ljava/lang/String; = "Build"

.field public static final WEATHER_MARKER_DAY_TO_NIGHT:Ljava/lang/String; = "day_to_night"

.field public static final WEATHER_MARKER_DAY_TO_RAIN:Ljava/lang/String; = "day_to_rain"

.field public static final WEATHER_MARKER_EXIT:Ljava/lang/String; = "Exit"

.field public static final WEATHER_MARKER_IDLE:Ljava/lang/String; = "Idle"

.field public static final WEATHER_MARKER_IN:Ljava/lang/String; = "In"

.field public static final WEATHER_MARKER_LOOPIN:Ljava/lang/String; = "LoopIn"

.field public static final WEATHER_MARKER_NIGHT_TO_DAY:Ljava/lang/String; = "night_to_day"

.field public static final WEATHER_MARKER_NIGHT_TO_RAIN:Ljava/lang/String; = "night_to_rain"

.field public static final WEATHER_MARKER_OUT:Ljava/lang/String; = "Out"

.field public static final WEATHER_MARKER_RAIN_TO_DAY:Ljava/lang/String; = "rain_to_day"

.field public static final WEATHER_MARKER_RAIN_TO_NIGHT:Ljava/lang/String; = "rain_to_night"

.field public static final WEATHER_MARKER_REST:Ljava/lang/String; = "Rest"

.field public static final WEATHER_MARKER_TRANSITION:Ljava/lang/String; = "Transition"

.field public static final WEATHER_SCENE:Ljava/lang/String; = "Port/Lockscreen_weather.m10"

.field public static final WEATHER_SCENE_BG:Ljava/lang/String; = "Port/Lockscreen_weather_bg.m10"

.field public static final WEATHER_SCENE_BG_LAND:Ljava/lang/String; = "Land/Lockscreen_weather_bg_l.m10"

.field public static final WEATHER_SCENE_FORECAST:Ljava/lang/String; = "Port/forecast/s_"

.field public static final WEATHER_SCENE_LAND:Ljava/lang/String; = "Land/Lockscreen_weather_l.m10"

.field public static final WEATHER_SCENE_MAIN:Ljava/lang/String; = "Port/main_state/"

.field public static final WEATHER_SCENE_MAIN_LAND:Ljava/lang/String; = "Land/main_state/"

.field public static final WEATHER_TLC_FORECAST:Ljava/lang/String; = "timeline.s_"

.field public static final WEATHER_TLC_MAIN:Ljava/lang/String; = "timeline."


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/weatheridlescreen/WISConsts;->DEMO_CONDITION:[I

    .line 86
    const/16 v0, 0x2d

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/weatheridlescreen/WISConsts;->TABLE_BACKGROUND:[I

    return-void

    .line 77
    nop

    :array_0
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data

    .line 86
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
