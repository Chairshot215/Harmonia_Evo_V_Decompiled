.class public final Lcom/htc/wrap/android/provider/HtcWrapSettings$Gservices;
.super Lcom/htc/wrap/android/provider/HtcWrapSettings$NameValueTable;
.source "HtcWrapSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Gservices"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/wrap/android/provider/HtcWrapSettings$Gservices$QueryMap;
    }
.end annotation


# static fields
.field public static final ANR_BUGREPORT_RECIPIENT:Ljava/lang/String; = "anr_bugreport_recipient"

.field public static final AUTOTEST_CHECKIN_SECONDS:Ljava/lang/String; = "autotest_checkin_seconds"

.field public static final AUTOTEST_REBOOT_SECONDS:Ljava/lang/String; = "autotest_reboot_seconds"

.field public static final AUTOTEST_SUITES_FILE:Ljava/lang/String; = "autotest_suites_file"

.field public static final BATTERY_DISCHARGE_DURATION_THRESHOLD:Ljava/lang/String; = "battery_discharge_duration_threshold"

.field public static final BATTERY_DISCHARGE_THRESHOLD:Ljava/lang/String; = "battery_discharge_threshold"

.field public static final CHANGED_ACTION:Ljava/lang/String; = "com.google.gservices.intent.action.GSERVICES_CHANGED"

.field public static final CHECKIN_DUMPSYS_LIST:Ljava/lang/String; = "checkin_dumpsys_list"

.field public static final CHECKIN_EVENTS:Ljava/lang/String; = "checkin_events"

.field public static final CHECKIN_INTERVAL:Ljava/lang/String; = "checkin_interval"

.field public static final CHECKIN_PACKAGE_LIST:Ljava/lang/String; = "checkin_package_list"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DISK_FREE_CHANGE_REPORTING_THRESHOLD:Ljava/lang/String; = "disk_free_change_reporting_threshold"

.field public static final GLS_PUBLIC_KEY:Ljava/lang/String; = "google_login_public_key"

.field public static final GMAIL_BUFFER_SERVER_RESPONSE:Ljava/lang/String; = "gmail_buffer_server_response"

.field public static final GMAIL_CONFIG_INFO_MIN_SERVER_VERSION:Ljava/lang/String; = "gmail_config_info_min_server_version"

.field public static final GMAIL_DISALLOW_IMAGE_PREVIEWS:Ljava/lang/String; = "gmail_disallow_image_previews"

.field public static final GMAIL_DISCARD_ERROR_UPHILL_OP:Ljava/lang/String; = "gmail_discard_error_uphill_op"

.field public static final GMAIL_DISCARD_ERROR_UPHILL_OP_NEW:Ljava/lang/String; = "gmail_discard_error_uphill_op_new"

.field public static final GMAIL_MAX_ATTACHMENT_SIZE:Ljava/lang/String; = "gmail_max_attachment_size_bytes"

.field public static final GMAIL_MAX_GZIP_SIZE:Ljava/lang/String; = "gmail_max_gzip_size_bytes"

.field public static final GMAIL_NUM_RETRY_UPHILL_OP:Ljava/lang/String; = "gmail_num_retry_uphill_op"

.field public static final GMAIL_SEND_IMMEDIATELY:Ljava/lang/String; = "gmail_send_immediately"

.field public static final GMAIL_TIMEOUT_MS:Ljava/lang/String; = "gmail_timeout_ms"

.field public static final GMAIL_USE_MULTIPART_PROTOBUF:Ljava/lang/String; = "gmail_use_multipart_protobuf"

.field public static final GMAIL_WAIT_TIME_RETRY_UPHILL_OP:Ljava/lang/String; = "gmail_wait_time_retry_uphill_op"

.field public static final GOOGLE_CALENDAR_SYNC_WINDOW_DAYS:Ljava/lang/String; = "google_calendar_sync_window_days"

.field public static final GOOGLE_CALENDAR_SYNC_WINDOW_UPDATE_DAYS:Ljava/lang/String; = "google_calendar_sync_window_update_days"

.field public static final GOOGLE_LOGIN_GENERIC_AUTH_SERVICE:Ljava/lang/String; = "google_login_generic_auth_service"

.field public static final GOOGLE_SERVICES_PREFIX:Ljava/lang/String; = "google_services:"

.field public static final GPRS_REGISTER_CHECK_PERIOD_MS:Ljava/lang/String; = "gprs_register_check_period_ms"

.field public static final GSYNC_USE_RMQ2_ROUTING_INFO:Ljava/lang/String; = "gsync_use_rmq2_routing_info"

.field public static final GTALK_CHAT_EXPIRATION_TIME:Ljava/lang/String; = "gtalk_chat_expiration_time"

.field public static final GTALK_CHAT_MESSAGE_LIFETIME:Ljava/lang/String; = "gtalk_chat_message_lifetime"

.field public static final GTALK_COMPRESS:Ljava/lang/String; = "gtalk_compress"

.field public static final GTALK_DATA_MESSAGE_WAKELOCK_MS:Ljava/lang/String; = "gtalk_data_message_wakelock_ms"

.field public static final GTALK_FLICKR_PHOTO_INFO_URL:Ljava/lang/String; = "gtalk_flickr_photo_info_url"

.field public static final GTALK_FLICKR_PHOTO_URL:Ljava/lang/String; = "gtalk_flickr_photo_url"

.field public static final GTALK_MAX_CONNECTION_HISTORY_RECORDS:Ljava/lang/String; = "gtalk_max_conn_history_records"

.field public static final GTALK_MAX_RETRIES_FOR_AUTH_EXPIRED:Ljava/lang/String; = "gtalk_max_retries_for_auth_expired"

.field public static final GTALK_OLD_CHAT_MESSAGE_THRESHOLD_IN_SEC:Ljava/lang/String; = "gtalk_old_chat_msg_threshold_in_sec"

.field public static final GTALK_OTR_MESSAGE_LIFETIME:Ljava/lang/String; = "gtalk_otr_message_lifetime"

.field public static final GTALK_PICASA_ALBUM_URL:Ljava/lang/String; = "gtalk_picasa_album_url"

.field public static final GTALK_RMQ2_INCLUDE_STREAM_ID:Ljava/lang/String; = "gtalk_rmq2_include_stream_id"

.field public static final GTALK_SERVICE_ACTIVE_HEARTBEAT_INTERVAL_MS:Ljava/lang/String; = "gtalk_active_heartbeat_ping_interval_ms"

.field public static final GTALK_SERVICE_AWAY_HEARTBEAT_INTERVAL_MS:Ljava/lang/String; = "gtalk_heartbeat_ping_interval_ms"

.field public static final GTALK_SERVICE_CONNECT_ON_AUTO_SYNC:Ljava/lang/String; = "gtalk_connect_on_auto_sync"

.field public static final GTALK_SERVICE_HEARTBEAT_ACK_TIMEOUT_MS:Ljava/lang/String; = "gtalk_heartbeat_ack_timeout_ms"

.field public static final GTALK_SERVICE_HOSTNAME:Ljava/lang/String; = "gtalk_hostname"

.field public static final GTALK_SERVICE_IDLE_TIMEOUT_MS:Ljava/lang/String; = "gtalk_idle_timeout_ms"

.field public static final GTALK_SERVICE_MAX_RECONNECT_DELAY:Ljava/lang/String; = "gtalk_max_reconnect_delay"

.field public static final GTALK_SERVICE_MIN_RECONNECT_DELAY_LONG:Ljava/lang/String; = "gtalk_min_reconnect_delay_long"

.field public static final GTALK_SERVICE_MIN_RECONNECT_DELAY_SHORT:Ljava/lang/String; = "gtalk_min_reconnect_delay_short"

.field public static final GTALK_SERVICE_NOSYNC_HEARTBEAT_INTERVAL_MS:Ljava/lang/String; = "gtalk_nosync_heartbeat_ping_interval_ms"

.field public static final GTALK_SERVICE_RECONNECT_VARIANT_LONG:Ljava/lang/String; = "gtalk_reconnect_variant_long"

.field public static final GTALK_SERVICE_RECONNECT_VARIANT_SHORT:Ljava/lang/String; = "gtalk_reconnect_variant_short"

.field public static final GTALK_SERVICE_RMQ_ACK_INTERVAL:Ljava/lang/String; = "gtalk_rmq_ack_interval"

.field public static final GTALK_SERVICE_SECURE_PORT:Ljava/lang/String; = "gtalk_secure_port"

.field public static final GTALK_SERVICE_SHORT_NETWORK_DOWNTIME:Ljava/lang/String; = "gtalk_short_network_downtime"

.field public static final GTALK_SERVICE_SYNC_HEARTBEAT_INTERVAL_MS:Ljava/lang/String; = "gtalk_sync_heartbeat_ping_interval_ms"

.field public static final GTALK_SERVICE_WIFI_MAX_HEARTBEAT_INTERVAL_MS:Ljava/lang/String; = "gtalk_wifi_max_heartbeat_ping_interval_ms"

.field public static final GTALK_SSL_HANDSHAKE_TIMEOUT_MS:Ljava/lang/String; = "gtalk_ssl_handshake_timeout_ms"

.field public static final GTALK_SUPPORT_RMQ_AND_RMQ2_PROTOCOLS:Ljava/lang/String; = "gtalk_support_rmq_and_rmq2"

.field public static final GTALK_TERMS_OF_SERVICE_URL:Ljava/lang/String; = "gtalk_terms_of_service_url"

.field public static final GTALK_URL_SCRAPING_FOR_JPG:Ljava/lang/String; = "gtalk_url_scraping_for_jpg"

.field public static final GTALK_USE_BARE_JID_TIMEOUT_MS:Ljava/lang/String; = "gtalk_use_barejid_timeout_ms"

.field public static final GTALK_USE_RMQ2_PROTOCOL:Ljava/lang/String; = "gtalk_use_rmq2"

.field public static final GTALK_YOUTUBE_VIDEO_URL:Ljava/lang/String; = "gtalk_youtube_video_url"

.field public static final LAST_KMSG_KB:Ljava/lang/String; = "last_kmsg_kb"

.field public static final MARKET_FORCE_CHECKIN:Ljava/lang/String; = "market_force_checkin"

.field public static final MEMCHECK_EXEC_END_TIME:Ljava/lang/String; = "memcheck_exec_end_time"

.field public static final MEMCHECK_EXEC_START_TIME:Ljava/lang/String; = "memcheck_exec_start_time"

.field public static final MEMCHECK_INTERVAL:Ljava/lang/String; = "memcheck_interval"

.field public static final MEMCHECK_LOG_REALTIME_INTERVAL:Ljava/lang/String; = "memcheck_log_realtime_interval"

.field public static final MEMCHECK_MIN_ALARM:Ljava/lang/String; = "memcheck_min_alarm"

.field public static final MEMCHECK_MIN_SCREEN_OFF:Ljava/lang/String; = "memcheck_min_screen_off"

.field public static final MEMCHECK_PHONE_ENABLED:Ljava/lang/String; = "memcheck_phone_enabled"

.field public static final MEMCHECK_PHONE_HARD_THRESHOLD:Ljava/lang/String; = "memcheck_phone_hard"

.field public static final MEMCHECK_PHONE_SOFT_THRESHOLD:Ljava/lang/String; = "memcheck_phone_soft"

.field public static final MEMCHECK_RECHECK_INTERVAL:Ljava/lang/String; = "memcheck_recheck_interval"

.field public static final MEMCHECK_SYSTEM_ENABLED:Ljava/lang/String; = "memcheck_system_enabled"

.field public static final MEMCHECK_SYSTEM_HARD_THRESHOLD:Ljava/lang/String; = "memcheck_system_hard"

.field public static final MEMCHECK_SYSTEM_SOFT_THRESHOLD:Ljava/lang/String; = "memcheck_system_soft"

.field public static final MMS_MAXIMUM_MESSAGE_SIZE:Ljava/lang/String; = "mms_maximum_message_size"

.field public static final MMS_X_WAP_PROFILE_URL:Ljava/lang/String; = "mms_x_wap_profile_url"

.field public static final NITZ_UPDATE_DIFF:Ljava/lang/String; = "nitz_update_diff"

.field public static final NITZ_UPDATE_SPACING:Ljava/lang/String; = "nitz_update_spacing"

.field public static final OVERRIDE_ACTION:Ljava/lang/String; = "com.google.gservices.intent.action.GSERVICES_OVERRIDE"

.field public static final PARENTAL_CONTROL_APPS_LIST:Ljava/lang/String; = "parental_control_apps_list"

.field public static final PARENTAL_CONTROL_CHECK_ENABLED:Ljava/lang/String; = "parental_control_check_enabled"

.field public static final PARENTAL_CONTROL_EXPECTED_RESPONSE:Ljava/lang/String; = "parental_control_expected_response"

.field public static final PARENTAL_CONTROL_REDIRECT_REGEX:Ljava/lang/String; = "parental_control_redirect_regex"

.field public static final PARENTAL_CONTROL_TIMEOUT_IN_MS:Ljava/lang/String; = "parental_control_timeout_in_ms"

.field public static final PDP_WATCHDOG_ERROR_POLL_COUNT:Ljava/lang/String; = "pdp_watchdog_error_poll_count"

.field public static final PDP_WATCHDOG_ERROR_POLL_INTERVAL_MS:Ljava/lang/String; = "pdp_watchdog_error_poll_interval_ms"

.field public static final PDP_WATCHDOG_LONG_POLL_INTERVAL_MS:Ljava/lang/String; = "pdp_watchdog_long_poll_interval_ms"

.field public static final PDP_WATCHDOG_MAX_PDP_RESET_FAIL_COUNT:Ljava/lang/String; = "pdp_watchdog_max_pdp_reset_fail_count"

.field public static final PDP_WATCHDOG_PING_ADDRESS:Ljava/lang/String; = "pdp_watchdog_ping_address"

.field public static final PDP_WATCHDOG_PING_DEADLINE:Ljava/lang/String; = "pdp_watchdog_ping_deadline"

.field public static final PDP_WATCHDOG_POLL_INTERVAL_MS:Ljava/lang/String; = "pdp_watchdog_poll_interval_ms"

.field public static final PDP_WATCHDOG_TRIGGER_PACKET_COUNT:Ljava/lang/String; = "pdp_watchdog_trigger_packet_count"

.field public static final PROVISIONING_DIGEST:Ljava/lang/String; = "digest"

.field public static final PROVISIONING_OVERRIDE:Ljava/lang/String; = "override"

.field public static final PUSH_MESSAGING_REGISTRATION_URL:Ljava/lang/String; = "push_messaging_registration_url"

.field public static final REBOOT_INTERVAL:Ljava/lang/String; = "reboot_interval"

.field public static final REBOOT_START_TIME:Ljava/lang/String; = "reboot_start_time"

.field public static final REBOOT_WINDOW:Ljava/lang/String; = "reboot_window"

.field public static final SEARCH_MAX_RESULTS_PER_SOURCE:Ljava/lang/String; = "search_max_results_per_source"

.field public static final SEARCH_MAX_RESULTS_TO_DISPLAY:Ljava/lang/String; = "search_max_results_to_display"

.field public static final SEARCH_MAX_SHORTCUTS_RETURNED:Ljava/lang/String; = "search_max_shortcuts_returned"

.field public static final SEARCH_MAX_SOURCE_EVENT_AGE_MILLIS:Ljava/lang/String; = "search_max_source_event_age_millis"

.field public static final SEARCH_MAX_STAT_AGE_MILLIS:Ljava/lang/String; = "search_max_stat_age_millis"

.field public static final SEARCH_MIN_CLICKS_FOR_SOURCE_RANKING:Ljava/lang/String; = "search_min_clicks_for_source_ranking"

.field public static final SEARCH_MIN_IMPRESSIONS_FOR_SOURCE_RANKING:Ljava/lang/String; = "search_min_impressions_for_source_ranking"

.field public static final SEARCH_NUM_PROMOTED_SOURCES:Ljava/lang/String; = "search_num_promoted_sources"

.field public static final SEARCH_PER_SOURCE_CONCURRENT_QUERY_LIMIT:Ljava/lang/String; = "search_per_source_concurrent_query_limit"

.field public static final SEARCH_PREFILL_MILLIS:Ljava/lang/String; = "search_prefill_millis"

.field public static final SEARCH_PROMOTED_SOURCE_DEADLINE_MILLIS:Ljava/lang/String; = "search_promoted_source_deadline_millis"

.field public static final SEARCH_QUERY_THREAD_CORE_POOL_SIZE:Ljava/lang/String; = "search_query_thread_core_pool_size"

.field public static final SEARCH_QUERY_THREAD_MAX_POOL_SIZE:Ljava/lang/String; = "search_query_thread_max_pool_size"

.field public static final SEARCH_SHORTCUT_REFRESH_CORE_POOL_SIZE:Ljava/lang/String; = "search_shortcut_refresh_core_pool_size"

.field public static final SEARCH_SHORTCUT_REFRESH_MAX_POOL_SIZE:Ljava/lang/String; = "search_shortcut_refresh_max_pool_size"

.field public static final SEARCH_SOURCE_TIMEOUT_MILLIS:Ljava/lang/String; = "search_source_timeout_millis"

.field public static final SEARCH_THREAD_KEEPALIVE_SECONDS:Ljava/lang/String; = "search_thread_keepalive_seconds"

.field public static final SEARCH_WEB_RESULTS_OVERRIDE_LIMIT:Ljava/lang/String; = "search_web_results_override_limit"

.field public static final SEND_ACTION_APP_ERROR:Ljava/lang/String; = "send_action_app_error"

.field public static final SETTINGS_CONTRIBUTORS_PRETTY_URL:Ljava/lang/String; = "settings_contributors_pretty_url"

.field public static final SETTINGS_CONTRIBUTORS_URL:Ljava/lang/String; = "settings_contributors_url"

.field public static final SETTINGS_TOS_PRETTY_URL:Ljava/lang/String; = "settings_tos_pretty_url"

.field public static final SETTINGS_TOS_URL:Ljava/lang/String; = "settings_tos_url"

.field public static final SETUP_ANDROID_PRIVACY_URL:Ljava/lang/String; = "setup_android_privacy_url"

.field public static final SETUP_GOOGLE_PRIVACY_URL:Ljava/lang/String; = "setup_google_privacy_url"

.field public static final SETUP_GOOGLE_TOS_URL:Ljava/lang/String; = "setup_google_tos_url"

.field public static final SHORT_KEYLIGHT_DELAY_MS:Ljava/lang/String; = "short_keylight_delay_ms"

.field public static final SMS_OUTGOING_CEHCK_MAX_COUNT:Ljava/lang/String; = "sms_outgoing_check_max_count"

.field public static final SMS_OUTGOING_CHECK_INTERVAL_MS:Ljava/lang/String; = "sms_outgoing_check_interval_ms"

.field public static final SSL_SESSION_CACHE:Ljava/lang/String; = "ssl_session_cache"

.field public static final SYNC_MAX_RETRY_DELAY_IN_SECONDS:Ljava/lang/String; = "sync_max_retry_delay_in_seconds"

.field public static final SYNC_MIN_GZIP_BYTES:Ljava/lang/String; = "sync_min_gzip_bytes"

.field public static final SYS_FREE_STORAGE_LOG_INTERVAL:Ljava/lang/String; = "sys_free_storage_log_interval"

.field public static final SYS_PROP_SETTING_VERSION:Ljava/lang/String; = "sys.settings_gservices_version"

.field public static final SYS_STORAGE_THRESHOLD_PERCENTAGE:Ljava/lang/String; = "sys_storage_threshold_percentage"

.field public static final TRANSCODER_URL:Ljava/lang/String; = "mobile_transcoder_url"

.field public static final USE_LOCATION_FOR_SERVICES:Ljava/lang/String; = "use_location"

.field public static final USE_MSISDN_TOKEN:Ljava/lang/String; = "use_msisdn_token"

.field public static final VENDING_BACKUP_STATE:Ljava/lang/String; = "vending_backup_state"

.field public static final VENDING_CARRIER_CREDENTIALS_BUFFER_MS:Ljava/lang/String; = "vending_carrier_cred_buf_ms"

.field public static final VENDING_CARRIER_PROVISIONING_REFRESH_FREQUENCY_MS:Ljava/lang/String; = "vending_carrier_ref_freq_ms"

.field public static final VENDING_CARRIER_PROVISIONING_RETRY_MS:Ljava/lang/String; = "vending_carrier_prov_retry_ms"

.field public static final VENDING_DEFAULT_FILTER:Ljava/lang/String; = "vending_default_filter"

.field public static final VENDING_DISK_INPUT_BUFFER_BYTES:Ljava/lang/String; = "vending_disk_input_buffer_bytes"

.field public static final VENDING_DISK_OUTPUT_BUFFER_BYTES:Ljava/lang/String; = "vending_disk_output_buffer_bytes"

.field public static final VENDING_DOWNLOADING_KICK_TIMEOUT_MS:Ljava/lang/String; = "vending_downloading_kick_ms"

.field public static final VENDING_HEARTBEAT_FREQUENCY_MS:Ljava/lang/String; = "vending_heartbeat_frequency_ms"

.field public static final VENDING_PENDING_DOWNLOAD_RESEND_FREQUENCY_MS:Ljava/lang/String; = "vending_pd_resend_frequency_ms"

.field public static final VENDING_PROMO_REFRESH_FREQUENCY_MS:Ljava/lang/String; = "vending_promo_refresh_freq_ms"

.field public static final VENDING_REQUIRE_SIM_FOR_PURCHASE:Ljava/lang/String; = "vending_require_sim_for_purchase"

.field public static final VENDING_SUPPORT_URL:Ljava/lang/String; = "vending_support_url"

.field public static final VENDING_SYNC_FREQUENCY_MS:Ljava/lang/String; = "vending_sync_frequency_ms"

.field public static final VENDING_TAB_1_RANKING_TYPE:Ljava/lang/String; = "vending_tab_1_ranking_type"

.field public static final VENDING_TAB_1_TITLE:Ljava/lang/String; = "vending_tab_1_title"

.field public static final VENDING_TAB_2_RANKING_TYPE:Ljava/lang/String; = "vending_tab_2_ranking_type"

.field public static final VENDING_TAB_2_TITLE:Ljava/lang/String; = "vending_tab_2_title"

.field public static final VENDING_TOS_MISSING_URL:Ljava/lang/String; = "vending_tos_missing_url"

.field public static final VENDING_TOS_URL:Ljava/lang/String; = "vending_tos_url"

.field public static final VENDING_TOS_VERSION:Ljava/lang/String; = "vending_tos_version"

.field public static final VENDING_USE_CHECKOUT_QA_SERVICE:Ljava/lang/String; = "vending_use_checkout_qa_service"

.field public static final WIFI_IDLE_MS:Ljava/lang/String; = "wifi_idle_ms"

.field public static final WIMAX_IDLE_MS:Ljava/lang/String; = "wimax_idle_ms"

.field public static final YOUTUBE_USE_PROXY:Ljava/lang/String; = "youtube_use_proxy"

.field private static volatile mNameValueCache:Lcom/htc/wrap/android/provider/Settings$NameValueCache;

.field private static final mNameValueCacheLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2586
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$Gservices;->mNameValueCache:Lcom/htc/wrap/android/provider/Settings$NameValueCache;

    .line 2587
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$Gservices;->mNameValueCacheLock:Ljava/lang/Object;

    .line 2661
    const-string v0, "content://settings/gservices"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$Gservices;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2568
    invoke-direct {p0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$NameValueTable;-><init>()V

    .line 3747
    return-void
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 3
    .parameter "resolver"
    .parameter "name"
    .parameter "defValue"

    .prologue
    .line 2622
    invoke-static {p0, p1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2625
    .local v1, valString:Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2629
    .local v2, value:I
    :goto_0
    return v2

    .end local v2           #value:I
    :cond_0
    move v2, p2

    .line 2625
    goto :goto_0

    .line 2626
    :catch_0
    move-exception v0

    .line 2627
    .local v0, e:Ljava/lang/NumberFormatException;
    move v2, p2

    .restart local v2       #value:I
    goto :goto_0
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 4
    .parameter "resolver"
    .parameter "name"
    .parameter "defValue"

    .prologue
    .line 2638
    invoke-static {p0, p1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2641
    .local v1, valString:Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 2645
    .local v2, value:J
    :goto_0
    return-wide v2

    .end local v2           #value:J
    :cond_0
    move-wide v2, p2

    .line 2641
    goto :goto_0

    .line 2642
    :catch_0
    move-exception v0

    .line 2643
    .local v0, e:Ljava/lang/NumberFormatException;
    move-wide v2, p2

    .restart local v2       #value:J
    goto :goto_0
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "resolver"
    .parameter "name"

    .prologue
    .line 2596
    sget-object v1, Lcom/htc/wrap/android/provider/HtcWrapSettings$Gservices;->mNameValueCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2597
    :try_start_0
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$Gservices;->mNameValueCache:Lcom/htc/wrap/android/provider/Settings$NameValueCache;

    if-nez v0, :cond_0

    .line 2598
    new-instance v0, Lcom/htc/wrap/android/provider/Settings$NameValueCache;

    const-string v2, "sys.settings_gservices_version"

    sget-object v3, Lcom/htc/wrap/android/provider/HtcWrapSettings$Gservices;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Lcom/htc/wrap/android/provider/Settings$NameValueCache;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$Gservices;->mNameValueCache:Lcom/htc/wrap/android/provider/Settings$NameValueCache;

    .line 2600
    :cond_0
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$Gservices;->mNameValueCache:Lcom/htc/wrap/android/provider/Settings$NameValueCache;

    invoke-virtual {v0, p0, p1}, Lcom/htc/wrap/android/provider/Settings$NameValueCache;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 2601
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "name"

    .prologue
    .line 2655
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$Gservices;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Gservices;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "resolver"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 2613
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$Gservices;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1, p2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Gservices;->putString(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
