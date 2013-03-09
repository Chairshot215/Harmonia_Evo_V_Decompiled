.class public Lcom/htc/profileflag/ProfileConfig;
.super Ljava/lang/Object;
.source "ProfileConfig.java"


# static fields
.field static final LOGTAG:Ljava/lang/String; = "ProfileConfig"

.field public static final LOGTAG_LAUNCH:Ljava/lang/String; = "ProfileLaunch"

.field public static final LOGTAG_RESUME:Ljava/lang/String; = "ProfileResume"

.field private static final PROP_ANRHISTORY:Ljava/lang/String; = "debugtool.anrhistory"

.field private static final PROP_ANR_DUMP_BINDER:Ljava/lang/String; = "profiler.anr_dump_binder"

.field private static final PROP_ANR_DUMP_NATIVE_UID:Ljava/lang/String; = "profiler.anr_dump_native_uid"

.field private static final PROP_CHECK_HEAP:Ljava/lang/String; = "profiler.checkheap"

.field private static final PROP_CHECK_LOW_MEMORY:Ljava/lang/String; = "profiler.checklowmemory"

.field private static final PROP_DEBUGBROADCAST:Ljava/lang/String; = "profiler.debugbroadcast"

.field private static final PROP_DEBUGB_TIMETICK:Ljava/lang/String; = "profiler.debug.timetick"

.field private static final PROP_DEBUG_BATTERY_HISTORY:Ljava/lang/String; = "profiler.dbg.batthistory"

.field private static final PROP_DEBUG_HIDE_BG_ANR:Ljava/lang/String; = "profiler.debug.hide_bg_anr"

.field private static final PROP_DEBUG_MONITOR:Ljava/lang/String; = "profiler.debugmonitor"

.field private static final PROP_DEBUG_SCHEDULE:Ljava/lang/String; = "profiler.debug_schedule"

.field private static final PROP_DEBUG_WAKELOCK:Ljava/lang/String; = "profiler.wakelock"

.field private static final PROP_FAST_LAUNCH:Ljava/lang/String; = "fast_launch"

.field private static final PROP_FEATURE_HARDWARE_RESET:Ljava/lang/String; = "ro.product.hwreset"

.field private static final PROP_FEATURE_HARDWARE_RESET_TIMER1:Ljava/lang/String; = "ro.product.hwreset.timer1"

.field private static final PROP_FEATURE_HARDWARE_RESET_TIMER2:Ljava/lang/String; = "ro.product.hwreset.timer2"

.field private static final PROP_FEATURE_SCREEN_CAPTURE:Ljava/lang/String; = "ro.htc.framework.screencapture"

.field private static final PROP_FEATURE_SHAREKEY_LONG_PRESS_ACT:Ljava/lang/String; = "ro.htc.sharekey.lact"

.field private static final PROP_FEATURE_SHAREKEY_LONG_PRESS_INTENT_ACTION:Ljava/lang/String; = "ro.htc.sharekey.lint"

.field private static final PROP_FEATURE_SHAREKEY_LONG_PRESS_PKG:Ljava/lang/String; = "ro.htc.sharekey.lpkg"

.field private static final PROP_FEATURE_SHAREKEY_SHORT_PRESS_ACT:Ljava/lang/String; = "ro.htc.sharekey.sact"

.field private static final PROP_FEATURE_SHAREKEY_SHORT_PRESS_INTENT_ACTION:Ljava/lang/String; = "ro.htc.sharekey.sint"

.field private static final PROP_FEATURE_SHAREKEY_SHORT_PRESS_PKG:Ljava/lang/String; = "ro.htc.sharekey.spkg"

.field public static final PROP_FORCE_DISABLE_ERROR_REPORT:Ljava/lang/String; = "profiler.force_disable_err_rpt"

.field public static final PROP_FORCE_DISABLE_ULOG:Ljava/lang/String; = "profiler.force_disable_ulog"

.field private static final PROP_FREE_NATIVE_BITMAP:Ljava/lang/String; = "profiler.freeNativeBmp"

.field private static final PROP_FREE_NATIVE_BITMAP_DEBUG:Ljava/lang/String; = "profiler.freeNativeBmpDebug"

.field private static final PROP_HUNG_DOBUGREPORT:Ljava/lang/String; = "profiler.hung.dumpdobugreport"

.field private static final PROP_HUNG_DUMPALLPROCESSES:Ljava/lang/String; = "profiler.hung.dumpallprocesses"

.field private static final PROP_HUNG_DUMPMEDIANATIVE:Ljava/lang/String; = "profiler.hung.dumpmedianative"

.field private static final PROP_HUNG_DUMPSYSNATIVE:Ljava/lang/String; = "profiler.hung.dumpsysnative"

.field private static final PROP_HUNG_KEEPALIVE:Ljava/lang/String; = "profiler.hung.keepalive"

.field private static final PROP_KERNELSTACK:Ljava/lang/String; = "profiler.debugtool.kernelstack"

.field private static final PROP_KEYINPUTQUEUE_DEBUGUPDOWN:Ljava/lang/String; = "profiler.KIQdebugupdown"

.field private static final PROP_KEY_LAUNCH:Ljava/lang/String; = "profiler.launch"

.field private static final PROP_KEY_PERFORMANCE:Ljava/lang/String; = "profiler.performance"

.field private static final PROP_KEY_PREFIX:Ljava/lang/String; = "profiler."

.field private static final PROP_KEY_RESUME:Ljava/lang/String; = "profiler.resume"

.field private static final PROP_LAUNCHPID_FILEPATH:Ljava/lang/String; = "/sdcard/profilePID"

.field private static final PROP_LOG_FPS:Ljava/lang/String; = "profiler.logfps"

.field private static final PROP_MONITOR_THREAD_CPU_USAGE:Ljava/lang/String; = "profiler.monitorthreadcpuusage"

.field private static final PROP_NO_ROTATIONANIMATION:Ljava/lang/String; = "profiler.no_RotationAnimation"

.field private static final PROP_OPEN_CURSOR:Ljava/lang/String; = "profiler.opencursor"

.field private static final PROP_POWER:Ljava/lang/String; = "profiler.power"

.field private static final PROP_RECYCLE_BITMAP:Ljava/lang/String; = "profiler.recyclebmp"

.field private static final PROP_RECYCLE_BITMAP_SIZE:Ljava/lang/String; = "profiler.recyclebmpsize"

.field private static final PROP_STRICT_POLICY_SET:Ljava/lang/String; = "strictmode.policyset"

.field private static final PROP_SYNCDETECTOR:Ljava/lang/String; = "profiler.syncdetector"

.field private static final PROP_VALUE_FORCE_WRITE_AHEAD_LOGGING:Ljava/lang/String; = "htc.fw.db.enable_wal"

.field private static final PROP_VALUE_SHAREKEY_LONG_PRESS_DEFAULT_ACT:Ljava/lang/String; = ""

.field private static final PROP_VALUE_SHAREKEY_LONG_PRESS_DEFAULT_INTENT_ACTION:Ljava/lang/String; = "com.htc.socialnetwork.intent.action.share2"

.field private static final PROP_VALUE_SHAREKEY_LONG_PRESS_DEFAULT_PKG:Ljava/lang/String; = ""

.field private static final PROP_VALUE_SHAREKEY_SHORT_PRESS_DEFAULT_ACT:Ljava/lang/String; = ""

.field private static final PROP_VALUE_SHAREKEY_SHORT_PRESS_DEFAULT_INTENT_ACTION:Ljava/lang/String; = "com.htc.socialnetwork.intent.action.share1"

.field private static final PROP_VALUE_SHAREKEY_SHORT_PRESS_DEFAULT_PKG:Ljava/lang/String; = ""

.field private static final PROP_WINDOWMANAGERSERVICE_DEBUGUPDOWN:Ljava/lang/String; = "profiler.WMSdebugupdown"

.field static dumped:Z

.field private static mEnableReleaseBitmapDevices:[B

.field private static profile_anr_dump_binder:Z

.field private static profile_anr_dump_native_uid:I

.field private static profile_anrhistory:Z

.field private static profile_checkheap:Z

.field private static profile_checklowmemory:Z

.field private static profile_debug_batteryhistory:Z

.field private static profile_debug_hideBgAnr:I

.field private static profile_debug_schedule:Z

.field private static profile_debug_timetick:Z

.field private static profile_debug_wakelock:Z

.field private static profile_debugbroadcast:Z

.field private static profile_debugmonitor:Z

.field private static profile_fast_launch:Z

.field private static profile_force_disable_error_report:Z

.field private static profile_force_disable_ulog:Z

.field private static profile_framework_force_write_ahead_logging:Z

.field private static profile_framework_screencapture:Z

.field private static profile_framework_sharekey_long_press_act:Ljava/lang/String;

.field private static profile_framework_sharekey_long_press_intent_action:Ljava/lang/String;

.field private static profile_framework_sharekey_long_press_pkg:Ljava/lang/String;

.field private static profile_framework_sharekey_short_press_act:Ljava/lang/String;

.field private static profile_framework_sharekey_short_press_intent_action:Ljava/lang/String;

.field private static profile_framework_sharekey_short_press_pkg:Ljava/lang/String;

.field private static profile_freeNativeBmp:I

.field private static profile_freeNativeBmpDebug:Z

.field private static profile_hardware_reset_feature:I

.field private static profile_hardware_reset_feature_timer1:I

.field private static profile_hardware_reset_feature_timer2:I

.field private static profile_hung_dobugreport:Z

.field private static profile_hung_dumpallprocesses:Z

.field private static profile_hung_dumpmedianative:Z

.field private static profile_hung_dumpsysnative:Z

.field private static profile_hung_keepalive:Z

.field private static profile_kernelstack:Z

.field private static profile_keyInputQueue_debugUpDown:Z

.field private static profile_launch:Z

.field private static profile_launch_pid:I

.field private static profile_log_fps:I

.field private static profile_monitor_thread_cpu_usage:Z

.field private static profile_no_RotationAnimation:Z

.field private static profile_opencursor:Z

.field private static profile_performance:I

.field private static profile_power:Z

.field private static profile_recyclebmp:Z

.field private static profile_recyclebmpsize:I

.field private static profile_resume:Z

.field private static profile_syncdetector:Z

.field private static profile_windowManagerService_debugUpDown:Z

.field private static strictmode_policy_set:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v3, "ro.factorytest"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v1, v4

    :goto_0
    if-eqz v1, :cond_8

    sput-boolean v5, Lcom/htc/profileflag/ProfileConfig;->profile_force_disable_error_report:Z

    :goto_1
    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v6, "user"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    sput-boolean v5, Lcom/htc/profileflag/ProfileConfig;->profile_force_disable_ulog:Z

    :goto_2
    const-string/jumbo v3, "profiler.resume"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/htc/profileflag/ProfileConfig;->profile_resume:Z

    const-string/jumbo v3, "profiler.launch"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/htc/profileflag/ProfileConfig;->profile_launch:Z

    const-string/jumbo v3, "profiler.performance"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/htc/profileflag/ProfileConfig;->profile_performance:I

    const-string/jumbo v3, "profiler.opencursor"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/htc/profileflag/ProfileConfig;->profile_opencursor:Z

    const-string/jumbo v3, "profiler.checkheap"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/htc/profileflag/ProfileConfig;->profile_checkheap:Z

    const-string/jumbo v3, "profiler.recyclebmp"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/htc/profileflag/ProfileConfig;->profile_recyclebmp:Z

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x42

    if-eq v3, v6, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x62

    if-eq v3, v6, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x7e

    if-ne v3, v6, :cond_a

    :cond_0
    move v0, v5

    :goto_3
    if-eqz v0, :cond_b

    move v3, v4

    :goto_4
    sput v3, Lcom/htc/profileflag/ProfileConfig;->profile_freeNativeBmp:I

    const-string/jumbo v3, "profiler.freeNativeBmpDebug"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/htc/profileflag/ProfileConfig;->profile_freeNativeBmpDebug:Z

    const-string/jumbo v3, "profiler.recyclebmpsize"

    const/16 v6, 0x32

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/htc/profileflag/ProfileConfig;->profile_recyclebmpsize:I

    const-string/jumbo v3, "profiler.checklowmemory"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/htc/profileflag/ProfileConfig;->profile_checklowmemory:Z

    const-string/jumbo v3, "profiler.debugmonitor"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/htc/profileflag/ProfileConfig;->profile_debugmonitor:Z

    const-string/jumbo v3, "profiler.KIQdebugupdown"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/htc/profileflag/ProfileConfig;->profile_keyInputQueue_debugUpDown:Z

    const-string/jumbo v3, "profiler.WMSdebugupdown"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/htc/profileflag/ProfileConfig;->profile_windowManagerService_debugUpDown:Z

    const/4 v3, -0x1

    sput v3, Lcom/htc/profileflag/ProfileConfig;->profile_launch_pid:I

    const-string v3, "debugtool.anrhistory"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/htc/profileflag/ProfileConfig;->profile_anrhistory:Z

    const-string/jumbo v3, "profiler.hung.keepalive"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/htc/profileflag/ProfileConfig;->profile_hung_keepalive:Z

    const-string/jumbo v3, "profiler.hung.dumpallprocesses"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/htc/profileflag/ProfileConfig;->profile_hung_dumpallprocesses:Z

    const-string/jumbo v3, "profiler.hung.dumpsysnative"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/htc/profileflag/ProfileConfig;->profile_hung_dumpsysnative:Z

    const-string/jumbo v3, "profiler.hung.dumpmedianative"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/htc/profileflag/ProfileConfig;->profile_hung_dumpmedianative:Z

    const-string/jumbo v3, "profiler.hung.dumpdobugreport"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/htc/profileflag/ProfileConfig;->profile_hung_dobugreport:Z

    const-string/jumbo v3, "profiler.monitorthreadcpuusage"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/htc/profileflag/ProfileConfig;->profile_monitor_thread_cpu_usage:Z

    const-string/jumbo v3, "profiler.wakelock"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/htc/profileflag/ProfileConfig;->profile_debug_wakelock:Z

    const-string/jumbo v3, "profiler.debugtool.kernelstack"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/htc/profileflag/ProfileConfig;->profile_kernelstack:Z

    const-string/jumbo v3, "profiler.anr_dump_binder"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_c

    move v3, v4

    :goto_5
    sput-boolean v3, Lcom/htc/profileflag/ProfileConfig;->profile_anr_dump_binder:Z

    sput v4, Lcom/htc/profileflag/ProfileConfig;->profile_anr_dump_native_uid:I

    const-string/jumbo v3, "strictmode.policyset"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/htc/profileflag/ProfileConfig;->strictmode_policy_set:I

    const-string/jumbo v3, "profiler.no_RotationAnimation"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_1
    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_no_RotationAnimation:Z

    const-string/jumbo v3, "profiler.logfps"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/htc/profileflag/ProfileConfig;->profile_log_fps:I

    const-string/jumbo v3, "profiler.debug.hide_bg_anr"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/htc/profileflag/ProfileConfig;->profile_debug_hideBgAnr:I

    const-string/jumbo v3, "ro.htc.framework.screencapture"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/htc/profileflag/ProfileConfig;->profile_framework_screencapture:Z

    const-string/jumbo v3, "ro.product.hwreset"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/htc/profileflag/ProfileConfig;->profile_hardware_reset_feature:I

    const-string/jumbo v3, "ro.product.hwreset.timer1"

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/htc/profileflag/ProfileConfig;->profile_hardware_reset_feature_timer1:I

    const-string/jumbo v3, "ro.product.hwreset.timer2"

    const/16 v5, 0x8

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/htc/profileflag/ProfileConfig;->profile_hardware_reset_feature_timer2:I

    sget v3, Lcom/htc/profileflag/ProfileConfig;->profile_hardware_reset_feature_timer1:I

    const/4 v5, 0x2

    if-le v3, v5, :cond_2

    sget v3, Lcom/htc/profileflag/ProfileConfig;->profile_hardware_reset_feature_timer1:I

    const/16 v5, 0xa

    if-le v3, v5, :cond_3

    :cond_2
    sput v7, Lcom/htc/profileflag/ProfileConfig;->profile_hardware_reset_feature_timer1:I

    :cond_3
    sget v3, Lcom/htc/profileflag/ProfileConfig;->profile_hardware_reset_feature_timer2:I

    sget v5, Lcom/htc/profileflag/ProfileConfig;->profile_hardware_reset_feature_timer1:I

    if-gt v3, v5, :cond_4

    sget v3, Lcom/htc/profileflag/ProfileConfig;->profile_hardware_reset_feature_timer1:I

    add-int/lit8 v3, v3, 0x3

    sput v3, Lcom/htc/profileflag/ProfileConfig;->profile_hardware_reset_feature_timer2:I

    :cond_4
    const-string/jumbo v3, "ro.htc.sharekey.spkg"

    invoke-static {v3}, Lcom/htc/profileflag/ProfileConfig;->init_sharekey_property_value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_short_press_pkg:Ljava/lang/String;

    const-string/jumbo v3, "ro.htc.sharekey.sact"

    invoke-static {v3}, Lcom/htc/profileflag/ProfileConfig;->init_sharekey_property_value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_short_press_act:Ljava/lang/String;

    const-string/jumbo v3, "ro.htc.sharekey.sint"

    invoke-static {v3}, Lcom/htc/profileflag/ProfileConfig;->init_sharekey_property_value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_short_press_intent_action:Ljava/lang/String;

    const-string v3, ""

    sget-object v5, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_short_press_pkg:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, ""

    sget-object v5, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_short_press_act:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, ""

    sget-object v5, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_short_press_intent_action:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, ""

    sput-object v3, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_short_press_pkg:Ljava/lang/String;

    const-string v3, ""

    sput-object v3, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_short_press_act:Ljava/lang/String;

    const-string v3, "com.htc.socialnetwork.intent.action.share1"

    sput-object v3, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_short_press_intent_action:Ljava/lang/String;

    const-string v3, "ProfileConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "share key short press:get default intent - package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_short_press_pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", activity:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_short_press_act:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", action:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_short_press_intent_action:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string/jumbo v3, "ro.htc.sharekey.lpkg"

    invoke-static {v3}, Lcom/htc/profileflag/ProfileConfig;->init_sharekey_property_value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_long_press_pkg:Ljava/lang/String;

    const-string/jumbo v3, "ro.htc.sharekey.lact"

    invoke-static {v3}, Lcom/htc/profileflag/ProfileConfig;->init_sharekey_property_value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_long_press_act:Ljava/lang/String;

    const-string/jumbo v3, "ro.htc.sharekey.lint"

    invoke-static {v3}, Lcom/htc/profileflag/ProfileConfig;->init_sharekey_property_value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_long_press_intent_action:Ljava/lang/String;

    const-string v3, ""

    sget-object v5, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_long_press_pkg:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, ""

    sget-object v5, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_long_press_act:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, ""

    sget-object v5, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_long_press_intent_action:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, ""

    sput-object v3, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_long_press_pkg:Ljava/lang/String;

    const-string v3, ""

    sput-object v3, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_long_press_act:Ljava/lang/String;

    const-string v3, "com.htc.socialnetwork.intent.action.share2"

    sput-object v3, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_long_press_intent_action:Ljava/lang/String;

    const-string v3, "ProfileConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "share key long press:get default intent - package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_long_press_pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", activity"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_long_press_act:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", action:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_long_press_intent_action:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string/jumbo v3, "htc.fw.db.enable_wal"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/htc/profileflag/ProfileConfig;->profile_framework_force_write_ahead_logging:Z

    const-string/jumbo v3, "profiler.syncdetector"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/htc/profileflag/ProfileConfig;->profile_syncdetector:Z

    const-string/jumbo v3, "profiler.debugbroadcast"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/htc/profileflag/ProfileConfig;->profile_debugbroadcast:Z

    const-string/jumbo v3, "profiler.debug.timetick"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/htc/profileflag/ProfileConfig;->profile_debug_timetick:Z

    new-array v3, v4, [B

    sput-object v3, Lcom/htc/profileflag/ProfileConfig;->mEnableReleaseBitmapDevices:[B

    const-string v3, "fast_launch"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/htc/profileflag/ProfileConfig;->profile_fast_launch:Z

    const-string/jumbo v3, "profiler.debug_schedule"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/htc/profileflag/ProfileConfig;->profile_debug_schedule:Z

    const-string/jumbo v3, "profiler.power"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/htc/profileflag/ProfileConfig;->profile_power:Z

    const-string/jumbo v3, "profiler.dbg.batthistory"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/htc/profileflag/ProfileConfig;->profile_debug_batteryhistory:Z

    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->dumped:Z

    return-void

    :cond_7
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v3, "profiler.force_disable_err_rpt"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/htc/profileflag/ProfileConfig;->profile_force_disable_error_report:Z

    goto/16 :goto_1

    :cond_9
    sput-boolean v4, Lcom/htc/profileflag/ProfileConfig;->profile_force_disable_ulog:Z

    goto/16 :goto_2

    :cond_a
    move v0, v4

    goto/16 :goto_3

    :cond_b
    const-string/jumbo v3, "profiler.freeNativeBmp"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto/16 :goto_4

    :cond_c
    move v3, v5

    goto/16 :goto_5
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static canDoHPROF(I)Z
    .locals 25

    :try_start_0
    const-string/jumbo v19, "profiler.hprof.once"

    const/16 v20, 0x1

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    if-eqz v19, :cond_0

    sget-boolean v19, Lcom/htc/profileflag/ProfileConfig;->dumped:Z

    if-eqz v19, :cond_0

    const-string v19, "ProfileConfig"

    const-string v20, "HPROF already dumped"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x0

    :goto_0
    return v16

    :cond_0
    const-string v19, "ProfileConfig"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "canDoHPROF: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move/from16 v0, p0

    div-int/lit16 v0, v0, 0x400

    move/from16 v21, v0

    move/from16 v0, v21

    div-int/lit16 v0, v0, 0x400

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "mb"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v19, "chmod 777 /data/misc"

    invoke-static/range {v19 .. v19}, Lcom/htc/profileflag/ProfileConfig;->runRootCommand(Ljava/lang/String;)Z

    new-instance v5, Ljava/io/File;

    const-string v19, "/data/misc/"

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->canWrite()Z

    move-result v19

    if-eqz v19, :cond_2

    new-instance v19, Lcom/htc/profileflag/ProfileConfig$1;

    invoke-direct/range {v19 .. v19}, Lcom/htc/profileflag/ProfileConfig$1;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v8

    new-instance v19, Lcom/htc/profileflag/ProfileConfig$2;

    invoke-direct/range {v19 .. v19}, Lcom/htc/profileflag/ProfileConfig$2;-><init>()V

    move-object/from16 v0, v19

    invoke-static {v8, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const-wide/16 v17, 0x0

    move-object v2, v8

    array-length v10, v2

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v10, :cond_1

    aget-object v7, v2, v9

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v19

    add-long v17, v17, v19

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    const-string/jumbo v19, "profiler.hprof.max"

    const/16 v20, 0x28

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v19

    move/from16 v0, v19

    mul-int/lit16 v0, v0, 0x400

    move/from16 v19, v0

    move/from16 v0, v19

    mul-int/lit16 v0, v0, 0x400

    move/from16 v19, v0

    sub-int v19, v19, p0

    move/from16 v0, v19

    int-to-long v12, v0

    cmp-long v19, v17, v12

    if-lez v19, :cond_2

    const-string v19, "ProfileConfig"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "HPROF use more than "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-wide/16 v21, 0x400

    div-long v21, v12, v21

    const-wide/16 v23, 0x400

    div-long v21, v21, v23

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "mb, trim!"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v8

    array-length v10, v2

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v10, :cond_2

    aget-object v7, v2, v9

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v19

    sub-long v17, v17, v19

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    const-string v19, "ProfileConfig"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Trim HPROF: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v19, v17, v12

    if-gez v19, :cond_3

    :cond_2
    new-instance v11, Landroid/os/StatFs;

    const-string v19, "/data/misc/"

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    invoke-virtual {v11}, Landroid/os/StatFs;->getBlockSize()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    mul-long v3, v19, v21

    const-string/jumbo v19, "profiler.hprof.min"

    const/16 v20, 0x14

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v19

    move/from16 v0, v19

    mul-int/lit16 v0, v0, 0x400

    move/from16 v19, v0

    move/from16 v0, v19

    mul-int/lit16 v0, v0, 0x400

    move/from16 v19, v0

    add-int v19, v19, p0

    move/from16 v0, v19

    int-to-long v14, v0

    cmp-long v19, v3, v14

    if-ltz v19, :cond_4

    const/16 v16, 0x1

    :goto_3
    if-eqz v16, :cond_5

    const/16 v19, 0x1

    :goto_4
    sput-boolean v19, Lcom/htc/profileflag/ProfileConfig;->dumped:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v6

    const-string v19, "ProfileConfig"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "error in canDoHPROF "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v16, 0x0

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    :cond_4
    const/16 v16, 0x0

    goto :goto_3

    :cond_5
    :try_start_1
    sget-boolean v19, Lcom/htc/profileflag/ProfileConfig;->dumped:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method private static dumpFD()V
    .locals 3

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ls -l /proc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/fd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/profileflag/ProfileConfig;->runRootCommand(Ljava/lang/String;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    const-string v0, "ProfileConfig"

    const-string v1, "dump FD failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static getCheckHeap()Z
    .locals 1

    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_checkheap:Z

    return v0
.end method

.method public static getCheckLowMemory()Z
    .locals 1

    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_checklowmemory:Z

    return v0
.end method

.method public static getFreeNativeBitmap()Z
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    sget v6, Lcom/htc/profileflag/ProfileConfig;->profile_freeNativeBmp:I

    if-ne v4, v6, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    sget v6, Lcom/htc/profileflag/ProfileConfig;->profile_freeNativeBmp:I

    if-nez v6, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    const/4 v6, -0x1

    sget v7, Lcom/htc/profileflag/ProfileConfig;->profile_freeNativeBmp:I

    if-ne v6, v7, :cond_4

    sget-object v0, Lcom/htc/profileflag/ProfileConfig;->mEnableReleaseBitmapDevices:[B

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_3

    aget-byte v1, v0, v2

    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v6, v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v4, v5

    goto :goto_0

    :cond_4
    move v4, v5

    goto :goto_0
.end method

.method public static getFreeNativeBitmapDebug()Z
    .locals 1

    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_freeNativeBmpDebug:Z

    return v0
.end method

.method public static getProfileANRDumpBinder()Z
    .locals 1

    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_anr_dump_binder:Z

    return v0
.end method

.method public static getProfileANRDumpNativeUID()I
    .locals 1

    sget v0, Lcom/htc/profileflag/ProfileConfig;->profile_anr_dump_native_uid:I

    return v0
.end method

.method public static getProfileDebugANRHistory()Z
    .locals 1

    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_anrhistory:Z

    return v0
.end method

.method public static getProfileDebugBatteryHistory()Z
    .locals 1

    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_debug_batteryhistory:Z

    return v0
.end method

.method public static getProfileDebugBroadcast()Z
    .locals 2

    const/16 v0, 0x93

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v0, v1, :cond_0

    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_debugbroadcast:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getProfileDebugHungDoBugreport()Z
    .locals 1

    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_hung_dobugreport:Z

    return v0
.end method

.method public static getProfileDebugHungDumpAllProcesses()Z
    .locals 1

    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_hung_dumpallprocesses:Z

    return v0
.end method

.method public static getProfileDebugHungDumpMediaNative()Z
    .locals 1

    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_hung_dumpmedianative:Z

    return v0
.end method

.method public static getProfileDebugHungDumpSysNative()Z
    .locals 1

    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_hung_dumpsysnative:Z

    return v0
.end method

.method public static getProfileDebugHungKeepAlive()Z
    .locals 1

    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_hung_keepalive:Z

    return v0
.end method

.method public static getProfileDebugKernelStack()Z
    .locals 1

    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_kernelstack:Z

    return v0
.end method

.method public static getProfileDebugMonitor()Z
    .locals 1

    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_debugmonitor:Z

    return v0
.end method

.method public static getProfileDebugSchedule()Z
    .locals 1

    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_debug_schedule:Z

    return v0
.end method

.method public static getProfileDebugTimeTick()Z
    .locals 1

    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_debug_timetick:Z

    return v0
.end method

.method public static getProfileDebugWakelock()Z
    .locals 1

    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_debug_wakelock:Z

    return v0
.end method

.method public static getProfileFastLaunch()Z
    .locals 1

    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_fast_launch:Z

    return v0
.end method

.method public static getProfileForceDisableErrorRport()Z
    .locals 1

    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_force_disable_error_report:Z

    return v0
.end method

.method public static getProfileForceDisableUlog()Z
    .locals 1

    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_force_disable_ulog:Z

    return v0
.end method

.method public static getProfileForceWriteAheadLogging()Z
    .locals 1

    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_framework_force_write_ahead_logging:Z

    return v0
.end method

.method public static getProfileHardwareResetEnabled()Z
    .locals 2

    const/4 v0, 0x1

    sget v1, Lcom/htc/profileflag/ProfileConfig;->profile_hardware_reset_feature:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getProfileHardwareResetTimer1()I
    .locals 1

    sget v0, Lcom/htc/profileflag/ProfileConfig;->profile_hardware_reset_feature_timer1:I

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public static getProfileHardwareResetTimer2()I
    .locals 1

    sget v0, Lcom/htc/profileflag/ProfileConfig;->profile_hardware_reset_feature_timer2:I

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public static getProfileHideBgAnr()I
    .locals 1

    sget v0, Lcom/htc/profileflag/ProfileConfig;->profile_debug_hideBgAnr:I

    return v0
.end method

.method public static getProfileKeyInputQueueDebugUpDown()Z
    .locals 1

    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_keyInputQueue_debugUpDown:Z

    return v0
.end method

.method public static getProfileLaunch()Z
    .locals 1

    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_launch:Z

    return v0
.end method

.method public static getProfileLaunchPid()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public static getProfileLogFps()I
    .locals 1

    sget v0, Lcom/htc/profileflag/ProfileConfig;->profile_log_fps:I

    return v0
.end method

.method public static getProfileMonitorThreadCpuUsage()Z
    .locals 1

    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_monitor_thread_cpu_usage:Z

    return v0
.end method

.method public static getProfileNoRotationAnimation()Z
    .locals 1

    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_no_RotationAnimation:Z

    return v0
.end method

.method public static getProfileOpenCursor()Z
    .locals 1

    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_opencursor:Z

    return v0
.end method

.method public static getProfilePerformance()I
    .locals 1

    sget v0, Lcom/htc/profileflag/ProfileConfig;->profile_performance:I

    return v0
.end method

.method public static getProfilePower()Z
    .locals 1

    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_power:Z

    return v0
.end method

.method public static getProfileResume()Z
    .locals 1

    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_resume:Z

    return v0
.end method

.method public static getProfileScreenCaptureEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_framework_screencapture:Z

    return v0
.end method

.method public static getProfileShareKeyLongPressActivity()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_long_press_act:Ljava/lang/String;

    return-object v0
.end method

.method public static getProfileShareKeyLongPressIntentAction()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_long_press_intent_action:Ljava/lang/String;

    return-object v0
.end method

.method public static getProfileShareKeyLongPressPackage()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_long_press_pkg:Ljava/lang/String;

    return-object v0
.end method

.method public static getProfileShareKeyShortPressActivity()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_short_press_act:Ljava/lang/String;

    return-object v0
.end method

.method public static getProfileShareKeyShortPressIntentAction()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_short_press_intent_action:Ljava/lang/String;

    return-object v0
.end method

.method public static getProfileShareKeyShortPressPackage()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/htc/profileflag/ProfileConfig;->profile_framework_sharekey_short_press_pkg:Ljava/lang/String;

    return-object v0
.end method

.method public static getProfileSyncDetector()Z
    .locals 2

    const/16 v0, 0x93

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v1, :cond_0

    const/16 v0, 0xa8

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-nez v0, :cond_1

    :cond_0
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_syncdetector:Z

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getProfileWindowManagerServiceDebugUpDown()Z
    .locals 1

    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_windowManagerService_debugUpDown:Z

    return v0
.end method

.method public static getRecycleBitmap()Z
    .locals 1

    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_recyclebmp:Z

    return v0
.end method

.method public static getRecycleBitmapSize()I
    .locals 1

    sget v0, Lcom/htc/profileflag/ProfileConfig;->profile_recyclebmpsize:I

    return v0
.end method

.method public static getStrictModePolicySet()I
    .locals 1

    sget v0, Lcom/htc/profileflag/ProfileConfig;->strictmode_policy_set:I

    return v0
.end method

.method private static init_sharekey_property_value(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v3, ""

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    and-int/lit16 v1, v4, 0xff

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    and-int/lit16 v0, v4, 0xff

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/16 v5, 0x1f

    if-gt v4, v5, :cond_1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ProfileConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sharekey: reading property:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, ""

    invoke-static {p0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ProfileConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sharekey reading orig property: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v3

    :cond_1
    const-string v4, "ProfileConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "featureStringWithProject is too long:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,length = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static runCommand(Ljava/lang/String;)Z
    .locals 10

    const/4 v6, 0x0

    const-string v7, "ProfileConfig"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "runCommand: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    const-string/jumbo v8, "sh"

    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string v7, "exit\n"

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v7, "ProfileConfig"

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v3, :cond_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    :cond_0
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :goto_1
    move-object v2, v3

    :goto_2
    return v6

    :catchall_0
    move-exception v7

    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    move-object v2, v3

    :goto_3
    :try_start_6
    const-string v7, "ProfileConfig"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v2, :cond_1

    :try_start_7
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    :catch_2
    move-exception v7

    goto :goto_2

    :catchall_1
    move-exception v6

    :goto_4
    if-eqz v2, :cond_2

    :try_start_8
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    :cond_2
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    :goto_5
    throw v6

    :cond_3
    :try_start_9
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    if-eqz v3, :cond_4

    :try_start_a
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    :cond_4
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    :goto_6
    const/4 v6, 0x1

    move-object v2, v3

    goto :goto_2

    :catch_3
    move-exception v6

    goto :goto_6

    :catch_4
    move-exception v7

    goto :goto_1

    :catch_5
    move-exception v7

    goto :goto_5

    :catchall_2
    move-exception v6

    move-object v2, v3

    goto :goto_4

    :catch_6
    move-exception v0

    goto :goto_3
.end method

.method private static runRootCommand(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static setCheckHeap(Z)V
    .locals 0

    sput-boolean p0, Lcom/htc/profileflag/ProfileConfig;->profile_checkheap:Z

    return-void
.end method

.method public static setCheckLowMemory(Z)V
    .locals 0

    sput-boolean p0, Lcom/htc/profileflag/ProfileConfig;->profile_checklowmemory:Z

    return-void
.end method

.method public static setFreeNativeBitmap(Z)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    sput v0, Lcom/htc/profileflag/ProfileConfig;->profile_freeNativeBmp:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    sput v0, Lcom/htc/profileflag/ProfileConfig;->profile_freeNativeBmp:I

    goto :goto_0
.end method

.method public static setFreeNativeBitmapDebug(Z)V
    .locals 0

    sput-boolean p0, Lcom/htc/profileflag/ProfileConfig;->profile_freeNativeBmpDebug:Z

    return-void
.end method

.method public static setProfileANRDumpBinder(Z)V
    .locals 0

    sput-boolean p0, Lcom/htc/profileflag/ProfileConfig;->profile_anr_dump_binder:Z

    return-void
.end method

.method public static setProfileDebugMonitor(Z)V
    .locals 0

    sput-boolean p0, Lcom/htc/profileflag/ProfileConfig;->profile_debugmonitor:Z

    return-void
.end method

.method public static setProfileKeyInputQueueDebugUpDown(Z)V
    .locals 0

    sput-boolean p0, Lcom/htc/profileflag/ProfileConfig;->profile_keyInputQueue_debugUpDown:Z

    return-void
.end method

.method public static setProfileLaunch(Z)V
    .locals 0

    sput-boolean p0, Lcom/htc/profileflag/ProfileConfig;->profile_launch:Z

    return-void
.end method

.method public static setProfileLaunchPid(I)V
    .locals 0

    return-void
.end method

.method public static setProfileOpenCursor(Z)V
    .locals 0

    sput-boolean p0, Lcom/htc/profileflag/ProfileConfig;->profile_opencursor:Z

    return-void
.end method

.method public static setProfilePerformance(I)V
    .locals 0

    sput p0, Lcom/htc/profileflag/ProfileConfig;->profile_performance:I

    return-void
.end method

.method public static setProfileResume(Z)V
    .locals 0

    sput-boolean p0, Lcom/htc/profileflag/ProfileConfig;->profile_resume:Z

    return-void
.end method

.method public static setProfileWindowManagerServiceDebugUpDown(Z)V
    .locals 0

    sput-boolean p0, Lcom/htc/profileflag/ProfileConfig;->profile_windowManagerService_debugUpDown:Z

    return-void
.end method

.method public static setRecycleBitmap(Z)V
    .locals 0

    sput-boolean p0, Lcom/htc/profileflag/ProfileConfig;->profile_recyclebmp:Z

    return-void
.end method

.method public static setRecycleBitmapSize(I)V
    .locals 0

    sput p0, Lcom/htc/profileflag/ProfileConfig;->profile_recyclebmpsize:I

    return-void
.end method
