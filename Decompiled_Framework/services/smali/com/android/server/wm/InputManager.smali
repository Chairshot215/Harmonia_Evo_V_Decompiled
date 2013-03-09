.class public Lcom/android/server/wm/InputManager;
.super Ljava/lang/Object;
.source "InputManager.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/InputManager$VirtualKeyPolicy;,
        Lcom/android/server/wm/InputManager$Callbacks;,
        Lcom/android/server/wm/InputManager$InputFilterHost;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final INPUT_EVENT_INJECTION_FAILED:I = 0x2

.field static final INPUT_EVENT_INJECTION_PERMISSION_DENIED:I = 0x1

.field static final INPUT_EVENT_INJECTION_SUCCEEDED:I = 0x0

.field static final INPUT_EVENT_INJECTION_SYNC_NONE:I = 0x0

.field static final INPUT_EVENT_INJECTION_SYNC_WAIT_FOR_FINISH:I = 0x2

.field static final INPUT_EVENT_INJECTION_SYNC_WAIT_FOR_RESULT:I = 0x1

.field static final INPUT_EVENT_INJECTION_TIMED_OUT:I = 0x3

.field public static final KEY_STATE_DOWN:I = 0x1

.field public static final KEY_STATE_UNKNOWN:I = -0x1

.field public static final KEY_STATE_UP:I = 0x0

.field public static final KEY_STATE_VIRTUAL:I = 0x2

.field static final TAG:Ljava/lang/String; = "InputManager"


# instance fields
.field private final mCallbacks:Lcom/android/server/wm/InputManager$Callbacks;

.field private final mContext:Landroid/content/Context;

.field mInputFilter:Lcom/android/server/wm/InputFilter;

.field mInputFilterHost:Lcom/android/server/wm/InputManager$InputFilterHost;

.field final mInputFilterLock:Ljava/lang/Object;

.field private final mWindowManagerService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .locals 4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/InputManager;->mInputFilterLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/wm/InputManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/wm/InputManager;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/wm/InputManager$Callbacks;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/InputManager$Callbacks;-><init>(Lcom/android/server/wm/InputManager;Lcom/android/server/wm/InputManager$1;)V

    iput-object v1, p0, Lcom/android/server/wm/InputManager;->mCallbacks:Lcom/android/server/wm/InputManager$Callbacks;

    iget-object v1, p2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const-string v1, "InputManager"

    const-string v2, "Initializing input manager"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wm/InputManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/InputManager;->mCallbacks:Lcom/android/server/wm/InputManager$Callbacks;

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/server/wm/InputManager;->nativeInit(Landroid/content/Context;Lcom/android/server/wm/InputManager$Callbacks;Landroid/os/MessageQueue;)V

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    return-void
.end method

.method static synthetic access$200(Landroid/view/InputEvent;IIIII)I
    .locals 1

    invoke-static/range {p0 .. p5}, Lcom/android/server/wm/InputManager;->nativeInjectInputEvent(Landroid/view/InputEvent;IIIII)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/InputManager;)Lcom/android/server/wm/WindowManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/InputManager;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/InputManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/InputManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getPointerSpeedSetting(I)I
    .locals 3

    move v0, p1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/InputManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pointer_speed"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getShowTouchesSetting(I)I
    .locals 3

    move v0, p1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/InputManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_touches"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static native nativeDump()Ljava/lang/String;
.end method

.method private static native nativeGetInputConfiguration(Landroid/content/res/Configuration;)V
.end method

.method private static native nativeGetInputDevice(I)Landroid/view/InputDevice;
.end method

.method private static native nativeGetInputDeviceIds()[I
.end method

.method private static native nativeGetKeyCodeState(III)I
.end method

.method private static native nativeGetScanCodeState(III)I
.end method

.method private static native nativeGetSwitchState(III)I
.end method

.method private static native nativeHasKeys(II[I[Z)Z
.end method

.method private static native nativeInit(Landroid/content/Context;Lcom/android/server/wm/InputManager$Callbacks;Landroid/os/MessageQueue;)V
.end method

.method private static native nativeInjectInputEvent(Landroid/view/InputEvent;IIIII)I
.end method

.method private static native nativeMonitor()V
.end method

.method private static native nativeRegisterInputChannel(Landroid/view/InputChannel;Lcom/android/server/wm/InputWindowHandle;Z)V
.end method

.method private static native nativeSetBlockInputEventsMode(Z)V
.end method

.method private static native nativeSetBroadcastKeyEventMode(Z)V
.end method

.method private static native nativeSetBroadcastMotionEventMode(Z)V
.end method

.method private static native nativeSetBroadcastTrackballEventMode(Z)V
.end method

.method private static native nativeSetDisplayOrientation(II)V
.end method

.method private static native nativeSetDisplaySize(IIIII)V
.end method

.method private static native nativeSetFocusedApplication(Lcom/android/server/wm/InputApplicationHandle;)V
.end method

.method private static native nativeSetInputDispatchMode(ZZ)V
.end method

.method private static native nativeSetInputFilterEnabled(Z)V
.end method

.method private static native nativeSetInputWindows([Lcom/android/server/wm/InputWindowHandle;)V
.end method

.method private static native nativeSetPointerSpeed(I)V
.end method

.method private static native nativeSetShowTouches(Z)V
.end method

.method private static native nativeSetStatusBarTouchMode(Z)V
.end method

.method private static native nativeSetSystemUiVisibility(I)V
.end method

.method private static native nativeSetVirtualKeyPolicy(Lcom/android/server/wm/InputManager$VirtualKeyPolicy;)V
.end method

.method private static native nativeStart()V
.end method

.method private static native nativeTransferTouchFocus(Landroid/view/InputChannel;Landroid/view/InputChannel;)Z
.end method

.method private static native nativeUnregisterInputChannel(Landroid/view/InputChannel;)V
.end method

.method private registerPointerSpeedSettingObserver()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/InputManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pointer_speed"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/wm/InputManager$1;

    iget-object v4, p0, Lcom/android/server/wm/InputManager;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-direct {v3, p0, v4}, Lcom/android/server/wm/InputManager$1;-><init>(Lcom/android/server/wm/InputManager;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private registerShowTouchesSettingObserver()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/InputManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_touches"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/wm/InputManager$2;

    iget-object v4, p0, Lcom/android/server/wm/InputManager;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-direct {v3, p0, v4}, Lcom/android/server/wm/InputManager$2;-><init>(Lcom/android/server/wm/InputManager;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/InputManager;->nativeDump()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getInputConfiguration(Landroid/content/res/Configuration;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "config must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lcom/android/server/wm/InputManager;->nativeGetInputConfiguration(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public getInputDevice(I)Landroid/view/InputDevice;
    .locals 1

    invoke-static {p1}, Lcom/android/server/wm/InputManager;->nativeGetInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    return-object v0
.end method

.method public getInputDeviceIds()[I
    .locals 1

    invoke-static {}, Lcom/android/server/wm/InputManager;->nativeGetInputDeviceIds()[I

    move-result-object v0

    return-object v0
.end method

.method public getKeyCodeState(III)I
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/android/server/wm/InputManager;->nativeGetKeyCodeState(III)I

    move-result v0

    return v0
.end method

.method public getScanCodeState(III)I
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/android/server/wm/InputManager;->nativeGetScanCodeState(III)I

    move-result v0

    return v0
.end method

.method public getSwitchState(III)I
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/android/server/wm/InputManager;->nativeGetSwitchState(III)I

    move-result v0

    return v0
.end method

.method public hasKeys(II[I[Z)Z
    .locals 2

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyCodes must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p4, :cond_1

    array-length v0, p4

    array-length v1, p3

    if-ge v0, v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyExists must not be null and must be at least as large as keyCodes."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/wm/InputManager;->nativeHasKeys(II[I[Z)Z

    move-result v0

    return v0
.end method

.method public injectInputEvent(Landroid/view/InputEvent;IIII)I
    .locals 6

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-ltz p2, :cond_1

    if-gez p3, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "injectorPid and injectorUid must not be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-gtz p5, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeoutMillis must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/high16 v5, 0x800

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/InputManager;->nativeInjectInputEvent(Landroid/view/InputEvent;IIIII)I

    move-result v0

    return v0
.end method

.method public monitor()V
    .locals 2

    iget-object v1, p0, Lcom/android/server/wm/InputManager;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/InputManager;->nativeMonitor()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "inputChannelName must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {p1}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    aget-object v1, v0, v3

    const/4 v2, 0x0

    invoke-static {v1, v2, v4}, Lcom/android/server/wm/InputManager;->nativeRegisterInputChannel(Landroid/view/InputChannel;Lcom/android/server/wm/InputWindowHandle;Z)V

    aget-object v1, v0, v3

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    aget-object v1, v0, v4

    return-object v1
.end method

.method public registerInputChannel(Landroid/view/InputChannel;Lcom/android/server/wm/InputWindowHandle;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputChannel must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/android/server/wm/InputManager;->nativeRegisterInputChannel(Landroid/view/InputChannel;Lcom/android/server/wm/InputWindowHandle;Z)V

    return-void
.end method

.method public setBlockInputEventsMode(Z)V
    .locals 0

    invoke-static {p1}, Lcom/android/server/wm/InputManager;->nativeSetBlockInputEventsMode(Z)V

    return-void
.end method

.method public setBroadcastKeyEventMode(Z)V
    .locals 0

    invoke-static {p1}, Lcom/android/server/wm/InputManager;->nativeSetBroadcastKeyEventMode(Z)V

    return-void
.end method

.method public setBroadcastMotionEventMode(Z)V
    .locals 0

    invoke-static {p1}, Lcom/android/server/wm/InputManager;->nativeSetBroadcastMotionEventMode(Z)V

    return-void
.end method

.method public setBroadcastTrackballEventMode(Z)V
    .locals 0

    invoke-static {p1}, Lcom/android/server/wm/InputManager;->nativeSetBroadcastTrackballEventMode(Z)V

    return-void
.end method

.method public setDisplayOrientation(II)V
    .locals 2

    if-ltz p2, :cond_0

    const/4 v0, 0x3

    if-le p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid rotation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1, p2}, Lcom/android/server/wm/InputManager;->nativeSetDisplayOrientation(II)V

    return-void
.end method

.method public setDisplaySize(IIIII)V
    .locals 2

    if-lez p2, :cond_0

    if-lez p3, :cond_0

    if-lez p4, :cond_0

    if-gtz p5, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid display id or dimensions."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/wm/InputManager;->nativeSetDisplaySize(IIIII)V

    return-void
.end method

.method public setFocusedApplication(Lcom/android/server/wm/InputApplicationHandle;)V
    .locals 0

    invoke-static {p1}, Lcom/android/server/wm/InputManager;->nativeSetFocusedApplication(Lcom/android/server/wm/InputApplicationHandle;)V

    return-void
.end method

.method public setInputDispatchMode(ZZ)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/server/wm/InputManager;->nativeSetInputDispatchMode(ZZ)V

    return-void
.end method

.method public setInputFilter(Lcom/android/server/wm/InputFilter;)V
    .locals 4

    iget-object v2, p0, Lcom/android/server/wm/InputManager;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/InputManager;->mInputFilter:Lcom/android/server/wm/InputFilter;

    if-ne v0, p1, :cond_0

    monitor-exit v2

    :goto_0
    return-void

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/InputManager;->mInputFilter:Lcom/android/server/wm/InputFilter;

    iget-object v1, p0, Lcom/android/server/wm/InputManager;->mInputFilterHost:Lcom/android/server/wm/InputManager$InputFilterHost;

    invoke-virtual {v1}, Lcom/android/server/wm/InputManager$InputFilterHost;->disconnectLocked()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/InputManager;->mInputFilterHost:Lcom/android/server/wm/InputManager$InputFilterHost;

    invoke-virtual {v0}, Lcom/android/server/wm/InputFilter;->uninstall()V

    :cond_1
    if-eqz p1, :cond_2

    iput-object p1, p0, Lcom/android/server/wm/InputManager;->mInputFilter:Lcom/android/server/wm/InputFilter;

    new-instance v1, Lcom/android/server/wm/InputManager$InputFilterHost;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/android/server/wm/InputManager$InputFilterHost;-><init>(Lcom/android/server/wm/InputManager;Lcom/android/server/wm/InputManager$1;)V

    iput-object v1, p0, Lcom/android/server/wm/InputManager;->mInputFilterHost:Lcom/android/server/wm/InputManager$InputFilterHost;

    iget-object v1, p0, Lcom/android/server/wm/InputManager;->mInputFilterHost:Lcom/android/server/wm/InputManager$InputFilterHost;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/InputFilter;->install(Lcom/android/server/wm/InputFilter$Host;)V

    :cond_2
    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/android/server/wm/InputManager;->nativeSetInputFilterEnabled(Z)V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setInputWindows([Lcom/android/server/wm/InputWindowHandle;)V
    .locals 0

    invoke-static {p1}, Lcom/android/server/wm/InputManager;->nativeSetInputWindows([Lcom/android/server/wm/InputWindowHandle;)V

    return-void
.end method

.method public setPointerSpeed(I)V
    .locals 2

    const/4 v0, -0x7

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x7

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1}, Lcom/android/server/wm/InputManager;->nativeSetPointerSpeed(I)V

    return-void
.end method

.method public setStatusBarTouchMode(Z)V
    .locals 0

    invoke-static {p1}, Lcom/android/server/wm/InputManager;->nativeSetStatusBarTouchMode(Z)V

    return-void
.end method

.method public setSystemUiVisibility(I)V
    .locals 0

    invoke-static {p1}, Lcom/android/server/wm/InputManager;->nativeSetSystemUiVisibility(I)V

    return-void
.end method

.method public setVirtualKeyPolicy(Lcom/android/server/wm/InputManager$VirtualKeyPolicy;)V
    .locals 0

    invoke-static {p1}, Lcom/android/server/wm/InputManager;->nativeSetVirtualKeyPolicy(Lcom/android/server/wm/InputManager$VirtualKeyPolicy;)V

    return-void
.end method

.method public start()V
    .locals 2

    const-string v0, "InputManager"

    const-string v1, "Starting input manager"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/wm/InputManager;->nativeStart()V

    invoke-direct {p0}, Lcom/android/server/wm/InputManager;->registerPointerSpeedSettingObserver()V

    invoke-direct {p0}, Lcom/android/server/wm/InputManager;->registerShowTouchesSettingObserver()V

    invoke-virtual {p0}, Lcom/android/server/wm/InputManager;->updatePointerSpeedFromSettings()V

    invoke-virtual {p0}, Lcom/android/server/wm/InputManager;->updateShowTouchesFromSettings()V

    return-void
.end method

.method public transferTouchFocus(Landroid/view/InputChannel;Landroid/view/InputChannel;)Z
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fromChannel must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "toChannel must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1, p2}, Lcom/android/server/wm/InputManager;->nativeTransferTouchFocus(Landroid/view/InputChannel;Landroid/view/InputChannel;)Z

    move-result v0

    return v0
.end method

.method public unregisterInputChannel(Landroid/view/InputChannel;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputChannel must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lcom/android/server/wm/InputManager;->nativeUnregisterInputChannel(Landroid/view/InputChannel;)V

    return-void
.end method

.method public updatePointerSpeedFromSettings()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/wm/InputManager;->getPointerSpeedSetting(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputManager;->setPointerSpeed(I)V

    return-void
.end method

.method public updateShowTouchesFromSettings()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/wm/InputManager;->getShowTouchesSetting(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v1}, Lcom/android/server/wm/InputManager;->nativeSetShowTouches(Z)V

    return-void
.end method
