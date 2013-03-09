.class public Lcom/htc/wrap/android/provider/HtcWrapSettings$System;
.super Lcom/htc/wrap/android/provider/Settings$System;
.source "HtcWrapSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "System"
.end annotation


# static fields
.field public static final AGPS_ENABLED:Ljava/lang/String; = "agps_enabled"

.field public static final APPEND_FOR_HEADSET:Ljava/lang/String; = "_headset"

.field public static final AUTO_APPLY_UPDATE:Ljava/lang/String; = "auto_apply_set_time_city_locale"

.field public static final AUTO_UPDATE_BY_LOC:Ljava/lang/String; = "auto_set_time_city_locale"

.field public static final BE_POLITE:Ljava/lang/String; = "be_polite"

.field public static final BLUETOOTH_DISCOVERABILITY_END_TIMESTAMP:Ljava/lang/String; = "bluetooth_discoverability_end_timestamp"

.field public static final BLUETOOTH_FTP_SETTINGS:Ljava/lang/String; = "bt_svcst_bluetooth_ftp"

.field public static final BLUETOOTH_MAP_SETTINGS:Ljava/lang/String; = "bt_svcst_bluetooth_map"

.field public static final BLUETOOTH_NAME:Ljava/lang/String; = "bluetooth_name"

.field public static final CALENDAR_NOTIFICATION_SOUND:Ljava/lang/String; = "cal_notification"

.field public static final CALENDAR_SHOW_LUNAR:Ljava/lang/String; = "calendar_show_lunar"

.field public static final CALENDAR_START_WEEKDAY:Ljava/lang/String; = "calendar_start_weekday"

.field public static final CHARM_INDICATOR_SUPPORTED:Ljava/lang/String; = "charm_indicator_supported"

.field public static final CHARM_MESSAGE_NOTIFICATION:Ljava/lang/String; = "charm_message_notification"

.field public static final CHARM_MESSAGE_RECEIVED_NOTIFICATION:Ljava/lang/String; = "charm_message_received_notification"

.field public static final CHARM_PHONE_NOTIFICATION:Ljava/lang/String; = "charm_phone_notification"

.field public static final CHARM_VOICE_MAIL_NOTIFICATION:Ljava/lang/String; = "charm_voice_mail_notification"

.field public static final COMPASS_WARNING:Ljava/lang/String; = "compass_warning"

.field public static final CUSTOM_ORIENTATION:Ljava/lang/String; = "custom_orientation"

.field public static final CUSTOM_ORIENTATION_ROTATION_0:I = 0x0

.field public static final CUSTOM_ORIENTATION_ROTATION_180:I = 0x2

.field public static final CUSTOM_ORIENTATION_ROTATION_270:I = 0x3

.field public static final CUSTOM_ORIENTATION_ROTATION_90:I = 0x1

.field public static final CUSTOM_ORIENTATION_ROTATION_DEFAULT:I = -0x1

.field public static final DATA_ROAMING_ALLOWED:Ljava/lang/String; = "data_roaming_allowed"

.field public static final DATA_ROAMING_BLOCKED:Ljava/lang/String; = "data_roaming_blocked"

.field public static final DATA_ROAMING_GUARD_ALLOWED:Ljava/lang/String; = "data_roaming_guard_allowed"

.field public static final DATA_ROAMING_GUARD_BLOCKED:Ljava/lang/String; = "data_roaming_guard_blocked"

.field public static final DATE_FORMAT_SHORT:Ljava/lang/String; = "date_format_short"

.field public static final DEFAULT_CALENDAR_NOTIFICATION_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_MSG_NOTIFICATION_URI:Landroid/net/Uri; = null

.field public static final DENY_USER_CONTROL:Ljava/lang/String; = "deny_user_control"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEVICE_NAME:Ljava/lang/String; = "bluetooth_name"

.field public static final DM_SUPL_IAPID:Ljava/lang/String; = "dm_supl_iapid"

.field public static final DM_SUPL_OPTIONAL_APN:Ljava/lang/String; = "dm_supl_optional_apn"

.field public static final DM_SUPL_PREFERRED_APN:Ljava/lang/String; = "dm_supl_preferred_apn"

.field public static final DM_SUPL_SERVER_IP:Ljava/lang/String; = "dm_supoer_server_ip"

.field public static final DM_SUPL_SERVER_NAME:Ljava/lang/String; = "dm_supl_server_name"

.field public static final DM_SUPL_SERVER_PORT:Ljava/lang/String; = "dm_supoer_server_port"

.field public static final DOCK_HOTSPOT_ON:Ljava/lang/String; = "dock_hotspot_on"

.field public static final DOCK_WIFI_ON:Ljava/lang/String; = "dock_wifi_on"

.field public static final DSA_PROXY_URL:Ljava/lang/String; = "dsa_proxy_url"

.field public static final DSA_PROXY_URL_DEFAULT:Ljava/lang/String; = "144.226.247.31:80"

.field public static final DSA_SERVER_URL:Ljava/lang/String; = "dsa_server_url"

.field public static final DSA_SERVER_URL_DEFAULT:Ljava/lang/String; = "https://dsa.spcsdns.net:443/dsa/"

.field public static final ENABLE_POWER_EFFICIENCY:Ljava/lang/String; = "enable_power_efficiency"

.field public static final FACEBOOK_EVENT_FLASH_BUTTON:Ljava/lang/String; = "facebook_event_flash_button"

.field public static final FLIP_TO_SPEAKER:Ljava/lang/String; = "flip_to_speaker"

.field public static final FOTA_DOWNLOAD_OPTION:Ljava/lang/String; = "FOTA_download_options"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FOTA_PERIODIC_CHECKIN:Ljava/lang/String; = "FOTA_periodic_checkin"

.field public static final GOOGLE_SYNC_CALENDAR:Ljava/lang/String; = "google_sync_calendar"

.field public static final GOOGLE_SYNC_CONTACTS:Ljava/lang/String; = "google_sync_contact"

.field public static final GOOGLE_SYNC_GMAIL:Ljava/lang/String; = "google_sync_gmai"

.field public static final HAPTIC_FEEDBACK_THEME:Ljava/lang/String; = "haptic_feedback_theme"

.field public static final HOME_COUNTRY_ENABLED:Ljava/lang/String; = "home_country_enabled"

.field public static final HOME_DIALING_COUNTRY_CODE:Ljava/lang/String; = "home_dialing_country_code"

.field public static final HOME_DIALING_POPUP_DIALOG:Ljava/lang/String; = "home_dialing_popup_dialog"

.field public static final HOME_DIALING_PREF:Ljava/lang/String; = "home_dialing_pref"

.field public static final HOME_DIALING_ROAMING_STATE:Ljava/lang/String; = "home_dialing_roaming_state"

.field public static final HOME_DIALING_TRUNK_CODE:Ljava/lang/String; = "home_dialing_trunk_code"

.field public static final HOTSPOT_BLACK_LIST:Ljava/lang/String; = "hotspot_black_list"

.field public static final HOTSPOT_BLOCK_LIST:Ljava/lang/String; = "hotspot_block_list"

.field public static final HOTSPOT_CHANNEL:Ljava/lang/String; = "hotspot_channel"

.field public static final HOTSPOT_CONNECTION_ARRAY:Ljava/lang/String; = "hotspot_connection_array"

.field public static final HOTSPOT_DHCP_MAX_CONNECTION:Ljava/lang/String; = "hotspot_dhcp_max_connection"

.field public static final HOTSPOT_DHCP_ON:Ljava/lang/String; = "hotspot_dhcp_on"

.field public static final HOTSPOT_DHCP_STARTING_IP:Ljava/lang/String; = "hotspot_dhcp_start_ip"

.field public static final HOTSPOT_HIDDEN:Ljava/lang/String; = "hotspot_hidden"

.field public static final HOTSPOT_IP_ADDRESS:Ljava/lang/String; = "hotspot_id_address"

.field public static final HOTSPOT_MACFILTER_ON:Ljava/lang/String; = "hotspot_macfilter_on"

.field public static final HOTSPOT_MAX_CONNECTION:Ljava/lang/String; = "hotspot_max_connection"

.field public static final HOTSPOT_ON:Ljava/lang/String; = "hotspot_on"

.field public static final HOTSPOT_PASSWORD:Ljava/lang/String; = "hotspot_password"

.field public static final HOTSPOT_POWERMODE:Ljava/lang/String; = "hotspot_powermode"

.field public static final HOTSPOT_POWER_MODE_REMIND_DIALOG:Ljava/lang/String; = "hotspot_power_mode_remind"

.field public static final HOTSPOT_REMIND_DIALOG:Ljava/lang/String; = "hotspot_remind_dialog"

.field public static final HOTSPOT_SECURITY_TYPE:Ljava/lang/String; = "hotspot_security_type"

.field public static final HOTSPOT_SLEEP_POLICY:Ljava/lang/String; = "hotspot_sleep_policy"

.field public static final HOTSPOT_SSID:Ljava/lang/String; = "hotspot_ssid"

.field public static final HOTSPOT_SUBNET_MASK:Ljava/lang/String; = "hotspot_subnet_mask"

.field public static final HOTSPOT_WHITE_LIST:Ljava/lang/String; = "hotspot_white_list"

.field public static final HTCSPEAK_DEFALUT_LANG:Ljava/lang/String; = "htcspeak_default_lang"

.field public static final HTC_3D_HOME_SCREEN:Ljava/lang/String; = "htc_3d_home_screen"

.field public static final HTC_APPLICATION_AUTOMATIC_STARTUP:Ljava/lang/String; = "htc_application_automatic_startup"

.field public static final HTC_APPLICATION_NOTIFICATION:Ljava/lang/String; = "htc_application_notification"

.field public static final HTC_APP_STORAGE_LOCATION_BACKUP:Ljava/lang/String; = "htc_app_storage_loc_backup"

.field public static final HTC_APP_STORAGE_LOCATION_PHONE_STORAGE:I = 0x1

.field public static final HTC_APP_STORAGE_LOCATION_SD_CARD_STORAGE:I = 0x2

.field public static final HTC_APP_STORAGE_LOCATION_UNKNOWN_STORAGE:I = 0x0

.field public static final HTC_PREFIX_APP_STORAGE_LOCATION:Ljava/lang/String; = "htc_app_storage_loc_"

.field public static final HTC_WIRELESS_SLEEP_END_TIME:Ljava/lang/String; = "htc_wireless_sleep_end_time"

.field public static final HTC_WIRELESS_SLEEP_MODE_ENABLED:Ljava/lang/String; = "htc_wireless_sleep_mode_enabled"

.field public static final HTC_WIRELESS_SLEEP_START_TIME:Ljava/lang/String; = "htc_wireless_sleep_start_time"

.field public static final INACTIVITY_TIME:Ljava/lang/String; = "inactivity_time"

.field public static final KEY_NOTIFY_TONE_ID:Ljava/lang/String; = "haptic_notifytone_id"

.field public static final KEY_NOTIFY_TONE_NAME:Ljava/lang/String; = "haptic_notifytone_name"

.field public static final KEY_RING_TONE_DEF_PATH:Ljava/lang/String; = "haptic_ringtone_def_path"

.field public static final KEY_RING_TONE_ID:Ljava/lang/String; = "haptic_ringtone_id"

.field public static final KEY_RING_TONE_NAME:Ljava/lang/String; = "haptic_ringtone_name"

.field private static MONITOR_KEYS:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MOVED_TO_SECURE:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MSG_NOTIFICATION_SOUND:Ljava/lang/String; = "msg_notification"

.field public static final MVNO_OPERATOR:Ljava/lang/String; = "mvno_operator"

.field public static final NATIVE_DIGITS:Ljava/lang/String; = "native_digits"

.field public static final NETWORK_SELECTION:Ljava/lang/String; = "network_selection"

.field public static final NOTIFICATION_BUBBLE:Ljava/lang/String; = "notification_bubble"

.field public static final POCKET_MODE:Ljava/lang/String; = "pocket_mode"

.field public static final POWERSAVER_ENABLE:Ljava/lang/String; = "powersaver_enable"

.field public static final POWER_SAVE_3G:Ljava/lang/String; = "3g_power_save"

.field public static final PREF_AUTOBACKLIGHT:Ljava/lang/String; = "settings.display.autobacklight"

.field public static final PREF_BRIGHTNESS:Ljava/lang/String; = "settings.display.brightness"

.field public static final PSAVER_ENABLE:Ljava/lang/String; = "psaver_enable"

.field public static final PSAVER_SCHEDULE:Ljava/lang/String; = "psaver_schedule"

.field public static final RADIO_USBNET:Ljava/lang/String; = "usbnet"

.field public static final RADIO_WIMAX:Ljava/lang/String; = "wimax"

.field public static final SCREEN_AUTO:Ljava/lang/String; = "screen_auto"

.field public static final SETTINGS_TO_BACKUP:[Ljava/lang/String; = null

.field public static final SETTING_ROAMING_RINGTONE:Ljava/lang/String; = "roaming_ringtone_on"

.field public static final SETTING_SD_CARD_NOTIFICATIONS:Ljava/lang/String; = "sd_card_notifications"

.field public static final SET_POWER_MODE:Ljava/lang/String; = "set_powermode"

.field public static final SHOW_ALL_QUICK_TIPS:Ljava/lang/String; = "show_all_quick_tips"

.field public static final SILENT_MODE:Ljava/lang/String; = "silent_mode"

.field public static final SMART_WIFI_ENABLED:Ljava/lang/String; = "smart_wifi_enabled"

.field public static final SMS_ROAMING_GUARD_ALLOWED:Ljava/lang/String; = "sms_roaming_guard_allowed"

.field public static final VOICE_ROAMING_ALLOWED:Ljava/lang/String; = "voice_roaming_allowed"

.field public static final VOICE_ROAMING_BLOCKED:Ljava/lang/String; = "voice_roaming_blocked"

.field public static final VOICE_ROAMING_GUARD_ALLOWED:Ljava/lang/String; = "voice_roaming_guard_allowed"

.field public static final VOICE_ROAMING_GUARD_BLOCKED:Ljava/lang/String; = "voice_roaming_guard_blocked"

.field public static final VOLUME_DTMF:Ljava/lang/String; = "volume_dtmf"

.field public static final VOLUME_SETTINGS:[Ljava/lang/String; = null

.field public static final VZW_GLOBAL_ROAMING_OPTIONS:Ljava/lang/String; = "vzw_global_roaming_options"

.field public static final WEATHER_WALLPAPER_ANIMATION_ALLOWED:Ljava/lang/String; = "weather_wallpaper_animation_allowed"

.field public static final WIFI_NUM_ALLOWED_CHANNELS:Ljava/lang/String; = "wifi_num_allowed_channels"

.field public static final WIFI_SLEEP_POLICY_DEFAULT:I

.field private static sGlobalQuickTipFlag:Z

.field private static sQuickTipSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sShowQuickTipFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v7, 0x1e

    const/16 v6, 0x18

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v0, 0x0

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MONITOR_KEYS:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v7}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v3, "wifi_http_proxy_on"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v3, "http_proxy_server"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v3, "http_proxy_port"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v3, "data_roaming_allowed"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v3, "data_roaming_blocked"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v3, "voice_roaming_allowed"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v3, "voice_roaming_blocked"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v3, "data_roaming_guard_allowed"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v3, "data_roaming_guard_blocked"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v3, "voice_roaming_guard_allowed"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v3, "voice_roaming_guard_blocked"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v3, "sms_roaming_guard_allowed"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v3, "gpsone_allowed"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v3, "wifi_pwr_active_mode"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v3, "wifi_dhcp_roaming"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v3, "wifi_offload_enabled"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v3, "mobile_data"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v3, "roaming_sound_on"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v3, "mobile_feature_control"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v3, "cfu_query_when_campon"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v3, "wimax_on"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v3, "wimax_networks_available_notification_on"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v3, "data_roaming_guard"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v3, "deny_user_control"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v3, "national_roaming_on"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v3, "usbnet_on"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v3, "vzw_global_roaming_options"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sput-boolean v5, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->sGlobalQuickTipFlag:Z

    sput-boolean v5, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->sShowQuickTipFlag:Z

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v6, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x39

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x3a

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x58

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x20

    if-ne v0, v3, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    sput v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->WIFI_SLEEP_POLICY_DEFAULT:I

    sget-object v0, Lcom/htc/wrap/android/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "volume_system"

    aput-object v4, v3, v2

    const-string v4, "volume_dtmf"

    aput-object v4, v3, v5

    #calls: Lcom/htc/wrap/android/provider/HtcWrapSettings;->combineStringArrays([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings;->access$100([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    const-string v0, "cal_notification"

    invoke-static {v0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->DEFAULT_CALENDAR_NOTIFICATION_URI:Landroid/net/Uri;

    const-string v0, "msg_notification"

    invoke-static {v0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->DEFAULT_MSG_NOTIFICATION_URI:Landroid/net/Uri;

    sget-object v0, Lcom/htc/wrap/android/provider/Settings$System;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    const/16 v3, 0x36

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "weather_wallpaper_animation_allowed"

    aput-object v4, v3, v2

    const-string v2, "wifi_sleep_policy"

    aput-object v2, v3, v5

    const-string v2, "bluetooth_name"

    aput-object v2, v3, v1

    const/4 v1, 0x3

    const-string v2, "bt_svcst_bluetooth_ftp"

    aput-object v2, v3, v1

    const/4 v1, 0x4

    const-string v2, "bt_svcst_bluetooth_map"

    aput-object v2, v3, v1

    const/4 v1, 0x5

    const-string v2, "inactivity_time"

    aput-object v2, v3, v1

    const/4 v1, 0x6

    const-string v2, "notifications_use_ring_volume"

    aput-object v2, v3, v1

    const/4 v1, 0x7

    const-string v2, "volume_dtmf"

    aput-object v2, v3, v1

    const/16 v1, 0x8

    const-string v2, "volume_voice_headset"

    aput-object v2, v3, v1

    const/16 v1, 0x9

    const-string v2, "volume_system_headset"

    aput-object v2, v3, v1

    const/16 v1, 0xa

    const-string v2, "volume_ring_headset"

    aput-object v2, v3, v1

    const/16 v1, 0xb

    const-string v2, "volume_music_headset"

    aput-object v2, v3, v1

    const/16 v1, 0xc

    const-string v2, "volume_alarm_headset"

    aput-object v2, v3, v1

    const/16 v1, 0xd

    const-string v2, "volume_notification_headset"

    aput-object v2, v3, v1

    const/16 v1, 0xe

    const-string v2, "volume_voice_last_audible_headset"

    aput-object v2, v3, v1

    const/16 v1, 0xf

    const-string v2, "volume_system_last_audible_headset"

    aput-object v2, v3, v1

    const/16 v1, 0x10

    const-string v2, "volume_ring_last_audible_headset"

    aput-object v2, v3, v1

    const/16 v1, 0x11

    const-string v2, "volume_music_last_audible_headset"

    aput-object v2, v3, v1

    const/16 v1, 0x12

    const-string v2, "volume_alarm_last_audible_headset"

    aput-object v2, v3, v1

    const/16 v1, 0x13

    const-string v2, "volume_notification_last_audible_headset"

    aput-object v2, v3, v1

    const/16 v1, 0x14

    const-string v2, "volume_dtmf_last_audible"

    aput-object v2, v3, v1

    const/16 v1, 0x15

    const-string v2, "be_polite"

    aput-object v2, v3, v1

    const/16 v1, 0x16

    const-string v2, "pocket_mode"

    aput-object v2, v3, v1

    const/16 v1, 0x17

    const-string v2, "flip_to_speaker"

    aput-object v2, v3, v1

    const-string v1, "window_animation_scale"

    aput-object v1, v3, v6

    const/16 v1, 0x19

    const-string v2, "transition_animation_scale"

    aput-object v2, v3, v1

    const/16 v1, 0x1a

    const-string v2, "ringtone"

    aput-object v2, v3, v1

    const/16 v1, 0x1b

    const-string v2, "alarm_alert"

    aput-object v2, v3, v1

    const/16 v1, 0x1c

    const-string v2, "silent_mode"

    aput-object v2, v3, v1

    const/16 v1, 0x1d

    const-string v2, "FOTA_periodic_checkin"

    aput-object v2, v3, v1

    const-string v1, "roaming_ringtone_on"

    aput-object v1, v3, v7

    const/16 v1, 0x1f

    const-string v2, "sd_card_notifications"

    aput-object v2, v3, v1

    const/16 v1, 0x20

    const-string v2, "psaver_enable"

    aput-object v2, v3, v1

    const/16 v1, 0x21

    const-string v2, "psaver_schedule"

    aput-object v2, v3, v1

    const/16 v1, 0x22

    const-string v2, "htc_application_automatic_startup"

    aput-object v2, v3, v1

    const/16 v1, 0x23

    const-string v2, "htc_application_notification"

    aput-object v2, v3, v1

    const/16 v1, 0x24

    const-string v2, "htc_wireless_sleep_mode_enabled"

    aput-object v2, v3, v1

    const/16 v1, 0x25

    const-string v2, "htc_wireless_sleep_start_time"

    aput-object v2, v3, v1

    const/16 v1, 0x26

    const-string v2, "htc_wireless_sleep_end_time"

    aput-object v2, v3, v1

    const/16 v1, 0x27

    const-string v2, "charm_message_notification"

    aput-object v2, v3, v1

    const/16 v1, 0x28

    const-string v2, "charm_phone_notification"

    aput-object v2, v3, v1

    const/16 v1, 0x29

    const-string v2, "charm_voice_mail_notification"

    aput-object v2, v3, v1

    const/16 v1, 0x2a

    const-string v2, "charm_message_received_notification"

    aput-object v2, v3, v1

    const/16 v1, 0x2b

    const-string v2, "charm_indicator_supported"

    aput-object v2, v3, v1

    const/16 v1, 0x2c

    const-string v2, "htcspeak_default_lang"

    aput-object v2, v3, v1

    const/16 v1, 0x2d

    const-string v2, "enable_power_efficiency"

    aput-object v2, v3, v1

    const/16 v1, 0x2e

    const-string v2, "set_powermode"

    aput-object v2, v3, v1

    const/16 v1, 0x2f

    const-string v2, "powersaver_enable"

    aput-object v2, v3, v1

    const/16 v1, 0x30

    const-string v2, "haptic_feedback_theme"

    aput-object v2, v3, v1

    const/16 v1, 0x31

    const-string v2, "haptic_ringtone_id"

    aput-object v2, v3, v1

    const/16 v1, 0x32

    const-string v2, "haptic_ringtone_name"

    aput-object v2, v3, v1

    const/16 v1, 0x33

    const-string v2, "haptic_notifytone_id"

    aput-object v2, v3, v1

    const/16 v1, 0x34

    const-string v2, "haptic_notifytone_name"

    aput-object v2, v3, v1

    const/16 v1, 0x35

    const-string v2, "htc_app_storage_loc_backup"

    aput-object v2, v3, v1

    #calls: Lcom/htc/wrap/android/provider/HtcWrapSettings;->combineStringArrays([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings;->access$100([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    return-void

    :cond_1
    move v0, v1

    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/wrap/android/provider/Settings$System;-><init>()V

    return-void
.end method

.method public static disableQuickTipFlag(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->loadQuickTipState(Landroid/content/ContentResolver;)V

    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->sQuickTipSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->sShowQuickTipFlag:Z

    invoke-static {p0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->saveQuickTipState(Landroid/content/ContentResolver;)V

    return-void
.end method

.method public static getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v1, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 2

    invoke-static {p0, p1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return p2

    :cond_0
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    move p2, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getQuickTipFlag(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->loadQuickTipState(Landroid/content/ContentResolver;)V

    sget-boolean v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->sGlobalQuickTipFlag:Z

    sget-object v1, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->sQuickTipSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public static getShowQuickTip(Landroid/content/ContentResolver;)Z
    .locals 1

    invoke-static {p0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->loadQuickTipState(Landroid/content/ContentResolver;)V

    sget-boolean v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->sShowQuickTipFlag:Z

    return v0
.end method

.method public static declared-synchronized getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-class v1, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HtcWrapSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has moved from android.provider.Settings.System"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to android.provider.Settings.Secure, returning read-only value."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {p0, p1}, Lcom/htc/wrap/android/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HtcWrapSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has moved from android.provider.Settings.System"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to android.provider.Settings.Secure, returning Secure URI."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/htc/wrap/android/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private static loadQuickTipState(Landroid/content/ContentResolver;)V
    .locals 5

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    sput-object v3, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->sQuickTipSet:Ljava/util/Set;

    const-string v3, "show_all_quick_tips"

    invoke-static {p0, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    packed-switch v0, :pswitch_data_0

    sget-object v3, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->sQuickTipSet:Ljava/util/Set;

    aget-object v4, v1, v0

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_0
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sput-boolean v3, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->sGlobalQuickTipFlag:Z

    goto :goto_1

    :pswitch_1
    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sput-boolean v3, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->sShowQuickTipFlag:Z

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static printQuickTipState(Landroid/content/ContentResolver;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set: \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->sQuickTipSet:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/htc/wrap/android/provider/HtcWrapSettings;->Log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/htc/wrap/android/provider/HtcWrapSettings;->access$000(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "database: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "show_all_quick_tips"

    invoke-static {p0, v1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/htc/wrap/android/provider/HtcWrapSettings;->Log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/htc/wrap/android/provider/HtcWrapSettings;->access$000(Ljava/lang/String;)V

    return-void
.end method

.method public static putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 1

    if-eqz p2, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-static {p0, p1, v0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HtcWrapSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has moved from android.provider.Settings.System"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to android.provider.Settings.Secure, value is unchanged."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/htc/wrap/android/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private static saveQuickTipState(Landroid/content/ContentResolver;)V
    .locals 5

    const/16 v4, 0x3b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v3, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->sGlobalQuickTipFlag:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->sShowQuickTipFlag:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->sQuickTipSet:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v3, "show_all_quick_tips"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static setShowQuickTip(Landroid/content/ContentResolver;Z)V
    .locals 1

    invoke-static {p0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->loadQuickTipState(Landroid/content/ContentResolver;)V

    sput-boolean p1, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->sGlobalQuickTipFlag:Z

    sput-boolean p1, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->sShowQuickTipFlag:Z

    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->sQuickTipSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    invoke-static {p0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->saveQuickTipState(Landroid/content/ContentResolver;)V

    return-void
.end method
