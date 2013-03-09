.class public Lcom/htc/widget3d/weather/data/WeatherIntent;
.super Ljava/lang/Object;
.source "WeatherIntent.java"


# static fields
.field public static final ACTION_ADD_WHEREIAM:Ljava/lang/String; = "com.htc.Weather.add_whereIam"

.field public static final ACTION_INTENT_LOCATE:Ljava/lang/String; = "com.htc.Weather.intent.action.LOCATE"

.field public static final ACTION_INTENT_MAIN:Ljava/lang/String; = "com.htc.Weather.intent.action.MAIN"

.field public static final ACTION_INTENT_REMOVE:Ljava/lang/String; = "com.htc.Weather.intent.action.REMOVE"

.field public static final ACTION_INTENT_REMOVE_ALL:Ljava/lang/String; = "com.htc.Weather.intent.action.REMOVE_ALL"

.field public static final ACTION_INTENT_SEARCH:Ljava/lang/String; = "com.htc.Weather.intent.action.SEARCH"

.field public static final ACTION_INTENT_SEARCH_ONLY:Ljava/lang/String; = "com.htc.Weather.intent.action.SEARCH_ONLY"

.field public static final ACTION_RETRIVE_WHEREIAM:Ljava/lang/String; = "com.htc.Weather.retrive_whereIam"

.field public static final ADDCITY_CLASSNAME:Ljava/lang/String; = "com.htc.Weather.AddCity"

.field public static final ADD_LOCATION_CHANGED:Ljava/lang/String; = "com.htc.Weather.add_location_changed"

.field public static final APP_LOCATION_SERVICE:Ljava/lang/String; = "com.htc.htclocationservice"

.field public static final CURRENT_INDEX_CHANGED:Ljava/lang/String; = "com.htc.Weather.current_index_changed"

.field public static final CURRENT_LOCATION_DELETED:Ljava/lang/String; = "com.htc.Weather.delete_current_location"

.field public static final DELETE_LOCATION_CHANGED:Ljava/lang/String; = "com.htc.Weather.delete_location_changed"

.field public static final KEY_SELECT_CITY:Ljava/lang/String; = "select_city"

.field public static final LAUNCHAP_CLASSNAME:Ljava/lang/String; = "com.htc.Weather.WeatherActivity"

.field public static final LOADED_ANIMATION:Ljava/lang/String; = "com.htc.Weather.loaded_animation"

.field public static final MSG_APP_UNSCHEDULE:I = -0xfffffe7

.field public static final MSG_BROADCAST_REFETCH:I = -0xfffeff8

.field public static final MSG_CENTERBUTTON_UPDATED:I = -0xffffff

.field public static final MSG_CHECK_DEFAULT_LOCATION:I = -0xffffe00

.field public static final MSG_DESTROY_UI:I = -0xfffffea

.field public static final MSG_DISABLE_CACHE_ALL:I = -0xfffffea

.field public static final MSG_ENABLE_CACHE_ALL:I = -0xfffffeb

.field public static final MSG_FETCH_CURRENT_CITIES:I = -0xfffffee

.field public static final MSG_FETCH_NON_CURRENT_CITIES:I = -0xfffffef

.field public static final MSG_FETCH_NON_CURRENT_CITIES_GESTURE:I = -0xfffffe6

.field public static final MSG_FETCH_SINGLE_CITY:I = -0xfffffe0

.field public static final MSG_FETCH_SINGLE_CITY_REFRESH:I = -0xfffffe1

.field public static final MSG_FETCH_TIMEOUT:I = -0xfffffed

.field public static final MSG_INIT_DCS:I = -0xfffeff3

.field public static final MSG_INIT_FIRSTTIME:I = -0xffffeff

.field public static final MSG_INIT_SETTING:I = -0xfffff00

.field public static final MSG_LOADING_TIMEOUT:I = -0xfffeff7

.field public static final MSG_MODEL_INITIALIZED:I = -0xffffff7

.field public static final MSG_MODEL_REINITIALIZED:I = -0xfffffe0

.field public static final MSG_NETWORK_ERROR:I = -0xfffffff

.field public static final MSG_NETWORK_INACTIVE:I = -0xfffffec

.field public static final MSG_NETWORK_ROAMING:I = 0xf000002

.field public static final MSG_NODATA_ERROR:I = -0xfffffdf

.field public static final MSG_ORIENTATION_CHANGED:I = -0xffffff9

.field public static final MSG_PAUSE_UI:I = -0xffffff0

.field public static final MSG_READ_SETTING_FROM_FIRST_INIT:I = -0xfffeff5

.field public static final MSG_REDO_DCS_READY:I = -0xffffdff

.field public static final MSG_REFETCH_ALL_CITIES:I = -0xfffffe5

.field public static final MSG_REFETCH_CACHEDATA:I = -0xffffffb

.field public static final MSG_REFETCH_CACHEDATA_SINGLE:I = -0xfffffe8

.field public static final MSG_REFETCH_DATA_SINGLE:I = -0xfffffe5

.field public static final MSG_REFRESH_3HR:I = -0xffffff2

.field public static final MSG_REFRESH_3HR_SINGLE:I = -0xffffff1

.field public static final MSG_REFRESH_CITYVIEW:I = -0xffffe00

.field public static final MSG_REFRESH_DATA:I = -0xffffffd

.field public static final MSG_REFRESH_UI:I = -0xfffeff1

.field public static final MSG_RETRIEVE_DATA:I = -0xffffffc

.field public static final MSG_RETRY_REFETCHDATA:I = -0xfffffeb

.field public static final MSG_RETRY_REFETCHDATA_ALL:I = -0xfffffe4

.field public static final MSG_SHOW_MESSAGE_DIALOG:I = -0xfffeff4

.field public static final MSG_START_UPDATING:I = -0xffffffa

.field public static final MSG_SWITCHER_IN_ANIMATION_END:I = -0xfffffef

.field public static final MSG_SWITCHER_OUT_ANIMATION_END:I = -0xfffffee

.field public static final MSG_SWITCHER_PAUSE_ANIMATION:I = -0xffffff6

.field public static final MSG_SWITCHER_PLAYANIMATION:I = -0xffffff5

.field public static final MSG_SWITCHER_PLAY_TRANSITION:I = -0xffffff7

.field public static final MSG_SWITCHER_RESUME_ANIMATION:I = -0xffffff5

.field public static final MSG_SWITCHER_STOPANIMATION:I = -0xffffff4

.field public static final MSG_SWITCHER_TIMEOUT_END:I = 0xf000010

.field public static final MSG_TASKBAR_UPDATESTATE:I = -0xffffff3

.field public static final MSG_UPDATE_ANIMATING:I = -0xffffff9

.field public static final MSG_UPDATE_DATA:I = -0xffffff6

.field public static final MSG_UPDATE_FAKE_DATA:I = -0xfffffe9

.field public static final MSG_UPDATE_FINISHED:I = -0xffffff8

.field public static final MSG_UPDATE_FOOTBAR_STATUS:I = -0xffffdff

.field public static final MSG_UPDATE_TEMPERATURE_SCALE:I = -0xfffeffd

.field public static final MSG_UPDATE_TIME_FORMAT:I = -0xfffeff9

.field public static final MSG_UPDATE_UI:I = -0xfffeffc

.field public static final MSG_WIDGET_DESTROY:I = -0xfffeffb

.field public static final MSG_WIDGET_UNSCHEDULE:I = -0xfffeffa

.field public static final PLAY_ANIMATION:Ljava/lang/String; = "com.htc.Weather.play_animation"

.field public static final REARRANGE_LIST_CHANGED:Ljava/lang/String; = "com.htc.Weather.rearrange_list_changed"

.field public static final REFRESH_DATA:Ljava/lang/String; = "com.htc.Weather.refresh_data"

.field public static final REFRESH_DATA_CHANGED:Ljava/lang/String; = "com.htc.Weather.refresh_data_changed"

.field public static final REQUEST_ADD_LOCATION:I = 0x1001

.field public static final RESULT_STATUS_WHEREIAM:Ljava/lang/String; = "com.htc.Weather.where_I_am"

.field public static final RETRIEVE_CACHE_DATA:Ljava/lang/String; = "com.htc.Weather.retrive_cache_data"

.field public static final RET_ADD_LOCATION:I = 0x1

.field public static final RET_DEL_LOCATION:I = 0xa

.field public static final RET_DEL_REARRANGE:I = 0xb

.field public static final RET_FIND_ME:I = 0x2

.field public static final RET_LOCATION_PICKER:I = 0x3

.field public static final RET_LOCATION_SETTING:I = 0x9

.field public static final RET_REARRANGE:I = 0x5

.field public static final RET_SETTING:I = 0x4

.field public static final RET_SETTING_AUTOSYNC:I = 0x7

.field public static final RET_SETTING_TEMPERATURE_SCALE:I = 0x8

.field public static final RET_WIFISETTING:I = 0x6

.field public static final SETTING_CHANGED:Ljava/lang/String; = "com.htc.Weather.setting_changed"

.field public static final STATE_DISABLED:I = 0x3

.field public static final STATE_INIT:I = 0x0

.field public static final STATE_UPDATED:I = 0x2

.field public static final STATE_UPDATING:I = 0x1

.field public static final TEMPERATURE_SCALE_CHANGED:Ljava/lang/String; = "com.htc.Weather.temperature_scale_changed"

.field public static final TOTAL_CITIES:Ljava/lang/String; = "com.htc.Weather.total"

.field public static final UPDATE_ANIMATION:Ljava/lang/String; = "com.htc.Weather.update_animation"

.field public static final WEATHER_PACKAGENAME:Ljava/lang/String; = "com.htc.Weather"

.field public static final WEATHER_PROVIDER_KEYNAME:Ljava/lang/String; = "com.htc.elroy.Weather"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
