.class public Lcom/android/server/wm/WindowManagerService;
.super Landroid/view/IWindowManager$Stub;
.source "WindowManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;
.implements Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowManagerService$PassHeadsetKey;,
        Lcom/android/server/wm/WindowManagerService$ManualOrientationLightReceiver;,
        Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;,
        Lcom/android/server/wm/WindowManagerService$H;,
        Lcom/android/server/wm/WindowManagerService$DummyAnimation;,
        Lcom/android/server/wm/WindowManagerService$PolicyThread;,
        Lcom/android/server/wm/WindowManagerService$WMThread;,
        Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
    }
.end annotation


# static fields
.field static final ADJUST_WALLPAPER_LAYERS_CHANGED:I = 0x2

.field static final ADJUST_WALLPAPER_VISIBILITY_CHANGED:I = 0x4

.field private static final ALLOW_DISABLE_NO:I = 0x0

.field private static final ALLOW_DISABLE_UNKNOWN:I = -0x1

.field private static final ALLOW_DISABLE_YES:I = 0x1

.field static final BLUR:Z = true

.field static final CUSTOM_SCREEN_ROTATION:Z = true

.field static final DEBUG:Z = false

.field static final DEBUG_ADD_REMOVE:Z = false

.field static final DEBUG_ANIM:Z = false

.field static final DEBUG_APP_ORIENTATION:Z = false

.field static final DEBUG_APP_TRANSITIONS:Z = false

.field static final DEBUG_BOOT:Z = false

.field static final DEBUG_CONFIGURATION:Z = false

.field static final DEBUG_DRAG:Z = false

.field static final DEBUG_FOCUS:Z = false

.field static final DEBUG_INPUT:Z = false

.field static final DEBUG_INPUT_METHOD:Z = false

.field static final DEBUG_LAYERS:Z = false

.field static final DEBUG_LAYOUT:Z = false

.field static final DEBUG_ORIENTATION:Z = false

.field static final DEBUG_REORDER:Z = false

.field static final DEBUG_RESIZE:Z = false

.field static final DEBUG_SCREENSHOT:Z = false

.field static final DEBUG_SCREEN_ON:Z = false

.field static final DEBUG_STARTING_WINDOW:Z = false

.field static final DEBUG_TOKEN_MOVEMENT:Z = false

.field static final DEBUG_VISIBILITY:Z = false

.field static final DEBUG_WALLPAPER:Z = false

.field static final DEBUG_WINDOW_MOVEMENT:Z = false

.field static final DEFAULT_DIM_DURATION:I = 0xc8

.field static final DEFAULT_FADE_IN_OUT_DURATION:I = 0x190

.field static DEFAULT_INPUT_DISPATCHING_TIMEOUT_NANOS:J = 0x0L

.field static final FREEZE_LAYER:I = 0x1e8481

.field static final HIDE_STACK_CRAWLS:Z = true

.field private static final INJECTION_TIMEOUT_MILLIS:I = 0x7530

.field private static final INPUT_DEVICES_READY_FOR_SAFE_MODE_DETECTION_TIMEOUT_MILLIS:I = 0x3e8

.field static final LAYER_OFFSET_BLUR:I = 0x2

.field static final LAYER_OFFSET_DIM:I = 0x1

.field static final MASK_LAYER:I = 0x1e8480

.field static final MAX_ANIMATION_DURATION:I = 0x2710

.field static final PROFILE_ORIENTATION:Z = false

.field static final SHOW_LIGHT_TRANSACTIONS:Z = false

.field static final SHOW_SURFACE_ALLOC:Z = false

.field static final SHOW_TRANSACTIONS:Z = false

.field private static final SYSTEM_DEBUGGABLE:Ljava/lang/String; = "ro.debuggable"

.field private static final SYSTEM_SECURE:Ljava/lang/String; = "ro.secure"

.field static final TAG:Ljava/lang/String; = "WindowManager"

.field static final TYPE_LAYER_MULTIPLIER:I = 0x2710

.field static final TYPE_LAYER_OFFSET:I = 0x3e8

.field static final UPDATE_FOCUS_NORMAL:I = 0x0

.field static final UPDATE_FOCUS_PLACING_SURFACES:I = 0x2

.field static final UPDATE_FOCUS_WILL_ASSIGN_LAYERS:I = 0x1

.field static final UPDATE_FOCUS_WILL_PLACE_SURFACES:I = 0x3

#the value of this static final field might be set in the static constructor
.field private static final VIRTUALKEY_WITH_ORIENTATION:Z = false

.field static final WALLPAPER_TIMEOUT:J = 0x96L

.field static final WALLPAPER_TIMEOUT_RECOVERY:J = 0x2710L

.field static final WINDOW_LAYER_MULTIPLIER:I = 0x5

.field static final localLOGV:Z

.field static final sDummyAnimation:Landroid/view/animation/Animation;


# instance fields
.field private final BLOCK_INPUT_EVENTS_PERMISSION:Ljava/lang/String;

.field private final BROADCAST_KEY_PERMISSION:Ljava/lang/String;

.field private final BROADCAST_MOTION_PERMISSION:Ljava/lang/String;

.field private final BROADCAST_TRACKBALL_PERMISSION:Ljava/lang/String;

.field DBG_broadkey:Z

.field final HWROTATE:I

.field final mActivityManager:Landroid/app/IActivityManager;

.field final mAllowBootMessages:Z

.field private mAllowDisableKeyguard:I

.field mAltOrientation:Z

.field mAnimationPending:Z

.field mAppDisplayHeight:I

.field mAppDisplayWidth:I

.field final mAppTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mAppTransitionReady:Z

.field mAppTransitionRunning:Z

.field mAppTransitionTimeout:Z

.field mAppsFreezingScreen:I

.field mBaseDisplayHeight:I

.field mBaseDisplayWidth:I

.field final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field mBlackFrame:Lcom/android/server/wm/BlackFrame;

.field mBlurShown:Z

.field mBlurSurface:Landroid/view/Surface;

.field mBroadcastDone:Landroid/content/BroadcastReceiver;

.field final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field final mClosingApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mCompatDisplayMetrics:Landroid/util/DisplayMetrics;

.field mCompatibleScreenScale:F

.field final mContext:Landroid/content/Context;

.field mCurConfiguration:Landroid/content/res/Configuration;

.field mCurDisplayHeight:I

.field mCurDisplayWidth:I

.field mCurrentFocus:Lcom/android/server/wm/WindowState;

.field mDeferredRotationPauseCount:I

.field final mDestroySurface:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mDimAnimator:Lcom/android/server/wm/DimAnimator;

.field mDisplay:Landroid/view/Display;

.field mDisplayEnabled:Z

.field mDisplayFrozen:Z

.field final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field final mDisplaySizeLock:Ljava/lang/Object;

.field final mDragInputHandler:Landroid/view/InputHandler;

.field mDragState:Lcom/android/server/wm/DragState;

.field final mExitingAppTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mExitingTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mFakeWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/FakeWindowImpl;",
            ">;"
        }
    .end annotation
.end field

.field final mFinishedStarting:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mFocusMayChange:Z

.field mFocusedApp:Lcom/android/server/wm/AppWindowToken;

.field mForceDisplayEnabled:Z

.field mForceRemoves:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mForcedAppOrientation:I

.field mFxSession:Landroid/view/SurfaceSession;

.field mH:Lcom/android/server/wm/WindowManagerService$H;

.field mHardKeyboardAvailable:Z

.field mHardKeyboardEnabled:Z

.field mHardKeyboardStatusChangeListener:Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;

.field final mHaveInputMethods:Z

.field mHoldingScreenOn:Lcom/android/server/wm/Session;

.field mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mInLayout:Z

.field mInTouchMode:Z

.field mInitialDisplayHeight:I

.field mInitialDisplayWidth:I

.field final mInputManager:Lcom/android/server/wm/InputManager;

.field mInputMethodAnimLayerAdjustment:I

.field final mInputMethodDialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

.field mInputMethodTarget:Lcom/android/server/wm/WindowState;

.field mInputMethodTargetWaitingAnim:Z

.field mInputMethodWindow:Lcom/android/server/wm/WindowState;

.field final mInputMonitor:Lcom/android/server/wm/InputMonitor;

.field private mKeyguardDisabled:Z

.field final mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

.field mLastFocus:Lcom/android/server/wm/WindowState;

.field mLastStatusBarVisibility:I

.field mLastWallpaperTimeoutTime:J

.field mLastWallpaperX:F

.field mLastWallpaperXStep:F

.field mLastWallpaperY:F

.field mLastWallpaperYStep:F

.field mLastWindowForcedOrientation:I

.field mLayoutNeeded:Z

.field mLayoutSeq:I

.field final mLimitedAlphaCompositing:Z

.field public mLockStatusBarPid:I

.field mLosingFocus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

.field mNextAppTransition:I

.field mNextAppTransitionEnter:I

.field mNextAppTransitionExit:I

.field mNextAppTransitionPackage:Ljava/lang/String;

.field final mOpeningApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingRemove:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

.field final mPolicy:Landroid/view/WindowManagerPolicy;

.field mPowerManager:Lcom/android/server/PowerManagerService;

.field final mRealDisplayMetrics:Landroid/util/DisplayMetrics;

.field mRebuildTmp:[Lcom/android/server/wm/WindowState;

.field final mResizingWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mRotation:I

.field mRotationWatchers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/IRotationWatcher;",
            ">;"
        }
    .end annotation
.end field

.field mSafeMode:Z

.field mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

.field mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

.field final mSessions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/wm/Session;",
            ">;"
        }
    .end annotation
.end field

.field mShowingBootMessages:Z

.field mSkipAppTransitionAnimation:Z

.field mStartingIconInTransition:Z

.field mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

.field mSystemBooted:Z

.field final mTempConfiguration:Landroid/content/res/Configuration;

.field final mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

.field final mTmpFloats:[F

.field final mToBottomApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mToTopApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mTokenMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mTransactionSequence:I

.field mTransitionAnimationScale:F

.field mTurnOnScreen:Z

.field mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

.field private mViewServer:Lcom/android/server/wm/ViewServer;

.field mWaitingForConfig:Z

.field mWaitingForDrawn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/server/wm/WindowState;",
            "Landroid/os/IRemoteCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

.field mWallpaperAnimLayerAdjustment:I

.field mWallpaperTarget:Lcom/android/server/wm/WindowState;

.field final mWallpaperTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mWatermark:Lcom/android/server/wm/Watermark;

.field mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

.field mWindowAnimationScale:F

.field private mWindowChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowManagerService$WindowChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

.field final mWindowMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field final mWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowsChanged:Z

.field mWindowsFreezingScreen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x37e11d600L

    sput-wide v0, Lcom/android/server/wm/WindowManagerService;->DEFAULT_INPUT_DISPATCHING_TIMEOUT_NANOS:J

    new-instance v0, Lcom/android/server/wm/WindowManagerService$DummyAnimation;

    invoke-direct {v0}, Lcom/android/server/wm/WindowManagerService$DummyAnimation;-><init>()V

    sput-object v0, Lcom/android/server/wm/WindowManagerService;->sDummyAnimation:Landroid/view/animation/Animation;

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x28

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/server/wm/WindowManagerService;->VIRTUALKEY_WITH_ORIENTATION:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZ)V
    .locals 11

    const/4 v10, 0x1

    const/high16 v9, -0x4080

    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-direct {p0}, Landroid/view/IWindowManager$Stub;-><init>()V

    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardDisabled:Z

    iput v8, p0, Lcom/android/server/wm/WindowManagerService;->mAllowDisableKeyguard:I

    new-instance v3, Lcom/android/server/wm/WindowManagerService$1;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    const-string v5, "WindowManagerService.mKeyguardTokenWatcher"

    invoke-direct {v3, p0, v4, v5}, Lcom/android/server/wm/WindowManagerService$1;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    new-instance v3, Lcom/android/server/wm/WindowManagerService$2;

    invoke-direct {v3, p0}, Lcom/android/server/wm/WindowManagerService$2;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/android/internal/policy/PolicyManager;->makeNewWindowManager()Landroid/view/WindowManagerPolicy;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mSessions:Ljava/util/HashSet;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    const/16 v3, 0x14

    new-array v3, v3, [Lcom/android/server/wm/WindowState;

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    const/16 v3, 0x14

    new-array v3, v3, [Lcom/android/server/wm/WindowState;

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRebuildTmp:[Lcom/android/server/wm/WindowState;

    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    iput v6, p0, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    const/16 v3, 0x9

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mForceDisplayEnabled:Z

    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    new-instance v3, Ljava/lang/Object;

    invoke-direct/range {v3 .. v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplaySizeLock:Ljava/lang/Object;

    iput v6, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    iput v6, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    iput v6, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    iput v6, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    iput v6, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    iput v6, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    iput v6, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    iput v6, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    iput v6, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    iput v8, p0, Lcom/android/server/wm/WindowManagerService;->mForcedAppOrientation:I

    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mAltOrientation:Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    iput-boolean v10, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationPending:Z

    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:Z

    iput v6, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    iput v8, p0, Lcom/android/server/wm/WindowManagerService;->mLastWindowForcedOrientation:I

    iput v6, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutSeq:I

    iput v6, p0, Lcom/android/server/wm/WindowManagerService;->mLastStatusBarVisibility:I

    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iput v8, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionReady:Z

    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionRunning:Z

    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionTimeout:Z

    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mStartingIconInTransition:Z

    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRealDisplayMetrics:Landroid/util/DisplayMetrics;

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mCompatDisplayMetrics:Landroid/util/DisplayMetrics;

    const-string v3, "ro.sf.hwrotation"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    div-int/lit8 v3, v3, 0x5a

    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->HWROTATE:I

    new-instance v3, Lcom/android/server/wm/WindowManagerService$H;

    invoke-direct {v3, p0}, Lcom/android/server/wm/WindowManagerService$H;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    iput v9, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperX:F

    iput v9, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperY:F

    iput v9, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperXStep:F

    iput v9, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperYStep:F

    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    const/high16 v3, 0x3f80

    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    const/high16 v3, 0x3f80

    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    new-instance v3, Lcom/android/server/wm/WindowManagerService$3;

    invoke-direct {v3, p0}, Lcom/android/server/wm/WindowManagerService$3;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDragInputHandler:Landroid/view/InputHandler;

    iput-boolean v10, p0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    new-instance v3, Lcom/android/server/wm/InputMonitor;

    invoke-direct {v3, p0}, Lcom/android/server/wm/InputMonitor;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mInLayout:Z

    const-string v3, "com.htc.Manifest.permission.BROADCAST_KEYIN_EVENT"

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->BROADCAST_KEY_PERMISSION:Ljava/lang/String;

    const-string v3, "com.htc.Manifest.permission.BROADCAST_MOTION_EVENT"

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->BROADCAST_MOTION_PERMISSION:Ljava/lang/String;

    const-string v3, "com.htc.Manifest.permission.BROADCAST_TRACKBALL_EVENT"

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->BROADCAST_TRACKBALL_PERMISSION:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->DBG_broadkey:Z

    iput v8, p0, Lcom/android/server/wm/WindowManagerService;->mLockStatusBarPid:I

    new-instance v3, Lcom/android/server/wm/WindowManagerService$6;

    invoke-direct {v3, p0}, Lcom/android/server/wm/WindowManagerService$6;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mBroadcastDone:Landroid/content/BroadcastReceiver;

    const-string v3, "com.htc.Manifest.permission.BLOCK_INPUT_EVENTS"

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->BLOCK_INPUT_EVENTS_PERMISSION:Ljava/lang/String;

    const/16 v3, 0x7b

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v3, v4, :cond_0

    const-wide v3, 0x37e11d600L

    sput-wide v3, Lcom/android/server/wm/WindowManagerService;->DEFAULT_INPUT_DISPATCHING_TIMEOUT_NANOS:J

    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/android/server/wm/WindowManagerService;->mHaveInputMethods:Z

    iput-boolean p4, p0, Lcom/android/server/wm/WindowManagerService;->mAllowBootMessages:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mLimitedAlphaCompositing:Z

    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-virtual {v3, v4}, Lcom/android/server/PowerManagerService;->setPolicy(Landroid/view/WindowManagerPolicy;)V

    const-string v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const-string v3, "SCREEN_FROZEN"

    invoke-virtual {v1, v10, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "window_animation_scale"

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "transition_animation_scale"

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->VIRTUALKEY_WITH_ORIENTATION:Z

    if-eqz v3, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.htc.content.intent.action.ORIENTATION_LIGHT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/wm/WindowManagerService$ManualOrientationLightReceiver;

    invoke-direct {v4, p0, v7}, Lcom/android/server/wm/WindowManagerService$ManualOrientationLightReceiver;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowManagerService$1;)V

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    const/16 v3, 0xa

    const-string v4, "KEEP_SCREEN_ON_FLAG"

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    new-instance v3, Lcom/android/server/wm/InputManager;

    invoke-direct {v3, p1, p0}, Lcom/android/server/wm/InputManager;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    new-instance v2, Lcom/android/server/wm/WindowManagerService$PolicyThread;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-direct {v2, v3, p0, p1, p2}, Lcom/android/server/wm/WindowManagerService$PolicyThread;-><init>(Landroid/view/WindowManagerPolicy;Lcom/android/server/wm/WindowManagerService;Landroid/content/Context;Lcom/android/server/PowerManagerService;)V

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService$PolicyThread;->start()V

    monitor-enter v2

    :goto_0
    :try_start_0
    iget-boolean v3, v2, Lcom/android/server/wm/WindowManagerService$PolicyThread;->mRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_2

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_0

    :cond_2
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    invoke-virtual {v3}, Lcom/android/server/wm/InputManager;->start()V

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    return-void

    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZLcom/android/server/wm/WindowManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowManagerService;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZ)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/WindowManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->shouldAllowDisableKeyguard()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/wm/WindowManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardDisabled:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/server/wm/WindowManagerService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mAllowDisableKeyguard:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->notifyFocusChanged()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/wm/WindowManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/wm/WindowManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->notifyWindowsChanged()V

    return-void
.end method

.method private addWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;Z)V
    .locals 29

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-nez v8, :cond_1b

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v22

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v27, v0

    if-eqz v27, :cond_11

    add-int/lit8 v12, v22, -0x1

    if-ltz v12, :cond_5

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->placeWindowBefore(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    const/16 v22, 0x0

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v22

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_1
    :goto_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v27, v0

    if-eqz v27, :cond_2

    if-eqz p2, :cond_2

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void

    :cond_3
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v7, :cond_4

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    iget-object v0, v7, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_4

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->placeWindowBefore(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    add-int/lit8 v22, v22, -0x1

    goto :goto_0

    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/WindowManagerService;->findIdxBasedOnAppTokens(Lcom/android/server/wm/WindowState;)I

    move-result v17

    const/16 v27, -0x1

    move/from16 v0, v17

    move/from16 v1, v27

    if-eq v0, v1, :cond_0

    add-int/lit8 v27, v17, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v15, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v18, 0x0

    add-int/lit8 v11, v4, -0x1

    :goto_2
    if-ltz v11, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_8

    add-int/lit8 v11, v11, -0x1

    :cond_6
    if-eqz v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowToken;

    if-eqz v7, :cond_7

    iget-object v0, v7, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_7

    iget-object v0, v7, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    iget v0, v9, Lcom/android/server/wm/WindowState;->mSubLayer:I

    move/from16 v27, v0

    if-gez v27, :cond_7

    move-object/from16 v18, v9

    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->placeWindowBefore(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->sendingToBottom:Z

    move/from16 v27, v0

    if-nez v27, :cond_9

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    if-lez v27, :cond_9

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/wm/WindowState;

    :cond_9
    add-int/lit8 v11, v11, -0x1

    goto :goto_2

    :cond_a
    add-int/lit8 v11, v11, -0x1

    :cond_b
    if-ltz v11, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_a

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    add-int/lit8 v28, v6, -0x1

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/wm/WindowState;

    :cond_c
    if-eqz v18, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowToken;

    if-eqz v7, :cond_d

    iget-object v0, v7, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_d

    iget-object v0, v7, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    add-int/lit8 v28, v5, -0x1

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    move/from16 v27, v0

    if-ltz v27, :cond_d

    move-object/from16 v18, v23

    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->placeWindowAfter(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    move/from16 v16, v0

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v3, :cond_f

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v16

    if-le v0, v1, :cond_10

    :cond_f
    move-object/from16 v0, p1

    invoke-virtual {v15, v11, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    goto/16 :goto_0

    :cond_10
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_11
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v27, v0

    const/16 v28, 0x66

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_16

    const/4 v14, 0x0

    add-int/lit8 v11, v3, -0x1

    :goto_4
    if-ltz v11, :cond_13

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/WindowState;

    iget v0, v14, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v16

    if-lt v0, v1, :cond_12

    iget-object v0, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v27, v0

    const/16 v28, 0x66

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_15

    :cond_12
    iget-object v0, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v27, v0

    const/16 v28, 0x7db

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_15

    add-int/lit8 v11, v11, 0x1

    :cond_13
    :goto_5
    if-gez v11, :cond_14

    const/4 v11, 0x0

    :cond_14
    move-object/from16 v0, p1

    invoke-virtual {v15, v11, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    goto/16 :goto_0

    :cond_15
    add-int/lit8 v11, v11, -0x1

    goto :goto_4

    :cond_16
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v27, v0

    const/16 v28, 0x67

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_19

    const/4 v14, 0x0

    add-int/lit8 v11, v3, -0x1

    :goto_6
    if-ltz v11, :cond_13

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/WindowState;

    iget v0, v14, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v16

    if-lt v0, v1, :cond_17

    iget-object v0, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v27, v0

    const/16 v28, 0x67

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_17

    iget-object v0, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v27, v0

    const/16 v28, 0x66

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_18

    :cond_17
    iget-object v0, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v27, v0

    const/16 v28, 0x7db

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_18

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_18
    add-int/lit8 v11, v11, -0x1

    goto :goto_6

    :cond_19
    add-int/lit8 v11, v3, -0x1

    :goto_7
    if-ltz v11, :cond_13

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v16

    if-gt v0, v1, :cond_1a

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_5

    :cond_1a
    add-int/lit8 v11, v11, -0x1

    goto :goto_7

    :cond_1b
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    move/from16 v19, v0

    const/high16 v13, -0x8000

    const/16 v26, 0x0

    const/4 v11, 0x0

    :goto_8
    if-ge v11, v4, :cond_1f

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-lt v0, v13, :cond_1c

    move/from16 v13, v25

    move-object/from16 v26, v24

    :cond_1c
    if-gez v19, :cond_21

    move/from16 v0, v25

    move/from16 v1, v19

    if-lt v0, v1, :cond_23

    if-eqz p2, :cond_1d

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v11, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_1d
    if-ltz v25, :cond_1e

    move-object/from16 v24, v8

    :cond_1e
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->placeWindowBefore(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    :cond_1f
    :goto_9
    if-lt v11, v4, :cond_1

    if-eqz p2, :cond_20

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    if-gez v19, :cond_24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v8, v1}, Lcom/android/server/wm/WindowManagerService;->placeWindowBefore(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    goto/16 :goto_1

    :cond_21
    move/from16 v0, v25

    move/from16 v1, v19

    if-le v0, v1, :cond_23

    if-eqz p2, :cond_22

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v11, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_22
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->placeWindowBefore(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    goto :goto_9

    :cond_23
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_24
    if-ltz v13, :cond_25

    :goto_a
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->placeWindowAfter(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    goto/16 :goto_1

    :cond_25
    move-object/from16 v26, v8

    goto :goto_a
.end method

.method private appNeedRotationAnimationLocked()Z
    .locals 3

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    iget v1, v0, Lcom/android/server/wm/AppWindowToken;->mRotateAnimType:I

    const/16 v2, 0x68

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private applyAnimationLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;IZ)Z
    .locals 4

    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v2, :cond_e

    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy;->isScreenOnFully()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    if-eqz p4, :cond_1

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionEnter:I

    :goto_0
    invoke-direct {p0, v3, v2}, Lcom/android/server/wm/WindowManagerService;->loadAnimation(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/AppWindowToken;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    :goto_2
    iget-object v2, p1, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    :goto_3
    return v2

    :cond_1
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionExit:I

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    sparse-switch p3, :sswitch_data_0

    :goto_4
    if-eqz v1, :cond_d

    invoke-direct {p0, p2, v1}, Lcom/android/server/wm/WindowManagerService;->loadAnimation(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v0

    :goto_5
    goto :goto_1

    :sswitch_0
    if-eqz p4, :cond_3

    const/4 v1, 0x4

    :goto_6
    goto :goto_4

    :cond_3
    const/4 v1, 0x5

    goto :goto_6

    :sswitch_1
    if-eqz p4, :cond_4

    const/4 v1, 0x6

    :goto_7
    goto :goto_4

    :cond_4
    const/4 v1, 0x7

    goto :goto_7

    :sswitch_2
    if-eqz p4, :cond_5

    const/16 v1, 0x8

    :goto_8
    goto :goto_4

    :cond_5
    const/16 v1, 0x9

    goto :goto_8

    :sswitch_3
    if-eqz p4, :cond_6

    const/16 v1, 0xa

    :goto_9
    goto :goto_4

    :cond_6
    const/16 v1, 0xb

    goto :goto_9

    :sswitch_4
    if-eqz p4, :cond_7

    const/16 v1, 0xc

    :goto_a
    goto :goto_4

    :cond_7
    const/16 v1, 0xd

    goto :goto_a

    :sswitch_5
    if-eqz p4, :cond_8

    const/16 v1, 0xe

    :goto_b
    goto :goto_4

    :cond_8
    const/16 v1, 0xf

    goto :goto_b

    :sswitch_6
    if-eqz p4, :cond_9

    const/16 v1, 0x10

    :goto_c
    goto :goto_4

    :cond_9
    const/16 v1, 0x11

    goto :goto_c

    :sswitch_7
    if-eqz p4, :cond_a

    const/16 v1, 0x12

    :goto_d
    goto :goto_4

    :cond_a
    const/16 v1, 0x13

    goto :goto_d

    :sswitch_8
    if-eqz p4, :cond_b

    const/16 v1, 0x14

    :goto_e
    goto :goto_4

    :cond_b
    const/16 v1, 0x15

    goto :goto_e

    :sswitch_9
    if-eqz p4, :cond_c

    const/16 v1, 0x16

    :goto_f
    goto :goto_4

    :cond_c
    const/16 v1, 0x17

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_5

    :cond_e
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->clearAnimation()V

    goto :goto_2

    :cond_f
    const/4 v2, 0x0

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x1006 -> :sswitch_0
        0x1008 -> :sswitch_2
        0x100a -> :sswitch_4
        0x100d -> :sswitch_6
        0x100e -> :sswitch_8
        0x2007 -> :sswitch_1
        0x2009 -> :sswitch_3
        0x200b -> :sswitch_5
        0x200c -> :sswitch_7
        0x200f -> :sswitch_9
    .end sparse-switch
.end method

.method private final assignLayersLocked()V
    .locals 7

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_6

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    iget v5, v4, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-eq v5, v1, :cond_0

    iget-boolean v5, v4, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v5, :cond_0

    if-lez v3, :cond_2

    iget-boolean v5, v4, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v5, :cond_2

    :cond_0
    add-int/lit8 v2, v2, 0x5

    iput v2, v4, Lcom/android/server/wm/WindowState;->mLayer:I

    :goto_1
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_3

    iget v5, v4, Lcom/android/server/wm/WindowState;->mLayer:I

    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v6, v6, Lcom/android/server/wm/AppWindowToken;->animLayerAdjustment:I

    add-int/2addr v5, v6

    iput v5, v4, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    :goto_2
    iget-boolean v5, v4, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v5, :cond_5

    iget v5, v4, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    iget v6, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodAnimLayerAdjustment:I

    add-int/2addr v5, v6

    iput v5, v4, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    :cond_1
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget v2, v4, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    move v1, v2

    iput v2, v4, Lcom/android/server/wm/WindowState;->mLayer:I

    goto :goto_1

    :cond_3
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_4

    iget v5, v4, Lcom/android/server/wm/WindowState;->mLayer:I

    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v6, v6, Lcom/android/server/wm/AppWindowToken;->animLayerAdjustment:I

    add-int/2addr v5, v6

    iput v5, v4, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    goto :goto_2

    :cond_4
    iget v5, v4, Lcom/android/server/wm/WindowState;->mLayer:I

    iput v5, v4, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    goto :goto_2

    :cond_5
    iget-boolean v5, v4, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v5, :cond_1

    iget v5, v4, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    iget v6, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    add-int/2addr v5, v6

    iput v5, v4, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    goto :goto_3

    :cond_6
    return-void
.end method

.method static canBeImeTarget(Lcom/android/server/wm/WindowState;)Z
    .locals 3

    const v2, 0x20008

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v0, v1, v2

    if-eqz v0, :cond_0

    if-eq v0, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private computeCompatSmallestWidth(ZLandroid/util/DisplayMetrics;II)I
    .locals 12

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, p2}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    iget-object p2, p0, Lcom/android/server/wm/WindowManagerService;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    if-eqz p1, :cond_0

    move/from16 v4, p4

    move v5, p3

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;->reduceCompatConfigWidthSize(IILandroid/util/DisplayMetrics;II)I

    move-result v7

    const/4 v8, 0x1

    move-object v6, p0

    move-object v9, p2

    move v10, v5

    move v11, v4

    invoke-direct/range {v6 .. v11}, Lcom/android/server/wm/WindowManagerService;->reduceCompatConfigWidthSize(IILandroid/util/DisplayMetrics;II)I

    move-result v7

    const/4 v2, 0x2

    move-object v0, p0

    move v1, v7

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;->reduceCompatConfigWidthSize(IILandroid/util/DisplayMetrics;II)I

    move-result v7

    const/4 v8, 0x3

    move-object v6, p0

    move-object v9, p2

    move v10, v5

    move v11, v4

    invoke-direct/range {v6 .. v11}, Lcom/android/server/wm/WindowManagerService;->reduceCompatConfigWidthSize(IILandroid/util/DisplayMetrics;II)I

    move-result v7

    return v7

    :cond_0
    move v4, p3

    move/from16 v5, p4

    goto :goto_0
.end method

.method private computeFocusedWindowLocked()Lcom/android/server/wm/WindowState;
    .locals 10

    const/4 v8, 0x0

    const/4 v4, 0x0

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    if-ltz v2, :cond_0

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/AppWindowToken;

    move-object v1, v7

    :goto_0
    if-ltz v0, :cond_6

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    iget-object v5, v6, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_1

    iget-boolean v7, v5, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-eqz v7, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    move-object v1, v8

    goto :goto_0

    :cond_1
    if-eqz v5, :cond_5

    if-eqz v1, :cond_5

    if-eq v5, v1, :cond_5

    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v9, 0x3

    if-eq v7, v9, :cond_5

    move v3, v2

    :cond_2
    if-lez v2, :cond_4

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-ne v1, v7, :cond_3

    :goto_1
    return-object v8

    :cond_3
    add-int/lit8 v2, v2, -0x1

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowToken;

    if-ne v1, v5, :cond_2

    :cond_4
    if-eq v5, v1, :cond_5

    move v2, v3

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowToken;

    :cond_5
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v7

    if-eqz v7, :cond_7

    move-object v4, v6

    :cond_6
    move-object v8, v4

    goto :goto_1

    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private computeSmallestWidthAndScreenLayout(ZIIFLandroid/content/res/Configuration;)V
    .locals 15

    if-eqz p1, :cond_0

    move/from16 v2, p3

    move/from16 v6, p2

    :goto_0
    const/4 v3, 0x0

    move-object v1, p0

    move/from16 v4, p4

    move v5, v2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/WindowManagerService;->reduceConfigWidthSize(IIFII)I

    move-result v8

    const/4 v9, 0x1

    move-object v7, p0

    move/from16 v10, p4

    move v11, v6

    move v12, v2

    invoke-direct/range {v7 .. v12}, Lcom/android/server/wm/WindowManagerService;->reduceConfigWidthSize(IIFII)I

    move-result v8

    const/4 v9, 0x2

    move-object v7, p0

    move/from16 v10, p4

    move v11, v2

    move v12, v6

    invoke-direct/range {v7 .. v12}, Lcom/android/server/wm/WindowManagerService;->reduceConfigWidthSize(IIFII)I

    move-result v8

    const/4 v9, 0x3

    move-object v7, p0

    move/from16 v10, p4

    move v11, v6

    move v12, v2

    invoke-direct/range {v7 .. v12}, Lcom/android/server/wm/WindowManagerService;->reduceConfigWidthSize(IIFII)I

    move-result v8

    const/16 v10, 0x24

    const/4 v11, 0x0

    move-object v9, p0

    move/from16 v12, p4

    move v13, v2

    move v14, v6

    invoke-direct/range {v9 .. v14}, Lcom/android/server/wm/WindowManagerService;->reduceConfigLayout(IIFII)I

    move-result v10

    const/4 v11, 0x1

    move-object v9, p0

    move/from16 v12, p4

    move v13, v6

    move v14, v2

    invoke-direct/range {v9 .. v14}, Lcom/android/server/wm/WindowManagerService;->reduceConfigLayout(IIFII)I

    move-result v10

    const/4 v11, 0x2

    move-object v9, p0

    move/from16 v12, p4

    move v13, v2

    move v14, v6

    invoke-direct/range {v9 .. v14}, Lcom/android/server/wm/WindowManagerService;->reduceConfigLayout(IIFII)I

    move-result v10

    const/4 v11, 0x3

    move-object v9, p0

    move/from16 v12, p4

    move v13, v6

    move v14, v2

    invoke-direct/range {v9 .. v14}, Lcom/android/server/wm/WindowManagerService;->reduceConfigLayout(IIFII)I

    move-result v10

    move-object/from16 v0, p5

    iput v8, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move-object/from16 v0, p5

    iput v10, v0, Landroid/content/res/Configuration;->screenLayout:I

    return-void

    :cond_0
    move/from16 v2, p2

    move/from16 v6, p3

    goto :goto_0
.end method

.method private findIdxBasedOnAppTokens(Lcom/android/server/wm/WindowState;)I
    .locals 7

    const/4 v4, -0x1

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    move v0, v4

    :cond_0
    :goto_0
    return v0

    :cond_1
    add-int/lit8 v0, v1, -0x1

    :goto_1
    if-ltz v0, :cond_2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eq v5, v6, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    move v0, v4

    goto :goto_0
.end method

.method private findWindow(I)Lcom/android/server/wm/WindowState;
    .locals 6

    const/4 v4, -0x1

    if-ne p1, v4, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, p1, :cond_1

    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private findWindowOffsetLocked(I)I
    .locals 9

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt p1, v7, :cond_1

    move v2, v0

    :cond_0
    if-lez v2, :cond_1

    add-int/lit8 v2, v2, -0x1

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v7

    if-eqz v7, :cond_0

    add-int/lit8 v7, v2, 0x1

    :goto_0
    return v7

    :cond_1
    :goto_1
    if-lez p1, :cond_9

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    add-int/lit8 v8, p1, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    iget-boolean v7, v6, Lcom/android/server/wm/WindowToken;->sendingToBottom:Z

    if-eqz v7, :cond_2

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_2
    iget-object v7, v6, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_3
    if-lez v2, :cond_8

    add-int/lit8 v2, v2, -0x1

    iget-object v7, v6, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    :cond_4
    if-lez v3, :cond_6

    add-int/lit8 v3, v3, -0x1

    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    iget v7, v1, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-ltz v7, :cond_4

    add-int/lit8 v4, v0, -0x1

    :goto_2
    if-ltz v4, :cond_4

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_5

    add-int/lit8 v7, v4, 0x1

    goto :goto_0

    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v4, v0, -0x1

    :goto_3
    if-ltz v4, :cond_3

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v5, :cond_7

    add-int/lit8 v7, v4, 0x1

    goto :goto_0

    :cond_7
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_8
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_9
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private finishUpdateFocusedWindowAfterAssignLayersLocked(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/InputMonitor;->setInputFocusLw(Lcom/android/server/wm/WindowState;Z)V

    return-void
.end method

.method static fixScale(F)F
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_1

    const/4 p0, 0x0

    :cond_0
    :goto_0
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0

    :cond_1
    const/high16 v0, 0x41a0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    const/high16 p0, 0x41a0

    goto :goto_0
.end method

.method private getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;
    .locals 4

    if-eqz p1, :cond_2

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v2, :cond_2

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    :goto_0
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/high16 v2, -0x100

    and-int/2addr v2, v1

    const/high16 v3, 0x100

    if-ne v2, v3, :cond_0

    const-string v0, "android"

    :cond_0
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v2

    sget-object v3, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    :goto_1
    return-object v2

    :cond_1
    const-string v0, "android"

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;
    .locals 2

    if-eqz p1, :cond_1

    const/high16 v0, -0x100

    and-int/2addr v0, p2

    const/high16 v1, 0x100

    if-ne v0, v1, :cond_0

    const-string p1, "android"

    :cond_0
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFocusedWindow()Lcom/android/server/wm/WindowState;
    .locals 2

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindowLocked()Lcom/android/server/wm/WindowState;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getFocusedWindowLocked()Lcom/android/server/wm/WindowState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method static getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I
    .locals 3

    array-length v2, p0

    if-ge p1, v2, :cond_0

    aget-object v0, p0, p1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v2

    :cond_0
    if-nez p2, :cond_1

    move v1, p3

    goto :goto_0

    :cond_1
    int-to-float v2, p3

    invoke-static {p2, v2, p4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v1, v2

    goto :goto_0
.end method

.method private isLauncherWindowReady(Lcom/android/server/wm/WindowState;)Z
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.htc.launcher/com.htc.launcher.Launcher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSystemSecure()Z
    .locals 3

    const-string v0, "1"

    const-string v1, "ro.secure"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    const-string v1, "ro.debuggable"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadAnimation(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    if-ltz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    iget-object v3, v2, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private loadAnimation(Ljava/lang/String;I)Landroid/view/animation/Animation;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    if-ltz p2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    move v0, p2

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Ljava/lang/RuntimeException;)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  SURFACE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    const-string v1, "WindowManager"

    invoke-static {v1, v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :cond_0
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static main(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZ)Lcom/android/server/wm/WindowManagerService;
    .locals 2

    new-instance v0, Lcom/android/server/wm/WindowManagerService$WMThread;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/wm/WindowManagerService$WMThread;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZ)V

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService$WMThread;->start()V

    monitor-enter v0

    :goto_0
    :try_start_0
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService$WMThread;->mService:Lcom/android/server/wm/WindowManagerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService$WMThread;->mService:Lcom/android/server/wm/WindowManagerService;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private moveAppWindowsLocked(Lcom/android/server/wm/AppWindowToken;IZ)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->tmpRemoveAppWindowsLocked(Lcom/android/server/wm/WindowToken;)Z

    invoke-direct {p0, p2}, Lcom/android/server/wm/WindowManagerService;->findWindowOffsetLocked(I)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/WindowManagerService;->reAddAppWindowsLocked(ILcom/android/server/wm/WindowToken;)I

    move-result v0

    if-eqz p3, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v1}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    const/4 v1, 0x3

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    :cond_1
    return-void
.end method

.method private moveAppWindowsLocked(Ljava/util/List;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;I)V"
        }
    .end annotation

    const/4 v6, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowToken;

    if-eqz v3, :cond_0

    invoke-direct {p0, v3}, Lcom/android/server/wm/WindowManagerService;->tmpRemoveAppWindowsLocked(Lcom/android/server/wm/WindowToken;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/wm/WindowManagerService;->findWindowOffsetLocked(I)I

    move-result v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowToken;

    if-eqz v3, :cond_2

    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->reAddAppWindowsLocked(ILcom/android/server/wm/WindowToken;)I

    move-result v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v4}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    const/4 v4, 0x3

    invoke-direct {p0, v4, v6}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    :cond_4
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v4, v6}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    return-void
.end method

.method private notifyFocusChanged()V
    .locals 5

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    monitor-exit v4

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v2, v3, [Lcom/android/server/wm/WindowManagerService$WindowChangeListener;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/wm/WindowManagerService$WindowChangeListener;

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    array-length v0, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, v2, v1

    invoke-interface {v3}, Lcom/android/server/wm/WindowManagerService$WindowChangeListener;->focusChanged()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private notifyWindowsChanged()V
    .locals 5

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    monitor-exit v4

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v2, v3, [Lcom/android/server/wm/WindowManagerService$WindowChangeListener;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/wm/WindowManagerService$WindowChangeListener;

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    array-length v0, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, v2, v1

    invoke-interface {v3}, Lcom/android/server/wm/WindowManagerService$WindowChangeListener;->windowsChanged()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private final performLayoutAndPlaceSurfacesLocked()V
    .locals 11

    const/4 v8, 0x1

    const/4 v10, 0x0

    iget-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mInLayout:Z

    if-eqz v7, :cond_1

    const-string v7, "WindowManager"

    const-string v8, "performLayoutAndPlaceSurfacesLocked called while in layout"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    if-eqz v7, :cond_0

    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService;->mInLayout:Z

    const/4 v3, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    if-eqz v7, :cond_3

    const/4 v3, 0x1

    const/4 v2, 0x0

    :goto_1
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_2

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    const-string v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Force removing: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-direct {p0, v7, v6}, Lcom/android/server/wm/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    const-string v7, "WindowManager"

    const-string v8, "Due to memory failure, waiting a bit for next layout"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/Object;

    invoke-direct/range {v4 .. v4}, Ljava/lang/Object;-><init>()V

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v7, 0xfa

    :try_start_1
    invoke-virtual {v4, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    :goto_3
    :try_start_3
    invoke-direct {p0, v3}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLockedInner(Z)V

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    array-length v7, v7

    if-ge v7, v0, :cond_4

    add-int/lit8 v7, v0, 0xa

    new-array v7, v7, [Lcom/android/server/wm/WindowState;

    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    :cond_4
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_5

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    aget-object v5, v7, v2

    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-direct {p0, v7, v5}, Lcom/android/server/wm/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :catchall_0
    move-exception v7

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v7
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v1

    const-string v7, "WindowManager"

    const-string v8, "Unhandled exception while force removing for memory"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_5
    const/4 v7, 0x0

    :try_start_6
    iput-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mInLayout:Z

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    :cond_6
    :goto_5
    iget-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v8, 0x13

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v9, 0x13

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    iput-boolean v10, p0, Lcom/android/server/wm/WindowManagerService;->mInLayout:Z

    const-string v7, "WindowManager"

    const-string v8, "Unhandled exception while laying out windows"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_7
    const/4 v7, 0x0

    :try_start_7
    iput-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mInLayout:Z

    iget-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    if-eqz v7, :cond_6

    const-wide/16 v7, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/android/server/wm/WindowManagerService;->requestAnimationLocked(J)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_5

    :catch_2
    move-exception v7

    goto/16 :goto_2
.end method

.method private final performLayoutAndPlaceSurfacesLockedInner(Z)V
    .locals 94

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    if-nez v5, :cond_0

    const-string v5, "WindowManager"

    const-string v8, "skipping performLayoutAndPlaceSurfacesLockedInner with no mDisplay"

    invoke-static {v5, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v42

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    move/from16 v48, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    move/from16 v59, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    move/from16 v58, v0

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    const/4 v5, 0x3

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v8}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v57, v5, -0x1

    :goto_1
    if-ltz v57, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowToken;

    const/4 v8, 0x0

    iput-boolean v8, v5, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    add-int/lit8 v57, v57, -0x1

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v57, v5, -0x1

    :goto_2
    if-ltz v57, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    const/4 v8, 0x0

    iput-boolean v8, v5, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    add-int/lit8 v57, v57, -0x1

    goto :goto_2

    :cond_3
    const/16 v69, 0x1

    const/16 v56, 0x0

    const/high16 v72, -0x4080

    const/high16 v35, -0x4080

    const/16 v50, 0x0

    const/16 v29, 0x0

    const/16 v41, 0x0

    const/16 v82, 0x0

    const/16 v73, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    if-nez v5, :cond_4

    new-instance v5, Landroid/view/SurfaceSession;

    invoke-direct {v5}, Landroid/view/SurfaceSession;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    const/16 v41, 0x1

    :cond_4
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    if-eqz v41, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->createWatermark()V

    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    move/from16 v0, v48

    move/from16 v1, v44

    invoke-virtual {v5, v0, v1}, Lcom/android/server/wm/Watermark;->positionSurface(II)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    move/from16 v0, v48

    move/from16 v1, v44

    invoke-virtual {v5, v0, v1}, Lcom/android/server/wm/StrictModeFlash;->positionSurface(II)V

    :cond_7
    const/16 v85, 0x0

    const/16 v71, 0x0

    const/16 v38, 0x0

    :cond_8
    add-int/lit8 v71, v71, 0x1

    const/4 v5, 0x6

    move/from16 v0, v71

    if-le v0, v5, :cond_24

    :try_start_0
    const-string v5, "WindowManager"

    const-string v8, "Animation repeat aborted after too many iterations"

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_7f

    const/16 v74, 0x1

    :goto_4
    const/16 v65, 0x0

    const/16 v34, 0x0

    const/16 v46, 0x0

    const/16 v40, 0x0

    const/16 v76, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v57, v19, -0x1

    :goto_5
    if-ltz v57, :cond_98

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v83

    check-cast v83, Lcom/android/server/wm/WindowState;

    const/16 v47, 0x0

    move-object/from16 v0, v83

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v31, v0

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v5, :cond_91

    invoke-virtual/range {v83 .. v83}, Lcom/android/server/wm/WindowState;->computeShownFrameLocked()V

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v5, :cond_f

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    move-object/from16 v0, v83

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    and-int/lit16 v5, v5, 0x4000

    if-eqz v5, :cond_80

    move-object/from16 v0, v83

    iget v0, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    move/from16 v88, v0

    move-object/from16 v0, v83

    iget v0, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    move/from16 v55, v0

    :goto_6
    const/4 v5, 0x1

    move/from16 v0, v88

    if-ge v0, v5, :cond_9

    const/16 v88, 0x1

    :cond_9
    const/4 v5, 0x1

    move/from16 v0, v55

    if-ge v0, v5, :cond_a

    const/16 v55, 0x1

    :cond_a
    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceW:F

    move/from16 v0, v88

    int-to-float v8, v0

    cmpl-float v5, v5, v8

    if-nez v5, :cond_b

    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceH:F

    move/from16 v0, v55

    int-to-float v8, v0

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_85

    :cond_b
    const/16 v75, 0x1

    :goto_7
    if-eqz v75, :cond_c

    move/from16 v0, v88

    int-to-float v5, v0

    move-object/from16 v0, v83

    iput v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceW:F

    move/from16 v0, v55

    int-to-float v5, v0

    move-object/from16 v0, v83

    iput v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceH:F

    :cond_c
    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceX:F

    move-object/from16 v0, v83

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    cmpl-float v5, v5, v8

    if-nez v5, :cond_d

    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceY:F

    move-object/from16 v0, v83

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_e

    :cond_d
    :try_start_1
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v83

    iput v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceX:F

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v83

    iput v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceY:F

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, v83

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v83

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5, v8, v10}, Landroid/view/Surface;->setPosition(FF)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_e
    :goto_8
    if-eqz v75, :cond_f

    const/4 v5, 0x1

    :try_start_2
    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceResized:Z

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move/from16 v0, v88

    move/from16 v1, v55

    invoke-virtual {v5, v0, v1}, Landroid/view/Surface;->setSize(II)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_f
    :goto_9
    :try_start_3
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v5, :cond_13

    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/WindowManagerService;->mLayoutSeq:I

    if-ne v5, v8, :cond_13

    move-object/from16 v0, v83

    iget-boolean v8, v0, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, v83

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v5, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_86

    const/4 v5, 0x1

    :goto_a
    or-int/2addr v5, v8

    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    move-object/from16 v0, v83

    iget-boolean v8, v0, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, v83

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v5, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_87

    const/4 v5, 0x1

    :goto_b
    or-int/2addr v5, v8

    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    if-eq v5, v8, :cond_88

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v5, :cond_10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, v83

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v5, v8}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v5

    if-eqz v5, :cond_88

    :cond_10
    const/16 v39, 0x1

    :goto_c
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    move-object/from16 v0, v83

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v5, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    if-nez v5, :cond_11

    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    if-nez v5, :cond_11

    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceResized:Z

    if-nez v5, :cond_11

    if-eqz v39, :cond_89

    :cond_11
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, v83

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v5, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, v83

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v5, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->makeWindowFreezingScreenIfNeededLocked(Lcom/android/server/wm/WindowState;)V

    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-eqz v5, :cond_12

    const/4 v5, 0x1

    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mDrawPending:Z

    const/4 v5, 0x0

    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mCommitDrawPending:Z

    const/4 v5, 0x0

    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mReadyToShow:Z

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_12

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    const/4 v8, 0x0

    iput-boolean v8, v5, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    :cond_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    move-object/from16 v0, v83

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    move-object/from16 v0, v83

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    :goto_d
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v5, :cond_14

    invoke-virtual/range {v83 .. v83}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v5

    if-nez v5, :cond_8a

    :cond_14
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mLastHidden:Z

    if-nez v5, :cond_15

    const/4 v5, 0x1

    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mLastHidden:Z

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v5, :cond_15

    const/4 v5, 0x0

    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceShown:Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v5}, Landroid/view/Surface;->hide()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_15
    :goto_e
    :try_start_5
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-eqz v5, :cond_16

    const/4 v5, 0x0

    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    :cond_16
    :goto_f
    if-eqz v47, :cond_1a

    if-nez v40, :cond_17

    move-object/from16 v0, v32

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v8, -0x1

    if-ne v5, v8, :cond_17

    move-object/from16 v0, v32

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v8, -0x1

    if-ne v5, v8, :cond_17

    const/16 v40, 0x1

    :cond_17
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-eqz v5, :cond_19

    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mDrawPending:Z

    if-nez v5, :cond_18

    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mCommitDrawPending:Z

    if-eqz v5, :cond_90

    :cond_18
    const/16 v69, 0x0

    :cond_19
    :goto_10
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    const/4 v8, 0x1

    iput-boolean v8, v5, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    :cond_1a
    :goto_11
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    if-eqz v5, :cond_1b

    const/4 v5, 0x0

    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    :cond_1b
    invoke-virtual/range {v83 .. v83}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v36

    if-eqz v74, :cond_1c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v83

    if-ne v0, v5, :cond_1c

    if-eqz v36, :cond_1c

    const/16 v50, 0x1

    :cond_1c
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mObscured:Z

    move/from16 v0, v65

    if-eq v5, v0, :cond_92

    const/16 v66, 0x1

    :goto_12
    move/from16 v0, v65

    move-object/from16 v1, v83

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mObscured:Z

    if-nez v65, :cond_22

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v5, :cond_21

    move/from16 v0, v31

    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_1d

    move-object/from16 v0, v83

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    move-object/from16 v56, v0

    :cond_1d
    if-nez v76, :cond_1e

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/4 v8, 0x0

    cmpl-float v5, v5, v8

    if-ltz v5, :cond_1e

    const/4 v5, 0x0

    cmpg-float v5, v72, v5

    if-gez v5, :cond_1e

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    move/from16 v72, v0

    :cond_1e
    if-nez v76, :cond_1f

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    const/4 v8, 0x0

    cmpl-float v5, v5, v8

    if-ltz v5, :cond_1f

    const/4 v5, 0x0

    cmpg-float v5, v35, v5

    if-gez v5, :cond_1f

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    move/from16 v35, v0

    :cond_1f
    if-eqz v36, :cond_21

    move-object/from16 v0, v32

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7d8

    if-eq v5, v8, :cond_20

    move-object/from16 v0, v32

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7d4

    if-eq v5, v8, :cond_20

    move-object/from16 v0, v32

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7da

    if-ne v5, v8, :cond_21

    :cond_20
    const/16 v76, 0x1

    :cond_21
    if-eqz v36, :cond_93

    invoke-virtual/range {v83 .. v83}, Lcom/android/server/wm/WindowState;->isOpaqueDrawn()Z

    move-result v5

    if-eqz v5, :cond_93

    const/16 v68, 0x1

    :goto_13
    if-eqz v68, :cond_94

    move-object/from16 v0, v83

    move/from16 v1, v59

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->isFullscreen(II)Z

    move-result v5

    if-eqz v5, :cond_94

    const/16 v65, 0x1

    :cond_22
    :goto_14
    if-eqz v66, :cond_23

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v83

    if-ne v5, v0, :cond_23

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->updateWallpaperVisibilityLocked()V

    :cond_23
    add-int/lit8 v57, v57, -0x1

    goto/16 :goto_5

    :cond_24
    and-int/lit8 v5, v38, 0x7

    if-eqz v5, :cond_27

    and-int/lit8 v5, v38, 0x4

    if-eqz v5, :cond_25

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_25

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    :cond_25
    and-int/lit8 v5, v38, 0x2

    if-eqz v5, :cond_26

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Z)Z

    move-result v5

    if-eqz v5, :cond_26

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v8, 0x12

    invoke-virtual {v5, v8}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    :cond_26
    and-int/lit8 v5, v38, 0x1

    if-eqz v5, :cond_27

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    :cond_27
    const/4 v5, 0x4

    move/from16 v0, v71

    if-ge v0, v5, :cond_2a

    if-nez v71, :cond_29

    const/4 v5, 0x1

    :goto_15
    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v8}, Lcom/android/server/wm/WindowManagerService;->performLayoutLockedInner(ZZ)I

    move-result v38

    if-eqz v38, :cond_2b

    :cond_28
    :goto_16
    if-nez v38, :cond_8

    goto/16 :goto_3

    :cond_29
    const/4 v5, 0x0

    goto :goto_15

    :cond_2a
    const-string v5, "WindowManager"

    const-string v8, "Layout repeat skipped after too many iterations"

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v38, 0x0

    :cond_2b
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    add-int/lit8 v81, v5, 0x1

    move/from16 v0, v81

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    const/16 v80, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v20

    const/16 v57, 0x0

    :goto_17
    move/from16 v0, v57

    move/from16 v1, v20

    if-ge v0, v1, :cond_2d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    move-wide/from16 v0, v42

    move/from16 v2, v59

    move/from16 v3, v58

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/android/server/wm/AppWindowToken;->stepAnimationLocked(JII)Z

    move-result v5

    if-eqz v5, :cond_2c

    const/16 v80, 0x1

    :cond_2c
    add-int/lit8 v57, v57, 0x1

    goto :goto_17

    :cond_2d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v22

    const/16 v57, 0x0

    :goto_18
    move/from16 v0, v57

    move/from16 v1, v22

    if-ge v0, v1, :cond_2f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    move-wide/from16 v0, v42

    move/from16 v2, v59

    move/from16 v3, v58

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/android/server/wm/AppWindowToken;->stepAnimationLocked(JII)Z

    move-result v5

    if-eqz v5, :cond_2e

    const/16 v80, 0x1

    :cond_2e
    add-int/lit8 v57, v57, 0x1

    goto :goto_18

    :cond_2f
    move/from16 v29, v80

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v5, :cond_30

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v5}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v5

    if-eqz v5, :cond_30

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    move-wide/from16 v0, v42

    invoke-virtual {v5, v0, v1}, Lcom/android/server/wm/ScreenRotationAnimation;->stepAnimation(J)Z

    move-result v5

    if-eqz v5, :cond_42

    const/16 v29, 0x1

    :cond_30
    :goto_19
    const/16 v79, 0x0

    const/16 v86, 0x0

    const/16 v51, 0x0

    const/16 v92, 0x0

    const/16 v90, 0x0

    const/16 v91, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move/from16 v0, v48

    move/from16 v1, v44

    invoke-interface {v5, v0, v1}, Landroid/view/WindowManagerPolicy;->beginAnimationLw(II)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v57, v19, -0x1

    :goto_1a
    if-ltz v57, :cond_57

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v83

    check-cast v83, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v83

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v32, v0

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v5, :cond_3c

    move-object/from16 v0, v83

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->commitFinishDrawingLocked(J)Z

    move-result v5

    if-eqz v5, :cond_31

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v8, 0x10

    and-int/2addr v5, v8

    if-eqz v5, :cond_31

    const/16 v86, 0x1

    :cond_31
    move-object/from16 v0, v83

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mAnimating:Z

    move/from16 v87, v0

    move/from16 v28, v59

    move/from16 v27, v58

    invoke-virtual/range {v83 .. v83}, Lcom/android/server/wm/WindowState;->shouldAnimateMove()Z

    move-result v5

    if-eqz v5, :cond_32

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const v8, 0x10a0052

    invoke-static {v5, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v25

    move-object/from16 v0, v83

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->setAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v83

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int v28, v5, v8

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v83

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int v27, v5, v8

    :cond_32
    move-object/from16 v0, v83

    move-wide/from16 v1, v42

    move/from16 v3, v28

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowState;->stepAnimationLocked(JII)Z

    move-result v63

    if-eqz v63, :cond_36

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v5, :cond_35

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v8, 0x10

    and-int/2addr v5, v8

    if-eqz v5, :cond_33

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v5

    if-eqz v5, :cond_33

    move-object/from16 v92, v83

    :cond_33
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v5

    if-eqz v5, :cond_35

    if-eqz v90, :cond_34

    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    move-object/from16 v0, v90

    iget v8, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    if-ge v5, v8, :cond_35

    :cond_34
    move-object/from16 v90, v83

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v91

    :cond_35
    const/16 v29, 0x1

    :cond_36
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_39

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v5, :cond_39

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v5, v5, Lcom/android/server/wm/AppWindowToken;->animating:Z

    if-eqz v5, :cond_39

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v8, 0x10

    and-int/2addr v5, v8

    if-eqz v5, :cond_37

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v5

    if-eqz v5, :cond_37

    move-object/from16 v92, v83

    :cond_37
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v5

    if-eqz v5, :cond_39

    if-eqz v90, :cond_38

    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    move-object/from16 v0, v90

    iget v8, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    if-ge v5, v8, :cond_39

    :cond_38
    move-object/from16 v90, v83

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v91

    :cond_39
    if-eqz v87, :cond_3a

    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mAnimating:Z

    if-nez v5, :cond_3a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v83

    if-ne v5, v0, :cond_3a

    const/16 v86, 0x1

    :cond_3a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v83

    move-object/from16 v1, v32

    invoke-interface {v5, v0, v1}, Landroid/view/WindowManagerPolicy;->doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v5

    if-eqz v5, :cond_44

    if-nez v87, :cond_43

    if-eqz v63, :cond_43

    const/16 v85, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    :cond_3b
    :goto_1b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v83

    move-object/from16 v1, v32

    invoke-interface {v5, v0, v1}, Landroid/view/WindowManagerPolicy;->animatingWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V

    :cond_3c
    move-object/from16 v0, v83

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v30, v0

    if-eqz v30, :cond_56

    move-object/from16 v0, v30

    iget-boolean v5, v0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v5, :cond_3d

    move-object/from16 v0, v30

    iget-boolean v5, v0, Lcom/android/server/wm/AppWindowToken;->freezingScreen:Z

    if-eqz v5, :cond_56

    :cond_3d
    move-object/from16 v0, v30

    iget v5, v0, Lcom/android/server/wm/AppWindowToken;->lastTransactionSequence:I

    move/from16 v0, v81

    if-eq v5, v0, :cond_3e

    move/from16 v0, v81

    move-object/from16 v1, v30

    iput v0, v1, Lcom/android/server/wm/AppWindowToken;->lastTransactionSequence:I

    const/4 v5, 0x0

    move-object/from16 v0, v30

    iput v5, v0, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    move-object/from16 v0, v30

    iput v5, v0, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    const/4 v5, 0x0

    move-object/from16 v0, v30

    iput-boolean v5, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    :cond_3e
    invoke-virtual/range {v83 .. v83}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v5

    if-nez v5, :cond_3f

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v8, 0x1

    if-ne v5, v8, :cond_41

    :cond_3f
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v5, :cond_41

    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v5, :cond_41

    move-object/from16 v0, v30

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v83

    if-eq v0, v5, :cond_55

    move-object/from16 v0, v30

    iget-boolean v5, v0, Lcom/android/server/wm/AppWindowToken;->freezingScreen:Z

    if-eqz v5, :cond_40

    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v5, :cond_41

    :cond_40
    move-object/from16 v0, v30

    iget v5, v0, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v30

    iput v5, v0, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    invoke-virtual/range {v83 .. v83}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v5

    if-eqz v5, :cond_41

    move-object/from16 v0, v30

    iget v5, v0, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v30

    iput v5, v0, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    const/16 v79, 0x1

    :cond_41
    :goto_1c
    add-int/lit8 v57, v57, -0x1

    goto/16 :goto_1a

    :cond_42
    const/16 v73, 0x1

    const/16 v82, 0x1

    goto/16 :goto_19

    :cond_43
    invoke-virtual/range {v83 .. v83}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v5

    if-eqz v5, :cond_3b

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-nez v5, :cond_3b

    const/16 v51, 0x1

    goto/16 :goto_1b

    :cond_44
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v83

    move-object/from16 v1, v32

    invoke-interface {v5, v0, v1}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v5

    if-eqz v5, :cond_3b

    if-eqz v51, :cond_46

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v83

    invoke-virtual {v0, v5, v8}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v37

    :cond_45
    :goto_1d
    if-eqz v37, :cond_3b

    move-object/from16 v0, v32

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v8, 0x10

    and-int/2addr v5, v8

    if-eqz v5, :cond_3b

    const/16 v86, 0x1

    goto/16 :goto_1b

    :cond_46
    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v83

    invoke-virtual {v0, v5, v8}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    move-result v37

    if-eqz v37, :cond_45

    if-eqz v85, :cond_47

    invoke-virtual/range {v83 .. v83}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v5

    if-eqz v5, :cond_47

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy;->createForceHideEnterAnimation()Landroid/view/animation/Animation;

    move-result-object v25

    if-eqz v25, :cond_47

    move-object/from16 v0, v83

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_47
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_48

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget v5, v5, Lcom/android/server/wm/WindowState;->mLayer:I

    move-object/from16 v0, v83

    iget v8, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    if-ge v5, v8, :cond_45

    :cond_48
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1d

    :catch_0
    move-exception v49

    const-string v5, "WindowManager"

    const-string v8, "Unhandled exception in Window Manager"

    move-object/from16 v0, v49

    invoke-static {v5, v8, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_49
    :goto_1e
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    if-eqz v5, :cond_4a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    invoke-virtual {v5}, Lcom/android/server/wm/Watermark;->drawIfNeeded()V

    :cond_4a
    if-eqz v69, :cond_4c

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:Z

    if-eqz v5, :cond_4b

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v8, 0xb

    invoke-virtual {v5, v8}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    :cond_4b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V

    :cond_4c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v57

    if-lez v57, :cond_4f

    :cond_4d
    add-int/lit8 v57, v57, -0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v89

    check-cast v89, Lcom/android/server/wm/WindowState;

    const/16 v45, 0x0

    :try_start_6
    move-object/from16 v0, v89

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    if-eq v5, v8, :cond_9e

    move-object/from16 v0, v89

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v5, :cond_4e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, v89

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v5, v8}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v45

    if-eqz v45, :cond_9e

    :cond_4e
    const/16 v39, 0x1

    :goto_1f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, v89

    iput-object v5, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, v89

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v0, v89

    iget v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceW:F

    float-to-int v11, v5

    move-object/from16 v0, v89

    iget v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceH:F

    float-to-int v12, v5

    move-object/from16 v0, v89

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, v89

    iget-object v14, v0, Lcom/android/server/wm/WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, v89

    iget-boolean v15, v0, Lcom/android/server/wm/WindowState;->mDrawPending:Z

    if-eqz v39, :cond_9f

    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v16, v0

    :goto_20
    invoke-interface/range {v10 .. v16}, Landroid/view/IWindow;->resized(IILandroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V

    const/4 v5, 0x0

    move-object/from16 v0, v89

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    const/4 v5, 0x0

    move-object/from16 v0, v89

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    const/4 v5, 0x0

    move-object/from16 v0, v89

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceResized:Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_8

    :goto_21
    if-gtz v57, :cond_4d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :cond_4f
    const/16 v84, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v57

    if-lez v57, :cond_53

    :cond_50
    add-int/lit8 v57, v57, -0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v89

    check-cast v89, Lcom/android/server/wm/WindowState;

    const/4 v5, 0x0

    move-object/from16 v0, v89

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v89

    if-ne v5, v0, :cond_51

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    :cond_51
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v89

    if-ne v0, v5, :cond_52

    const/16 v84, 0x1

    :cond_52
    invoke-virtual/range {v89 .. v89}, Lcom/android/server/wm/WindowState;->destroySurfaceLocked()V

    if-gtz v57, :cond_50

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :cond_53
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v57, v5, -0x1

    :goto_22
    if-ltz v57, :cond_a0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Lcom/android/server/wm/WindowToken;

    move-object/from16 v0, v78

    iget-boolean v5, v0, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    if-nez v5, :cond_54

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, v78

    iget v5, v0, Lcom/android/server/wm/WindowToken;->windowType:I

    const/16 v8, 0x7dd

    if-ne v5, v8, :cond_54

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    move-object/from16 v0, v78

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_54
    add-int/lit8 v57, v57, -0x1

    goto :goto_22

    :cond_55
    :try_start_7
    invoke-virtual/range {v83 .. v83}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v5

    if-eqz v5, :cond_41

    const/4 v5, 0x1

    move-object/from16 v0, v30

    iput-boolean v5, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    goto/16 :goto_1c

    :cond_56
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mReadyToShow:Z

    if-eqz v5, :cond_41

    invoke-virtual/range {v83 .. v83}, Lcom/android/server/wm/WindowState;->performShowLocked()Z

    goto/16 :goto_1c

    :cond_57
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy;->finishAnimationLw()I

    move-result v5

    or-int v38, v38, v5

    if-eqz v79, :cond_5a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v24

    const/16 v57, 0x0

    :goto_23
    move/from16 v0, v57

    move/from16 v1, v24

    if-ge v0, v1, :cond_5a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    iget-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->freezingScreen:Z

    if-eqz v5, :cond_59

    iget v0, v6, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    move/from16 v64, v0

    if-lez v64, :cond_58

    iget v5, v6, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    move/from16 v0, v64

    if-lt v5, v0, :cond_58

    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->showAllWindowsLocked()V

    const/4 v5, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v5, v8}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V

    const/16 v69, 0x1

    :cond_58
    :goto_24
    add-int/lit8 v57, v57, 0x1

    goto :goto_23

    :cond_59
    iget-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v5, :cond_58

    iget v0, v6, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    move/from16 v64, v0

    if-lez v64, :cond_58

    iget v5, v6, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    move/from16 v0, v64

    if-lt v5, v0, :cond_58

    const/4 v5, 0x1

    iput-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    or-int/lit8 v38, v38, 0x8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_58

    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->showAllWindowsLocked()V

    goto :goto_24

    :cond_5a
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionReady:Z

    if-eqz v5, :cond_6e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v23

    const/16 v54, 0x1

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v5, :cond_5c

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionTimeout:Z

    if-nez v5, :cond_5c

    const/16 v57, 0x0

    :goto_25
    move/from16 v0, v57

    move/from16 v1, v23

    if-ge v0, v1, :cond_5c

    if-eqz v54, :cond_5c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    iget-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v5, :cond_5b

    iget-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    if-nez v5, :cond_5b

    iget-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    if-nez v5, :cond_5b

    const/16 v54, 0x0

    :cond_5b
    add-int/lit8 v57, v57, 0x1

    goto :goto_25

    :cond_5c
    if-eqz v54, :cond_6e

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    if-eqz v5, :cond_5d

    const/4 v9, -0x1

    :cond_5d
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionReady:Z

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionRunning:Z

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionTimeout:Z

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mStartingIconInTransition:Z

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v8, 0xd

    invoke-virtual {v5, v8}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_60

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v23

    const/16 v57, 0x0

    :goto_26
    move/from16 v0, v57

    move/from16 v1, v23

    if-ge v0, v1, :cond_5f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    iget-boolean v5, v6, Lcom/android/server/wm/WindowToken;->sendingToTop:Z

    if-eqz v5, :cond_5e

    const/4 v5, 0x0

    iput-boolean v5, v6, Lcom/android/server/wm/WindowToken;->sendingToTop:Z

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v6, v1, v5}, Lcom/android/server/wm/WindowManagerService;->moveAppWindowsLocked(Lcom/android/server/wm/AppWindowToken;IZ)V

    :cond_5e
    add-int/lit8 v57, v57, 0x1

    goto :goto_26

    :cond_5f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :cond_60
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v67, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    const/16 v86, 0x0

    const/4 v7, 0x0

    const/16 v33, -0x1

    const/16 v53, 0x0

    const/16 v52, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int v23, v21, v5

    const/16 v57, 0x0

    :goto_27
    move/from16 v0, v57

    move/from16 v1, v23

    if-ge v0, v1, :cond_66

    move/from16 v0, v57

    move/from16 v1, v21

    if-ge v0, v1, :cond_64

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    const/16 v61, 0x1

    :goto_28
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_62

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eq v5, v6, :cond_61

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v5, v6, :cond_62

    :cond_61
    or-int v52, v52, v61

    :cond_62
    iget-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->appFullscreen:Z

    if-eqz v5, :cond_65

    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v93

    if-eqz v93, :cond_63

    move-object/from16 v0, v93

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, v93

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v33, v0

    const/16 v53, 0x1

    :cond_63
    :goto_29
    add-int/lit8 v57, v57, 0x1

    goto :goto_27

    :cond_64
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    sub-int v8, v57, v21

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    const/16 v61, 0x2

    goto :goto_28

    :cond_65
    if-nez v53, :cond_63

    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v93

    if-eqz v93, :cond_63

    move-object/from16 v0, v93

    iget v5, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v0, v33

    if-le v5, v0, :cond_63

    move-object/from16 v0, v93

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, v93

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v33, v0

    goto :goto_29

    :cond_66
    const/4 v5, 0x3

    move/from16 v0, v52

    if-ne v0, v5, :cond_69

    sparse-switch v9, :sswitch_data_0

    :cond_67
    :goto_2a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy;->allowAppAnimationsLw()Z

    move-result v5

    if-nez v5, :cond_68

    const/4 v7, 0x0

    :cond_68
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v23

    const/16 v57, 0x0

    :goto_2b
    move/from16 v0, v57

    move/from16 v1, v23

    if-ge v0, v1, :cond_6b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    const/4 v5, 0x0

    iput-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    const/4 v5, 0x0

    iput-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    const/4 v5, 0x0

    iput-object v5, v6, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    const/4 v8, 0x1

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/WindowManagerService;->setTokenVisibilityLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZ)Z

    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    const/4 v5, 0x0

    iput-boolean v5, v6, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->showAllWindowsLocked()V

    add-int/lit8 v57, v57, 0x1

    goto :goto_2b

    :sswitch_0
    const/16 v9, 0x100e

    goto :goto_2a

    :sswitch_1
    const/16 v9, 0x200f

    goto :goto_2a

    :cond_69
    if-eqz v67, :cond_6a

    const/16 v9, 0x200c

    goto :goto_2a

    :cond_6a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_67

    const/16 v9, 0x100d

    goto :goto_2a

    :cond_6b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v23

    const/16 v57, 0x0

    :goto_2c
    move/from16 v0, v57

    move/from16 v1, v23

    if-ge v0, v1, :cond_6c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    const/4 v5, 0x0

    iput-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    const/4 v5, 0x0

    iput-object v5, v6, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/WindowManagerService;->setTokenVisibilityLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZ)Z

    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    const/4 v5, 0x0

    iput-boolean v5, v6, Lcom/android/server/wm/WindowToken;->waitingToHide:Z

    const/4 v5, 0x1

    iput-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    add-int/lit8 v57, v57, 0x1

    goto :goto_2c

    :cond_6c
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    or-int/lit8 v38, v38, 0x3

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    move-result v5

    if-nez v5, :cond_6d

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    :cond_6d
    const/4 v5, 0x2

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v8}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    :cond_6e
    const/16 v26, 0x0

    if-nez v29, :cond_6f

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionRunning:Z

    if-eqz v5, :cond_6f

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionRunning:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->rebuildAppWindowListLocked()V

    or-int/lit8 v38, v38, 0x1

    or-int/lit8 v26, v26, 0x2

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    const/16 v86, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    :cond_6f
    if-eqz v85, :cond_73

    if-nez v38, :cond_73

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionReady:Z

    if-nez v5, :cond_73

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v67, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_70

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_70

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-eqz v5, :cond_70

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    or-int/lit8 v38, v38, 0x8

    :cond_70
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    move-result v5

    or-int v26, v26, v5

    const/16 v86, 0x0

    const/16 v85, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v5, :cond_73

    const/16 v51, 0x0

    add-int/lit8 v57, v19, -0x1

    :goto_2d
    if-ltz v57, :cond_73

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v83

    check-cast v83, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v5, :cond_71

    move-object/from16 v0, v83

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v83

    move-object/from16 v1, v32

    invoke-interface {v5, v0, v1}, Landroid/view/WindowManagerPolicy;->doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v5

    if-eqz v5, :cond_72

    invoke-virtual/range {v83 .. v83}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_72

    const/16 v51, 0x1

    :cond_71
    :goto_2e
    add-int/lit8 v57, v57, -0x1

    goto :goto_2d

    :cond_72
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v83

    move-object/from16 v1, v32

    invoke-interface {v5, v0, v1}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v5

    if-eqz v5, :cond_71

    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mAnimating:Z

    if-nez v5, :cond_71

    invoke-virtual/range {v83 .. v83}, Lcom/android/server/wm/WindowState;->clearAnimation()V

    goto :goto_2e

    :cond_73
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v92

    if-eq v5, v0, :cond_74

    move-object/from16 v0, v92

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    const/16 v86, 0x1

    :cond_74
    if-eqz v91, :cond_7d

    move-object/from16 v77, v90

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v90

    if-eq v5, v0, :cond_75

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v90

    if-eq v5, v0, :cond_75

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v90

    if-ne v5, v0, :cond_76

    :cond_75
    const/16 v57, 0x0

    :goto_2f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v57

    if-ge v0, v5, :cond_76

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v83

    check-cast v83, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v5, :cond_7c

    move-object/from16 v77, v83

    :cond_76
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    if-nez v5, :cond_77

    new-instance v5, Lcom/android/server/wm/DimSurface;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    invoke-direct {v5, v8}, Lcom/android/server/wm/DimSurface;-><init>(Landroid/view/SurfaceSession;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    :cond_77
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    move-object/from16 v0, v77

    iget v8, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    add-int/lit8 v8, v8, -0x1

    move/from16 v0, v48

    move/from16 v1, v44

    move/from16 v2, v91

    invoke-virtual {v5, v0, v1, v8, v2}, Lcom/android/server/wm/DimSurface;->show(IIII)V

    :cond_78
    :goto_30
    if-eqz v86, :cond_79

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    move-result v5

    or-int v26, v26, v5

    :cond_79
    and-int/lit8 v5, v26, 0x2

    if-eqz v5, :cond_7e

    or-int/lit8 v38, v38, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    :cond_7a
    :goto_31
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    if-eqz v5, :cond_7b

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    const/4 v5, 0x2

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v8}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v5

    if-eqz v5, :cond_7b

    or-int/lit8 v38, v38, 0x8

    const/16 v26, 0x0

    :cond_7b
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    if-eqz v5, :cond_28

    or-int/lit8 v38, v38, 0x1

    goto/16 :goto_16

    :cond_7c
    add-int/lit8 v57, v57, 0x1

    goto :goto_2f

    :cond_7d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    if-eqz v5, :cond_78

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    invoke-virtual {v5}, Lcom/android/server/wm/DimSurface;->hide()V

    goto :goto_30

    :cond_7e
    and-int/lit8 v5, v26, 0x4

    if-eqz v5, :cond_7a

    or-int/lit8 v38, v38, 0x1

    goto :goto_31

    :cond_7f
    const/16 v74, 0x0

    goto/16 :goto_4

    :cond_80
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-eqz v5, :cond_84

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->surfaceWidthScale:F

    const/high16 v8, 0x3f80

    cmpl-float v5, v5, v8

    if-nez v5, :cond_81

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->surfaceHeightScale:F

    const/high16 v8, 0x3f80

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_84

    :cond_81
    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    move-object/from16 v0, v83

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    const/4 v8, -0x1

    if-ne v5, v8, :cond_82

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v88

    :goto_32
    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    move-object/from16 v0, v83

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    const/4 v8, -0x1

    if-ne v5, v8, :cond_83

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v55

    :goto_33
    goto/16 :goto_6

    :cond_82
    move-object/from16 v0, v83

    iget v0, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    move/from16 v88, v0

    goto :goto_32

    :cond_83
    move-object/from16 v0, v83

    iget v0, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    move/from16 v55, v0

    goto :goto_33

    :cond_84
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v88

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v55

    goto/16 :goto_6

    :cond_85
    const/16 v75, 0x0

    goto/16 :goto_7

    :catch_1
    move-exception v49

    const-string v5, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error positioning surface of "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v83

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " pos=("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v83

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v83

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ")"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v49

    invoke-static {v5, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-nez p1, :cond_e

    const-string v5, "position"

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v1, v5, v8}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)Z

    goto/16 :goto_8

    :catch_2
    move-exception v49

    const-string v5, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error resizing surface of "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v83

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " size=("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v88

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "x"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v55

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ")"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v49

    invoke-static {v5, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-nez p1, :cond_f

    const-string v5, "size"

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v1, v5, v8}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)Z

    goto/16 :goto_9

    :cond_86
    const/4 v5, 0x0

    goto/16 :goto_a

    :cond_87
    const/4 v5, 0x0

    goto/16 :goto_b

    :cond_88
    const/16 v39, 0x0

    goto/16 :goto_c

    :cond_89
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-eqz v5, :cond_13

    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mDrawPending:Z

    if-nez v5, :cond_13

    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mCommitDrawPending:Z

    if-nez v5, :cond_13

    const/4 v5, 0x0

    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    goto/16 :goto_d

    :catch_3
    move-exception v49

    const-string v5, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception hiding surface in "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v83

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    :cond_8a
    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mLastLayer:I

    move-object/from16 v0, v83

    iget v8, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    if-ne v5, v8, :cond_8b

    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mLastAlpha:F

    move-object/from16 v0, v83

    iget v8, v0, Lcom/android/server/wm/WindowState;->mShownAlpha:F

    cmpl-float v5, v5, v8

    if-nez v5, :cond_8b

    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mLastDsDx:F

    move-object/from16 v0, v83

    iget v8, v0, Lcom/android/server/wm/WindowState;->mDsDx:F

    cmpl-float v5, v5, v8

    if-nez v5, :cond_8b

    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mLastDtDx:F

    move-object/from16 v0, v83

    iget v8, v0, Lcom/android/server/wm/WindowState;->mDtDx:F

    cmpl-float v5, v5, v8

    if-nez v5, :cond_8b

    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mLastDsDy:F

    move-object/from16 v0, v83

    iget v8, v0, Lcom/android/server/wm/WindowState;->mDsDy:F

    cmpl-float v5, v5, v8

    if-nez v5, :cond_8b

    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mLastDtDy:F

    move-object/from16 v0, v83

    iget v8, v0, Lcom/android/server/wm/WindowState;->mDtDy:F

    cmpl-float v5, v5, v8

    if-nez v5, :cond_8b

    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mLastHScale:F

    move-object/from16 v0, v83

    iget v8, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    cmpl-float v5, v5, v8

    if-nez v5, :cond_8b

    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mLastVScale:F

    move-object/from16 v0, v83

    iget v8, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    cmpl-float v5, v5, v8

    if-nez v5, :cond_8b

    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mLastHidden:Z

    if-eqz v5, :cond_8f

    :cond_8b
    const/16 v47, 0x1

    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mShownAlpha:F

    move-object/from16 v0, v83

    iput v5, v0, Lcom/android/server/wm/WindowState;->mLastAlpha:F

    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    move-object/from16 v0, v83

    iput v5, v0, Lcom/android/server/wm/WindowState;->mLastLayer:I

    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mDsDx:F

    move-object/from16 v0, v83

    iput v5, v0, Lcom/android/server/wm/WindowState;->mLastDsDx:F

    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mDtDx:F

    move-object/from16 v0, v83

    iput v5, v0, Lcom/android/server/wm/WindowState;->mLastDtDx:F

    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mDsDy:F

    move-object/from16 v0, v83

    iput v5, v0, Lcom/android/server/wm/WindowState;->mLastDsDy:F

    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mDtDy:F

    move-object/from16 v0, v83

    iput v5, v0, Lcom/android/server/wm/WindowState;->mLastDtDy:F

    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    move-object/from16 v0, v83

    iput v5, v0, Lcom/android/server/wm/WindowState;->mLastHScale:F

    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    move-object/from16 v0, v83

    iput v5, v0, Lcom/android/server/wm/WindowState;->mLastVScale:F

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    if-eqz v5, :cond_8c

    :try_start_8
    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mShownAlpha:F

    move-object/from16 v0, v83

    iput v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceAlpha:F

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, v83

    iget v8, v0, Lcom/android/server/wm/WindowState;->mShownAlpha:F

    invoke-virtual {v5, v8}, Landroid/view/Surface;->setAlpha(F)V

    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    move-object/from16 v0, v83

    iput v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceLayer:I

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, v83

    iget v8, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    invoke-virtual {v5, v8}, Landroid/view/Surface;->setLayer(I)V

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, v83

    iget v8, v0, Lcom/android/server/wm/WindowState;->mDsDx:F

    move-object/from16 v0, v83

    iget v10, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v8, v10

    move-object/from16 v0, v83

    iget v10, v0, Lcom/android/server/wm/WindowState;->mDtDx:F

    move-object/from16 v0, v83

    iget v11, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v10, v11

    move-object/from16 v0, v83

    iget v11, v0, Lcom/android/server/wm/WindowState;->mDsDy:F

    move-object/from16 v0, v83

    iget v12, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v11, v12

    move-object/from16 v0, v83

    iget v12, v0, Lcom/android/server/wm/WindowState;->mDtDy:F

    move-object/from16 v0, v83

    iget v13, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v12, v13

    invoke-virtual {v5, v8, v10, v11, v12}, Landroid/view/Surface;->setMatrix(FFFF)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_8c
    :goto_34
    :try_start_9
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mLastHidden:Z

    if-eqz v5, :cond_8d

    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mDrawPending:Z

    if-nez v5, :cond_8d

    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mCommitDrawPending:Z

    if-nez v5, :cond_8d

    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mReadyToShow:Z

    if-nez v5, :cond_8d

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->showSurfaceRobustlyLocked(Lcom/android/server/wm/WindowState;)Z

    move-result v5

    if-eqz v5, :cond_8e

    const/4 v5, 0x1

    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mHasDrawn:Z

    const/4 v5, 0x0

    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mLastHidden:Z

    :cond_8d
    :goto_35
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v5, :cond_16

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    const/4 v8, 0x1

    iput-boolean v8, v5, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    goto/16 :goto_f

    :catch_4
    move-exception v49

    const-string v5, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error updating surface in "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v83

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v49

    invoke-static {v5, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-nez p1, :cond_8c

    const-string v5, "update"

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v1, v5, v8}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)Z

    goto :goto_34

    :cond_8e
    const/4 v5, 0x0

    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    goto :goto_35

    :cond_8f
    const/16 v47, 0x1

    goto/16 :goto_f

    :cond_90
    const/4 v5, 0x0

    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    goto/16 :goto_10

    :cond_91
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-eqz v5, :cond_1a

    const/4 v5, 0x0

    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    goto/16 :goto_11

    :cond_92
    const/16 v66, 0x0

    goto/16 :goto_12

    :cond_93
    const/16 v68, 0x0

    goto/16 :goto_13

    :cond_94
    if-eqz v36, :cond_22

    if-nez v65, :cond_22

    and-int/lit8 v5, v31, 0x4

    or-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_22

    and-int/lit8 v5, v31, 0x2

    if-eqz v5, :cond_96

    if-nez v46, :cond_96

    const/16 v46, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    if-nez v5, :cond_95

    new-instance v5, Lcom/android/server/wm/DimAnimator;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    invoke-direct {v5, v8}, Lcom/android/server/wm/DimAnimator;-><init>(Landroid/view/SurfaceSession;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    :cond_95
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    move/from16 v0, v59

    move/from16 v1, v58

    invoke-virtual {v5, v0, v1}, Lcom/android/server/wm/DimAnimator;->show(II)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    move-object/from16 v0, v83

    move-wide/from16 v1, v42

    invoke-virtual {v5, v8, v0, v1, v2}, Lcom/android/server/wm/DimAnimator;->updateParameters(Landroid/content/res/Resources;Lcom/android/server/wm/WindowState;J)V

    :cond_96
    and-int/lit8 v5, v31, 0x4

    if-eqz v5, :cond_22

    if-nez v34, :cond_22

    const/16 v34, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mBlurSurface:Landroid/view/Surface;
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    if-nez v5, :cond_97

    :try_start_a
    new-instance v10, Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    const/4 v12, 0x0

    const-string v13, "BlurSurface"

    const/4 v14, -0x1

    const/16 v15, 0x10

    const/16 v16, 0x10

    const/16 v17, -0x1

    const/high16 v18, 0x1

    invoke-direct/range {v10 .. v18}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;ILjava/lang/String;IIIII)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/server/wm/WindowManagerService;->mBlurSurface:Landroid/view/Surface;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0

    :cond_97
    :goto_36
    :try_start_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    if-eqz v5, :cond_22

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual {v5, v8, v10}, Landroid/view/Surface;->setPosition(II)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    move/from16 v0, v48

    move/from16 v1, v44

    invoke-virtual {v5, v0, v1}, Landroid/view/Surface;->setSize(II)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    move-object/from16 v0, v83

    iget v8, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v5, v8}, Landroid/view/Surface;->setLayer(I)V

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mBlurShown:Z
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_0

    if-nez v5, :cond_22

    :try_start_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    invoke-virtual {v5}, Landroid/view/Surface;->show()V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_6

    :goto_37
    const/4 v5, 0x1

    :try_start_d
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mBlurShown:Z

    goto/16 :goto_14

    :catch_5
    move-exception v49

    const-string v5, "WindowManager"

    const-string v8, "Exception creating Blur surface"

    move-object/from16 v0, v49

    invoke-static {v5, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_36

    :catch_6
    move-exception v49

    const-string v5, "WindowManager"

    const-string v8, "Failure showing blur surface"

    move-object/from16 v0, v49

    invoke-static {v5, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_37

    :cond_98
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    if-eqz v5, :cond_9a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    iget-boolean v5, v5, Lcom/android/server/wm/DimAnimator;->mDimShown:Z

    if-eqz v5, :cond_9a

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v5, :cond_99

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v5, :cond_99

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy;->isScreenOnFully()Z

    move-result v5

    if-nez v5, :cond_9c

    :cond_99
    const/4 v5, 0x1

    :goto_38
    move/from16 v0, v46

    move-wide/from16 v1, v42

    invoke-virtual {v8, v0, v1, v2, v5}, Lcom/android/server/wm/DimAnimator;->updateSurface(ZJZ)Z

    move-result v5

    or-int v29, v29, v5

    :cond_9a
    if-nez v34, :cond_9b

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mBlurShown:Z
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_0

    if-eqz v5, :cond_9b

    :try_start_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    invoke-virtual {v5}, Landroid/view/Surface;->hide()V
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_0

    :goto_39
    const/4 v5, 0x0

    :try_start_f
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mBlurShown:Z

    :cond_9b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v5, :cond_49

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v5, :cond_9d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v8}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/server/wm/BlackFrame;->setMatrix(Landroid/graphics/Matrix;)V

    goto/16 :goto_1e

    :cond_9c
    const/4 v5, 0x0

    goto :goto_38

    :catch_7
    move-exception v49

    const-string v5, "WindowManager"

    const-string v8, "Illegal argument exception hiding blur surface"

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    :cond_9d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v5}, Lcom/android/server/wm/BlackFrame;->clearMatrix()V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_0

    goto/16 :goto_1e

    :cond_9e
    const/16 v39, 0x0

    goto/16 :goto_1f

    :cond_9f
    const/16 v16, 0x0

    goto/16 :goto_20

    :catch_8
    move-exception v49

    const/4 v5, 0x0

    move-object/from16 v0, v89

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    goto/16 :goto_21

    :cond_a0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v57, v5, -0x1

    :goto_3a
    if-ltz v57, :cond_a2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v0, v78

    iget-boolean v5, v0, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    if-nez v5, :cond_a1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    move-object/from16 v0, v78

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a1

    const/4 v5, 0x0

    move-object/from16 v0, v78

    iput-object v5, v0, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    const/4 v5, 0x0

    move-object/from16 v0, v78

    iput-boolean v5, v0, Lcom/android/server/wm/AppWindowToken;->animating:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object/from16 v0, v78

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_a1
    add-int/lit8 v57, v57, -0x1

    goto :goto_3a

    :cond_a2
    const/16 v62, 0x0

    if-nez v29, :cond_a3

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionRunning:Z

    if-eqz v5, :cond_a3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionRunning:Z

    const/16 v62, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->rebuildAppWindowListLocked()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :cond_a3
    if-eqz v50, :cond_a4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v8, 0x3

    invoke-virtual {v5, v8}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    :cond_a4
    if-eqz v84, :cond_a5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    move-result v5

    if-eqz v5, :cond_af

    const/16 v62, 0x1

    :cond_a5
    :goto_3b
    if-eqz v62, :cond_b0

    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/android/server/wm/WindowManagerService;->requestAnimationLocked(J)V

    :cond_a6
    :goto_3c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    if-eqz v56, :cond_b1

    const/4 v5, 0x1

    :goto_3d
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wm/WindowManagerService;->setHoldScreenLocked(Z)V

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v5, :cond_a9

    const/4 v5, 0x0

    cmpg-float v5, v72, v5

    if-ltz v5, :cond_a7

    const/high16 v5, 0x3f80

    cmpl-float v5, v72, v5

    if-lez v5, :cond_b2

    :cond_a7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    const/4 v8, -0x1

    invoke-virtual {v5, v8}, Lcom/android/server/PowerManagerService;->setScreenBrightnessOverride(I)V

    :goto_3e
    const/4 v5, 0x0

    cmpg-float v5, v35, v5

    if-ltz v5, :cond_a8

    const/high16 v5, 0x3f80

    cmpl-float v5, v35, v5

    if-lez v5, :cond_b3

    :cond_a8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    const/4 v8, -0x1

    invoke-virtual {v5, v8}, Lcom/android/server/PowerManagerService;->setButtonBrightnessOverride(I)V

    :cond_a9
    :goto_3f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenOn:Lcom/android/server/wm/Session;

    move-object/from16 v0, v56

    if-eq v0, v5, :cond_aa

    move-object/from16 v0, v56

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenOn:Lcom/android/server/wm/Session;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v8, 0xc

    move-object/from16 v0, v56

    invoke-virtual {v5, v8, v0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v60

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object/from16 v0, v60

    invoke-virtual {v5, v0}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    :cond_aa
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mTurnOnScreen:Z

    if-eqz v5, :cond_ab

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/PowerManagerService;->userActivity(JZIZ)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mTurnOnScreen:Z

    :cond_ab
    if-eqz v73, :cond_ac

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v5, :cond_ac

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v5}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    :cond_ac
    if-eqz v82, :cond_ad

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wm/WindowManagerService;->updateRotationUncheckedLocked(Z)Z

    move-result v37

    if-eqz v37, :cond_b4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v8, 0x12

    invoke-virtual {v5, v8}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    :cond_ad
    :goto_40
    if-eqz v69, :cond_ae

    if-nez v62, :cond_ae

    if-nez v82, :cond_ae

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->checkDrawnWindowsLocked()V

    :cond_ae
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    goto/16 :goto_0

    :cond_af
    const/16 v62, 0x0

    goto/16 :goto_3b

    :cond_b0
    if-eqz v29, :cond_a6

    const/high16 v5, 0x447a

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v8}, Landroid/view/Display;->getRefreshRate()F

    move-result v8

    div-float/2addr v5, v8

    float-to-int v0, v5

    move/from16 v70, v0

    move/from16 v0, v70

    int-to-long v10, v0

    add-long v10, v10, v42

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    sub-long/2addr v10, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/android/server/wm/WindowManagerService;->requestAnimationLocked(J)V

    goto/16 :goto_3c

    :cond_b1
    const/4 v5, 0x0

    goto/16 :goto_3d

    :cond_b2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    const/high16 v8, 0x437f

    mul-float v8, v8, v72

    float-to-int v8, v8

    invoke-virtual {v5, v8}, Lcom/android/server/PowerManagerService;->setScreenBrightnessOverride(I)V

    goto/16 :goto_3e

    :cond_b3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    const/high16 v8, 0x437f

    mul-float v8, v8, v35

    float-to-int v8, v8

    invoke-virtual {v5, v8}, Lcom/android/server/PowerManagerService;->setButtonBrightnessOverride(I)V

    goto/16 :goto_3f

    :cond_b4
    const/16 v82, 0x0

    goto :goto_40

    nop

    :sswitch_data_0
    .sparse-switch
        0x1006 -> :sswitch_0
        0x1008 -> :sswitch_0
        0x100a -> :sswitch_0
        0x2007 -> :sswitch_1
        0x2009 -> :sswitch_1
        0x200b -> :sswitch_1
    .end sparse-switch
.end method

.method private final performLayoutLockedInner(ZZ)I
    .locals 13

    iget-boolean v10, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    if-nez v10, :cond_0

    const/4 v10, 0x0

    :goto_0
    return v10

    :cond_0
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_1

    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/FakeWindowImpl;

    invoke-virtual {v10, v4, v3}, Lcom/android/server/wm/FakeWindowImpl;->layout(II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v11, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-interface {v10, v4, v3, v11}, Landroid/view/WindowManagerPolicy;->beginLayoutLw(III)V

    iget v10, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutSeq:I

    add-int/lit8 v7, v10, 0x1

    if-gez v7, :cond_2

    const/4 v7, 0x0

    :cond_2
    iput v7, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutSeq:I

    const/4 v8, -0x1

    add-int/lit8 v6, v0, -0x1

    :goto_2
    if-ltz v6, :cond_b

    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    iget-object v2, v9, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v10, v9, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    const/16 v11, 0x8

    if-eq v10, v11, :cond_5

    iget-boolean v10, v9, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-eqz v10, :cond_5

    if-nez v2, :cond_3

    iget-object v10, v9, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v10, v10, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-nez v10, :cond_5

    :cond_3
    if-eqz v2, :cond_4

    iget-boolean v10, v2, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v10, :cond_5

    :cond_4
    iget-boolean v10, v9, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v10, :cond_5

    iget-boolean v10, v9, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v10, :cond_5

    iget-boolean v10, v9, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v10, :cond_9

    :cond_5
    const/4 v5, 0x1

    :goto_3
    if-eqz v5, :cond_6

    iget-boolean v10, v9, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    if-nez v10, :cond_8

    :cond_6
    iget-boolean v10, v9, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-nez v10, :cond_a

    if-eqz p1, :cond_7

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    :cond_7
    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->prelayout()V

    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v11, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    const/4 v12, 0x0

    invoke-interface {v10, v9, v11, v12}, Landroid/view/WindowManagerPolicy;->layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V

    iput v7, v9, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    :cond_8
    :goto_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_9
    const/4 v5, 0x0

    goto :goto_3

    :cond_a
    if-gez v8, :cond_8

    move v8, v6

    goto :goto_4

    :cond_b
    move v6, v8

    :goto_5
    if-ltz v6, :cond_10

    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    iget-boolean v10, v9, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-eqz v10, :cond_f

    iget v10, v9, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    const/16 v11, 0x8

    if-eq v10, v11, :cond_c

    iget-boolean v10, v9, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-nez v10, :cond_d

    :cond_c
    iget-boolean v10, v9, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    if-nez v10, :cond_f

    :cond_d
    if-eqz p1, :cond_e

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    :cond_e
    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->prelayout()V

    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v11, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v12, v9, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-interface {v10, v9, v11, v12}, Landroid/view/WindowManagerPolicy;->layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V

    iput v7, v9, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    :cond_f
    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    :cond_10
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v10}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    if-eqz p2, :cond_11

    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    :cond_11
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v10}, Landroid/view/WindowManagerPolicy;->finishLayoutLw()I

    move-result v10

    goto/16 :goto_0
.end method

.method private placeWindowAfter(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    return-void
.end method

.method private placeWindowBefore(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    return-void
.end method

.method private final reAddAppWindowsLocked(ILcom/android/server/wm/WindowToken;)I
    .locals 3

    iget-object v2, p2, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p2, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/WindowManagerService;->reAddWindowLocked(ILcom/android/server/wm/WindowState;)I

    move-result p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method private final reAddWindowLocked(ILcom/android/server/wm/WindowState;)I
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    if-nez v1, :cond_0

    iget v4, v2, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-ltz v4, :cond_0

    iput-boolean v5, p2, Lcom/android/server/wm/WindowState;->mRebuilding:Z

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    const/4 v1, 0x1

    :cond_0
    iput-boolean v5, v2, Lcom/android/server/wm/WindowState;->mRebuilding:Z

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    iput-boolean v5, p2, Lcom/android/server/wm/WindowState;->mRebuilding:Z

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    return p1
.end method

.method private reAddWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/WindowManagerService;->addWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;Z)V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/WindowManagerService;->reAddWindowLocked(ILcom/android/server/wm/WindowState;)I

    :cond_0
    return-void
.end method

.method private readForcedDisplaySizeLocked()V
    .locals 8

    const/16 v7, 0x2c

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "display_size_forced"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v3, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    if-ne v5, v2, :cond_0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    invoke-direct {p0, v4, v1}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplaySizeLocked(II)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private rebuildBlackFrame(Z)V
    .locals 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-nez p1, :cond_0

    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    :cond_0
    :try_start_0
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v8}, Lcom/android/server/wm/BlackFrame;->kill()V

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    :cond_1
    iget v8, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    iget v9, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    if-lt v8, v9, :cond_2

    iget v8, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    iget v9, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    if-ge v8, v9, :cond_5

    :cond_2
    iget v8, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    if-eq v8, v7, :cond_3

    iget v8, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_4

    :cond_3
    move v6, v7

    :cond_4
    if-eqz v6, :cond_7

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    :goto_0
    new-instance v5, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v5, v7, v8, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v4, v7, v8, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v7, Lcom/android/server/wm/BlackFrame;

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    const v9, 0x1e8480

    invoke-direct {v7, v8, v5, v4, v9}, Lcom/android/server/wm/BlackFrame;-><init>(Landroid/view/SurfaceSession;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mBlackFrame:Lcom/android/server/wm/BlackFrame;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    :goto_1
    if-nez p1, :cond_6

    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    :cond_6
    return-void

    :cond_7
    :try_start_2
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v7

    if-nez p1, :cond_8

    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    :cond_8
    throw v7

    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method private reduceCompatConfigWidthSize(IILandroid/util/DisplayMetrics;II)I
    .locals 4

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2, p4, p5, p2}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayWidth(III)I

    move-result v2

    iput v2, p3, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2, p4, p5, p2}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayHeight(III)I

    move-result v2

    iput v2, p3, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    const/4 v2, 0x0

    invoke-static {p3, v2}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    move-result v0

    iget v2, p3, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    iget v3, p3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v1, v2

    if-eqz p1, :cond_0

    if-ge v1, p1, :cond_1

    :cond_0
    move p1, v1

    :cond_1
    return p1
.end method

.method private reduceConfigLayout(IIFII)I
    .locals 13

    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-interface {v11, v0, v1, p2}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayWidth(III)I

    move-result v10

    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-interface {v11, v0, v1, p2}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayHeight(III)I

    move-result v3

    move v4, v10

    move v8, v3

    if-ge v4, v8, :cond_0

    move v9, v4

    move v4, v8

    move v8, v9

    :cond_0
    int-to-float v11, v4

    div-float v11, v11, p3

    float-to-int v4, v11

    int-to-float v11, v8

    div-float v11, v11, p3

    float-to-int v8, v11

    const/16 v11, 0x1d6

    if-ge v4, v11, :cond_4

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    :goto_0
    if-nez v6, :cond_1

    and-int/lit8 v11, p1, -0x31

    or-int/lit8 p1, v11, 0x10

    :cond_1
    if-eqz v5, :cond_2

    const/high16 v11, 0x1000

    or-int/2addr p1, v11

    :cond_2
    and-int/lit8 v2, p1, 0xf

    if-ge v7, v2, :cond_3

    and-int/lit8 v11, p1, -0x10

    or-int p1, v11, v7

    :cond_3
    return p1

    :cond_4
    const/16 v11, 0x3c0

    if-lt v4, v11, :cond_6

    const/16 v11, 0x2d0

    if-lt v8, v11, :cond_6

    const/4 v7, 0x4

    :goto_1
    const/16 v11, 0x141

    if-gt v8, v11, :cond_5

    const/16 v11, 0x23a

    if-le v4, v11, :cond_8

    :cond_5
    const/4 v5, 0x1

    :goto_2
    mul-int/lit8 v11, v4, 0x3

    div-int/lit8 v11, v11, 0x5

    add-int/lit8 v12, v8, -0x1

    if-lt v11, v12, :cond_9

    const/4 v6, 0x1

    goto :goto_0

    :cond_6
    const/16 v11, 0x280

    if-lt v4, v11, :cond_7

    const/16 v11, 0x1e0

    if-lt v8, v11, :cond_7

    const/4 v7, 0x3

    goto :goto_1

    :cond_7
    const/4 v7, 0x2

    goto :goto_1

    :cond_8
    const/4 v5, 0x0

    goto :goto_2

    :cond_9
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private reduceConfigWidthSize(IIFII)I
    .locals 2

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, p4, p5, p2}, Landroid/view/WindowManagerPolicy;->getConfigDisplayWidth(III)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p3

    float-to-int v0, v1

    if-ge v0, p1, :cond_0

    move p1, v0

    :cond_0
    return p1
.end method

.method private removeAppTokensLocked(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempting to reorder token that doesn\'t exist: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private removeWindowInnerLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget-boolean v5, p2, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-eqz v5, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    :goto_1
    if-ltz v2, :cond_1

    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Force-removing child win "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from container "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-direct {p0, v5, v1}, Lcom/android/server/wm/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    iput-boolean v8, p2, Lcom/android/server/wm/WindowState;->mRemoved:Z

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-ne v5, p2, :cond_2

    invoke-virtual {p0, v10}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    :cond_2
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v5, p2}, Landroid/view/WindowManagerPolicy;->removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->removeLocked()V

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    iget-object v6, p2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v6}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-ne v5, p2, :cond_9

    iput-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    :cond_3
    :goto_2
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v4, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-eqz v0, :cond_4

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_4
    iget-object v5, v4, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_5

    iget-boolean v5, v4, Lcom/android/server/wm/WindowToken;->explicit:Z

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    iget-object v6, v4, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_3
    if-eqz v0, :cond_6

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-ne v5, p2, :cond_b

    iput-object v9, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    :cond_6
    :goto_4
    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7dd

    if-ne v5, v6, :cond_d

    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperTimeoutTime:J

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    :cond_7
    :goto_5
    iget-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mInLayout:Z

    if-nez v5, :cond_8

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_8

    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    :cond_8
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v5, v8}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    goto/16 :goto_0

    :cond_9
    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7dc

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_a
    if-eqz v0, :cond_5

    iput-boolean v10, v0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    goto :goto_3

    :cond_b
    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_c

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-eqz v5, :cond_c

    iput-object v9, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    goto :goto_4

    :cond_c
    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v8, :cond_6

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v6, 0x6

    invoke-virtual {v5, v6, v0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v5, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4

    :cond_d
    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x10

    and-int/2addr v5, v6

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    goto :goto_5
.end method

.method private reportInjectionResult(I)Z
    .locals 3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string v1, "WindowManager"

    const-string v2, "Input event injection failed."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :pswitch_1
    const-string v0, "WindowManager"

    const-string v1, "Input event injection permission denied."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Injecting to another application requires INJECT_EVENTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_3
    const-string v1, "WindowManager"

    const-string v2, "Input event injection timed out."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private setForcedDisplaySizeLocked(II)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using new display size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplaySizeLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    iput p2, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManagerPolicy;->setInitialDisplaySize(II)V

    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Z)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->setToDefaults()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    iput v2, v1, Landroid/content/res/Configuration;->fontScale:F

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->computeNewConfigurationLocked(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    invoke-direct {p0, v4}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(Z)V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    :cond_1
    invoke-direct {p0, v4}, Lcom/android/server/wm/WindowManagerService;->rebuildBlackFrame(Z)V

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private shouldAllowDisableKeyguard()Z
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mAllowDisableKeyguard:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v4, "device_policy"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    iput v1, p0, Lcom/android/server/wm/WindowManagerService;->mAllowDisableKeyguard:I

    :cond_0
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mAllowDisableKeyguard:I

    if-ne v1, v2, :cond_2

    :goto_1
    return v2

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method private startFreezingDisplayLocked(Z)V
    .locals 7

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->isScreenOnFully()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0}, Lcom/android/server/wm/InputMonitor;->freezeInputDispatchingLw()V

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    if-eq v0, v1, :cond_2

    iput v1, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionReady:Z

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-nez v0, :cond_4

    new-instance v0, Lcom/android/server/wm/ScreenRotationAnimation;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v6

    move v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/ScreenRotationAnimation;-><init>(Landroid/content/Context;Landroid/view/SurfaceSession;ZIII)V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->hasScreenshot()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/view/Surface;->freezeDisplay(I)V

    goto :goto_0
.end method

.method private stopFreezingDisplayLocked()V
    .locals 12

    const/4 v11, 0x0

    const/16 v10, 0xf

    const/4 v9, 0x0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:Z

    if-nez v0, :cond_0

    iput-boolean v9, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->hasScreenshot()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    const-wide/16 v2, 0x2710

    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    iget v6, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/ScreenRotationAnimation;->dismiss(Landroid/view/SurfaceSession;JFII)Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->requestAnimationLocked(J)V

    :goto_1
    invoke-static {v9}, Landroid/view/Surface;->unfreezeDisplay(I)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0}, Lcom/android/server/wm/InputMonitor;->thawInputDispatchingLw()V

    invoke-virtual {p0, v9}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Z)Z

    move-result v7

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v0, v10}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1, v10}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    if-eqz v8, :cond_2

    invoke-virtual {p0, v9}, Lcom/android/server/wm/WindowManagerService;->updateRotationUncheckedLocked(Z)Z

    move-result v0

    or-int/2addr v7, v0

    :cond_2
    if-eqz v7, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_3
    iput-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    const/4 v8, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    iput-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    :cond_5
    const/4 v8, 0x1

    goto :goto_1
.end method

.method private tmpRemoveAppWindowsLocked(Lcom/android/server/wm/WindowToken;)Z
    .locals 7

    const/4 v5, 0x1

    iget-object v6, p1, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v6, p1, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_1
    if-lez v3, :cond_0

    add-int/lit8 v3, v3, -0x1

    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-lez v0, :cond_2

    :goto_2
    return v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_2
.end method

.method private tmpRemoveWindowLocked(ILcom/android/server/wm/WindowState;)I
    .locals 5

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_3

    if-ge v3, p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_1
    :goto_0
    if-lez v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_1

    if-ge v1, p1, :cond_2

    add-int/lit8 p1, p1, -0x1

    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return p1
.end method

.method private updateFocusedWindowLocked(IZ)Z
    .locals 9

    const/4 v8, 0x3

    const/4 v4, 0x0

    const/4 v7, 0x2

    const/4 v5, 0x1

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->computeFocusedWindowLocked()Lcom/android/server/wm/WindowState;

    move-result-object v2

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eq v6, v2, :cond_6

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iput-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v6, v3, v2}, Landroid/view/WindowManagerPolicy;->focusChangedLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eq v2, v1, :cond_2

    if-eq v3, v1, :cond_2

    if-eq p1, v5, :cond_0

    if-eq p1, v8, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    move-result v4

    if-eqz v4, :cond_1

    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    :cond_1
    if-ne p1, v7, :cond_5

    invoke-direct {p0, v5, p2}, Lcom/android/server/wm/WindowManagerService;->performLayoutLockedInner(ZZ)I

    and-int/lit8 v0, v0, -0x2

    :cond_2
    :goto_0
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_3

    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    if-ne p1, v7, :cond_3

    invoke-direct {p0, v5, p2}, Lcom/android/server/wm/WindowManagerService;->performLayoutLockedInner(ZZ)I

    :cond_3
    if-eq p1, v5, :cond_4

    invoke-direct {p0, p2}, Lcom/android/server/wm/WindowManagerService;->finishUpdateFocusedWindowAfterAssignLayersLocked(Z)V

    :cond_4
    :goto_1
    return v5

    :cond_5
    if-ne p1, v8, :cond_2

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    goto :goto_0

    :cond_6
    move v5, v4

    goto :goto_1
.end method

.method private updateOrientationFromAppTokensLocked(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Z)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v2, 0x80

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->startAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->computeNewConfigurationLocked()Landroid/content/res/Configuration;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2}, Landroid/content/res/Configuration;->setToDefaults()V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    iget v3, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v3, v2, Landroid/content/res/Configuration;->fontScale:F

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowManagerService;->computeNewConfigurationLocked(Landroid/content/res/Configuration;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    invoke-direct {p0, v4}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(Z)V

    new-instance v0, Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v0, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    goto :goto_0
.end method


# virtual methods
.method public addAppToken(ILandroid/view/IApplicationToken;IIZ)V
    .locals 8

    const-string v4, "android.permission.MANAGE_APP_TOKENS"

    const-string v5, "addAppToken()"

    invoke-virtual {p0, v4, v5}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    :try_start_0
    invoke-interface {p2}, Landroid/view/IApplicationToken;->getKeyDispatchingTimeout()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    mul-long v1, v4, v6

    :goto_0
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_1
    invoke-interface {p2}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempted to add existing app token: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v4, "WindowManager"

    const-string v5, "Could not get dispatching timeout."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-wide v1, Lcom/android/server/wm/WindowManagerService;->DEFAULT_INPUT_DISPATCHING_TIMEOUT_NANOS:J

    goto :goto_0

    :cond_1
    :try_start_2
    new-instance v3, Lcom/android/server/wm/AppWindowToken;

    invoke-direct {v3, p0, p2}, Lcom/android/server/wm/AppWindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IApplicationToken;)V

    iput-wide v1, v3, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J

    iput p3, v3, Lcom/android/server/wm/AppWindowToken;->groupId:I

    iput-boolean p5, v3, Lcom/android/server/wm/AppWindowToken;->appFullscreen:Z

    iput p4, v3, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-interface {p2}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/wm/WindowToken;->hidden:Z

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method public addFakeWindow(Landroid/os/Looper;Landroid/view/InputHandler;Ljava/lang/String;IIZZZ)Landroid/view/WindowManagerPolicy$FakeWindow;
    .locals 12

    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v11

    :try_start_0
    new-instance v0, Lcom/android/server/wm/FakeWindowImpl;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/wm/FakeWindowImpl;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/Looper;Landroid/view/InputHandler;Ljava/lang/String;IIZZZ)V

    const/4 v10, 0x0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/FakeWindowImpl;

    iget v1, v1, Lcom/android/server/wm/FakeWindowImpl;->mWindowLayer:I

    iget v2, v0, Lcom/android/server/wm/FakeWindowImpl;->mWindowLayer:I

    if-gt v1, v2, :cond_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v10, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    monitor-exit v11

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method addInputMethodWindowToListLocked(Lcom/android/server/wm/WindowState;)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowManagerService;->findDesiredInputMethodWindowIndexLocked(Z)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-object v1, p1, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/WindowManagerService;->addWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    goto :goto_0
.end method

.method public addWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/view/InputChannel;)I
    .locals 23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p4

    invoke-interface {v3, v0}, Landroid/view/WindowManagerPolicy;->checkAddPermission(Landroid/view/WindowManager$LayoutParams;)I

    move-result v20

    if-eqz v20, :cond_0

    move/from16 v3, v20

    :goto_0
    return v3

    :cond_0
    const/16 v19, 0x0

    const/4 v7, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    monitor-enter v22

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Display has not been initialialized"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    move-object/from16 v2, v21

    :goto_1
    :try_start_1
    monitor-exit v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3

    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Window "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is already added"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x5

    monitor-exit v22

    goto :goto_0

    :cond_2
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3e8

    if-lt v3, v4, :cond_4

    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7cf

    if-gt v3, v4, :cond_4

    const/4 v3, 0x0

    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v7

    if-nez v7, :cond_3

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to add window with token that is not a window: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  Aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x2

    monitor-exit v22

    goto/16 :goto_0

    :cond_3
    iget-object v3, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3e8

    if-lt v3, v4, :cond_4

    iget-object v3, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7cf

    if-gt v3, v4, :cond_4

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to add window with token that is a sub-window: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  Aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x2

    monitor-exit v22

    goto/16 :goto_0

    :cond_4
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowToken;

    if-nez v6, :cond_9

    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_5

    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x63

    if-gt v3, v4, :cond_5

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to add application window with unknown token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  Aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    monitor-exit v22

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7db

    if-ne v3, v4, :cond_6

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to add input method window with unknown token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  Aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    monitor-exit v22

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7dd

    if-ne v3, v4, :cond_7

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to add wallpaper window with unknown token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  Aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    monitor-exit v22

    goto/16 :goto_0

    :cond_7
    new-instance v6, Lcom/android/server/wm/WindowToken;

    move-object/from16 v0, p4

    iget-object v3, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v3, v4, v5}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZ)V

    const/4 v11, 0x1

    :cond_8
    new-instance v2, Lcom/android/server/wm/WindowState;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    invoke-direct/range {v2 .. v10}, Lcom/android/server/wm/WindowState;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/Session;Landroid/view/IWindow;Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowState;ILandroid/view/WindowManager$LayoutParams;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

    if-nez v3, :cond_e

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding window client "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " that is dead, aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x4

    monitor-exit v22
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    :catchall_1
    move-exception v3

    goto/16 :goto_1

    :cond_9
    :try_start_4
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_c

    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x63

    if-gt v3, v4, :cond_c

    iget-object v12, v6, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v12, :cond_a

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to add window with non-application token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  Aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x3

    monitor-exit v22

    goto/16 :goto_0

    :cond_a
    iget-boolean v3, v12, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-eqz v3, :cond_b

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to add window with exiting application token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  Aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x4

    monitor-exit v22

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_8

    iget-boolean v3, v12, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    if-eqz v3, :cond_8

    const/4 v3, -0x6

    monitor-exit v22

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7db

    if-ne v3, v4, :cond_d

    iget v3, v6, Lcom/android/server/wm/WindowToken;->windowType:I

    const/16 v4, 0x7db

    if-eq v3, v4, :cond_8

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to add input method window with bad token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  Aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    monitor-exit v22

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7dd

    if-ne v3, v4, :cond_8

    iget v3, v6, Lcom/android/server/wm/WindowToken;->windowType:I

    const/16 v4, 0x7dd

    if-eq v3, v4, :cond_8

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to add wallpaper window with bad token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  Aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    monitor-exit v22
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :cond_e
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v4}, Landroid/view/WindowManagerPolicy;->adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p4

    invoke-interface {v3, v2, v0}, Landroid/view/WindowManagerPolicy;->prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v20

    if-eqz v20, :cond_f

    monitor-exit v22

    move/from16 v3, v20

    goto/16 :goto_0

    :cond_f
    if-eqz p7, :cond_10

    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_10

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->makeInputChannelName()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v15

    const/4 v3, 0x0

    aget-object v3, v15, v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowState;->setInputChannel(Landroid/view/InputChannel;)V

    const/4 v3, 0x1

    aget-object v3, v15, v3

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Landroid/view/InputChannel;->transferTo(Landroid/view/InputChannel;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/InputManager;->registerInputChannel(Landroid/view/InputChannel;Lcom/android/server/wm/InputWindowHandle;)V

    :cond_10
    const/16 v20, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    if-eqz v11, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->attach()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_12

    iget-object v3, v6, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_12

    iget-object v3, v6, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    iput-object v2, v3, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    :cond_12
    const/4 v14, 0x1

    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7db

    if-ne v3, v4, :cond_1c

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService;->addInputMethodWindowToListLocked(Lcom/android/server/wm/WindowState;)V

    const/4 v14, 0x0

    :cond_13
    :goto_2
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/wm/WindowState;->mEnterAnimationPending:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p4

    move-object/from16 v1, p6

    invoke-interface {v3, v0, v1}, Landroid/view/WindowManagerPolicy;->getContentInsetHintLw(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    if-eqz v3, :cond_14

    or-int/lit8 v20, v20, 0x1

    :cond_14
    if-eqz v2, :cond_15

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_15

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v3, v3, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    if-nez v3, :cond_16

    :cond_15
    or-int/lit8 v20, v20, 0x2

    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v3}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    const/4 v13, 0x0

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v3

    if-eqz v3, :cond_17

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v13

    if-eqz v13, :cond_17

    const/4 v14, 0x0

    :cond_17
    if-eqz v14, :cond_18

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    if-eqz v13, :cond_19

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/wm/WindowManagerService;->finishUpdateFocusedWindowAfterAssignLayersLocked(Z)V

    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Z)Z

    move-result v3

    if-eqz v3, :cond_1a

    const/16 v19, 0x1

    :cond_1a
    monitor-exit v22
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v19, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration()V

    :cond_1b
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move/from16 v3, v20

    goto/16 :goto_0

    :cond_1c
    :try_start_6
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7dc

    if-ne v3, v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->addWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->adjustInputMethodDialogsLocked()V

    const/4 v14, 0x0

    goto/16 :goto_2

    :cond_1d
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->addWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;Z)V

    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7dd

    if-ne v3, v4, :cond_1e

    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperTimeoutTime:J

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    goto/16 :goto_2

    :cond_1e
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x10

    and-int/2addr v3, v4

    if-eqz v3, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_2
.end method

.method public addWindowChangeListener(Lcom/android/server/wm/WindowManagerService$WindowChangeListener;)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addWindowToken(Landroid/os/IBinder;I)V
    .locals 5

    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "addWindowToken()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowToken;

    if-eqz v0, :cond_1

    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to add existing input method token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/server/wm/WindowToken;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZ)V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x7dd

    if-ne p2, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method adjustInputMethodDialogsLocked()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->findDesiredInputMethodWindowIndexLocked(Z)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    return-void
.end method

.method adjustWallpaperWindowsLocked()I
    .locals 33

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v27, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/16 v24, 0x0

    const/16 v23, 0x0

    const/16 v30, -0x1

    move v14, v3

    :cond_0
    :goto_0
    if-lez v14, :cond_5

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v31, v0

    const/16 v32, 0x7dd

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1

    if-nez v24, :cond_0

    move-object/from16 v24, v27

    move/from16 v23, v14

    goto :goto_0

    :cond_1
    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_2

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    if-eqz v31, :cond_2

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->hidden:Z

    move/from16 v31, v0

    if-eqz v31, :cond_2

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    :cond_2
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v31, v0

    const/high16 v32, 0x10

    and-int v31, v31, v32

    if-eqz v31, :cond_7

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v31

    if-eqz v31, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_3

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mDrawPending:Z

    move/from16 v31, v0

    if-nez v31, :cond_7

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mCommitDrawPending:Z

    move/from16 v31, v0

    if-nez v31, :cond_7

    :cond_3
    move-object/from16 v13, v27

    move v12, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_5

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    if-eqz v31, :cond_4

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object/from16 v31, v0

    if-nez v31, :cond_0

    :cond_4
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v31, v0

    if-nez v31, :cond_0

    :cond_5
    if-nez v13, :cond_6

    if-ltz v30, :cond_6

    move-object/from16 v13, v27

    move/from16 v12, v30

    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    move/from16 v31, v0

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    if-eqz v31, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    if-eqz v31, :cond_8

    const/16 v31, 0x0

    :goto_1
    return v31

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_0

    move/from16 v30, v14

    goto/16 :goto_0

    :cond_8
    if-eqz v13, :cond_9

    iget-object v0, v13, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    if-eqz v31, :cond_9

    const/16 v31, 0x0

    goto :goto_1

    :cond_9
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    if-eq v0, v13, :cond_1a

    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v13, :cond_d

    if-eqz v21, :cond_d

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v31, v0

    if-nez v31, :cond_a

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    if-eqz v31, :cond_17

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object/from16 v31, v0

    if-eqz v31, :cond_17

    :cond_a
    const/16 v18, 0x1

    :goto_2
    iget-object v0, v13, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v31, v0

    if-nez v31, :cond_b

    iget-object v0, v13, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    if-eqz v31, :cond_18

    iget-object v0, v13, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object/from16 v31, v0

    if-eqz v31, :cond_18

    :cond_b
    const/4 v11, 0x1

    :goto_3
    if-eqz v11, :cond_d

    if-eqz v18, :cond_d

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v19

    if-ltz v19, :cond_d

    iget-object v0, v13, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    if-eqz v31, :cond_c

    iget-object v0, v13, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    move/from16 v31, v0

    if-eqz v31, :cond_c

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    :cond_c
    move/from16 v0, v19

    if-le v12, v0, :cond_19

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v13, v21

    move/from16 v12, v19

    :cond_d
    :goto_4
    if-eqz v13, :cond_20

    const/16 v26, 0x1

    :goto_5
    if-eqz v26, :cond_10

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/wm/WindowManagerService;->isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z

    move-result v26

    if-nez v26, :cond_e

    iget-object v0, v13, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v31, v0

    if-eqz v31, :cond_e

    iget-object v0, v13, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v31

    if-eqz v31, :cond_e

    iget-object v0, v13, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v31

    const-string v32, "com.htc.launcher/com.htc.launcher.Launcher"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_e

    if-eqz v5, :cond_e

    iget-object v0, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v31, v0

    if-eqz v31, :cond_e

    iget-object v0, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v31, v0

    const/16 v32, 0x67

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_e

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-le v4, v12, :cond_e

    const/16 v26, 0x1

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    if-nez v31, :cond_21

    iget-object v0, v13, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    if-eqz v31, :cond_21

    iget-object v0, v13, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/server/wm/AppWindowToken;->animLayerAdjustment:I

    move/from16 v31, v0

    :goto_6
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Landroid/view/WindowManagerPolicy;->getMaxWallpaperLayer()I

    move-result v31

    move/from16 v0, v31

    mul-int/lit16 v0, v0, 0x2710

    move/from16 v31, v0

    move/from16 v0, v31

    add-int/lit16 v0, v0, 0x3e8

    move/from16 v17, v0

    :goto_7
    if-lez v12, :cond_10

    add-int/lit8 v31, v12, -0x1

    move/from16 v0, v31

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    move/from16 v31, v0

    move/from16 v0, v31

    move/from16 v1, v17

    if-ge v0, v1, :cond_22

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    if-eq v0, v13, :cond_22

    iget-object v0, v13, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    if-eqz v31, :cond_f

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    iget-object v0, v13, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-eq v0, v1, :cond_22

    :cond_f
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v31, v0

    const/16 v32, 0x3

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_10

    iget-object v0, v13, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    move-object/from16 v31, v0

    if-eqz v31, :cond_10

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    move-object/from16 v31, v0

    iget-object v0, v13, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-eq v0, v1, :cond_22

    :cond_10
    if-nez v13, :cond_23

    if-eqz v24, :cond_23

    move-object/from16 v13, v24

    add-int/lit8 v12, v23, 0x1

    :goto_8
    if-eqz v26, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    move/from16 v31, v0

    const/16 v32, 0x0

    cmpl-float v31, v31, v32

    if-ltz v31, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperX:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperXStep:F

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    move/from16 v31, v0

    const/16 v32, 0x0

    cmpl-float v31, v31, v32

    if-ltz v31, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperY:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperYStep:F

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v7

    :cond_13
    if-lez v7, :cond_29

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/wm/WindowToken;

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->hidden:Z

    move/from16 v31, v0

    move/from16 v0, v31

    move/from16 v1, v26

    if-ne v0, v1, :cond_14

    or-int/lit8 v6, v6, 0x4

    if-nez v26, :cond_25

    const/16 v31, 0x1

    :goto_9
    move/from16 v0, v31

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/android/server/wm/WindowToken;->hidden:Z

    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    :cond_14
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v8

    :goto_a
    if-lez v8, :cond_13

    add-int/lit8 v8, v8, -0x1

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/server/wm/WindowState;

    if-eqz v26, :cond_15

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v31

    invoke-virtual {v0, v1, v10, v9, v2}, Lcom/android/server/wm/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;IIZ)Z

    :cond_15
    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    move/from16 v31, v0

    move/from16 v0, v31

    move/from16 v1, v26

    if-eq v0, v1, :cond_16

    move/from16 v0, v26

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    :try_start_0
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/view/IWindow;->dispatchAppVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_16
    :goto_b
    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    move/from16 v32, v0

    add-int v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    move-object/from16 v0, v28

    if-ne v0, v13, :cond_27

    add-int/lit8 v12, v12, -0x1

    if-lez v12, :cond_26

    add-int/lit8 v31, v12, -0x1

    move/from16 v0, v31

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/server/wm/WindowState;

    move-object/from16 v13, v31

    :goto_c
    goto :goto_a

    :cond_17
    const/16 v18, 0x0

    goto/16 :goto_2

    :cond_18
    const/4 v11, 0x0

    goto/16 :goto_3

    :cond_19
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    goto/16 :goto_4

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    if-eqz v31, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v31, v0

    if-nez v31, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    if-eqz v31, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object/from16 v31, v0

    if-eqz v31, :cond_1e

    :cond_1b
    const/16 v16, 0x1

    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v31, v0

    if-nez v31, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    if-eqz v31, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object/from16 v31, v0

    if-eqz v31, :cond_1f

    :cond_1c
    const/16 v25, 0x1

    :goto_e
    if-eqz v16, :cond_1d

    if-nez v25, :cond_d

    :cond_1d
    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    goto/16 :goto_4

    :cond_1e
    const/16 v16, 0x0

    goto :goto_d

    :cond_1f
    const/16 v25, 0x0

    goto :goto_e

    :cond_20
    const/16 v26, 0x0

    goto/16 :goto_5

    :cond_21
    const/16 v31, 0x0

    goto/16 :goto_6

    :cond_22
    move-object/from16 v13, v29

    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_7

    :cond_23
    if-lez v12, :cond_24

    add-int/lit8 v31, v12, -0x1

    move/from16 v0, v31

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/server/wm/WindowState;

    move-object/from16 v13, v31

    :goto_f
    goto/16 :goto_8

    :cond_24
    const/4 v13, 0x0

    goto :goto_f

    :cond_25
    const/16 v31, 0x0

    goto/16 :goto_9

    :cond_26
    const/4 v13, 0x0

    goto/16 :goto_c

    :cond_27
    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v20

    if-ltz v20, :cond_28

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    move/from16 v0, v20

    if-ge v0, v12, :cond_28

    add-int/lit8 v12, v12, -0x1

    :cond_28
    move-object/from16 v0, v28

    invoke-virtual {v15, v12, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    or-int/lit8 v6, v6, 0x2

    goto/16 :goto_a

    :cond_29
    move/from16 v31, v6

    goto/16 :goto_1

    :catch_0
    move-exception v31

    goto/16 :goto_b
.end method

.method applyAnimationLocked(Lcom/android/server/wm/WindowState;IZ)Z
    .locals 5

    const/4 v3, 0x1

    iget-boolean v4, p1, Lcom/android/server/wm/WindowState;->mLocalAnimating:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p1, Lcom/android/server/wm/WindowState;->mAnimationIsEntrance:Z

    if-ne v4, p3, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy;->isScreenOnFully()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v4, p1, p2}, Landroid/view/WindowManagerPolicy;->selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I

    move-result v1

    const/4 v2, -0x1

    const/4 v0, 0x0

    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->setAnimation(Landroid/view/animation/Animation;)V

    iput-boolean p3, p1, Lcom/android/server/wm/WindowState;->mAnimationIsEntrance:Z

    :cond_3
    :goto_2
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-nez v4, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    sparse-switch p2, :sswitch_data_0

    :goto_3
    if-ltz v2, :cond_2

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v4, v2}, Lcom/android/server/wm/WindowManagerService;->loadAnimation(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_1

    :sswitch_0
    const/4 v2, 0x0

    goto :goto_3

    :sswitch_1
    const/4 v2, 0x1

    goto :goto_3

    :sswitch_2
    const/4 v2, 0x2

    goto :goto_3

    :sswitch_3
    const/4 v2, 0x3

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->clearAnimation()V

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
        0x2004 -> :sswitch_3
    .end sparse-switch
.end method

.method applyEnterAnimationLocked(Lcom/android/server/wm/WindowState;)V
    .locals 2

    const/16 v0, 0x1003

    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mEnterAnimationPending:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/server/wm/WindowState;->mEnterAnimationPending:Z

    const/16 v0, 0x1001

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/WindowManagerService;->applyAnimationLocked(Lcom/android/server/wm/WindowState;IZ)Z

    return-void
.end method

.method public blockInputEvents(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.htc.Manifest.permission.BLOCK_INPUT_EVENTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->setBlockInputEvents(Z)V

    const-string v0, "WindowManager"

    const-string v1, "BLOCK_INPUT_EVENTS_PERMISSION pass"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "WindowManager"

    const-string v1, "need BLOCK_INPUT_EVENTS_PERMISSION"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public broadcastKeyinEvent(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->DBG_broadkey:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastKeyinEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.htc.Manifest.permission.BROADCAST_KEYIN_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->setBroadcastKeyEvent(Z)V

    :cond_1
    return-void
.end method

.method public broadcastMotionEvent(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->DBG_broadkey:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastMotionEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.htc.Manifest.permission.BROADCAST_MOTION_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->setBroadcastMotionEvent(Z)V

    :cond_1
    return-void
.end method

.method public broadcastTrackballEvent(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->DBG_broadkey:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastTrackballEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.htc.Manifest.permission.BROADCAST_TRACKBALL_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->setBroadcastTrackballEvent(Z)V

    :cond_1
    return-void
.end method

.method public canStatusBarHide()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->canStatusBarHide()Z

    move-result v0

    return v0
.end method

.method checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method checkDrawnWindowsLocked()V
    .locals 7

    const/16 v6, 0x18

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Aborted waiting for drawn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/os/IRemoteCallback;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v3, v6, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mSurfaceShown:Z

    if-eqz v3, :cond_1

    :try_start_1
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/os/IRemoteCallback;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v3, v6, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    goto :goto_2

    :cond_3
    return-void

    :catch_0
    move-exception v3

    goto :goto_3

    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public clearForcedDisplaySize()V
    .locals 4

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplaySizeLocked(II)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "display_size_forced"

    const-string v3, ""

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearIdleScreen()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->clearIdleScreen()V

    return-void
.end method

.method public closeSystemDialogs(Ljava/lang/String;)V
    .locals 4

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2, p1}, Landroid/view/IWindow;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :try_start_2
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method computeForcedAppOrientationLocked()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getOrientationFromWindowsLocked()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getOrientationFromAppTokensLocked()I

    move-result v0

    :cond_0
    return v0
.end method

.method public computeNewConfiguration()Landroid/content/res/Configuration;
    .locals 3

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->computeNewConfigurationLocked()Landroid/content/res/Configuration;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    :cond_0
    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method computeNewConfigurationLocked()Landroid/content/res/Configuration;
    .locals 2

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->computeNewConfigurationLocked(Landroid/content/res/Configuration;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method computeNewConfigurationLocked(Landroid/content/res/Configuration;)Z
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/InputManager;->getInputConfiguration(Landroid/content/res/Configuration;)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    const/4 v5, 0x1

    if-eq v1, v5, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    const/4 v5, 0x3

    if-ne v1, v5, :cond_6

    :cond_1
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    :goto_2
    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mDisplaySizeLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mAltOrientation:Z

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    if-le v15, v14, :cond_9

    int-to-float v1, v14

    const v6, 0x3fa66666

    div-float/2addr v1, v6

    float-to-int v12, v1

    if-ge v12, v15, :cond_2

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    :cond_2
    :goto_4
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    const/4 v13, 0x3

    if-ge v3, v4, :cond_b

    const/4 v13, 0x1

    :cond_3
    :goto_5
    move-object/from16 v0, p1

    iput v13, v0, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mRealDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v1, v5, v6, v0}, Landroid/view/Display;->getMetricsWithSize(Landroid/util/DisplayMetrics;II)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-interface {v1, v3, v4, v5}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayWidth(III)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-interface {v1, v3, v4, v5}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayHeight(III)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mDisplaySizeLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_1
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    invoke-virtual {v1, v9, v5, v6}, Landroid/view/Display;->getMetricsWithSize(Landroid/util/DisplayMetrics;II)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mCompatDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v9, v1}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/wm/WindowManagerService;->mCompatibleScreenScale:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-interface {v1, v3, v4, v5}, Landroid/view/WindowManagerPolicy;->getConfigDisplayWidth(III)I

    move-result v1

    int-to-float v1, v1

    iget v5, v9, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v5

    float-to-int v1, v1

    move-object/from16 v0, p1

    iput v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-interface {v1, v3, v4, v5}, Landroid/view/WindowManagerPolicy;->getConfigDisplayHeight(III)I

    move-result v1

    int-to-float v1, v1

    iget v5, v9, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v5

    float-to-int v1, v1

    move-object/from16 v0, p1

    iput v1, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v5, v9, Landroid/util/DisplayMetrics;->density:F

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/WindowManagerService;->computeSmallestWidthAndScreenLayout(ZIIFLandroid/content/res/Configuration;)V

    move-object/from16 v0, p1

    iget v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowManagerService;->mCompatibleScreenScale:F

    div-float/2addr v1, v5

    float-to-int v1, v1

    move-object/from16 v0, p1

    iput v1, v0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    move-object/from16 v0, p1

    iget v1, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowManagerService;->mCompatibleScreenScale:F

    div-float/2addr v1, v5

    float-to-int v1, v1

    move-object/from16 v0, p1

    iput v1, v0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9, v3, v4}, Lcom/android/server/wm/WindowManagerService;->computeCompatSmallestWidth(ZLandroid/util/DisplayMetrics;II)I

    move-result v1

    move-object/from16 v0, p1

    iput v1, v0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    move-object/from16 v0, p1

    iget v1, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v5, 0x1

    if-eq v1, v5, :cond_c

    const/4 v10, 0x1

    :goto_6
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z

    if-eq v10, v1, :cond_4

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardEnabled:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v5, 0x16

    invoke-virtual {v1, v5}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v5, 0x16

    invoke-virtual {v1, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardEnabled:Z

    if-nez v1, :cond_5

    const/4 v1, 0x1

    move-object/from16 v0, p1

    iput v1, v0, Landroid/content/res/Configuration;->keyboard:I

    :cond_5
    const/4 v1, 0x1

    move-object/from16 v0, p1

    iput v1, v0, Landroid/content/res/Configuration;->keyboardHidden:I

    const/4 v1, 0x1

    move-object/from16 v0, p1

    iput v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v1, 0x1

    move-object/from16 v0, p1

    iput v1, v0, Landroid/content/res/Configuration;->navigationHidden:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p1

    invoke-interface {v1, v0}, Landroid/view/WindowManagerPolicy;->adjustConfigurationLw(Landroid/content/res/Configuration;)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    goto/16 :goto_3

    :cond_9
    int-to-float v1, v15

    const v6, 0x3fa66666

    div-float/2addr v1, v6

    float-to-int v11, v1

    if-ge v11, v14, :cond_2

    :try_start_2
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    goto/16 :goto_4

    :catchall_0
    move-exception v1

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_a
    :try_start_3
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4

    :cond_b
    if-le v3, v4, :cond_3

    const/4 v13, 0x2

    goto/16 :goto_5

    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    :cond_c
    const/4 v10, 0x0

    goto :goto_6
.end method

.method createWatermark()V
    .locals 9

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v6, "/system/etc/setup.conf"

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v6, "%"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    array-length v6, v5

    if-lez v6, :cond_2

    new-instance v6, Lcom/android/server/wm/Watermark;

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mRealDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    invoke-direct {v6, v7, v8, v5}, Lcom/android/server/wm/Watermark;-><init>(Landroid/util/DisplayMetrics;Landroid/view/SurfaceSession;[Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    :cond_2
    if-eqz v2, :cond_4

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v6

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception v6

    :goto_1
    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v6

    goto :goto_0

    :catch_3
    move-exception v6

    :goto_2
    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    :catch_4
    move-exception v6

    goto :goto_0

    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_3
    :goto_4
    throw v6

    :catch_5
    move-exception v7

    goto :goto_4

    :catchall_1
    move-exception v6

    move-object v1, v2

    goto :goto_3

    :catch_6
    move-exception v6

    move-object v1, v2

    goto :goto_2

    :catch_7
    move-exception v6

    move-object v1, v2

    goto :goto_1

    :cond_4
    move-object v1, v2

    goto :goto_0
.end method

.method public detectSafeMode()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/InputMonitor;->waitForInputDevicesReady(J)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "WindowManager"

    const-string v1, "Devices still not ready after waiting 1000 milliseconds before attempting to detect safe mode."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->detectSafeMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mSafeMode:Z

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mSafeMode:Z

    return v0
.end method

.method public disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    invoke-virtual {v0, p1, p2}, Landroid/os/TokenWatcher;->acquire(Landroid/os/IBinder;Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dismissKeyguard()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->dismissKeyguardLw()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public displayReady()V
    .locals 10

    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v9

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Display already initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplaySizeLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRawWidth()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRawHeight()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v6

    const/4 v0, 0x1

    if-eq v6, v0, :cond_1

    const/4 v0, 0x3

    if-ne v6, v0, :cond_2

    :cond_1
    iget v7, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    iput v7, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    :cond_2
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRawWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getRawHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getRawExternalWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getRawExternalHeight()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/InputManager;->setDisplaySize(IIIII)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->setInitialDisplaySize(II)V

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_5
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->readForcedDisplaySizeLocked()V

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    return-void

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump WindowManager from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v6, 0x0

    const/4 v5, 0x0

    :goto_1
    array-length v0, p3

    if-ge v5, v0, :cond_2

    aget-object v7, p3, v5

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_4

    :cond_2
    array-length v0, p3

    if-ge v5, v0, :cond_12

    aget-object v3, p3, v5

    add-int/lit8 v5, v5, 0x1

    const-string v0, "input"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "i"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_3
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/wm/WindowManagerService;->dumpInput(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V

    goto :goto_0

    :cond_4
    add-int/lit8 v5, v5, 0x1

    const-string v0, "-a"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v6, 0x1

    goto :goto_1

    :cond_5
    const-string v0, "-h"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "Window manager dump options:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  [-a] [-h] [cmd] ..."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  cmd may be one of:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    i[input]: input subsystem state"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    p[policy]: policy state"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    s[essions]: active sessions"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    t[okens]: token list"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    w[indows]: window list"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  cmd may also be a NAME to dump windows.  NAME may"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    be a partial substring in a window name, a"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Window hex object identifier, or"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    \"all\" for all windows, or"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    \"visible\" for the visible windows."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  -a: include all available server state."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown argument: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; use -h for help"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    const-string v0, "policy"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "p"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/WindowManagerService;->dumpPolicyLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_9
    const-string v0, "sessions"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "s"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/WindowManagerService;->dumpSessionsLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V

    monitor-exit v1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_b
    const-string v0, "tokens"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "t"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/WindowManagerService;->dumpTokensLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V

    monitor-exit v1

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :cond_d
    const-string v0, "windows"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "w"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    const/4 v0, 0x1

    const/4 v2, 0x0

    :try_start_3
    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    monitor-exit v1

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    :cond_f
    const-string v0, "all"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "a"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    const/4 v0, 0x1

    const/4 v2, 0x0

    :try_start_4
    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    monitor-exit v1

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v0

    :cond_11
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/WindowManagerService;->dumpWindows(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZ)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad window command, or no windows match: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Use -h for help."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    invoke-virtual {p0, p1, p2, v6}, Lcom/android/server/wm/WindowManagerService;->dumpInput(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    if-eqz v6, :cond_13

    :try_start_5
    const-string v0, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_13
    invoke-virtual {p0, p1, p2, p3, v6}, Lcom/android/server/wm/WindowManagerService;->dumpPolicyLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    if-eqz v6, :cond_14

    const-string v0, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_14
    invoke-virtual {p0, p1, p2, v6}, Lcom/android/server/wm/WindowManagerService;->dumpSessionsLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    if-eqz v6, :cond_15

    const-string v0, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_15
    invoke-virtual {p0, p1, p2, v6}, Lcom/android/server/wm/WindowManagerService;->dumpTokensLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    if-eqz v6, :cond_16

    const-string v0, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_16
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v6, v0}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    monitor-exit v1

    goto/16 :goto_0

    :catchall_5
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v0
.end method

.method dumpAppTokensLocked()V
    .locals 4

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    const-string v2, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method dumpInput(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V
    .locals 1

    const-string v0, "WINDOW MANAGER INPUT (dumpsys window input)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/InputManager;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method dumpPolicyLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "WINDOW MANAGER POLICY STATE (dumpsys window policy)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const-string v1, "    "

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method dumpSessionsLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V
    .locals 3

    const-string v2, "WINDOW MANAGER SESSIONS (dumpsys window sessions)"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mSessions:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mSessions:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Session;

    const-string v2, "  Session "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v2, 0x3a

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(C)V

    const-string v2, "    "

    invoke-virtual {v1, p2, v2}, Lcom/android/server/wm/Session;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method dumpTokensLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V
    .locals 6

    const/16 v5, 0x20

    const/16 v4, 0x3a

    const-string v3, "WINDOW MANAGER TOKENS (dumpsys window tokens)"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, "  All tokens:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    const-string v3, "  Token "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-eqz p3, :cond_0

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(C)V

    const-string v3, "    "

    invoke-virtual {v2, p2, v3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v3, "  Wallpaper tokens:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_1
    if-ltz v0, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    const-string v3, "  Wallpaper #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-eqz p3, :cond_2

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(C)V

    const-string v3, "    "

    invoke-virtual {v2, p2, v3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v3, "  Application tokens in Z order:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_3
    if-ltz v0, :cond_4

    const-string v3, "  App #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v3, "  Finishing start of application tokens:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_4
    if-ltz v0, :cond_6

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    const-string v3, "  Finished Starting #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-eqz p3, :cond_5

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(C)V

    const-string v3, "    "

    invoke-virtual {v2, p2, v3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :goto_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_5
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_5

    :cond_6
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_8

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v3, "  Exiting tokens:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_6
    if-ltz v0, :cond_8

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    const-string v3, "  Exiting #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-eqz p3, :cond_7

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(C)V

    const-string v3, "    "

    invoke-virtual {v2, p2, v3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :goto_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_7
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_7

    :cond_8
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_a

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v3, "  Exiting application tokens:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_8
    if-ltz v0, :cond_a

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    const-string v3, "  Exiting App #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-eqz p3, :cond_9

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(C)V

    const-string v3, "    "

    invoke-virtual {v2, p2, v3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :goto_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_9
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_9

    :cond_a
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_b

    const-string v3, "  mOpeningApps="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_b
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_c

    const-string v3, "  mClosingApps="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_c
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_d

    const-string v3, "  mToTopApps="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_d
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_e

    const-string v3, "  mToBottomApps="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_e
    return-void
.end method

.method dumpWindows(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZ)Z
    .locals 6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "visible"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-boolean v4, v2, Lcom/android/server/wm/WindowState;->mSurfaceShown:Z

    if-eqz v4, :cond_0

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_6

    const/4 v4, 0x0

    :goto_2
    return v4

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :cond_2
    const/4 v1, 0x0

    const/16 v4, 0x10

    :try_start_2
    invoke-static {p3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    const/4 p3, 0x0

    :goto_3
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_3
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    :goto_4
    if-ltz v0, :cond_5

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    if-eqz p3, :cond_4

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v4}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_4
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, v1, :cond_3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    :cond_5
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :cond_6
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_5
    invoke-virtual {p0, p1, p2, p6, v3}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    monitor-exit v5

    const/4 v4, 0x1

    goto :goto_2

    :catchall_2
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v4

    :catch_0
    move-exception v4

    goto :goto_3
.end method

.method dumpWindowsLocked()V
    .locals 4

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method dumpWindowsLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "Ljava/io/PrintWriter;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x1

    const/16 v6, 0x20

    const-string v3, "WINDOW MANAGER WINDOWS (dumpsys window windows)"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_0
    if-ltz v0, :cond_4

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    if-eqz p4, :cond_0

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const-string v3, "  Window #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "    "

    if-nez p3, :cond_1

    if-eqz p4, :cond_3

    :cond_1
    move v3, v4

    :goto_1
    invoke-virtual {v2, p2, v5, v3}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_7

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v3, "  Input method dialogs:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_2
    if-ltz v0, :cond_7

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    if-eqz p4, :cond_5

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    const-string v3, "  IM Dialog #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_7
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_b

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v3, "  Remove pending for:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_3
    if-ltz v0, :cond_b

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    if-eqz p4, :cond_8

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    const-string v3, "  Remove #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-eqz p3, :cond_a

    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    "

    invoke-virtual {v2, p2, v3, v4}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    :cond_9
    :goto_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_a
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_4

    :cond_b
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_d

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v3, "  Windows force removing:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_5
    if-ltz v0, :cond_d

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    const-string v3, "  Removing #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-eqz p3, :cond_c

    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    "

    invoke-virtual {v2, p2, v3, v4}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    :goto_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_c
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_6

    :cond_d
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_11

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v3, "  Windows waiting to destroy their surface:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_7
    if-ltz v0, :cond_11

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    if-eqz p4, :cond_e

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    :cond_e
    const-string v3, "  Destroy #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-eqz p3, :cond_10

    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    "

    invoke-virtual {v2, p2, v3, v4}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    :cond_f
    :goto_8
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    :cond_10
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_8

    :cond_11
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_15

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v3, "  Windows losing focus:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_9
    if-ltz v0, :cond_15

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    if-eqz p4, :cond_12

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    :cond_12
    const-string v3, "  Losing #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-eqz p3, :cond_14

    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    "

    invoke-virtual {v2, p2, v3, v4}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    :cond_13
    :goto_a
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_14
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_a

    :cond_15
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_19

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v3, "  Windows waiting to resize:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_b
    if-ltz v0, :cond_19

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    if-eqz p4, :cond_16

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    :cond_16
    const-string v3, "  Resizing #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-eqz p3, :cond_18

    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    "

    invoke-virtual {v2, p2, v3, v4}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    :cond_17
    :goto_c
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    :cond_18
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_c

    :cond_19
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1a

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v3, "  Clients waiting for these windows to be drawn:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_d
    if-ltz v0, :cond_1a

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    const-string v3, "  Waiting #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(C)V

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v3, ": "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_1a
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    if-eqz v3, :cond_26

    const-string v3, "  Display: init="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, "x"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " base="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, "x"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " cur="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, "x"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " app="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, "x"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " raw="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getRawWidth()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, "x"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getRawHeight()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    :goto_e
    const-string v3, "  mCurConfiguration="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v3, "  mCurrentFocus="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eq v3, v4, :cond_1b

    const-string v3, "  mLastFocus="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1b
    const-string v3, "  mFocusedApp="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_1c

    const-string v3, "  mInputMethodTarget="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1c
    const-string v3, "  mInTouchMode="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Z)V

    const-string v3, " mLayoutSeq="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutSeq:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    if-eqz p3, :cond_25

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastStatusBarVisibility:I

    if-eqz v3, :cond_1d

    const-string v3, "  mLastStatusBarVisibility=0x"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastStatusBarVisibility:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1d
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_1e

    const-string v3, "  mInputMethodWindow="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1e
    const-string v3, "  mWallpaperTarget="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_1f

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_1f

    const-string v3, "  mLowerWallpaperTarget="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v3, "  mUpperWallpaperTarget="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1f
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_20

    const-string v3, "  mWindowDetachedWallpaper="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_20
    const-string v3, "  mLastWallpaperX="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperX:F

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(F)V

    const-string v3, " mLastWallpaperY="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperY:F

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(F)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodAnimLayerAdjustment:I

    if-nez v3, :cond_21

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    if-eqz v3, :cond_22

    :cond_21
    const-string v3, "  mInputMethodAnimLayerAdjustment="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodAnimLayerAdjustment:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, "  mWallpaperAnimLayerAdjustment="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    :cond_22
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    if-eqz v3, :cond_23

    const-string v3, "  mWindowAnimationBackgroundSurface:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    const-string v4, "    "

    invoke-virtual {v3, v4, p2}, Lcom/android/server/wm/DimSurface;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_23
    const-string v3, "  mSystemBooted="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Z)V

    const-string v3, " mDisplayEnabled="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    const-string v3, "  mLayoutNeeded="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Z)V

    const-string v3, " mBlurShown="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mBlurShown:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    if-eqz v3, :cond_27

    const-string v3, "  mDimAnimator:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    const-string v4, "    "

    invoke-virtual {v3, v4, p2}, Lcom/android/server/wm/DimAnimator;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :goto_f
    const-string v3, "  mDisplayFrozen="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Z)V

    const-string v3, " mWindowsFreezingScreen="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Z)V

    const-string v3, " mAppsFreezingScreen="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " mWaitingForConfig="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    const-string v3, "  mRotation="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " mAltOrientation="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mAltOrientation:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    const-string v3, "  mLastWindowForcedOrientation"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastWindowForcedOrientation:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " mForcedAppOrientation="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mForcedAppOrientation:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    const-string v3, "  mDeferredRotationPauseCount="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    const-string v3, "  mAnimationPending="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationPending:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Z)V

    const-string v3, " mWindowAnimationScale="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(F)V

    const-string v3, " mTransitionWindowAnimationScale="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(F)V

    const-string v3, "  mNextAppTransition=0x"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " mAppTransitionReady="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionReady:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    const-string v3, "  mAppTransitionRunning="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionRunning:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Z)V

    const-string v3, " mAppTransitionTimeout="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionTimeout:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    if-eqz v3, :cond_24

    const-string v3, "  mNextAppTransitionPackage="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " mNextAppTransitionEnter=0x"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionEnter:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " mNextAppTransitionExit=0x"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionExit:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_24
    const-string v3, "  mStartingIconInTransition="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mStartingIconInTransition:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Z)V

    const-string v3, ", mSkipAppTransitionAnimation="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    :cond_25
    return-void

    :cond_26
    const-string v3, "  NO DISPLAY"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_27
    const-string v3, "  no DimAnimator "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_f
.end method

.method public enableScreenAfterBoot()V
    .locals 5

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-eqz v1, :cond_0

    monitor-exit v2

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->hideBootMessagesLocked()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0x17

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v0, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy;->systemBooted()V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method enableScreenIfNeededLocked()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public executeAppTransition()V
    .locals 5

    const-string v2, "android.permission.MANAGE_APP_TOKENS"

    const-string v3, "executeAppTransition()"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionReady:Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_1
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    new-instance v1, Lcom/android/server/wm/WindowManagerService$4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/WindowManagerService$4;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IOnKeyguardExitResult;)V

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->exitKeyguardSecurely(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    return-void
.end method

.method findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;
    .locals 2

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowToken;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    goto :goto_0
.end method

.method findDesiredInputMethodWindowIndexLocked(Z)I
    .locals 13

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v8, 0x0

    move v4, v0

    :cond_0
    if-lez v4, :cond_1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    invoke-static {v8}, Lcom/android/server/wm/WindowManagerService;->canBeImeTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v11

    if-eqz v11, :cond_0

    if-nez p1, :cond_1

    iget-object v11, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_1

    if-lez v4, :cond_1

    add-int/lit8 v11, v4, -0x1

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    iget-object v11, v9, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v12, v8, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v11, v12, :cond_1

    invoke-static {v9}, Lcom/android/server/wm/WindowManagerService;->canBeImeTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v11

    if-eqz v11, :cond_1

    add-int/lit8 v4, v4, -0x1

    move-object v8, v9

    :cond_1
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v11, :cond_2

    if-eqz v8, :cond_2

    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-boolean v11, v11, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget v11, v11, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    iget v12, v8, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    if-le v11, v12, :cond_2

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    :cond_2
    if-eqz p1, :cond_9

    if-eqz v8, :cond_9

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_9

    iget-object v11, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v11, :cond_9

    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-boolean v11, v7, Lcom/android/server/wm/AppWindowToken;->animating:Z

    if-nez v11, :cond_3

    iget-object v11, v7, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v11, :cond_4

    :cond_3
    const/4 v6, 0x0

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    :goto_0
    if-ltz v6, :cond_4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowState;

    iget-object v11, v10, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eq v11, v7, :cond_5

    :cond_4
    if-eqz v3, :cond_9

    iget v11, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_8

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTargetWaitingAnim:Z

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    add-int/lit8 v11, v2, 0x1

    :goto_1
    return v11

    :cond_5
    iget-boolean v11, v10, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-nez v11, :cond_7

    if-eqz v3, :cond_6

    iget v11, v10, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    iget v12, v3, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    if-le v11, v12, :cond_7

    :cond_6
    move-object v3, v10

    move v2, v6

    :cond_7
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_8
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v11

    if-eqz v11, :cond_9

    iget v11, v3, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    iget v12, v8, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    if-le v11, v12, :cond_9

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTargetWaitingAnim:Z

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    add-int/lit8 v11, v2, 0x1

    goto :goto_1

    :cond_9
    if-eqz v8, :cond_c

    if-eqz p1, :cond_a

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTargetWaitingAnim:Z

    iget-object v11, v8, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v11, :cond_b

    iget-object v11, v8, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v11, v11, Lcom/android/server/wm/AppWindowToken;->animLayerAdjustment:I

    invoke-virtual {p0, v11}, Lcom/android/server/wm/WindowManagerService;->setInputMethodAnimLayerAdjustment(I)V

    :cond_a
    :goto_2
    add-int/lit8 v11, v4, 0x1

    goto :goto_1

    :cond_b
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/server/wm/WindowManagerService;->setInputMethodAnimLayerAdjustment(I)V

    goto :goto_2

    :cond_c
    if-eqz p1, :cond_d

    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/server/wm/WindowManagerService;->setInputMethodAnimLayerAdjustment(I)V

    :cond_d
    const/4 v11, -0x1

    goto :goto_1
.end method

.method public finishDrawingWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V
    .locals 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->finishDrawingLocked()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x10

    and-int/2addr v3, v5

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public forcePasswordTimeout()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->forcePasswordTimeout()V

    return-void
.end method

.method public freezeRotation(I)V
    .locals 3

    const/4 v2, -0x1

    const-string v0, "android.permission.SET_ORIENTATION"

    const-string v1, "freezeRotation()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_ORIENTATION permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-lt p1, v2, :cond_1

    const/4 v0, 0x3

    if-le p1, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Rotation argument must be -1 or a valid rotation constant."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v1, 0x1

    if-ne p1, v2, :cond_3

    iget p1, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    :cond_3
    invoke-interface {v0, v1, p1}, Landroid/view/WindowManagerPolicy;->setUserRotationMode(II)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(Z)V

    return-void
.end method

.method public getAnimationScale(I)F
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getAnimationScales()[F
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    aput v2, v0, v1

    return-object v0
.end method

.method public getAppOrientation(Landroid/view/IApplicationToken;)I
    .locals 3

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    invoke-interface {p1}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, -0x1

    monitor-exit v2

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDPadKeycodeState(I)I
    .locals 3

    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getDPadKeycodeState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/4 v1, -0x1

    const/16 v2, 0x201

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/InputManager;->getKeyCodeState(III)I

    move-result v0

    return v0
.end method

.method public getDPadScancodeState(I)I
    .locals 3

    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getDPadScancodeState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/4 v1, -0x1

    const/16 v2, 0x201

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/InputManager;->getScanCodeState(III)I

    move-result v0

    return v0
.end method

.method public getDisplaySize(Landroid/graphics/Point;)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplaySizeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    iput v0, p1, Landroid/graphics/Point;->x:I

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    iput v0, p1, Landroid/graphics/Point;->y:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIdleScreenLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->getIdleScreenLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInitialDisplaySize(Landroid/graphics/Point;)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplaySizeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    iput v0, p1, Landroid/graphics/Point;->x:I

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    iput v0, p1, Landroid/graphics/Point;->y:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getInputDevice(I)Landroid/view/InputDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    return-object v0
.end method

.method public getInputDeviceIds()[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    invoke-virtual {v0}, Lcom/android/server/wm/InputManager;->getInputDeviceIds()[I

    move-result-object v0

    return-object v0
.end method

.method public getKeycodeState(I)I
    .locals 3

    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getKeycodeState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/4 v1, -0x1

    const/16 v2, -0x100

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/InputManager;->getKeyCodeState(III)I

    move-result v0

    return v0
.end method

.method public getKeycodeStateForDevice(II)I
    .locals 2

    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getKeycodeStateForDevice()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/16 v1, -0x100

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/wm/InputManager;->getKeyCodeState(III)I

    move-result v0

    return v0
.end method

.method public getMaximumSizeDimension()I
    .locals 3

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplaySizeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    if-le v0, v2, :cond_0

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getOrientationFromAppTokensLocked()I
    .locals 11

    const/4 v9, -0x1

    const/4 v10, 0x3

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    const/4 v0, 0x0

    const/4 v4, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-ltz v6, :cond_8

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/AppWindowToken;

    add-int/lit8 v6, v6, -0x1

    if-nez v1, :cond_1

    iget-boolean v8, v7, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-nez v8, :cond_1

    iget-boolean v8, v7, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v8, :cond_0

    :cond_1
    if-nez v2, :cond_4

    iget-boolean v8, v7, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v8, :cond_0

    iget-boolean v8, v7, Lcom/android/server/wm/AppWindowToken;->willBeHidden:Z

    if-nez v8, :cond_0

    const/4 v2, 0x1

    iget v0, v7, Lcom/android/server/wm/AppWindowToken;->groupId:I

    iget v4, v7, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    :cond_2
    iget v5, v7, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    iget-boolean v3, v7, Lcom/android/server/wm/AppWindowToken;->appFullscreen:Z

    if-eqz v3, :cond_5

    if-eq v5, v10, :cond_5

    :cond_3
    :goto_1
    return v5

    :cond_4
    iget v8, v7, Lcom/android/server/wm/AppWindowToken;->groupId:I

    if-eq v0, v8, :cond_2

    if-eq v4, v10, :cond_2

    if-eqz v3, :cond_2

    move v5, v4

    goto :goto_1

    :cond_5
    if-eq v5, v9, :cond_6

    if-ne v5, v10, :cond_3

    :cond_6
    if-ne v5, v10, :cond_7

    const/4 v8, 0x1

    :goto_2
    or-int/2addr v1, v8

    goto :goto_0

    :cond_7
    const/4 v8, 0x0

    goto :goto_2

    :cond_8
    move v5, v9

    goto :goto_1
.end method

.method public getOrientationFromWindowsLocked()I
    .locals 5

    const/4 v3, -0x1

    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    :cond_0
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mLastWindowForcedOrientation:I

    :goto_0
    return v1

    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    :cond_2
    if-ltz v0, :cond_4

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    add-int/lit8 v0, v0, -0x1

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_3

    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastWindowForcedOrientation:I

    move v1, v3

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, v2, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    if-eqz v4, :cond_2

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v4, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    if-eq v1, v3, :cond_2

    const/4 v4, 0x3

    if-eq v1, v4, :cond_2

    iput v1, p0, Lcom/android/server/wm/WindowManagerService;->mLastWindowForcedOrientation:I

    goto :goto_0

    :cond_4
    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastWindowForcedOrientation:I

    move v1, v3

    goto :goto_0
.end method

.method public getPendingAppTransition()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    return v0
.end method

.method public getPreferredOptionsPanelGravity()I
    .locals 7

    const/16 v2, 0x55

    const/16 v3, 0x53

    const/16 v1, 0x51

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getRotation()I

    move-result v0

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    iget v6, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    if-ge v5, v6, :cond_0

    packed-switch v0, :pswitch_data_0

    monitor-exit v4

    :goto_0
    return v1

    :pswitch_0
    monitor-exit v4

    move v1, v2

    goto :goto_0

    :pswitch_1
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_2
    :try_start_1
    monitor-exit v4

    move v1, v3

    goto :goto_0

    :cond_0
    packed-switch v0, :pswitch_data_1

    monitor-exit v4

    move v1, v2

    goto :goto_0

    :pswitch_3
    monitor-exit v4

    goto :goto_0

    :pswitch_4
    monitor-exit v4

    move v1, v3

    goto :goto_0

    :pswitch_5
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getRealDisplaySize(Landroid/graphics/Point;)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplaySizeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    iput v0, p1, Landroid/graphics/Point;->x:I

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    iput v0, p1, Landroid/graphics/Point;->y:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRotation()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    return v0
.end method

.method public getScancodeState(I)I
    .locals 3

    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getScancodeState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/4 v1, -0x1

    const/16 v2, -0x100

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/InputManager;->getScanCodeState(III)I

    move-result v0

    return v0
.end method

.method public getScancodeStateForDevice(II)I
    .locals 2

    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getScancodeStateForDevice()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/16 v1, -0x100

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/wm/InputManager;->getScanCodeState(III)I

    move-result v0

    return v0
.end method

.method public getSwitchState(I)I
    .locals 3

    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getSwitchState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/4 v1, -0x1

    const/16 v2, -0x100

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/InputManager;->getSwitchState(III)I

    move-result v0

    return v0
.end method

.method public getSwitchStateForDevice(II)I
    .locals 2

    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getSwitchStateForDevice()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/16 v1, -0x100

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/wm/InputManager;->getSwitchState(III)I

    move-result v0

    return v0
.end method

.method public getTrackballKeycodeState(I)I
    .locals 3

    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getTrackballKeycodeState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/4 v1, -0x1

    const v2, 0x10004

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/InputManager;->getKeyCodeState(III)I

    move-result v0

    return v0
.end method

.method public getTrackballScancodeState(I)I
    .locals 3

    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getTrackballScancodeState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/4 v1, -0x1

    const v2, 0x10004

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/InputManager;->getScanCodeState(III)I

    move-result v0

    return v0
.end method

.method public getWindowCompatibilityScale(Landroid/os/IBinder;)F
    .locals 3

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    :goto_0
    monitor-exit v2

    return v1

    :cond_0
    const/high16 v1, 0x3f80

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getWindowDisplayFrame(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/graphics/Rect;)V
    .locals 3

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    monitor-exit v2

    :goto_0
    return-void

    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {p3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasKeys([I[Z)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/4 v1, -0x1

    const/16 v2, -0x100

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/server/wm/InputManager;->hasKeys(II[I[Z)Z

    move-result v0

    return v0
.end method

.method public hasNavigationBar()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->hasNavigationBar()Z

    move-result v0

    return v0
.end method

.method public hideBootMessagesLocked()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->hideBootMessages()V

    :cond_0
    return-void
.end method

.method public hideIdleScreen()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->hideIdleScreen()V

    return-void
.end method

.method public inKeyguardRestrictedInputMode()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->inKeyguardRestrictedKeyInputMode()Z

    move-result v0

    return v0
.end method

.method public injectInputEventNoWait(Landroid/view/InputEvent;)Z
    .locals 9

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/4 v4, 0x0

    const/16 v5, 0x7530

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/InputManager;->injectInputEvent(Landroid/view/InputEvent;IIII)I

    move-result v8

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-direct {p0, v8}, Lcom/android/server/wm/WindowManagerService;->reportInjectionResult(I)Z

    move-result v0

    return v0
.end method

.method public injectKeyEvent(Landroid/view/KeyEvent;Z)Z
    .locals 25

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v21

    if-nez v14, :cond_0

    const/16 v14, 0x101

    :cond_0
    const-wide/16 v15, 0x0

    cmp-long v13, v5, v15

    if-nez v13, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    :cond_1
    const-wide/16 v15, 0x0

    cmp-long v13, v3, v15

    if-nez v13, :cond_2

    move-wide v3, v5

    :cond_2
    new-instance v2, Landroid/view/KeyEvent;

    or-int/lit8 v13, v21, 0x8

    invoke-direct/range {v2 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v17

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v18

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    if-eqz p2, :cond_3

    const/16 v19, 0x2

    :goto_0
    const/16 v20, 0x7530

    move-object/from16 v16, v2

    invoke-virtual/range {v15 .. v20}, Lcom/android/server/wm/InputManager;->injectInputEvent(Landroid/view/InputEvent;IIII)I

    move-result v24

    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowManagerService;->reportInjectionResult(I)Z

    move-result v13

    return v13

    :cond_3
    const/16 v19, 0x1

    goto :goto_0
.end method

.method public injectPointerEvent(Landroid/view/MotionEvent;Z)Z
    .locals 9

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x1002

    invoke-virtual {v1, v0}, Landroid/view/MotionEvent;->setSource(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    if-eqz p2, :cond_1

    const/4 v4, 0x2

    :goto_0
    const/16 v5, 0x7530

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/InputManager;->injectInputEvent(Landroid/view/InputEvent;IIII)I

    move-result v8

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-direct {p0, v8}, Lcom/android/server/wm/WindowManagerService;->reportInjectionResult(I)Z

    move-result v0

    return v0

    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public injectTrackballEvent(Landroid/view/MotionEvent;Z)Z
    .locals 9

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    const v0, 0x10004

    invoke-virtual {v1, v0}, Landroid/view/MotionEvent;->setSource(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    if-eqz p2, :cond_1

    const/4 v4, 0x2

    :goto_0
    const/16 v5, 0x7530

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/InputManager;->injectInputEvent(Landroid/view/InputEvent;IIII)I

    move-result v8

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-direct {p0, v8}, Lcom/android/server/wm/WindowManagerService;->reportInjectionResult(I)Z

    move-result v0

    return v0

    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z
    .locals 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p0, v7}, Lcom/android/server/wm/WindowManagerService;->findDesiredInputMethodWindowIndexLocked(Z)I

    move-result v1

    if-lez v1, :cond_3

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    add-int/lit8 v8, v1, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_3

    iget-object v7, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    iget-object v7, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v7, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v7, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v7, v7, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_0

    iget-object v7, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v7, v7, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    if-eq v3, v2, :cond_1

    move-object v2, v3

    :cond_0
    iget-object v7, v2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v7, v7, Lcom/android/server/wm/Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v7, :cond_2

    iget-object v7, v2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v7, v7, Lcom/android/server/wm/Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v7}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    if-ne v7, v8, :cond_2

    monitor-exit v6

    :goto_1
    return v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v7, v7, Lcom/android/server/wm/Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v7, v7, Lcom/android/server/wm/Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v7}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    if-ne v7, v8, :cond_3

    monitor-exit v6

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_3
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v4, v5

    goto :goto_1
.end method

.method public isHardKeyboardAvailable()Z
    .locals 2

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isHardKeyboardEnabled()Z
    .locals 2

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardEnabled:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isKeyguardLocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->isKeyguardLocked()Z

    move-result v0

    return v0
.end method

.method public isKeyguardSecure()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->isKeyguardSecure()Z

    move-result v0

    return v0
.end method

.method public isViewServerRunning()Z
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "android.permission.DUMP"

    const-string v2, "isViewServerRunning"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    invoke-virtual {v1}, Lcom/android/server/wm/ViewServer;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method final isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mObscured:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keyguardIsShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->keyguardIsShowing()Z

    move-result v0

    return v0
.end method

.method logWindowList(Ljava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method makeWindowFreezingScreenIfNeededLocked(Lcom/android/server/wm/WindowState;)V
    .locals 4

    const/16 v2, 0xb

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->isScreenOnFully()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iput-boolean v1, p1, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method

.method public monitor()V
    .locals 2

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    monitor-enter v1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;
    .locals 2

    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "monitorInput()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/InputManager;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v0

    return-object v0
.end method

.method public moveAppToken(ILandroid/os/IBinder;)V
    .locals 7

    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    const-string v4, "moveAppToken()"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempting to reorder token that doesn\'t exist: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, p1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    invoke-direct {p0, v2}, Lcom/android/server/wm/WindowManagerService;->tmpRemoveAppWindowsLocked(Lcom/android/server/wm/WindowToken;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->findWindowOffsetLocked(I)I

    move-result v3

    invoke-direct {p0, v3, v2}, Lcom/android/server/wm/WindowManagerService;->reAddAppWindowsLocked(ILcom/android/server/wm/WindowToken;)I

    const/4 v3, 0x3

    const/4 v5, 0x0

    invoke-direct {p0, v3, v5}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v3}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    :cond_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public moveAppTokensToBottom(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    const/4 v8, -0x1

    const-string v6, "android.permission.MANAGE_APP_TOKENS"

    const-string v7, "moveAppTokensToBottom()"

    invoke-virtual {p0, v6, v7}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v7

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->removeAppTokensLocked(Ljava/util/List;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-virtual {p0, v6}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v6, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget v6, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    if-eq v6, v8, :cond_1

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    invoke-virtual {v6, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/wm/WindowToken;->sendingToTop:Z

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/wm/WindowToken;->sendingToBottom:Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget v6, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    if-ne v6, v8, :cond_4

    const/4 v6, 0x0

    invoke-direct {p0, p1, v6}, Lcom/android/server/wm/WindowManagerService;->moveAppWindowsLocked(Ljava/util/List;I)V

    :cond_4
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method public moveAppTokensToTop(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    const/4 v7, -0x1

    const-string v5, "android.permission.MANAGE_APP_TOKENS"

    const-string v6, "moveAppTokensToTop()"

    invoke-virtual {p0, v5, v6}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->removeAppTokensLocked(Ljava/util/List;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    if-eq v5, v7, :cond_1

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/wm/WindowToken;->sendingToBottom:Z

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/wm/WindowToken;->sendingToTop:Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    if-ne v5, v7, :cond_3

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {p0, p1, v5}, Lcom/android/server/wm/WindowManagerService;->moveAppWindowsLocked(Ljava/util/List;I)V

    :cond_3
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method moveInputMethodDialogsLocked(I)V
    .locals 7

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    invoke-direct {p0, p1, v6}, Lcom/android/server/wm/WindowManagerService;->tmpRemoveWindowLocked(ILcom/android/server/wm/WindowState;)I

    move-result p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_2

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-object v3, v6, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge p1, v6, :cond_1

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-ne v5, v6, :cond_1

    add-int/lit8 p1, p1, 0x1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    iput-object v3, v4, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-direct {p0, p1, v4}, Lcom/android/server/wm/WindowManagerService;->reAddWindowLocked(ILcom/android/server/wm/WindowState;)I

    move-result p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-direct {p0, v4}, Lcom/android/server/wm/WindowManagerService;->reAddWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method moveInputMethodWindowsIfNeededLocked(Z)Z
    .locals 12

    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v11, -0x1

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v6, :cond_0

    if-nez v0, :cond_0

    move v8, v9

    :goto_0
    return v8

    :cond_0
    invoke-virtual {p0, v10}, Lcom/android/server/wm/WindowManagerService;->findDesiredInputMethodWindowIndexLocked(Z)I

    move-result v5

    if-ltz v5, :cond_c

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v5, v1, :cond_1

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    move-object v4, v8

    :cond_1
    if-eqz v6, :cond_5

    move-object v2, v6

    :goto_1
    iget-object v8, v2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_2

    iget-object v8, v2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    iget v8, v3, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-gez v8, :cond_2

    move-object v2, v3

    :cond_2
    if-ne v4, v2, :cond_8

    add-int/lit8 v7, v5, 0x1

    :goto_2
    if-ge v7, v1, :cond_3

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    iget-boolean v8, v8, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v8, :cond_6

    :cond_3
    add-int/lit8 v7, v7, 0x1

    :goto_3
    if-ge v7, v1, :cond_4

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    iget-boolean v8, v8, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v8, :cond_7

    :cond_4
    if-lt v7, v1, :cond_8

    move v8, v9

    goto :goto_0

    :cond_5
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    move-object v2, v8

    goto :goto_1

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_8
    if-eqz v6, :cond_b

    invoke-direct {p0, v5, v6}, Lcom/android/server/wm/WindowManagerService;->tmpRemoveWindowLocked(ILcom/android/server/wm/WindowState;)I

    move-result v5

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-object v8, v6, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-direct {p0, v5, v6}, Lcom/android/server/wm/WindowManagerService;->reAddWindowLocked(ILcom/android/server/wm/WindowState;)I

    if-lez v0, :cond_9

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v8}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    :cond_9
    :goto_4
    if-eqz p1, :cond_a

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    :cond_a
    move v8, v10

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    goto :goto_4

    :cond_c
    if-eqz v6, :cond_d

    invoke-direct {p0, v9, v6}, Lcom/android/server/wm/WindowManagerService;->tmpRemoveWindowLocked(ILcom/android/server/wm/WindowState;)I

    iput-object v4, v6, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-direct {p0, v6}, Lcom/android/server/wm/WindowManagerService;->reAddWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;)V

    if-lez v0, :cond_9

    invoke-virtual {p0, v11}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    goto :goto_4

    :cond_d
    invoke-virtual {p0, v11}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    goto :goto_4
.end method

.method notifyHardKeyboardStatusChange()V
    .locals 5

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardStatusChangeListener:Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z

    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardEnabled:Z

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    invoke-interface {v2, v0, v1}, Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;->onHardKeyboardStatusChange(ZZ)V

    :cond_0
    return-void

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/IWindowManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_0

    const-string v1, "WindowManager"

    const-string v2, "Window Manager Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    throw v0
.end method

.method public openSession(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)Landroid/view/IWindowSession;
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "null client"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "null inputContext"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Lcom/android/server/wm/Session;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/Session;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)V

    return-object v0
.end method

.method public outOfMemoryWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)Z
    .locals 6

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {p0, p1, p2, v5}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-nez v2, :cond_0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return v3

    :cond_0
    :try_start_2
    const-string v3, "from-client"

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v3, v5}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)Z

    move-result v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public overridePendingAppTransition(Ljava/lang/String;II)V
    .locals 2

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionEnter:I

    iput p3, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionExit:I

    :cond_0
    return-void
.end method

.method public overrideRotateAnimation(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 6

    if-nez p1, :cond_0

    const-string v2, "WindowManager"

    const-string v3, "invalid token"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "WindowManager"

    const-string v4, "invalid wtoken"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_3
    iput p3, v1, Lcom/android/server/wm/AppWindowToken;->mRotateAnimType:I

    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "overrideRotateAnimation as "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public pauseKeyDispatching(Landroid/os/IBinder;)V
    .locals 3

    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "pauseKeyDispatching()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowToken;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/InputMonitor;->pauseDispatchingLw(Lcom/android/server/wm/WindowToken;)V

    :cond_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method pauseRotationLocked()V
    .locals 1

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    return-void
.end method

.method public performBootTimeout()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    const-string v0, "WindowManager"

    const-string v2, "***** BOOT TIMEOUT: forcing display enabled"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mForceDisplayEnabled:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public performDeferredDestroyWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-nez v2, :cond_0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-void

    :cond_0
    :try_start_2
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->destroyDeferredSurfaceLocked()V

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public performEnableScreen()V
    .locals 15

    iget-object v12, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v12

    :try_start_0
    iget-boolean v11, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v11, :cond_0

    monitor-exit v12

    :goto_0
    return-void

    :cond_0
    iget-boolean v11, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-nez v11, :cond_1

    iget-boolean v11, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    if-nez v11, :cond_1

    monitor-exit v12

    goto :goto_0

    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    :cond_1
    :try_start_1
    iget-boolean v11, p0, Lcom/android/server/wm/WindowManagerService;->mForceDisplayEnabled:Z

    if-nez v11, :cond_e

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v0, :cond_a

    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowState;

    iget-object v11, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v13, 0x7d4

    if-ne v11, v13, :cond_2

    iget v11, v10, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v11, :cond_3

    iget-boolean v11, v10, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v11, :cond_3

    const/4 v9, 0x1

    :goto_2
    if-nez v9, :cond_4

    const/4 v5, 0x1

    :cond_2
    :goto_3
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v11

    if-eqz v11, :cond_5

    iget-boolean v11, v10, Lcom/android/server/wm/WindowState;->mObscured:Z

    if-nez v11, :cond_5

    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v11

    if-nez v11, :cond_5

    monitor-exit v12

    goto :goto_0

    :cond_3
    const/4 v9, 0x0

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    goto :goto_3

    :cond_5
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v11, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v13, 0x7e5

    if-ne v11, v13, :cond_7

    const/4 v4, 0x1

    :cond_6
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_7
    iget-object v11, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v13, 0x2

    if-ne v11, v13, :cond_8

    const/4 v3, 0x1

    goto :goto_4

    :cond_8
    iget-object v11, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v13, 0x7dd

    if-ne v11, v13, :cond_9

    const/4 v6, 0x1

    goto :goto_4

    :cond_9
    iget-object v11, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v13, 0x7d4

    if-ne v11, v13, :cond_6

    const/4 v5, 0x1

    goto :goto_4

    :cond_a
    iget-boolean v11, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-nez v11, :cond_b

    if-nez v4, :cond_b

    monitor-exit v12

    goto/16 :goto_0

    :cond_b
    iget-boolean v11, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-eqz v11, :cond_e

    if-nez v3, :cond_c

    if-eqz v5, :cond_d

    :cond_c
    if-nez v6, :cond_e

    :cond_d
    monitor-exit v12

    goto/16 :goto_0

    :cond_e
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v11, "SurfaceFlinger"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    if-eqz v8, :cond_f

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const-string v11, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v11, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface {v8, v11, v1, v13, v14}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_f
    :goto_5
    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v11}, Landroid/view/WindowManagerPolicy;->enableScreenAfterBoot()V

    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(Z)V

    goto/16 :goto_0

    :catch_0
    move-exception v2

    :try_start_4
    const-string v11, "WindowManager"

    const-string v13, "Boot completed: SurfaceFlinger is dead!"

    invoke-static {v11, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5
.end method

.method public prepareAppTransition(IZ)V
    .locals 5

    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v1, "prepareAppTransition()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->isScreenOnFully()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    if-nez v0, :cond_4

    :cond_1
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionReady:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionTimeout:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mStartingIconInTransition:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    monitor-exit v1

    return-void

    :cond_4
    if-nez p2, :cond_2

    const/16 v0, 0x1008

    if-ne p1, v0, :cond_5

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    const/16 v2, 0x2009

    if-ne v0, v2, :cond_5

    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    const/16 v0, 0x1006

    if-ne p1, v0, :cond_2

    :try_start_1
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    const/16 v2, 0x2007

    if-ne v0, v2, :cond_2

    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method prepareDragSurface(Landroid/view/IWindow;Landroid/view/SurfaceSession;IIILandroid/view/Surface;)Landroid/os/IBinder;
    .locals 16

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    const/4 v14, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-nez v2, :cond_1

    new-instance v1, Landroid/view/Surface;

    const-string v4, "drag surface"

    const/4 v5, 0x0

    const/4 v8, -0x3

    const/4 v9, 0x4

    move-object/from16 v2, p2

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v1 .. v9}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;ILjava/lang/String;IIIII)V

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/Surface;)V

    invoke-interface/range {p1 .. p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    new-instance v6, Landroid/os/Binder;

    invoke-direct {v6}, Landroid/os/Binder;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    new-instance v4, Lcom/android/server/wm/DragState;

    const/4 v8, 0x0

    move-object/from16 v5, p0

    move-object v7, v1

    invoke-direct/range {v4 .. v9}, Lcom/android/server/wm/DragState;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;Landroid/view/Surface;ILandroid/os/IBinder;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    iput-object v1, v2, Lcom/android/server/wm/DragState;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    new-instance v14, Landroid/os/Binder;

    invoke-direct {v14}, Landroid/os/Binder;-><init>()V

    iput-object v14, v2, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v4, 0x14

    invoke-virtual {v2, v4, v9}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v4, 0x14

    invoke-virtual {v2, v4, v9}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v11, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v6, v14

    :cond_0
    :goto_0
    :try_start_4
    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v6

    :cond_1
    :try_start_5
    const-string v2, "WindowManager"

    const-string v4, "Drag already in progress"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_5 .. :try_end_5} :catch_0

    move-object v6, v14

    goto :goto_0

    :catch_0
    move-exception v10

    move-object v6, v14

    :goto_1
    :try_start_6
    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t allocate drag surface w="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " h="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->reset()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    goto :goto_0

    :catchall_0
    move-exception v2

    :goto_2
    monitor-exit v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v2

    :goto_3
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :catchall_2
    move-exception v2

    move-object v6, v14

    goto :goto_3

    :catchall_3
    move-exception v2

    move-object v6, v14

    goto :goto_2

    :catch_1
    move-exception v10

    goto :goto_1
.end method

.method final rebuildAppWindowListLocked()V
    .locals 15

    const/4 v14, 0x1

    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, -0x1

    const/4 v5, 0x0

    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mRebuildTmp:[Lcom/android/server/wm/WindowState;

    array-length v11, v11

    if-ge v11, v1, :cond_0

    add-int/lit8 v11, v1, 0xa

    new-array v11, v11, [Lcom/android/server/wm/WindowState;

    iput-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mRebuildTmp:[Lcom/android/server/wm/WindowState;

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    iget-object v11, v8, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    iput-boolean v14, v9, Lcom/android/server/wm/WindowState;->mRebuilding:Z

    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mRebuildTmp:[Lcom/android/server/wm/WindowState;

    aput-object v9, v11, v5

    iput-boolean v14, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iget-object v11, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v12, 0x7dd

    if-ne v11, v12, :cond_2

    add-int/lit8 v11, v2, -0x1

    if-ne v4, v11, :cond_2

    move v4, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    move v2, v4

    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_4

    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/WindowToken;

    invoke-direct {p0, v2, v11}, Lcom/android/server/wm/WindowManagerService;->reAddAppWindowsLocked(ILcom/android/server/wm/WindowToken;)I

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_5

    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/WindowToken;

    invoke-direct {p0, v2, v11}, Lcom/android/server/wm/WindowManagerService;->reAddAppWindowsLocked(ILcom/android/server/wm/WindowToken;)I

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    sub-int/2addr v2, v4

    if-eq v2, v5, :cond_8

    const-string v11, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Rebuild removed "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " windows but added "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v5, :cond_7

    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mRebuildTmp:[Lcom/android/server/wm/WindowState;

    aget-object v10, v11, v2

    iget-boolean v11, v10, Lcom/android/server/wm/WindowState;->mRebuilding:Z

    if-eqz v11, :cond_6

    new-instance v7, Ljava/io/StringWriter;

    invoke-direct {v7}, Ljava/io/StringWriter;-><init>()V

    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v7}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v11, ""

    invoke-virtual {v10, v6, v11, v14}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    invoke-virtual {v6}, Ljava/io/PrintWriter;->flush()V

    const-string v11, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "This window was lost: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "WindowManager"

    invoke-virtual {v7}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    const-string v11, "WindowManager"

    const-string v12, "Current app token list:"

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->dumpAppTokensLocked()V

    const-string v11, "WindowManager"

    const-string v12, "Final window list:"

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsLocked()V

    :cond_8
    return-void
.end method

.method reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)Z
    .locals 15

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/16 v11, 0x7918

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v14, v14, Lcom/android/server/wm/Session;->mPid:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    aput-object p2, v12, v13

    invoke-static {v11, v12}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    if-nez v11, :cond_0

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v11, "WindowManager"

    const-string v12, "Out of memory for surface!  Looking for leaks..."

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowState;

    iget-object v11, v10, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mSessions:Ljava/util/HashSet;

    iget-object v12, v10, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v11, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "LEAKED SURFACE (session doesn\'t exist): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " surface="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v10, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " token="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " pid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v10, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v13, v13, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " uid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v10, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v13, v13, Lcom/android/server/wm/Session;->mUid:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, v10, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v11}, Landroid/view/Surface;->destroy()V

    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/android/server/wm/WindowState;->mSurfaceShown:Z

    const/4 v11, 0x0

    iput-object v11, v10, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v1, v1, -0x1

    const/4 v6, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-object v11, v10, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v11, :cond_1

    iget-object v11, v10, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v11, v11, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    if-eqz v11, :cond_1

    const-string v11, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "LEAKED SURFACE (app token hidden): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " surface="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v10, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " token="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, v10, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v11}, Landroid/view/Surface;->destroy()V

    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/android/server/wm/WindowState;->mSurfaceShown:Z

    const/4 v11, 0x0

    iput-object v11, v10, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    if-nez v6, :cond_7

    const-string v11, "WindowManager"

    const-string v12, "No leaked surfaces; killing applicatons!"

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Landroid/util/SparseIntArray;

    invoke-direct {v7}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v1, :cond_5

    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowState;

    iget-object v11, v10, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v11, :cond_4

    iget-object v11, v10, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v11, v11, Lcom/android/server/wm/Session;->mPid:I

    iget-object v12, v10, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v12, v12, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {v7, v11, v12}, Landroid/util/SparseIntArray;->append(II)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v11

    if-lez v11, :cond_7

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v11

    new-array v8, v11, [I

    const/4 v4, 0x0

    :goto_3
    array-length v11, v8

    if-ge v4, v11, :cond_6

    invoke-virtual {v7, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v11

    aput v11, v8, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    :try_start_1
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const-string v12, "Free memory"

    move/from16 v0, p3

    invoke-interface {v11, v8, v12, v0}, Landroid/app/IActivityManager;->killPids([ILjava/lang/String;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v11

    if-eqz v11, :cond_7

    const/4 v5, 0x1

    :cond_7
    :goto_4
    if-nez v6, :cond_8

    if-eqz v5, :cond_a

    :cond_8
    :try_start_2
    const-string v11, "WindowManager"

    const-string v12, "Looks like we have reclaimed some memory, clearing surface for retry."

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_9

    invoke-virtual {v9}, Landroid/view/Surface;->destroy()V

    const/4 v11, 0x0

    move-object/from16 v0, p1

    iput-boolean v11, v0, Lcom/android/server/wm/WindowState;->mSurfaceShown:Z

    const/4 v11, 0x0

    move-object/from16 v0, p1

    iput-object v11, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_9
    :try_start_3
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v11}, Landroid/view/IWindow;->dispatchGetNewSurface()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_a
    :goto_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v6, :cond_b

    if-eqz v5, :cond_c

    :cond_b
    const/4 v11, 0x1

    :goto_6
    return v11

    :catchall_0
    move-exception v11

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11

    :cond_c
    const/4 v11, 0x0

    goto :goto_6

    :catch_0
    move-exception v11

    goto :goto_5

    :catch_1
    move-exception v11

    goto :goto_4
.end method

.method public reenableKeyguard(Landroid/os/IBinder;)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    invoke-virtual {v1, p1}, Landroid/os/TokenWatcher;->release(Landroid/os/IBinder;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    invoke-virtual {v1}, Landroid/os/TokenWatcher;->isAcquired()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardDisabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public reevaluateStatusBarVisibility()V
    .locals 4

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastStatusBarVisibility:I

    invoke-interface {v1, v3}, Landroid/view/WindowManagerPolicy;->adjustSystemUiVisibilityLw(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->updateStatusBarVisibilityLocked(I)V

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public relayoutWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I
    .locals 31

    const/4 v9, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    if-eqz p4, :cond_0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    move/from16 v27, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    move/from16 v28, v0

    or-int v23, v27, v28

    const/high16 v27, 0x1ff

    and-int v27, v27, v23

    if-eqz v27, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const-string v28, "android.permission.STATUS_BAR"

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v27

    if-eqz v27, :cond_0

    const v27, -0x1ff0001

    and-int v23, v23, v27

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v28, v0

    monitor-enter v28

    const/16 v27, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v26

    if-nez v26, :cond_1

    const/16 v27, 0x0

    monitor-exit v28

    :goto_0
    return v27

    :cond_1
    move/from16 v0, p5

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    move/from16 v0, p6

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    if-eqz p4, :cond_2

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/wm/WindowState;->mSeq:I

    move/from16 v27, v0

    move/from16 v0, p3

    move/from16 v1, v27

    if-ne v0, v1, :cond_2

    move/from16 v0, v23

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    :cond_2
    if-eqz p4, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p4

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;)V

    :cond_3
    and-int/lit8 v27, p8, 0x2

    if-eqz v27, :cond_4

    const/16 v27, 0x1

    :goto_1
    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mSurfaceDestroyDeferred:Z

    const/4 v6, 0x0

    const/4 v11, 0x0

    if-eqz p4, :cond_6

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v27, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v29, v0

    move/from16 v0, v27

    move/from16 v1, v29

    if-eq v0, v1, :cond_5

    const-string v27, "WindowManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "win= "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", win.mAttrs.type="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", attrs.type"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v27, Ljava/lang/IllegalArgumentException;

    const-string v29, "Window type can not be changed after the window is added."

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v27

    :catchall_0
    move-exception v27

    monitor-exit v28
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v27

    :cond_4
    const/16 v27, 0x0

    goto :goto_1

    :cond_5
    :try_start_1
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v29, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v30, v0

    xor-int v11, v29, v30

    move-object/from16 v0, v27

    iput v11, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v6

    :cond_6
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v27, v0

    const/high16 v29, 0x2000

    and-int v27, v27, v29

    if-eqz v27, :cond_1e

    const/16 v27, 0x1

    :goto_2
    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    and-int/lit16 v0, v6, 0x80

    move/from16 v27, v0

    if-eqz v27, :cond_7

    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/server/wm/WindowState;->mAlpha:F

    :cond_7
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v27, v0

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0x4000

    move/from16 v27, v0

    if-eqz v27, :cond_1f

    const/16 v20, 0x1

    :goto_3
    if-eqz v20, :cond_22

    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p5

    if-eq v0, v1, :cond_20

    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v27, v27, v29

    :goto_4
    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/server/wm/WindowState;->mHScale:F

    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p6

    if-eq v0, v1, :cond_21

    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v0, p6

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v27, v27, v29

    :goto_5
    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    :goto_6
    const v27, 0x20008

    and-int v27, v27, v11

    if-eqz v27, :cond_27

    const/4 v13, 0x1

    :goto_7
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p7

    if-ne v0, v1, :cond_8

    and-int/lit8 v27, v11, 0x8

    if-nez v27, :cond_8

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    move/from16 v27, v0

    if-nez v27, :cond_28

    :cond_8
    const/4 v12, 0x1

    :goto_8
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p7

    if-eq v0, v1, :cond_29

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v27, v0

    const/high16 v29, 0x10

    and-int v27, v27, v29

    if-eqz v27, :cond_29

    const/16 v25, 0x1

    :goto_9
    const/high16 v27, 0x10

    and-int v27, v27, v11

    if-eqz v27, :cond_2a

    const/16 v27, 0x1

    :goto_a
    or-int v25, v25, v27

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    move/from16 v16, v0

    move/from16 v0, p7

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez p7, :cond_2d

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v27, v0

    if-eqz v27, :cond_9

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    move/from16 v27, v0

    if-nez v27, :cond_2d

    :cond_9
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v27

    if-nez v27, :cond_2b

    const/4 v9, 0x1

    :goto_b
    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mExiting:Z

    move/from16 v27, v0

    if-eqz v27, :cond_a

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->cancelExitAnimationForNextAnimationLocked()V

    :cond_a
    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    move/from16 v27, v0

    if-eqz v27, :cond_b

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mDestroying:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_b
    const/16 v27, 0x8

    move/from16 v0, v16

    move/from16 v1, v27

    if-ne v0, v1, :cond_c

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mEnterAnimationPending:Z

    :cond_c
    if-eqz v9, :cond_10

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v27, v0

    if-eqz v27, :cond_d

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mDrawPending:Z

    move/from16 v27, v0

    if-nez v27, :cond_d

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mCommitDrawPending:Z

    move/from16 v27, v0

    if-nez v27, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    move/from16 v27, v0

    if-nez v27, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    move/from16 v27, v0

    if-eqz v27, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Landroid/view/WindowManagerPolicy;->isScreenOnFully()Z

    move-result v27

    if-eqz v27, :cond_d

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->applyEnterAnimationLocked(Lcom/android/server/wm/WindowState;)V

    :cond_d
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v27, v0

    const/high16 v29, 0x20

    and-int v27, v27, v29

    if-eqz v27, :cond_e

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    :cond_e
    const/4 v8, 0x0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v29, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_10

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v27, v0

    if-eqz v27, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v29, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v8

    if-eqz v8, :cond_10

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v27, v0

    move-object/from16 v0, p12

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    :cond_10
    and-int/lit8 v27, v6, 0x8

    if-eqz v27, :cond_11

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->destroySurfaceLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v9, 0x1

    const/16 v22, 0x1

    :cond_11
    :try_start_2
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v27, v0

    if-nez v27, :cond_12

    const/16 v22, 0x1

    :cond_12
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->createSurfaceLocked()Landroid/view/Surface;

    move-result-object v21

    if-eqz v21, :cond_2c

    move-object/from16 v0, p13

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/Surface;)V

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mReportDestroySurface:Z

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mSurfacePendingDestroy:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_c
    if-eqz v9, :cond_13

    const/4 v12, 0x1

    :cond_13
    :try_start_3
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v27, v0

    const/16 v29, 0x7db

    move/from16 v0, v27

    move/from16 v1, v29

    if-ne v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v27, v0

    if-nez v27, :cond_14

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    const/4 v13, 0x1

    :cond_14
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v27, v0

    const/16 v29, 0x1

    move/from16 v0, v27

    move/from16 v1, v29

    if-ne v0, v1, :cond_15

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v27, v0

    if-eqz v27, :cond_15

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v27, v0

    if-eqz v27, :cond_15

    const v15, 0x480001

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v27, v0

    const v29, -0x480002

    and-int v27, v27, v29

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v29, v0

    const v30, 0x480001

    and-int v29, v29, v30

    or-int v27, v27, v29

    move/from16 v0, v27

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_15
    :goto_d
    if-eqz v12, :cond_16

    const/16 v27, 0x3

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v27

    if-eqz v27, :cond_16

    const/4 v13, 0x0

    :cond_16
    const/4 v5, 0x0

    if-eqz v13, :cond_18

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    move-result v27

    if-nez v27, :cond_17

    if-eqz v9, :cond_18

    :cond_17
    const/4 v5, 0x1

    :cond_18
    if-eqz v25, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    move-result v27

    and-int/lit8 v27, v27, 0x2

    if-eqz v27, :cond_19

    const/4 v5, 0x1

    :cond_19
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    and-int/lit8 v27, p8, 0x1

    if-eqz v27, :cond_37

    const/16 v27, 0x1

    :goto_e
    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    if-eqz v5, :cond_1a

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    :cond_1a
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Z)Z

    move-result v7

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    if-eqz v9, :cond_1b

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    move/from16 v27, v0

    if-eqz v27, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    move/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;IIZ)Z

    :cond_1b
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v27, v0

    if-eqz v27, :cond_1c

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    :cond_1c
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, p9

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, p10

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, p11

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    move-object/from16 v27, v0

    const/16 v29, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    monitor-exit v28
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v7, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration()V

    :cond_1d
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v14, :cond_38

    const/16 v27, 0x1

    move/from16 v28, v27

    :goto_f
    if-eqz v9, :cond_39

    const/16 v27, 0x2

    :goto_10
    or-int v28, v28, v27

    if-eqz v22, :cond_3a

    const/16 v27, 0x4

    :goto_11
    or-int v27, v27, v28

    goto/16 :goto_0

    :cond_1e
    const/16 v27, 0x0

    goto/16 :goto_2

    :cond_1f
    const/16 v20, 0x0

    goto/16 :goto_3

    :cond_20
    const/high16 v27, 0x3f80

    goto/16 :goto_4

    :cond_21
    const/high16 v27, 0x3f80

    goto/16 :goto_5

    :cond_22
    :try_start_4
    sget-boolean v27, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-eqz v27, :cond_26

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceWidthScale:F

    move/from16 v27, v0

    const/high16 v29, 0x3f80

    cmpl-float v27, v27, v29

    if-nez v27, :cond_23

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceHeightScale:F

    move/from16 v27, v0

    const/high16 v29, 0x3f80

    cmpl-float v27, v27, v29

    if-eqz v27, :cond_26

    :cond_23
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceWidthScale:F

    move/from16 v27, v0

    const/16 v29, 0x0

    cmpl-float v27, v27, v29

    if-lez v27, :cond_24

    const/high16 v27, 0x3f80

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceWidthScale:F

    move/from16 v29, v0

    div-float v27, v27, v29

    :goto_12
    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/server/wm/WindowState;->mHScale:F

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceHeightScale:F

    move/from16 v27, v0

    const/16 v29, 0x0

    cmpl-float v27, v27, v29

    if-lez v27, :cond_25

    const/high16 v27, 0x3f80

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceHeightScale:F

    move/from16 v29, v0

    div-float v27, v27, v29

    :goto_13
    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    goto/16 :goto_6

    :cond_24
    const/high16 v27, 0x3f80

    goto :goto_12

    :cond_25
    const/high16 v27, 0x3f80

    goto :goto_13

    :cond_26
    const/high16 v27, 0x3f80

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/server/wm/WindowState;->mHScale:F
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_6

    :cond_27
    const/4 v13, 0x0

    goto/16 :goto_7

    :cond_28
    const/4 v12, 0x0

    goto/16 :goto_8

    :cond_29
    const/16 v25, 0x0

    goto/16 :goto_9

    :cond_2a
    const/16 v27, 0x0

    goto/16 :goto_a

    :cond_2b
    const/4 v9, 0x0

    goto/16 :goto_b

    :cond_2c
    :try_start_5
    invoke-virtual/range {p13 .. p13}, Landroid/view/Surface;->release()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_c

    :catch_0
    move-exception v10

    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    move-object/from16 v27, v0

    const/16 v29, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    const-string v27, "WindowManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Exception thrown when creating surface for client "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " ("

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ")"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v27, 0x0

    monitor-exit v28

    goto/16 :goto_0

    :cond_2d
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mEnterAnimationPending:Z

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v27, v0

    if-eqz v27, :cond_30

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mExiting:Z

    move/from16 v27, v0

    if-eqz v27, :cond_2e

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mSurfacePendingDestroy:Z

    move/from16 v27, v0

    if-eqz v27, :cond_30

    :cond_2e
    const/16 v22, 0x1

    const/16 v24, 0x2002

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v27, v0

    const/16 v29, 0x3

    move/from16 v0, v27

    move/from16 v1, v29

    if-ne v0, v1, :cond_2f

    const/16 v24, 0x5

    :cond_2f
    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mSurfacePendingDestroy:Z

    move/from16 v27, v0

    if-nez v27, :cond_32

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->isWinVisibleLw()Z

    move-result v27

    if-eqz v27, :cond_32

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v24

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->applyAnimationLocked(Lcom/android/server/wm/WindowState;IZ)Z

    move-result v27

    if-eqz v27, :cond_32

    const/4 v12, 0x1

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mExiting:Z

    :cond_30
    :goto_14
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v27, v0

    if-eqz v27, :cond_31

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v27, v0

    const/high16 v29, 0x1000

    and-int v27, v27, v29

    if-eqz v27, :cond_31

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mSurfacePendingDestroy:Z

    move/from16 v27, v0

    if-eqz v27, :cond_36

    :cond_31
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mSurfacePendingDestroy:Z

    invoke-virtual/range {p13 .. p13}, Landroid/view/Surface;->release()V

    goto/16 :goto_d

    :cond_32
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v27

    if-eqz v27, :cond_33

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mExiting:Z

    goto :goto_14

    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_34

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mExiting:Z

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mAnimating:Z

    goto :goto_14

    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_35

    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    :cond_35
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->destroySurfaceLocked()V

    goto :goto_14

    :cond_36
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v27, v0

    if-eqz v27, :cond_15

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mReportDestroySurface:Z

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v27, v0

    move-object/from16 v0, p13

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/Surface;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_d

    :cond_37
    const/16 v27, 0x0

    goto/16 :goto_e

    :cond_38
    const/16 v27, 0x0

    move/from16 v28, v27

    goto/16 :goto_f

    :cond_39
    const/16 v27, 0x0

    goto/16 :goto_10

    :cond_3a
    const/16 v27, 0x0

    goto/16 :goto_11
.end method

.method public removeAppToken(Landroid/os/IBinder;)V
    .locals 14

    const/4 v13, -0x1

    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "removeAppToken()"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    iget-object v12, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v12

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowToken;

    if-eqz v6, :cond_8

    iget-object v1, v6, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;->setTokenVisibilityLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZ)Z

    move-result v7

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v7, 0x1

    :cond_1
    :goto_0
    if-eqz v7, :cond_7

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->removed:Z

    iget-object v0, v1, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_2

    move-object v11, v1

    :cond_2
    const/4 v0, 0x1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/InputMonitor;->setFocusedAppLw(Lcom/android/server/wm/AppWindowToken;)V

    :cond_3
    :goto_2
    if-nez v7, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    :cond_4
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v11, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v11}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v0, v8}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    :cond_5
    return-void

    :cond_6
    :try_start_1
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    if-eq v0, v13, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/wm/WindowToken;->waitingToHide:Z

    const/4 v7, 0x1

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->animating:Z

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_8
    :try_start_2
    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to remove non-existing app token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method removeFakeWindowLocked(Landroid/view/WindowManagerPolicy$FakeWindow;)Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V
    .locals 4

    sget-object v2, Lcom/android/server/SystemServer;->mCrossServiceLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-nez v0, :cond_0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    return-void

    :cond_0
    :try_start_3
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowManagerService;->removeWindowLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public removeWindowChangeListener(Lcom/android/server/wm/WindowManagerService$WindowChangeListener;)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeWindowLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V
    .locals 8

    const/4 v5, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->disposeInputChannel()V

    const/4 v3, 0x0

    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy;->isScreenOnFully()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isWinVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x2002

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v4, v5, :cond_0

    const/4 v2, 0x5

    :cond_0
    invoke-virtual {p0, p2, v2, v6}, Lcom/android/server/wm/WindowManagerService;->applyAnimationLocked(Lcom/android/server/wm/WindowState;IZ)Z

    move-result v4

    if-eqz v4, :cond_1

    iput-boolean v7, p2, Lcom/android/server/wm/WindowState;->mExiting:Z

    :cond_1
    iget-boolean v4, p2, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v4, :cond_2

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    iput-boolean v7, p2, Lcom/android/server/wm/WindowState;->mExiting:Z

    iput-boolean v7, p2, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    iput-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    invoke-direct {p0, v5, v6}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v4, v6}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_3

    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    :cond_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-void

    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->computeForcedAppOrientationLocked()I

    move-result v4

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mForcedAppOrientation:I

    if-eq v4, v5, :cond_5

    invoke-virtual {p0, v6}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Z)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v5, 0x12

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    :cond_5
    invoke-direct {p0, v6, v7}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public removeWindowToken(Landroid/os/IBinder;)V
    .locals 12

    const-string v8, "android.permission.MANAGE_APP_TOKENS"

    const-string v9, "removeWindowToken()"

    invoke-virtual {p0, v8, v9}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    new-instance v8, Ljava/lang/SecurityException;

    const-string v9, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v9

    :try_start_0
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowToken;

    if-eqz v7, :cond_7

    const/4 v2, 0x0

    iget-boolean v8, v7, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-nez v8, :cond_5

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/android/server/wm/WindowToken;->hidden:Z

    iget-object v8, v7, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    iget-object v8, v7, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0x2002

    const/4 v10, 0x0

    invoke-virtual {p0, v6, v8, v10}, Lcom/android/server/wm/WindowManagerService;->applyAnimationLocked(Lcom/android/server/wm/WindowState;IZ)Z

    const/4 v1, 0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-direct {p0, v8, v10}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    :cond_4
    if-eqz v2, :cond_6

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    :goto_2
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_6
    :try_start_1
    iget v8, v7, Lcom/android/server/wm/WindowToken;->windowType:I

    const/16 v10, 0x7dd

    if-ne v8, v10, :cond_5

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    :cond_7
    :try_start_2
    const-string v8, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Attempted to remove non-existing token: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method requestAnimationLocked(J)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationPending:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationPending:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public resumeKeyDispatching(Landroid/os/IBinder;)V
    .locals 3

    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "resumeKeyDispatching()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowToken;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/InputMonitor;->resumeDispatchingLw(Lcom/android/server/wm/WindowToken;)V

    :cond_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method resumeRotationLocked()V
    .locals 3

    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->updateRotationUncheckedLocked(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public screenshotApplications(Landroid/os/IBinder;II)Landroid/graphics/Bitmap;
    .locals 34

    const-string v31, "android.permission.READ_FRAME_BUFFER"

    const-string v32, "screenshotApplications()"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_0

    new-instance v31, Ljava/lang/SecurityException;

    const-string v32, "Requires READ_FRAME_BUFFER permission"

    invoke-direct/range {v31 .. v32}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v31

    :cond_0
    const/16 v20, 0x0

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v32, v0

    monitor-enter v32

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v31, v0

    const/16 v33, 0x2

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v31

    move/from16 v0, v31

    mul-int/lit16 v0, v0, 0x2710

    move/from16 v31, v0

    move/from16 v0, v31

    add-int/lit16 v3, v0, 0x3e8

    add-int/lit16 v3, v3, 0x2710

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    if-eqz v31, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    if-eqz v31, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    move-object/from16 v31, v0

    if-eqz v31, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_2

    const/16 v17, 0x1

    :goto_0
    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    add-int/lit8 v13, v31, -0x1

    :goto_1
    if-ltz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v31, v0

    if-nez v31, :cond_3

    :cond_1
    :goto_2
    add-int/lit8 v13, v13, -0x1

    goto :goto_1

    :cond_2
    const/16 v17, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v0, v3, :cond_1

    if-nez v16, :cond_5

    if-eqz p1, :cond_5

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    move/from16 v31, v0

    if-eqz v31, :cond_4

    if-nez v17, :cond_5

    :cond_4
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    if-eqz v31, :cond_1

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_1

    :cond_5
    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    move/from16 v31, v0

    if-nez v31, :cond_7

    move-object/from16 v0, v30

    invoke-virtual {v0, v9, v8}, Lcom/android/server/wm/WindowState;->isFullscreen(II)Z

    move-result v31

    if-nez v31, :cond_7

    const/16 v16, 0x1

    :goto_3
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    move/from16 v31, v0

    move/from16 v0, v20

    move/from16 v1, v31

    if-ge v0, v1, :cond_6

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    move/from16 v20, v0

    :cond_6
    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    move/from16 v31, v0

    if-nez v31, :cond_1

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v30

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v31, v0

    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v33, v0

    add-int v18, v31, v33

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v31, v0

    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v33, v0

    add-int v28, v31, v33

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    iget v0, v7, Landroid/graphics/Rect;->right:I

    move/from16 v33, v0

    sub-int v22, v31, v33

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v31, v0

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    move/from16 v33, v0

    sub-int v5, v31, v33

    move/from16 v0, v18

    move/from16 v1, v28

    move/from16 v2, v22

    invoke-virtual {v11, v0, v1, v2, v5}, Landroid/graphics/Rect;->union(IIII)V

    goto/16 :goto_2

    :catchall_0
    move-exception v31

    monitor-exit v32
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v31

    :cond_7
    const/16 v16, 0x0

    goto :goto_3

    :cond_8
    :try_start_1
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v31, 0x0

    const/16 v33, 0x0

    move/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v11, v0, v1, v9, v8}, Landroid/graphics/Rect;->intersect(IIII)Z

    invoke-virtual {v11}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v31

    if-nez v31, :cond_9

    if-nez v20, :cond_a

    :cond_9
    const/4 v4, 0x0

    monitor-exit v32

    :goto_4
    return-object v4

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/Display;->getRotation()I

    move-result v23

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v10

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v31, v0

    int-to-float v0, v12

    move/from16 v33, v0

    div-float v26, v31, v33

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v31, v0

    int-to-float v0, v10

    move/from16 v33, v0

    div-float v25, v31, v33

    if-gt v9, v8, :cond_e

    move/from16 v24, v26

    cmpl-float v31, v25, v24

    if-lez v31, :cond_b

    int-to-float v0, v12

    move/from16 v31, v0

    mul-float v31, v31, v25

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    move/from16 v1, p2

    if-ne v0, v1, :cond_b

    move/from16 v24, v25

    :cond_b
    :goto_5
    int-to-float v0, v9

    move/from16 v31, v0

    mul-float v31, v31, v24

    move/from16 v0, v31

    float-to-int v9, v0

    int-to-float v0, v8

    move/from16 v31, v0

    mul-float v31, v31, v24

    move/from16 v0, v31

    float-to-int v8, v0

    const/16 v31, 0x1

    move/from16 v0, v23

    move/from16 v1, v31

    if-eq v0, v1, :cond_c

    const/16 v31, 0x3

    move/from16 v0, v23

    move/from16 v1, v31

    if-ne v0, v1, :cond_d

    :cond_c
    move/from16 v27, v9

    move v9, v8

    move/from16 v8, v27

    const/16 v31, 0x1

    move/from16 v0, v23

    move/from16 v1, v31

    if-ne v0, v1, :cond_f

    const/16 v23, 0x3

    :cond_d
    :goto_6
    const/16 v31, 0x0

    move/from16 v0, v31

    move/from16 v1, v20

    invoke-static {v9, v8, v0, v1}, Landroid/view/Surface;->screenshot(IIII)Landroid/graphics/Bitmap;

    move-result-object v21

    monitor-exit v32
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v21, :cond_10

    const-string v31, "WindowManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Failure taking screenshot for ("

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "x"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ") to layer "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_e
    move/from16 v24, v25

    cmpl-float v31, v26, v24

    if-lez v31, :cond_b

    int-to-float v0, v10

    move/from16 v31, v0

    mul-float v31, v31, v26

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    move/from16 v1, p3

    if-ne v0, v1, :cond_b

    move/from16 v24, v26

    goto/16 :goto_5

    :cond_f
    const/16 v23, 0x1

    goto :goto_6

    :cond_10
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v31

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v19, Landroid/graphics/Matrix;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Matrix;-><init>()V

    move/from16 v0, v23

    move-object/from16 v1, v19

    invoke-static {v0, v9, v8, v1}, Lcom/android/server/wm/ScreenRotationAnimation;->createRotationMatrix(IIILandroid/graphics/Matrix;)V

    iget v0, v11, Landroid/graphics/Rect;->left:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v24

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    neg-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v32, v32, v24

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    neg-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v19

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/16 v31, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v31

    invoke-virtual {v6, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    const/16 v31, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_4
.end method

.method public sendKeyCode(I)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.action.BROADCAST_KEYEVENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "KeyCode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->DBG_broadkey:Z

    if-eqz v1, :cond_0

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendKeyCode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public sendMotionXY(FF)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.action.BROADCAST_MOTIONEVENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "X"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    const-string v1, "Y"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->DBG_broadkey:Z

    if-eqz v1, :cond_0

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendMotionXY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method sendNewConfiguration()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendTrackballXY(FF)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.action.BROADCAST_TRACKBALLEVENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "X"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    const-string v1, "Y"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public sendWindowWallpaperCommandLocked(Lcom/android/server/wm/WindowState;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 12

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->isLauncherWindowReady(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    move/from16 v9, p7

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    :cond_1
    if-lez v7, :cond_2

    add-int/lit8 v7, v7, -0x1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowToken;

    iget-object v0, v10, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    :goto_0
    if-lez v8, :cond_1

    add-int/lit8 v8, v8, -0x1

    iget-object v0, v10, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/WindowState;

    :try_start_0
    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object v1, p2

    move v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    invoke-interface/range {v0 .. v6}, Landroid/view/IWindow;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p7, 0x0

    goto :goto_0

    :cond_2
    if-eqz v9, :cond_3

    :cond_3
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setAnimationScale(IF)V
    .locals 2

    const-string v0, "android.permission.SET_ANIMATION_SCALE"

    const-string v1, "setAnimationScale()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_ANIMATION_SCALE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_2

    const/4 p2, 0x0

    :cond_1
    :goto_0
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    packed-switch p1, :pswitch_data_0

    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_2
    const/high16 v0, 0x41a0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    const/high16 p2, 0x41a0

    goto :goto_0

    :pswitch_0
    invoke-static {p2}, Lcom/android/server/wm/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    goto :goto_1

    :pswitch_1
    invoke-static {p2}, Lcom/android/server/wm/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setAnimationScales([F)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "android.permission.SET_ANIMATION_SCALE"

    const-string v1, "setAnimationScale()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_ANIMATION_SCALE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p1, :cond_2

    array-length v0, p1

    if-lt v0, v2, :cond_1

    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    :cond_1
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    aget v0, p1, v2

    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setAppGroupId(Landroid/os/IBinder;I)V
    .locals 5

    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "setAppStartingIcon()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set group id of non-existing app token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    :goto_0
    return-void

    :cond_1
    iput p2, v0, Lcom/android/server/wm/AppWindowToken;->groupId:I

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAppOrientation(Landroid/view/IApplicationToken;I)V
    .locals 5

    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "setAppOrientation()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    invoke-interface {p1}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set orientation of non-existing app token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    :goto_0
    return-void

    :cond_1
    iput p2, v0, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIILandroid/os/IBinder;Z)V
    .locals 18

    const-string v2, "android.permission.MANAGE_APP_TOKENS"

    const-string v3, "setAppStartingIcon()"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    monitor-enter v17

    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v16

    if-nez v16, :cond_1

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set icon of non-existing app token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v17

    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy;->isScreenOnFully()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    monitor-exit v17

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_3
    :try_start_1
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-eqz v2, :cond_4

    monitor-exit v17

    goto :goto_0

    :cond_4
    if-eqz p9, :cond_c

    move-object/from16 v0, p0

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v15

    if-eqz v15, :cond_c

    iget-object v14, v15, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v14, :cond_b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mStartingIconInTransition:Z

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    iget-object v2, v15, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    iget-object v2, v15, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    move-object/from16 v0, v16

    iput-object v14, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    const/4 v2, 0x0

    iput-object v2, v15, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    const/4 v2, 0x0

    iput-object v2, v15, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    const/4 v2, 0x0

    iput-object v2, v15, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    const/4 v2, 0x1

    iput-boolean v2, v15, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    move-object/from16 v0, v16

    iput-object v0, v14, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    move-object/from16 v0, v16

    iput-object v0, v14, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    move-object/from16 v0, v16

    iput-object v0, v14, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    iget-object v2, v15, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, v15, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v2}, Lcom/android/server/wm/WindowManagerService;->addWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;Z)V

    iget-boolean v2, v15, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    :cond_6
    iget-boolean v2, v15, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    :cond_7
    iget-boolean v2, v15, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-nez v2, :cond_8

    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/server/wm/WindowToken;->hidden:Z

    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->willBeHidden:Z

    :cond_8
    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    iget-boolean v3, v15, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    if-eq v2, v3, :cond_9

    iget-boolean v2, v15, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/AppWindowToken;->sendAppVisibilityToClients()V

    :cond_9
    iget-object v2, v15, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_a

    iget-object v2, v15, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    iget-boolean v2, v15, Lcom/android/server/wm/AppWindowToken;->animating:Z

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->animating:Z

    iget v2, v15, Lcom/android/server/wm/AppWindowToken;->animLayerAdjustment:I

    move-object/from16 v0, v16

    iput v2, v0, Lcom/android/server/wm/AppWindowToken;->animLayerAdjustment:I

    const/4 v2, 0x0

    iput-object v2, v15, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    const/4 v2, 0x0

    iput v2, v15, Lcom/android/server/wm/AppWindowToken;->animLayerAdjustment:I

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/AppWindowToken;->updateLayers()V

    invoke-virtual {v15}, Lcom/android/server/wm/AppWindowToken;->updateLayers()V

    :cond_a
    const/4 v2, 0x3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v17

    goto/16 :goto_0

    :cond_b
    iget-object v2, v15, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-eqz v2, :cond_c

    iget-object v2, v15, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    const/4 v2, 0x0

    iput-object v2, v15, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    const/4 v2, 0x1

    iput-boolean v2, v15, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v3, 0x5

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v2, v11}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    monitor-exit v17

    goto/16 :goto_0

    :cond_c
    if-nez p10, :cond_d

    monitor-exit v17

    goto/16 :goto_0

    :cond_d
    if-eqz p3, :cond_12

    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v2

    sget-object v3, Lcom/android/internal/R$styleable;->Window:[I

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v10

    if-eqz v10, :cond_e

    iget-object v2, v10, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    if-nez v2, :cond_f

    :cond_e
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AttributeCache.Entry (ent) is null, pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v17

    goto/16 :goto_0

    :cond_f
    iget-object v2, v10, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_10

    monitor-exit v17

    goto/16 :goto_0

    :cond_10
    iget-object v2, v10, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_11

    monitor-exit v17

    goto/16 :goto_0

    :cond_11
    iget-object v2, v10, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_13

    const/high16 v2, 0x10

    or-int p8, p8, v2

    :cond_12
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mStartingIconInTransition:Z

    new-instance v2, Lcom/android/server/wm/StartingData;

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v2 .. v9}, Lcom/android/server/wm/StartingData;-><init>(Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;III)V

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v3, 0x5

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v2, v11}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    monitor-exit v17

    goto/16 :goto_0

    :cond_13
    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public setAppVisibility(Landroid/os/IBinder;Z)V
    .locals 9

    const/4 v5, -0x1

    const/4 v0, 0x1

    const/4 v2, 0x0

    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    const-string v4, "setAppVisibility()"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v8

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to set visibility of non-existing app token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8

    :goto_0
    return-void

    :cond_1
    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy;->isScreenOnFully()Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    if-eq v3, v5, :cond_6

    iget-boolean v3, v1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eq v3, p2, :cond_2

    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    if-nez p2, :cond_4

    :goto_1
    :try_start_1
    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->setDummyAnimation()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowToken;->waitingToHide:Z

    iput-boolean v0, v1, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    if-eqz p2, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    iget-boolean v0, v1, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    iget-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->sendAppVisibilityToClients()V

    :cond_3
    :goto_2
    monitor-exit v8

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, v1, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/wm/WindowToken;->waitingToHide:Z

    goto :goto_2

    :cond_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;->setTokenVisibilityLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZ)Z

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setAppWillBeHidden(Landroid/os/IBinder;)V
    .locals 5

    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "setAppWillBeHidden()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set will be hidden of non-existing app token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->willBeHidden:Z

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setBlockInputEvents(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/InputMonitor;->setBlockInputEventsLw(Z)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBroadcastKeyEvent(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/InputMonitor;->setBroadcastKeyEventLw(Z)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBroadcastMotionEvent(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/InputMonitor;->setBroadcastMotionEventLw(Z)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBroadcastTrackballEvent(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/InputMonitor;->setBroadcastTrackballEventLw(Z)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setEventDispatching(Z)V
    .locals 2

    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v1, "resumeKeyDispatching()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/InputMonitor;->setEventDispatchingLw(Z)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFocusedApp(Landroid/os/IBinder;Z)V
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "android.permission.MANAGE_APP_TOKENS"

    const-string v7, "setFocusedApp()"

    invoke-virtual {p0, v6, v7}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :try_start_0
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v7, :cond_3

    move v0, v4

    :goto_0
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/wm/InputMonitor;->setFocusedAppLw(Lcom/android/server/wm/AppWindowToken;)V

    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_2
    monitor-exit v6

    :goto_2
    return-void

    :cond_3
    move v0, v5

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    if-nez v1, :cond_5

    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempted to set focus to non-existing app token: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v6

    goto :goto_2

    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_5
    :try_start_1
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eq v7, v1, :cond_6

    move v0, v4

    :goto_3
    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/InputMonitor;->setFocusedAppLw(Lcom/android/server/wm/AppWindowToken;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_6
    move v0, v5

    goto :goto_3
.end method

.method public setForcedDisplaySize(II)V
    .locals 7

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    if-ge v2, v4, :cond_2

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    if-ge p2, v2, :cond_0

    move v1, p2

    :goto_0
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    if-ge p1, v2, :cond_1

    move v0, p1

    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplaySizeLocked(II)V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "display_size_forced"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    monitor-exit v3

    return-void

    :cond_0
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    if-ge p1, v2, :cond_3

    move v1, p1

    :goto_2
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    if-ge p2, v2, :cond_4

    move v0, p2

    :goto_3
    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    goto :goto_3

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setHardKeyboardEnabled(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardEnabled:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setHoldScreenLocked(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy;->screenOnStartedLw()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy;->screenOnStoppedLw()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method public setIdleScreen(Landroid/content/ComponentName;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1}, Landroid/view/WindowManagerPolicy;->setIdleScreen(Landroid/content/ComponentName;)V

    return-void
.end method

.method public setInTouchMode(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setInputFilter(Lcom/android/server/wm/InputFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/InputManager;->setInputFilter(Lcom/android/server/wm/InputFilter;)V

    return-void
.end method

.method setInputMethodAnimLayerAdjustment(I)V
    .locals 5

    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodAnimLayerAdjustment:I

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_0

    iget v4, v2, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/2addr v4, p1

    iput v4, v2, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    if-lez v3, :cond_0

    add-int/lit8 v3, v3, -0x1

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    iget v4, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/2addr v4, p1

    iput v4, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    if-lez v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget v4, v2, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/2addr v4, p1

    iput v4, v2, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    goto :goto_1

    :cond_1
    return-void
.end method

.method setInsetsWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V
    .locals 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v3, p6}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    iput p3, v2, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    iget v3, v2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    const/high16 v5, 0x3f80

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    iget v5, v2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->scale(F)V

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    iget v5, v2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->scale(F)V

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    iget v5, v2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {v3, v5}, Landroid/graphics/Region;->scale(F)V

    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setLockScreenShowImmediately(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLockScreenShowImmediately = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1}, Landroid/view/WindowManagerPolicy;->setLockScreenShowImmediately(Z)V

    :cond_0
    return-void
.end method

.method public setNewConfiguration(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v1, "setNewConfiguration()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOnHardKeyboardStatusChangeListener(Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardStatusChangeListener:Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPointerSpeed(I)V
    .locals 2

    const-string v0, "android.permission.SET_POINTER_SPEED"

    const-string v1, "setPointerSpeed()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_POINTER_SPEED permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/InputManager;->setPointerSpeed(I)V

    return-void
.end method

.method public setShowKeyguard(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    if-eqz v0, :cond_1

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShowKeyguard("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1}, Landroid/view/WindowManagerPolicy;->setShowKeyguard(Z)V

    :cond_1
    return-void
.end method

.method public setStatusBarTouchMode(Z)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    const-string v2, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Process "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_0

    const-string v1, "stops"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " locking the status bar"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/WindowManagerService;->mLockStatusBarPid:I

    :goto_1
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/InputMonitor;->setStatusBarTouchModeLw(Z)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    const-string v1, "starts"

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mLockStatusBarPid:I

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V
    .locals 1

    const-string v0, "persist.sys.strictmode.visual"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method setTokenVisibilityLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZ)Z
    .locals 9

    const/4 v2, 0x0

    iget-boolean v7, p1, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    if-ne v7, p3, :cond_0

    if-nez p3, :cond_4

    const/4 v7, 0x1

    :goto_0
    iput-boolean v7, p1, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->sendAppVisibilityToClients()V

    :cond_0
    const/4 v7, 0x0

    iput-boolean v7, p1, Lcom/android/server/wm/AppWindowToken;->willBeHidden:Z

    iget-boolean v7, p1, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-ne v7, p3, :cond_d

    iget-object v7, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v7, -0x1

    if-eq p4, v7, :cond_2

    iget-object v7, p1, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    sget-object v8, Lcom/android/server/wm/WindowManagerService;->sDummyAnimation:Landroid/view/animation/Animation;

    if-ne v7, v8, :cond_1

    const/4 v7, 0x0

    iput-object v7, p1, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    :cond_1
    invoke-direct {p0, p1, p2, p4, p3}, Lcom/android/server/wm/WindowManagerService;->applyAnimationLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;IZ)Z

    const/4 v1, 0x1

    iget-object v7, p1, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v7, :cond_2

    const/4 v4, 0x1

    move v2, v4

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_a

    iget-object v7, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    iget-object v7, p1, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-ne v6, v7, :cond_5

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    goto :goto_0

    :cond_5
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v2, 0x1

    :cond_6
    if-eqz p3, :cond_8

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v7

    if-nez v7, :cond_3

    if-nez v4, :cond_7

    const/16 v7, 0x1001

    const/4 v8, 0x1

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/server/wm/WindowManagerService;->applyAnimationLocked(Lcom/android/server/wm/WindowState;IZ)Z

    :cond_7
    const/4 v1, 0x1

    goto :goto_2

    :cond_8
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v7

    if-eqz v7, :cond_3

    if-nez v4, :cond_9

    const/16 v7, 0x2002

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/server/wm/WindowManagerService;->applyAnimationLocked(Lcom/android/server/wm/WindowState;IZ)Z

    :cond_9
    const/4 v1, 0x1

    goto :goto_2

    :cond_a
    if-nez p3, :cond_f

    const/4 v7, 0x1

    :goto_3
    iput-boolean v7, p1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    iput-boolean v7, p1, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-nez p3, :cond_10

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {p0, p1, v7, v8}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V

    :cond_b
    :goto_4
    if-eqz v1, :cond_d

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v7}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    if-eqz p5, :cond_c

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    :cond_c
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    :cond_d
    iget-object v7, p1, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v7, :cond_e

    const/4 v2, 0x1

    :cond_e
    return v2

    :cond_f
    const/4 v7, 0x0

    goto :goto_3

    :cond_10
    iget-object v5, p1, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_b

    iget-boolean v7, v5, Lcom/android/server/wm/WindowState;->mDrawPending:Z

    if-nez v7, :cond_11

    iget-boolean v7, v5, Lcom/android/server/wm/WindowState;->mCommitDrawPending:Z

    if-eqz v7, :cond_b

    :cond_11
    const/4 v7, 0x0

    iput-boolean v7, v5, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    const/4 v7, 0x0

    iput-boolean v7, v5, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    goto :goto_4
.end method

.method setTransparentRegionWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/graphics/Region;)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/view/Surface;->openTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3, p3}, Landroid/view/Surface;->setTransparentRegionHint(Landroid/graphics/Region;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    :cond_0
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v3

    :try_start_4
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    throw v3

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method setWallpaperAnimLayerAdjustmentLocked(I)V
    .locals 5

    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_0
    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    iget-object v4, v2, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    iget-object v4, v2, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    iget v4, v3, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/2addr v4, p1

    iput v4, v3, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setWindowWallpaperPositionLocked(Lcom/android/server/wm/WindowState;FFFF)V
    .locals 1

    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_1

    :cond_0
    iput p2, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iput p3, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iput p4, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    iput p5, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V

    :cond_1
    return-void
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .locals 3

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mAllowBootMessages:Z

    if-nez v1, :cond_1

    monitor-exit v2

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    if-nez v1, :cond_3

    if-nez p2, :cond_2

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    const/4 v0, 0x1

    :cond_3
    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-eqz v1, :cond_4

    monitor-exit v2

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, p1, p2}, Landroid/view/WindowManagerPolicy;->showBootMessage(Ljava/lang/CharSequence;Z)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    goto :goto_0
.end method

.method public showIdleScreen()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->showIdleScreen()V

    return-void
.end method

.method public showKeyguardWithAnimation(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    if-eqz v0, :cond_1

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShowKeyguardWithAnimation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1}, Landroid/view/WindowManagerPolicy;->showKeyguardWithAnimation(Z)V

    :cond_1
    return-void
.end method

.method public showStrictModeViolation(Z)V
    .locals 8

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v4, v4, Lcom/android/server/wm/Session;->mPid:I

    if-ne v4, v2, :cond_0

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    :cond_1
    if-nez v1, :cond_2

    monitor-exit v5

    :goto_0
    return-void

    :cond_2
    invoke-static {}, Landroid/view/Surface;->openTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    if-nez v4, :cond_3

    new-instance v4, Lcom/android/server/wm/StrictModeFlash;

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    invoke-direct {v4, v6, v7}, Lcom/android/server/wm/StrictModeFlash;-><init>(Landroid/view/Display;Landroid/view/SurfaceSession;)V

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    invoke-virtual {v4, p1}, Lcom/android/server/wm/StrictModeFlash;->setVisibility(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    :catchall_1
    move-exception v4

    :try_start_3
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method showSurfaceRobustlyLocked(Lcom/android/server/wm/WindowState;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, p1, Lcom/android/server/wm/WindowState;->mSurfaceShown:Z

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->show()V

    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    iput-boolean v3, p1, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mTurnOnScreen:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure showing surface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v3, "show"

    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)Z

    move v1, v2

    goto :goto_0
.end method

.method public startAppFreezingScreen(Landroid/os/IBinder;I)V
    .locals 7

    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    const-string v4, "setAppFreezingScreen()"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    if-nez p2, :cond_1

    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy;->isScreenOnFully()Z

    move-result v3

    if-eqz v3, :cond_1

    monitor-exit v4

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-nez v3, :cond_3

    :cond_2
    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempted to freeze screen with non-existing app token: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_3
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    invoke-virtual {p0, v2, p2}, Lcom/android/server/wm/WindowManagerService;->startAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;I)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public startAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;I)V
    .locals 8

    const/16 v5, 0x11

    const/4 v7, 0x1

    iget-boolean v3, p1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v3, :cond_1

    iget-boolean v3, p1, Lcom/android/server/wm/AppWindowToken;->freezingScreen:Z

    if-nez v3, :cond_0

    iput-boolean v7, p1, Lcom/android/server/wm/AppWindowToken;->freezingScreen:Z

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    if-ne v3, v7, :cond_0

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(Z)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v3, v5}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    iget-object v3, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iput-boolean v7, v2, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public startViewServer(I)Z
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "android.permission.DUMP"

    const-string v3, "startViewServer"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x400

    if-lt p1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    invoke-virtual {v2}, Lcom/android/server/wm/ViewServer;->isRunning()Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    invoke-virtual {v2}, Lcom/android/server/wm/ViewServer;->start()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "WindowManager"

    const-string v3, "View server did not start"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v2, Lcom/android/server/wm/ViewServer;

    invoke-direct {v2, p0, p1}, Lcom/android/server/wm/ViewServer;-><init>(Lcom/android/server/wm/WindowManagerService;I)V

    iput-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    invoke-virtual {v2}, Lcom/android/server/wm/ViewServer;->start()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "WindowManager"

    const-string v3, "View server did not start"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public statusBarVisibilityChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller does not hold permission android.permission.STATUS_BAR"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mLastStatusBarVisibility:I

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1}, Landroid/view/WindowManagerPolicy;->adjustSystemUiVisibilityLw(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->updateStatusBarVisibilityLocked(I)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopAppFreezingScreen(Landroid/os/IBinder;Z)V
    .locals 5

    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    const-string v4, "setAppFreezingScreen()"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-nez v3, :cond_2

    :cond_1
    monitor-exit v4

    :goto_0
    return-void

    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3, p2}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public stopViewServer()Z
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "android.permission.DUMP"

    const-string v2, "stopViewServer"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    invoke-virtual {v0}, Lcom/android/server/wm/ViewServer;->stop()Z

    move-result v0

    goto :goto_0
.end method

.method public systemReady()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->systemReady()V

    return-void
.end method

.method public thawRotation()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "android.permission.SET_ORIENTATION"

    const-string v1, "thawRotation()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_ORIENTATION permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v1, 0x309

    invoke-interface {v0, v2, v1}, Landroid/view/WindowManagerPolicy;->setUserRotationMode(II)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(Z)V

    return-void
.end method

.method unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-boolean v4, p1, Lcom/android/server/wm/AppWindowToken;->freezingScreen:Z

    if-eqz v4, :cond_6

    iget-object v4, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v4, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    iget-boolean v4, v3, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-eqz v4, :cond_1

    iput-boolean v5, v3, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v4, :cond_0

    iget-boolean v4, v3, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-nez v4, :cond_0

    iput-boolean v6, v3, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    :cond_0
    const/4 v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-nez p3, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    iput-boolean v5, p1, Lcom/android/server/wm/AppWindowToken;->freezingScreen:Z

    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    :cond_4
    if-eqz p2, :cond_6

    if-eqz v2, :cond_5

    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    :cond_5
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V

    :cond_6
    return-void
.end method

.method public updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;
    .locals 5

    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    const-string v4, "updateOrientationFromAppTokens()"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method updateOrientationFromAppTokensLocked(Z)Z
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->computeForcedAppOrientationLocked()I

    move-result v3

    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mForcedAppOrientation:I

    if-eq v3, v4, :cond_0

    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mForcedAppOrientation:I

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v4, v3}, Landroid/view/WindowManagerPolicy;->setCurrentOrientationLw(I)V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->updateRotationUncheckedLocked(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public updateRotation(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(Z)V

    return-void
.end method

.method public updateRotationUnchecked(Z)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowManagerService;->updateRotationUncheckedLocked(Z)Z

    move-result v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration()V

    :cond_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public updateRotationUncheckedLocked(Z)Z
    .locals 10

    const/16 v9, 0xb

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget v6, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    if-lez v6, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v6}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v6

    if-nez v6, :cond_0

    :cond_2
    iget-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v7, p0, Lcom/android/server/wm/WindowManagerService;->mForcedAppOrientation:I

    iget v8, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-interface {v6, v7, v8}, Landroid/view/WindowManagerPolicy;->rotationForOrientationLw(II)I

    move-result v2

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v7, p0, Lcom/android/server/wm/WindowManagerService;->mForcedAppOrientation:I

    invoke-interface {v6, v7, v2}, Landroid/view/WindowManagerPolicy;->rotationHasCompatibleMetricsLw(II)Z

    move-result v6

    if-nez v6, :cond_8

    move v0, v5

    :goto_1
    iget v6, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    if-ne v6, v2, :cond_3

    iget-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mAltOrientation:Z

    if-eq v6, v0, :cond_0

    :cond_3
    iput v2, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mAltOrientation:Z

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v7, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-interface {v6, v7}, Landroid/view/WindowManagerPolicy;->setRotationLw(I)V

    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:Z

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v6, v9}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v7, v9}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0x7d0

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(Z)V

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    invoke-virtual {v6, v4, v2}, Lcom/android/server/wm/InputManager;->setDisplayOrientation(II)V

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    invoke-virtual {v4, v2}, Lcom/android/server/PowerManagerService;->setOrientation(I)V

    if-nez p1, :cond_4

    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    :cond_4
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v4}, Lcom/android/server/wm/ScreenRotationAnimation;->hasScreenshot()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->appNeedRotationAnimationLocked()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/ScreenRotationAnimation;->setRotation(I)V

    :cond_5
    const/4 v4, 0x0

    invoke-static {v4, v2}, Landroid/view/Surface;->setOrientation(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_6

    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    :cond_6
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->rebuildBlackFrame(Z)V

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_2
    if-ltz v1, :cond_a

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v4, :cond_7

    iput-boolean v5, v3, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    :cond_7
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_8
    move v0, v4

    goto :goto_1

    :catchall_0
    move-exception v4

    if-nez p1, :cond_9

    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    :cond_9
    throw v4

    :cond_a
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_3
    if-ltz v1, :cond_b

    :try_start_1
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/IRotationWatcher;

    invoke-interface {v4, v2}, Landroid/view/IRotationWatcher;->onRotationChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_b
    move v4, v5

    goto/16 :goto_0

    :catch_0
    move-exception v4

    goto :goto_4
.end method

.method updateStatusBarVisibilityLocked(I)V
    .locals 8

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    invoke-virtual {v6, p1}, Lcom/android/server/wm/InputManager;->setSystemUiVisibility(I)V

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    :try_start_0
    iget v1, v5, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    xor-int v2, v1, p1

    and-int/lit8 v2, v2, 0x3

    xor-int/lit8 v6, p1, -0x1

    and-int/2addr v2, v6

    xor-int/lit8 v6, v2, -0x1

    and-int/2addr v6, v1

    and-int v7, p1, v2

    or-int v4, v6, v7

    if-eq v4, v1, :cond_0

    iget v6, v5, Lcom/android/server/wm/WindowState;->mSeq:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/android/server/wm/WindowState;->mSeq:I

    iput v4, v5, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    :cond_0
    if-ne v4, v1, :cond_1

    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v6, v6, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    if-eqz v6, :cond_2

    :cond_1
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget v7, v5, Lcom/android/server/wm/WindowState;->mSeq:I

    invoke-interface {v6, v7, p1, v4, v2}, Landroid/view/IWindow;->dispatchSystemUiVisibilityChanged(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void

    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V
    .locals 11

    const/4 v9, 0x0

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_1

    iget v8, v5, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_6

    iget v8, v5, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iput v8, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperX:F

    :cond_0
    :goto_0
    iget v8, v5, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_7

    iget v8, v5, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iput v8, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperY:F

    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_2
    if-lez v0, :cond_8

    add-int/lit8 v0, v0, -0x1

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowToken;

    iget-object v8, v6, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_3
    :goto_2
    if-lez v1, :cond_2

    add-int/lit8 v1, v1, -0x1

    iget-object v8, v6, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v7, v3, v2, p2}, Lcom/android/server/wm/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;IIZ)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->computeShownFrameLocked()V

    iget v8, v7, Lcom/android/server/wm/WindowState;->mSurfaceX:F

    iget-object v9, v7, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    cmpl-float v8, v8, v9

    if-nez v8, :cond_4

    iget v8, v7, Lcom/android/server/wm/WindowState;->mSurfaceY:F

    iget-object v9, v7, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_5

    :cond_4
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    :try_start_0
    iget-object v8, v7, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    iput v8, v7, Lcom/android/server/wm/WindowState;->mSurfaceX:F

    iget-object v8, v7, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    iput v8, v7, Lcom/android/server/wm/WindowState;->mSurfaceY:F

    iget-object v8, v7, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    iget-object v9, v7, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    invoke-virtual {v8, v9, v10}, Landroid/view/Surface;->setPosition(FF)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    :cond_5
    const/4 p2, 0x0

    goto :goto_2

    :cond_6
    iget v8, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_0

    iget v8, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iput v8, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperX:F

    goto :goto_0

    :cond_7
    iget v8, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_1

    iget v8, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iput v8, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperY:F

    goto :goto_1

    :catch_0
    move-exception v4

    const-string v8, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error positioning surface of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " pos=("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_8
    return-void
.end method

.method updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;IIZ)Z
    .locals 19

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperX:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_9

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperX:F

    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperXStep:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperXStep:F

    move/from16 v16, v0

    :goto_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    sub-int v9, v2, p2

    if-lez v9, :cond_b

    int-to-float v2, v9

    mul-float/2addr v2, v15

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v2, v2

    neg-int v11, v2

    :goto_2
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    if-eq v2, v11, :cond_c

    const/4 v10, 0x1

    :goto_3
    if-eqz v10, :cond_0

    move-object/from16 v0, p1

    iput v11, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    :cond_0
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v2, v2, v15

    if-nez v2, :cond_1

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v2, v2, v16

    if-eqz v2, :cond_2

    :cond_1
    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    const/4 v12, 0x1

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperY:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperY:F

    move/from16 v17, v0

    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperYStep:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperYStep:F

    move/from16 v18, v0

    :goto_5
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    sub-int v8, v2, p3

    if-lez v8, :cond_f

    int-to-float v2, v8

    mul-float v2, v2, v17

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v2, v2

    neg-int v11, v2

    :goto_6
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    if-eq v2, v11, :cond_3

    const/4 v10, 0x1

    move-object/from16 v0, p1

    iput v11, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    :cond_3
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v2, v2, v17

    if-nez v2, :cond_4

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v2, v2, v18

    if-eqz v2, :cond_5

    :cond_4
    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    const/4 v12, 0x1

    :cond_5
    if-eqz v12, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_8

    if-eqz p4, :cond_6

    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    :cond_6
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    move/from16 v7, p4

    invoke-interface/range {v2 .. v7}, Landroid/view/IWindow;->dispatchWallpaperOffsets(FFFFZ)V

    if-eqz p4, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperTimeoutTime:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    cmp-long v2, v2, v13

    if-gez v2, :cond_7

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    const-wide/16 v3, 0x96

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_7
    const-wide/16 v2, 0x96

    add-long/2addr v2, v13

    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_7

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Timeout waiting for wallpaper to offset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperTimeoutTime:J

    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_8
    :goto_8
    return v10

    :cond_9
    const/high16 v15, 0x3f00

    goto/16 :goto_0

    :cond_a
    const/high16 v16, -0x4080

    goto/16 :goto_1

    :cond_b
    const/4 v11, 0x0

    goto/16 :goto_2

    :cond_c
    const/4 v10, 0x0

    goto/16 :goto_3

    :cond_d
    const/high16 v17, 0x3f00

    goto/16 :goto_4

    :cond_e
    const/high16 v18, -0x4080

    goto/16 :goto_5

    :cond_f
    const/4 v11, 0x0

    goto/16 :goto_6

    :catch_0
    move-exception v2

    goto :goto_8

    :catch_1
    move-exception v2

    goto :goto_7
.end method

.method updateWallpaperVisibilityLocked()V
    .locals 10

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v7}, Lcom/android/server/wm/WindowManagerService;->isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z

    move-result v5

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_0
    if-lez v0, :cond_5

    add-int/lit8 v0, v0, -0x1

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowToken;

    iget-boolean v7, v4, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-ne v7, v5, :cond_1

    if-nez v5, :cond_4

    move v7, v8

    :goto_0
    iput-boolean v7, v4, Lcom/android/server/wm/WindowToken;->hidden:Z

    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    :cond_1
    iget-object v7, v4, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_2
    :goto_1
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    iget-object v7, v4, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_3

    invoke-virtual {p0, v6, v3, v2, v9}, Lcom/android/server/wm/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;IIZ)Z

    :cond_3
    iget-boolean v7, v6, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    if-eq v7, v5, :cond_2

    iput-boolean v5, v6, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    :try_start_0
    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v7, v5}, Landroid/view/IWindow;->dispatchAppVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v7

    goto :goto_1

    :cond_4
    move v7, v9

    goto :goto_0

    :cond_5
    return-void
.end method

.method public validateAppTokens(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_0
    if-ltz v1, :cond_2

    if-ltz v0, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    iget-boolean v3, v2, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    if-eq v3, v4, :cond_1

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tokens out of sync: external is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " @ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", internal is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " @ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ltz v1, :cond_3

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "External token not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " @ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-ltz v0, :cond_5

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    iget-boolean v3, v2, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-nez v3, :cond_4

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid internal token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " @ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method viewServerGetFocusedWindow(Ljava/net/Socket;)Z
    .locals 8

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x0

    :cond_0
    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x1

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-direct {v6, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v7, 0x2000

    invoke-direct {v4, v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_2

    :try_start_1
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const/16 v6, 0x20

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->write(I)V

    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v6}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    :cond_2
    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->write(I)V

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v4, :cond_4

    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v5, 0x0

    move-object v3, v4

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_1
    const/4 v5, 0x0

    if-eqz v3, :cond_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    const/4 v5, 0x0

    goto :goto_0

    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v3, :cond_3

    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_3
    :goto_3
    throw v6

    :catch_3
    move-exception v1

    const/4 v5, 0x0

    goto :goto_3

    :catchall_1
    move-exception v6

    move-object v3, v4

    goto :goto_2

    :catch_4
    move-exception v1

    move-object v3, v4

    goto :goto_1

    :cond_4
    move-object v3, v4

    goto :goto_0
.end method

.method viewServerListWindows(Ljava/net/Socket;)Z
    .locals 12

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v6, 0x0

    :cond_0
    :goto_0
    return v6

    :cond_1
    const/4 v6, 0x1

    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v10

    :try_start_0
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Lcom/android/server/wm/WindowState;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/android/server/wm/WindowState;

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/OutputStreamWriter;

    invoke-direct {v9, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v10, 0x2000

    invoke-direct {v5, v9, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    array-length v1, v8

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    aget-object v7, v8, v3

    invoke-static {v7}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const/16 v9, 0x20

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->write(I)V

    iget-object v9, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v9}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const/16 v9, 0xa

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->write(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catchall_0
    move-exception v9

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v9

    :cond_2
    :try_start_4
    const-string v9, "DONE.\n"

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    if-eqz v5, :cond_4

    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    move-object v4, v5

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v6, 0x0

    move-object v4, v5

    goto :goto_0

    :catch_1
    move-exception v2

    :goto_2
    const/4 v6, 0x0

    if-eqz v4, :cond_0

    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    :catch_2
    move-exception v2

    const/4 v6, 0x0

    goto :goto_0

    :catchall_1
    move-exception v9

    :goto_3
    if-eqz v4, :cond_3

    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_3
    :goto_4
    throw v9

    :catch_3
    move-exception v2

    const/4 v6, 0x0

    goto :goto_4

    :catchall_2
    move-exception v9

    move-object v4, v5

    goto :goto_3

    :catch_4
    move-exception v2

    move-object v4, v5

    goto :goto_2

    :cond_4
    move-object v4, v5

    goto :goto_0
.end method

.method viewServerWindowCommand(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 15

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v10, 0x0

    :cond_0
    :goto_0
    return v10

    :cond_1
    const/4 v10, 0x1

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/16 v12, 0x20

    :try_start_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v12, -0x1

    if-ne v6, v12, :cond_2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v6

    :cond_2
    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v12, 0x10

    invoke-static {v2, v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v12

    long-to-int v5, v12

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v6, v12, :cond_5

    add-int/lit8 v12, v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    :goto_1
    invoke-direct {p0, v5}, Lcom/android/server/wm/WindowManagerService;->findWindow(I)Lcom/android/server/wm/WindowState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v11

    if-nez v11, :cond_6

    const/4 v10, 0x0

    if-eqz v3, :cond_3

    throw v3

    :cond_3
    if-eqz v9, :cond_4

    throw v9

    :cond_4
    if-eqz v7, :cond_0

    :try_start_1
    throw v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v12

    goto :goto_0

    :cond_5
    :try_start_2
    const-string p3, ""

    goto :goto_1

    :cond_6
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    const-string v12, "android.view.IWindow"

    invoke-virtual {v3, v12}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->fromSocket(Ljava/net/Socket;)Landroid/os/ParcelFileDescriptor;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v3, v13}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    iget-object v12, v11, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v12}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-interface {v1, v12, v3, v9, v13}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v9}, Landroid/os/Parcel;->readException()V

    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v12

    if-nez v12, :cond_7

    new-instance v8, Ljava/io/BufferedWriter;

    new-instance v12, Ljava/io/OutputStreamWriter;

    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v8, v12}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    const-string v12, "DONE\n"

    invoke-virtual {v8, v12}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/BufferedWriter;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    move-object v7, v8

    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    :cond_8
    if-eqz v9, :cond_9

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    :cond_9
    if-eqz v7, :cond_0

    :try_start_4
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v12

    goto/16 :goto_0

    :catch_2
    move-exception v4

    :goto_2
    :try_start_5
    const-string v12, "WindowManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Could not send command "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " with parameters "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v10, 0x0

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    :cond_a
    if-eqz v9, :cond_b

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    :cond_b
    if-eqz v7, :cond_0

    :try_start_6
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v12

    goto/16 :goto_0

    :catchall_0
    move-exception v12

    :goto_3
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    :cond_c
    if-eqz v9, :cond_d

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    :cond_d
    if-eqz v7, :cond_e

    :try_start_7
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_e
    :goto_4
    throw v12

    :catch_4
    move-exception v13

    goto :goto_4

    :catchall_1
    move-exception v12

    move-object v7, v8

    goto :goto_3

    :catch_5
    move-exception v4

    move-object v7, v8

    goto :goto_2
.end method

.method public waitForWindowDrawn(Landroid/os/IBinder;Landroid/os/IRemoteCallback;)V
    .locals 7

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    const/4 v3, 0x0

    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {p0, v3, p1, v5}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v2, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v5, 0x18

    invoke-virtual {v3, v5, v1}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v5, 0x7d0

    invoke-virtual {v3, v0, v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->checkDrawnWindowsLocked()V

    :cond_0
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public watchRotation(Landroid/view/IRotationWatcher;)I
    .locals 5

    invoke-interface {p1}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v0, Lcom/android/server/wm/WindowManagerService$5;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/WindowManagerService$5;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    invoke-interface {p1}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    monitor-exit v3

    return v2

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method final windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested window "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    throw v0

    :cond_0
    const-string v3, "WindowManager"

    const-string v4, "Failed looking up window"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    if-eqz p1, :cond_1

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    if-eq v3, p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested window "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is in session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", not "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_3

    throw v0

    :cond_3
    const-string v3, "WindowManager"

    const-string v4, "Failed looking up window"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    goto :goto_0
.end method

.method final windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;
    .locals 1

    invoke-interface {p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    return-object v0
.end method
