.class final enum Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;
.super Ljava/lang/Enum;
.source "HtcCustomAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/content/custom/HtcCustomAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Keys"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

.field public static final enum def_2g_on:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

.field public static final enum def_accelerometer_rotation:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

.field public static final enum def_airplane_mode_toggleable_radios:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

.field public static final enum def_animation_scale:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

.field public static final enum def_audible_touch_tones:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

.field public static final enum def_auto_time:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

.field public static final enum def_backup_enabled:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

.field public static final enum def_data_roaming_allowed:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

.field public static final enum def_data_roaming_sound_allowed:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

.field public static final enum def_fastboot_allowed:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

.field public static final enum def_haptic_feedback_enabled:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

.field public static final enum def_htc_3d_home_screen:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

.field public static final enum def_htc_application_automatic_startup:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

.field public static final enum def_htc_application_notification:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

.field public static final enum def_htc_message_notification_preview:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

.field public static final enum def_htc_mobile_network_on:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

.field public static final enum def_htc_phone_finder_enabled:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

.field public static final enum def_htc_phone_notification_preview:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

.field public static final enum def_htc_wimax_on:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

.field public static final enum def_htc_wireless_sleep_end_time:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

.field public static final enum def_htc_wireless_sleep_mode_enabled:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

.field public static final enum def_htc_wireless_sleep_start_time:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

.field public static final enum def_htcspeak_default_lang:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

.field public static final enum def_inactivity_time:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

.field public static final enum def_install_non_market_apps:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

.field public static final enum def_location_gps_providers_allowed:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

.field public static final enum def_location_network_providers_allowed:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

.field public static final enum def_location_providers_allowed:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

.field public static final enum def_location_vzw_lbs_providers_allowed:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

.field public static final enum def_lockscreen_sounds_enabled:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

.field public static final enum def_national_roaming_allowed:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

.field public static final enum def_night_turn_off_wifi:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

.field public static final enum def_power_save_3g:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

.field public static final enum def_screen_brightness:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

.field public static final enum def_screen_brightness_mode:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

.field public static final enum def_screen_off_timeout:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

.field public static final enum def_sound_effects_enabled:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

.field public static final enum def_time_12_24:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

.field public static final enum def_volume_music:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

.field public static final enum def_wifi_sleep_policy:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

.field public static final enum show_2g_ui:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    new-instance v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    const-string v1, "def_auto_time"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_auto_time:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    .line 54
    new-instance v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    const-string v1, "def_accelerometer_rotation"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_accelerometer_rotation:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    .line 55
    new-instance v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    const-string v1, "def_inactivity_time"

    invoke-direct {v0, v1, v5}, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_inactivity_time:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    .line 56
    new-instance v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    const-string v1, "def_screen_off_timeout"

    invoke-direct {v0, v1, v6}, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_screen_off_timeout:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    .line 57
    new-instance v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    const-string v1, "def_animation_scale"

    invoke-direct {v0, v1, v7}, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_animation_scale:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    .line 58
    new-instance v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    const-string v1, "def_htc_application_automatic_startup"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_htc_application_automatic_startup:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    .line 59
    new-instance v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    const-string v1, "def_htc_application_notification"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_htc_application_notification:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    .line 60
    new-instance v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    const-string v1, "def_htc_3d_home_screen"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_htc_3d_home_screen:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    .line 61
    new-instance v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    const-string v1, "def_htc_wireless_sleep_mode_enabled"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_htc_wireless_sleep_mode_enabled:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    .line 62
    new-instance v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    const-string v1, "def_htc_wireless_sleep_start_time"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_htc_wireless_sleep_start_time:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    .line 63
    new-instance v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    const-string v1, "def_htc_wireless_sleep_end_time"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_htc_wireless_sleep_end_time:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    .line 64
    new-instance v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    const-string v1, "def_time_12_24"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_time_12_24:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    .line 65
    new-instance v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    const-string v1, "def_wifi_sleep_policy"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_wifi_sleep_policy:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    .line 66
    new-instance v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    const-string v1, "def_airplane_mode_toggleable_radios"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_airplane_mode_toggleable_radios:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    .line 67
    new-instance v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    const-string v1, "def_htcspeak_default_lang"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_htcspeak_default_lang:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    .line 68
    new-instance v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    const-string v1, "def_power_save_3g"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_power_save_3g:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    .line 69
    new-instance v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    const-string v1, "def_audible_touch_tones"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_audible_touch_tones:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    .line 70
    new-instance v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    const-string v1, "def_screen_brightness_mode"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_screen_brightness_mode:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    .line 71
    new-instance v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    const-string v1, "def_screen_brightness"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_screen_brightness:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    .line 72
    new-instance v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    const-string v1, "def_volume_music"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_volume_music:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    .line 75
    new-instance v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    const-string v1, "def_install_non_market_apps"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_install_non_market_apps:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    .line 76
    new-instance v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    const-string v1, "def_location_providers_allowed"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_location_providers_allowed:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    .line 77
    new-instance v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    const-string v1, "def_location_network_providers_allowed"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_location_network_providers_allowed:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    .line 78
    new-instance v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    const-string v1, "def_location_gps_providers_allowed"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_location_gps_providers_allowed:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    .line 80
    new-instance v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    const-string v1, "def_location_vzw_lbs_providers_allowed"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_location_vzw_lbs_providers_allowed:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    .line 81
    new-instance v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    const-string v1, "def_fastboot_allowed"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_fastboot_allowed:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    .line 82
    new-instance v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    const-string v1, "def_htc_phone_finder_enabled"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_htc_phone_finder_enabled:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    .line 83
    new-instance v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    const-string v1, "def_data_roaming_allowed"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_data_roaming_allowed:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    .line 84
    new-instance v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    const-string v1, "def_data_roaming_sound_allowed"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_data_roaming_sound_allowed:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    .line 85
    new-instance v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    const-string v1, "def_national_roaming_allowed"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_national_roaming_allowed:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    .line 87
    new-instance v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    const-string v1, "def_htc_wimax_on"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_htc_wimax_on:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    .line 90
    new-instance v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    const-string v1, "def_backup_enabled"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_backup_enabled:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    .line 92
    new-instance v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    const-string v1, "def_htc_message_notification_preview"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_htc_message_notification_preview:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    .line 93
    new-instance v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    const-string v1, "def_htc_phone_notification_preview"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_htc_phone_notification_preview:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    .line 96
    new-instance v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    const-string v1, "def_htc_mobile_network_on"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_htc_mobile_network_on:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    .line 99
    new-instance v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    const-string v1, "def_haptic_feedback_enabled"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_haptic_feedback_enabled:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    .line 102
    new-instance v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    const-string v1, "def_sound_effects_enabled"

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_sound_effects_enabled:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    .line 103
    new-instance v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    const-string v1, "def_lockscreen_sounds_enabled"

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_lockscreen_sounds_enabled:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    .line 107
    new-instance v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    const-string v1, "show_2g_ui"

    const/16 v2, 0x26

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->show_2g_ui:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    .line 108
    new-instance v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    const-string v1, "def_2g_on"

    const/16 v2, 0x27

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_2g_on:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    .line 109
    new-instance v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    const-string v1, "def_night_turn_off_wifi"

    const/16 v2, 0x28

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_night_turn_off_wifi:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    .line 51
    const/16 v0, 0x29

    new-array v0, v0, [Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    sget-object v1, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_auto_time:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_accelerometer_rotation:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_inactivity_time:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_screen_off_timeout:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_animation_scale:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_htc_application_automatic_startup:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_htc_application_notification:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_htc_3d_home_screen:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_htc_wireless_sleep_mode_enabled:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_htc_wireless_sleep_start_time:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_htc_wireless_sleep_end_time:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_time_12_24:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_wifi_sleep_policy:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_airplane_mode_toggleable_radios:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_htcspeak_default_lang:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_power_save_3g:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_audible_touch_tones:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_screen_brightness_mode:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_screen_brightness:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_volume_music:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_install_non_market_apps:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_location_providers_allowed:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_location_network_providers_allowed:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_location_gps_providers_allowed:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_location_vzw_lbs_providers_allowed:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_fastboot_allowed:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_htc_phone_finder_enabled:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_data_roaming_allowed:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_data_roaming_sound_allowed:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_national_roaming_allowed:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_htc_wimax_on:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_backup_enabled:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_htc_message_notification_preview:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_htc_phone_notification_preview:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_htc_mobile_network_on:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_haptic_feedback_enabled:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_sound_effects_enabled:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_lockscreen_sounds_enabled:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->show_2g_ui:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_2g_on:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_night_turn_off_wifi:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->$VALUES:[Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;
    .locals 1
    .parameter "name"

    .prologue
    .line 51
    const-class v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->$VALUES:[Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    invoke-virtual {v0}, [Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    return-object v0
.end method
