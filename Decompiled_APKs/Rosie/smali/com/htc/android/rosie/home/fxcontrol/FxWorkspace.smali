.class public Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;
.super Lcom/htc/fusion/fx/FxView;
.source "FxWorkspace.java"

# interfaces
.implements Lcom/htc/launcher/Launcher$TiltObserver;
.implements Lcom/htc/launcher/Workspace$OnScrollStateChangedListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/htc/launcher/Workspace$OnSlideListener;
.implements Lcom/htc/launcher/DragController$DragListener;
.implements Lcom/htc/launcher/DesktopItemController$FloatingEnv;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/htc/launcher/DragSource;
.implements Lcom/htc/android/rosie/home/fxcontrol/NavbarButton$IButtonListener;
.implements Lcom/htc/launcher/PagesManager$OnPagesChangedListener;
.implements Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$INavbarButtonLongTabListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$INavbarStickyModeHandler;,
        Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavBarButtonHandler;,
        Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IEditModeListener;,
        Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$UiHandler;,
        Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;,
        Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IUnlockAnimator;,
        Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IUnlockAnimationListener;,
        Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;,
        Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxLeapPlayer;,
        Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxLeapListener;,
        Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$PageLeapControl;,
        Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxPageSinkControl;,
        Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;,
        Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;,
        Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FloatingItem;,
        Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$SnapInfo;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ADD_CONTETN_TIMELINE_FX_BG:Ljava/lang/String; = "timeline.NavBar_add_bg"

.field private static final ADD_CONTETN_TIMELINE_FX_NAME:Ljava/lang/String; = "timeline.NavBar_add_content"

.field private static final ADD_MIDDLE_PRESS_BUTTON_FX_NAME:Ljava/lang/String; = "btn.add_middle_press"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG_TOUCH:Z = false

.field private static final DELAY_FOR_BTN_COMPLETE:I = 0x122

.field private static final EDIT:I = 0x2

.field private static final HIDE_LEAP_HEADER_ADD_BAR:Ljava/lang/String; = "edit_header_off"

.field private static final HIDE_LEAP_HEADER_REMOVE_BAR:Ljava/lang/String; = "remove_header_off"

.field private static final HIDE_NAV_EDIT_BAR:Ljava/lang/String; = "recent_apps_off"

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final LONGCLICK_FOR_DRAG:I = 0x4

.field private static final MARKER_ADD_PAGE:Ljava/lang/String; = "Add_page"

.field private static final MARKER_DISABLE:Ljava/lang/String; = "disable"

.field private static final MARKER_HIGHLIGHT:Ljava/lang/String; = "red"

.field private static final MIDDLE_BTN_POSITION_BOTTOM:I = 0x3

.field private static final MIDDLE_BTN_POSITION_LEFT:I = 0x0

.field private static final MIDDLE_BTN_POSITION_RIGHT:I = 0x2

.field private static final MIDDLE_BTN_POSITION_TOP:I = 0x1

.field static final MODE_LEAP:I = 0x1

.field static final MODE_LEAP_REARRANGE:I = 0x2

.field static final MODE_NONE:I = -0x1

.field static final MODE_SCROLL:I = 0x0

.field private static final NONDRAG:I = 0x0

.field static final OP_ALL:I = 0x0

.field static final OP_CURRENT_BESIDE:I = 0x2

.field static final OP_CURRENT_ONLY:I = 0x1

.field private static final PROFILE_ORIENTATION:Z = false

.field private static final SHOW_LEAP_HEADER_ADD_BAR:Ljava/lang/String; = "edit_header_on"

.field private static final SHOW_LEAP_HEADER_REMOVE_BAR:Ljava/lang/String; = "remove_header_on"

.field private static final SHOW_NAV_EDIT_BAR:Ljava/lang/String; = "recent_apps_on"

.field private static final localLOGD:Z

.field private static sFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

.field private static sIsPortrait:Z

.field static final sModel:Lcom/htc/launcher/LauncherModel;


# instance fields
.field private mAppInfoForDropBackButtonBar:Lcom/htc/launcher/ApplicationInfo;

.field private mApplicationInfoSaved:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBeginDirection:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

.field public mButtonBarHandler:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;

.field private mButtonbarCount:[Z

.field private mCellLeftPadding:I

.field private mCellTopPadding:I

.field private mContext:Landroid/content/Context;

.field private mCurrentHomeIndex:I

.field private mCurrentPagesCount:I

.field private mCurrentScreen:I

.field private mCurrentScrollX:I

.field private mDidRelinquishScreenCache:Z

.field private mDirection:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

.field private mDragStartRunnable:Ljava/lang/Runnable;

.field private mDragger:Lcom/htc/launcher/DragController;

.field private mEvStartX:I

.field private mEvStartY:I

.field private mFloatingBounds:Landroid/graphics/RectF;

.field private mFloatingScreenItem:Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;

.field private mFocusRect:Landroid/graphics/Rect;

.field private mFrozen:Z

.field private mHitXY:[I

.field private mIndexOfButtonbarTouch:I

.field private mIndexOfButtonbarTouchStart:I

.field private mIsFlingMode:Z

.field private mIsLeapMode:Z

.field private mIsLongClick:Z

.field private mIsPreviousOrientationPortrait:Z

.field private mIsScrolling:Z

.field private mIsStartDrag:Z

.field mLastMotionDownX:F

.field mLastMotionDownY:F

.field private mLastScrollX:I

.field private mLastZoomRatio:F

.field private mLauncher:Lcom/htc/launcher/Launcher;

.field private mLeapListener:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxLeapListener;

.field private mLeapPlayer:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxLeapPlayer;

.field private mMiddleBtnCompleteRunnable:Ljava/lang/Runnable;

.field private mMode:I

.field private mMotionEvent:Landroid/view/MotionEvent;

.field private mNextScreen:I

.field private mOffsetX:I

.field private mOffsetY:I

.field private mPrevScreen:I

.field private mQuickScrolling:Z

.field private mSinkControl:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxPageSinkControl;

.field private mSlideSceneVisibility:Z

.field private mSnapInfo:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$SnapInfo;

.field private mSwitchModeLock:Ljava/lang/Object;

.field private mTapDetector:Landroid/view/GestureDetector;

.field private mTiltValue:F

.field private mTimeOfButtonBarLongclick:I

.field private mTouchByDelegate:Z

.field mUiHandler:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$UiHandler;

.field private mUnlockAnimationListener:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IUnlockAnimationListener;

.field private mWorkspaceTouchListener:Landroid/view/View$OnTouchListener;

.field private mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

.field private mZoomRatio:F

.field private m_NavBarButtonHandler:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavBarButtonHandler;

.field private m_bIsHideFxSurface:Z

.field private m_nDragViewOffsetX:I

.field private m_nDragViewOffsetY:I

.field private m_nFxShortcutButtonDragOffsetX:I

.field private m_nFxShortcutButtonDragOffsetY:I

.field private m_strScopeEmpty:[Ljava/lang/String;

.field private m_strScopeFull:[Ljava/lang/String;

.field private m_strScopeLauncherBarAccept:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    const-class v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->$assertionsDisabled:Z

    .line 75
    const-class v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    .line 90
    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    sput-boolean v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->localLOGD:Z

    .line 91
    sput-boolean v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->DEBUG_TOUCH:Z

    .line 120
    new-instance v0, Lcom/htc/launcher/LauncherModel;

    invoke-direct {v0}, Lcom/htc/launcher/LauncherModel;-><init>()V

    sput-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->sModel:Lcom/htc/launcher/LauncherModel;

    return-void

    :cond_0
    move v0, v1

    .line 71
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 199
    invoke-direct {p0, p1}, Lcom/htc/fusion/fx/FxView;-><init>(Landroid/content/Context;)V

    .line 107
    iput-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIsScrolling:Z

    .line 111
    iput-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIsStartDrag:Z

    .line 118
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$SnapInfo;

    invoke-direct {v0, p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$SnapInfo;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mSnapInfo:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$SnapInfo;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mApplicationInfoSaved:Ljava/util/ArrayList;

    .line 125
    iput-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIsLongClick:Z

    .line 126
    iput v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mTimeOfButtonBarLongclick:I

    .line 136
    const/4 v0, 0x3

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mButtonbarCount:[Z

    .line 138
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "full"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->m_strScopeFull:[Ljava/lang/String;

    .line 139
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "empty"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->m_strScopeEmpty:[Ljava/lang/String;

    .line 140
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "accept"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->m_strScopeLauncherBarAccept:[Ljava/lang/String;

    .line 147
    iput-boolean v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIsPreviousOrientationPortrait:Z

    .line 162
    iput-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIsLeapMode:Z

    .line 163
    iput-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mQuickScrolling:Z

    .line 165
    invoke-static {}, Lcom/htc/launcher/PagesManager;->instance()Lcom/htc/launcher/PagesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/PagesManager;->getCurrentPagesCount()I

    move-result v0

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentPagesCount:I

    .line 166
    invoke-static {}, Lcom/htc/launcher/PagesManager;->instance()Lcom/htc/launcher/PagesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/PagesManager;->getCurrentHomeIndex()I

    move-result v0

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentHomeIndex:I

    .line 167
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentHomeIndex:I

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentScreen:I

    .line 177
    iput-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->m_bIsHideFxSurface:Z

    .line 204
    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;->NONE:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mBeginDirection:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

    .line 205
    iput v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentScrollX:I

    .line 206
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentScrollX:I

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLastScrollX:I

    .line 207
    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;->NONE:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mDirection:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

    .line 403
    iput-boolean v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mSlideSceneVisibility:Z

    .line 418
    iput-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mFrozen:Z

    .line 459
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mMode:I

    .line 478
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mSwitchModeLock:Ljava/lang/Object;

    .line 697
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mFloatingBounds:Landroid/graphics/RectF;

    .line 1239
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mHitXY:[I

    .line 1240
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mFocusRect:Landroid/graphics/Rect;

    .line 1269
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mZoomRatio:F

    .line 1271
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mZoomRatio:F

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLastZoomRatio:F

    .line 1273
    iput-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIsFlingMode:Z

    .line 2204
    iput-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mDragStartRunnable:Ljava/lang/Runnable;

    .line 3001
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$UiHandler;

    invoke-direct {v0, p0, v4}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$UiHandler;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$1;)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mUiHandler:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$UiHandler;

    .line 3002
    iput-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mMiddleBtnCompleteRunnable:Ljava/lang/Runnable;

    .line 3092
    iput-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mDidRelinquishScreenCache:Z

    .line 200
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mContext:Landroid/content/Context;

    .line 201
    invoke-direct {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->initFxWorkspace()V

    .line 202
    return-void

    .line 136
    nop

    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 186
    invoke-direct {p0, p1, p2}, Lcom/htc/fusion/fx/FxView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    iput-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIsScrolling:Z

    .line 111
    iput-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIsStartDrag:Z

    .line 118
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$SnapInfo;

    invoke-direct {v0, p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$SnapInfo;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mSnapInfo:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$SnapInfo;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mApplicationInfoSaved:Ljava/util/ArrayList;

    .line 125
    iput-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIsLongClick:Z

    .line 126
    iput v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mTimeOfButtonBarLongclick:I

    .line 136
    const/4 v0, 0x3

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mButtonbarCount:[Z

    .line 138
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "full"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->m_strScopeFull:[Ljava/lang/String;

    .line 139
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "empty"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->m_strScopeEmpty:[Ljava/lang/String;

    .line 140
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "accept"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->m_strScopeLauncherBarAccept:[Ljava/lang/String;

    .line 147
    iput-boolean v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIsPreviousOrientationPortrait:Z

    .line 162
    iput-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIsLeapMode:Z

    .line 163
    iput-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mQuickScrolling:Z

    .line 165
    invoke-static {}, Lcom/htc/launcher/PagesManager;->instance()Lcom/htc/launcher/PagesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/PagesManager;->getCurrentPagesCount()I

    move-result v0

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentPagesCount:I

    .line 166
    invoke-static {}, Lcom/htc/launcher/PagesManager;->instance()Lcom/htc/launcher/PagesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/PagesManager;->getCurrentHomeIndex()I

    move-result v0

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentHomeIndex:I

    .line 167
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentHomeIndex:I

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentScreen:I

    .line 177
    iput-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->m_bIsHideFxSurface:Z

    .line 204
    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;->NONE:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mBeginDirection:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

    .line 205
    iput v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentScrollX:I

    .line 206
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentScrollX:I

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLastScrollX:I

    .line 207
    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;->NONE:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mDirection:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

    .line 403
    iput-boolean v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mSlideSceneVisibility:Z

    .line 418
    iput-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mFrozen:Z

    .line 459
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mMode:I

    .line 478
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mSwitchModeLock:Ljava/lang/Object;

    .line 697
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mFloatingBounds:Landroid/graphics/RectF;

    .line 1239
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mHitXY:[I

    .line 1240
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mFocusRect:Landroid/graphics/Rect;

    .line 1269
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mZoomRatio:F

    .line 1271
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mZoomRatio:F

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLastZoomRatio:F

    .line 1273
    iput-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIsFlingMode:Z

    .line 2204
    iput-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mDragStartRunnable:Ljava/lang/Runnable;

    .line 3001
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$UiHandler;

    invoke-direct {v0, p0, v4}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$UiHandler;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$1;)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mUiHandler:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$UiHandler;

    .line 3002
    iput-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mMiddleBtnCompleteRunnable:Ljava/lang/Runnable;

    .line 3092
    iput-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mDidRelinquishScreenCache:Z

    .line 187
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mContext:Landroid/content/Context;

    .line 188
    invoke-direct {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->initFxWorkspace()V

    .line 189
    return-void

    .line 136
    nop

    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 180
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/fusion/fx/FxView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    iput-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIsScrolling:Z

    .line 111
    iput-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIsStartDrag:Z

    .line 118
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$SnapInfo;

    invoke-direct {v0, p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$SnapInfo;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mSnapInfo:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$SnapInfo;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mApplicationInfoSaved:Ljava/util/ArrayList;

    .line 125
    iput-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIsLongClick:Z

    .line 126
    iput v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mTimeOfButtonBarLongclick:I

    .line 136
    const/4 v0, 0x3

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mButtonbarCount:[Z

    .line 138
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "full"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->m_strScopeFull:[Ljava/lang/String;

    .line 139
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "empty"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->m_strScopeEmpty:[Ljava/lang/String;

    .line 140
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "accept"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->m_strScopeLauncherBarAccept:[Ljava/lang/String;

    .line 147
    iput-boolean v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIsPreviousOrientationPortrait:Z

    .line 162
    iput-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIsLeapMode:Z

    .line 163
    iput-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mQuickScrolling:Z

    .line 165
    invoke-static {}, Lcom/htc/launcher/PagesManager;->instance()Lcom/htc/launcher/PagesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/PagesManager;->getCurrentPagesCount()I

    move-result v0

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentPagesCount:I

    .line 166
    invoke-static {}, Lcom/htc/launcher/PagesManager;->instance()Lcom/htc/launcher/PagesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/PagesManager;->getCurrentHomeIndex()I

    move-result v0

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentHomeIndex:I

    .line 167
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentHomeIndex:I

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentScreen:I

    .line 177
    iput-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->m_bIsHideFxSurface:Z

    .line 204
    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;->NONE:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mBeginDirection:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

    .line 205
    iput v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentScrollX:I

    .line 206
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentScrollX:I

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLastScrollX:I

    .line 207
    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;->NONE:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mDirection:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

    .line 403
    iput-boolean v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mSlideSceneVisibility:Z

    .line 418
    iput-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mFrozen:Z

    .line 459
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mMode:I

    .line 478
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mSwitchModeLock:Ljava/lang/Object;

    .line 697
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mFloatingBounds:Landroid/graphics/RectF;

    .line 1239
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mHitXY:[I

    .line 1240
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mFocusRect:Landroid/graphics/Rect;

    .line 1269
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mZoomRatio:F

    .line 1271
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mZoomRatio:F

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLastZoomRatio:F

    .line 1273
    iput-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIsFlingMode:Z

    .line 2204
    iput-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mDragStartRunnable:Ljava/lang/Runnable;

    .line 3001
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$UiHandler;

    invoke-direct {v0, p0, v4}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$UiHandler;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$1;)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mUiHandler:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$UiHandler;

    .line 3002
    iput-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mMiddleBtnCompleteRunnable:Ljava/lang/Runnable;

    .line 3092
    iput-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mDidRelinquishScreenCache:Z

    .line 181
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mContext:Landroid/content/Context;

    .line 182
    invoke-direct {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->initFxWorkspace()V

    .line 183
    return-void

    .line 136
    nop

    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;ZIZ)V
    .locals 5
    .parameter "context"
    .parameter "lpBroadcast"
    .parameter "lpPort"
    .parameter "quitOnDisconnect"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 193
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/fusion/fx/FxView;-><init>(Landroid/content/Context;ZIZ)V

    .line 107
    iput-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIsScrolling:Z

    .line 111
    iput-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIsStartDrag:Z

    .line 118
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$SnapInfo;

    invoke-direct {v0, p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$SnapInfo;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mSnapInfo:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$SnapInfo;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mApplicationInfoSaved:Ljava/util/ArrayList;

    .line 125
    iput-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIsLongClick:Z

    .line 126
    iput v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mTimeOfButtonBarLongclick:I

    .line 136
    const/4 v0, 0x3

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mButtonbarCount:[Z

    .line 138
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "full"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->m_strScopeFull:[Ljava/lang/String;

    .line 139
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "empty"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->m_strScopeEmpty:[Ljava/lang/String;

    .line 140
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "accept"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->m_strScopeLauncherBarAccept:[Ljava/lang/String;

    .line 147
    iput-boolean v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIsPreviousOrientationPortrait:Z

    .line 162
    iput-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIsLeapMode:Z

    .line 163
    iput-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mQuickScrolling:Z

    .line 165
    invoke-static {}, Lcom/htc/launcher/PagesManager;->instance()Lcom/htc/launcher/PagesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/PagesManager;->getCurrentPagesCount()I

    move-result v0

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentPagesCount:I

    .line 166
    invoke-static {}, Lcom/htc/launcher/PagesManager;->instance()Lcom/htc/launcher/PagesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/PagesManager;->getCurrentHomeIndex()I

    move-result v0

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentHomeIndex:I

    .line 167
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentHomeIndex:I

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentScreen:I

    .line 177
    iput-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->m_bIsHideFxSurface:Z

    .line 204
    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;->NONE:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mBeginDirection:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

    .line 205
    iput v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentScrollX:I

    .line 206
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentScrollX:I

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLastScrollX:I

    .line 207
    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;->NONE:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mDirection:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

    .line 403
    iput-boolean v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mSlideSceneVisibility:Z

    .line 418
    iput-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mFrozen:Z

    .line 459
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mMode:I

    .line 478
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mSwitchModeLock:Ljava/lang/Object;

    .line 697
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mFloatingBounds:Landroid/graphics/RectF;

    .line 1239
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mHitXY:[I

    .line 1240
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mFocusRect:Landroid/graphics/Rect;

    .line 1269
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mZoomRatio:F

    .line 1271
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mZoomRatio:F

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLastZoomRatio:F

    .line 1273
    iput-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIsFlingMode:Z

    .line 2204
    iput-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mDragStartRunnable:Ljava/lang/Runnable;

    .line 3001
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$UiHandler;

    invoke-direct {v0, p0, v4}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$UiHandler;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$1;)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mUiHandler:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$UiHandler;

    .line 3002
    iput-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mMiddleBtnCompleteRunnable:Ljava/lang/Runnable;

    .line 3092
    iput-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mDidRelinquishScreenCache:Z

    .line 194
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mContext:Landroid/content/Context;

    .line 195
    invoke-direct {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->initFxWorkspace()V

    .line 196
    return-void

    .line 136
    nop

    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 71
    sget-boolean v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->localLOGD:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->fromLeapToLeapRearrange()V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->fromLeapRearrangeToLeap()V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/launcher/Launcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLauncher:Lcom/htc/launcher/Launcher;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mDragStartRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mButtonbarCount:[Z

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mApplicationInfoSaved:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->m_strScopeFull:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->m_strScopeEmpty:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mEvStartX:I

    return v0
.end method

.method static synthetic access$2300(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mEvStartY:I

    return v0
.end method

.method static synthetic access$2600(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentPagesCount:I

    return v0
.end method

.method static synthetic access$2700(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIsStartDrag:Z

    return v0
.end method

.method static synthetic access$300()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->sFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->shouldFreezeScreens()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mFrozen:Z

    return v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 71
    sget-boolean v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->DEBUG_TOUCH:Z

    return v0
.end method

.method static synthetic access$800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIsLeapMode:Z

    return v0
.end method

.method static synthetic access$902(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIsLeapMode:Z

    return p1
.end method

.method public static batchAttachScreens(Ljava/util/List;Ljava/util/List;)V
    .locals 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/fusion/fx/controls/FxSceneContainer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1543
    .local p0, containers:Ljava/util/List;,"Ljava/util/List<Lcom/htc/fusion/fx/controls/FxSceneContainer;>;"
    .local p1, screens:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    if-eq v7, v8, :cond_1

    .line 1567
    :cond_0
    :goto_0
    return-void

    .line 1549
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1551
    .local v0, N:I
    new-array v2, v0, [Lcom/htc/fusion/fx/FxScene;

    .line 1552
    .local v2, fxScenes:[Lcom/htc/fusion/fx/FxScene;
    new-array v1, v0, [Lcom/htc/fusion/fx/controls/FxSceneContainer;

    .line 1553
    .local v1, fxSceneContainers:[Lcom/htc/fusion/fx/controls/FxSceneContainer;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_3

    .line 1554
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;

    .line 1555
    .local v4, screen:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;
    iget-object v7, v4, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFxParent:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    if-eqz v7, :cond_2

    .line 1556
    sget-object v7, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "screen "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " already have a parent"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    :cond_2
    iget-object v7, v4, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFxScreen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    invoke-virtual {v7}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v7

    aput-object v7, v2, v3

    .line 1560
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/fusion/fx/controls/FxSceneContainer;

    aput-object v7, v1, v3

    .line 1561
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/fusion/fx/controls/FxSceneContainer;

    iput-object v7, v4, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFxParent:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    .line 1553
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1563
    .end local v4           #screen:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1564
    .local v5, start:J
    invoke-static {v1, v2}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->batchSetScenes([Lcom/htc/fusion/fx/controls/FxSceneContainer;[Lcom/htc/fusion/fx/FxScene;)V

    .line 1565
    sget-boolean v7, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->localLOGD:Z

    if-eqz v7, :cond_4

    const-string v7, "PREF"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "batchSetScenes "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v5

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1566
    :cond_4
    sget-boolean v7, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->localLOGD:Z

    if-eqz v7, :cond_0

    sget-object v7, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    const-string v8, "batchAttachScreens"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static batchDetachScreens(Ljava/util/List;)V
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1519
    .local p0, screens:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 1540
    :cond_0
    :goto_0
    return-void

    .line 1522
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1523
    .local v3, parentList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/fusion/fx/controls/FxSceneContainer;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_3

    .line 1524
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;

    .line 1525
    .local v5, screen:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;
    iget-object v8, v5, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFxParent:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    if-eqz v8, :cond_2

    .line 1526
    iget-object v8, v5, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFxParent:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1527
    const/4 v8, 0x0

    iput-object v8, v5, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFxParent:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    .line 1523
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1531
    .end local v5           #screen:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 1532
    .local v0, N:I
    if-lez v0, :cond_0

    .line 1533
    new-array v8, v0, [Lcom/htc/fusion/fx/controls/FxSceneContainer;

    invoke-interface {v3, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/htc/fusion/fx/controls/FxSceneContainer;

    move-object v4, v8

    check-cast v4, [Lcom/htc/fusion/fx/controls/FxSceneContainer;

    .line 1534
    .local v4, parents:[Lcom/htc/fusion/fx/controls/FxSceneContainer;
    new-array v1, v0, [Lcom/htc/fusion/fx/FxObject;

    .line 1535
    .local v1, fxObjects:[Lcom/htc/fusion/fx/FxObject;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1536
    .local v6, start:J
    invoke-static {v4, v1}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->batchRemoveScenes([Lcom/htc/fusion/fx/controls/FxSceneContainer;[Lcom/htc/fusion/fx/FxObject;)V

    .line 1537
    sget-boolean v8, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->localLOGD:Z

    if-eqz v8, :cond_4

    const-string v8, "PREF"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "batchRemoveScenes "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1538
    :cond_4
    sget-boolean v8, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->localLOGD:Z

    if-eqz v8, :cond_0

    sget-object v8, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    const-string v9, "batchDetachScreens"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private determineCurrentScreen(II)Z
    .locals 5
    .parameter "scrollX"
    .parameter "screenWidth"

    .prologue
    const/4 v2, 0x0

    .line 1040
    iget v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentPagesCount:I

    add-int/lit8 v3, v3, -0x1

    div-int v4, p1, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1041
    .local v1, screen:I
    rem-int v3, p1, p2

    if-nez v3, :cond_1

    const/4 v0, 0x1

    .line 1044
    .local v0, aligned:Z
    :goto_0
    iget v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentScreen:I

    if-ne v3, v1, :cond_4

    .line 1045
    if-gez p1, :cond_2

    .line 1046
    iget v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentScreen:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mPrevScreen:I

    .line 1047
    iget v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentPagesCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mNextScreen:I

    .line 1074
    :cond_0
    :goto_1
    return v0

    .end local v0           #aligned:Z
    :cond_1
    move v0, v2

    .line 1041
    goto :goto_0

    .line 1050
    .restart local v0       #aligned:Z
    :cond_2
    iget v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentScreen:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mNextScreen:I

    .line 1051
    iget v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mNextScreen:I

    iget v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentPagesCount:I

    if-ne v3, v4, :cond_3

    .line 1052
    iput v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mNextScreen:I

    .line 1054
    :cond_3
    iget v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentScreen:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mPrevScreen:I

    .line 1055
    iget v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mPrevScreen:I

    if-gez v2, :cond_0

    .line 1056
    iget v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentPagesCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mPrevScreen:I

    goto :goto_1

    .line 1062
    :cond_4
    if-ltz v1, :cond_0

    iget v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentPagesCount:I

    if-ge v1, v3, :cond_0

    .line 1063
    iput v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentScreen:I

    .line 1064
    iget v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentScreen:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mNextScreen:I

    .line 1065
    iget v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mNextScreen:I

    iget v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentPagesCount:I

    if-ne v3, v4, :cond_5

    .line 1066
    iput v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mNextScreen:I

    .line 1068
    :cond_5
    iget v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentScreen:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mPrevScreen:I

    .line 1069
    iget v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mPrevScreen:I

    if-gez v2, :cond_0

    .line 1070
    iget v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentPagesCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mPrevScreen:I

    goto :goto_1
.end method

.method private doSwitchMode(II)V
    .locals 12
    .parameter "mode"
    .parameter "op"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 487
    sget-boolean v6, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->localLOGD:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "switchMode("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", currentOnly? "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 490
    .local v4, st:J
    invoke-virtual {p0, v10}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->freeze(Z)V

    .line 492
    const/4 v2, 0x0

    .line 494
    .local v2, isSameScene:Z
    iget v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mMode:I

    if-eq v6, p1, :cond_5

    .line 495
    iget-object v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v6}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->detach()V

    .line 496
    iput p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mMode:I

    .line 503
    :goto_0
    iget-boolean v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mDidRelinquishScreenCache:Z

    if-eqz v6, :cond_1

    .line 504
    iput-boolean v9, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mDidRelinquishScreenCache:Z

    .line 506
    :cond_1
    iput-boolean v9, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIsLeapMode:Z

    .line 508
    iget-object v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v6}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v6

    iget v7, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentScreen:I

    invoke-virtual {v6, p1, p2, v7}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->switchMode(III)V

    .line 509
    iget-object v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v6}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getAnother()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v3

    .line 510
    .local v3, otherClient:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;
    if-eqz v3, :cond_2

    iget v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentScreen:I

    invoke-virtual {v3, p1, p2, v6}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->switchMode(III)V

    .line 512
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 547
    :cond_3
    :goto_1
    invoke-virtual {p0, v9}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->freeze(Z)V

    .line 549
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 550
    .local v0, et:J
    sget-boolean v6, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->localLOGD:Z

    if-eqz v6, :cond_4

    sget-object v6, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ROSIE_DEBUG] switchMode("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v0, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    :cond_4
    return-void

    .line 499
    .end local v0           #et:J
    .end local v3           #otherClient:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;
    :cond_5
    const/4 v2, 0x1

    goto :goto_0

    .line 514
    .restart local v3       #otherClient:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->show()V

    .line 515
    if-nez v2, :cond_7

    .line 516
    sget-boolean v6, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->localLOGD:Z

    if-eqz v6, :cond_6

    sget-object v6, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    const-string v7, "addScene: SlideScene"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_6
    iget-object v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v6}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v7}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getPageContainer()Lcom/htc/fusion/fx/controls/FxSceneContainer;

    move-result-object v7

    invoke-virtual {v6, v7, v9}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->attachTo(Lcom/htc/fusion/fx/controls/FxSceneContainer;I)V

    .line 520
    :cond_7
    if-eq p2, v11, :cond_3

    if-nez p2, :cond_3

    goto :goto_1

    .line 528
    :pswitch_1
    iput-boolean v10, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIsLeapMode:Z

    .line 529
    if-nez v2, :cond_3

    .line 530
    sget-boolean v6, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->localLOGD:Z

    if-eqz v6, :cond_8

    sget-object v6, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    const-string v7, "addScene: LeapScene"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :cond_8
    iget-object v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v6}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v7}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getPageContainer()Lcom/htc/fusion/fx/controls/FxSceneContainer;

    move-result-object v7

    invoke-virtual {v6, v7, v10}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->attachTo(Lcom/htc/fusion/fx/controls/FxSceneContainer;I)V

    goto/16 :goto_1

    .line 539
    :pswitch_2
    iput-boolean v10, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIsLeapMode:Z

    .line 540
    if-nez v2, :cond_3

    .line 541
    sget-boolean v6, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->localLOGD:Z

    if-eqz v6, :cond_9

    sget-object v6, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    const-string v7, "addScene: LeapRearrangeScene"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_9
    iget-object v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v6}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v7}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getLeapContainer()Lcom/htc/fusion/fx/controls/FxSceneContainer;

    move-result-object v7

    invoke-virtual {v6, v7, v11}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->attachTo(Lcom/htc/fusion/fx/controls/FxSceneContainer;I)V

    goto/16 :goto_1

    .line 512
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private fakeTouchDown()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 1182
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1183
    .local v0, time:J
    iget v5, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLastMotionDownX:F

    iget v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLastMotionDownY:F

    move-wide v2, v0

    move v7, v4

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {p0, p0, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 1184
    return-void
.end method

.method private fromLeapRearrangeToLeap()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2508
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mMode:I

    if-ne v0, v1, :cond_0

    .line 2509
    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[ROSIE_DEBUG] fromLeapToLeapRearrange() Mode is already Leap!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2520
    :goto_0
    return-void

    .line 2516
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->switchMode(II)V

    goto :goto_0
.end method

.method private fromLeapToLeapRearrange()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 2494
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mMode:I

    if-ne v0, v1, :cond_0

    .line 2495
    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[ROSIE_DEBUG] fromLeapToLeapRearrange() Mode is already LeapRearrange!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2505
    :goto_0
    return-void

    .line 2501
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->switchMode(II)V

    goto :goto_0
.end method

.method private initFxWorkspace()V
    .locals 4

    .prologue
    .line 328
    sget-object v1, Lcom/htc/launcher/Launcher;->sRefLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/Launcher;

    iput-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLauncher:Lcom/htc/launcher/Launcher;

    .line 329
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1, p0}, Lcom/htc/launcher/Launcher;->registerTiltObserver(Lcom/htc/launcher/Launcher$TiltObserver;)V

    .line 359
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCellTopPadding:I

    .line 360
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCellLeftPadding:I

    .line 361
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->m_nDragViewOffsetX:I

    .line 362
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->m_nDragViewOffsetY:I

    .line 363
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->m_nFxShortcutButtonDragOffsetX:I

    .line 364
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->m_nFxShortcutButtonDragOffsetY:I

    .line 366
    sput-object p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->sFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    .line 367
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->isPortrait()Z

    move-result v1

    sput-boolean v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->sIsPortrait:Z

    .line 369
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isTabletDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    new-instance v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;

    invoke-direct {v1, p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)V

    iput-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mButtonBarHandler:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;

    .line 373
    :cond_0
    new-instance v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavBarButtonHandler;

    invoke-direct {v1, p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavBarButtonHandler;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)V

    iput-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->m_NavBarButtonHandler:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavBarButtonHandler;

    .line 375
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->shouldDrawWallpaper()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 376
    invoke-static {}, Lcom/htc/launcher/WallpaperManager;->getInstance()Lcom/htc/launcher/WallpaperManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/launcher/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v0, 0x4

    .line 377
    .local v0, pf:I
    :goto_0
    sget-object v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fusion surface pixel format is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-virtual {p0, v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->setFormat(I)V

    .line 380
    .end local v0           #pf:I
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->loadFxWorkspace(Z)V

    .line 381
    return-void

    .line 376
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private initSceneAndControlls()V
    .locals 3

    .prologue
    .line 384
    sget-boolean v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->localLOGD:Z

    if-eqz v1, :cond_0

    const-string v1, "Rotate.Performance"

    const-string v2, "+initSceneAndControlls"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->getCustomizeButtonCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 388
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mApplicationInfoSaved:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->getCustomizeButtonCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 390
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mApplicationInfoSaved:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 394
    :cond_2
    sget-boolean v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->localLOGD:Z

    if-eqz v1, :cond_3

    const-string v1, "Rotate.Performance"

    const-string v2, "-initSceneAndControlls"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_3
    return-void
.end method

.method public static isPortrait()Z
    .locals 1

    .prologue
    .line 1622
    sget-boolean v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->sIsPortrait:Z

    return v0
.end method

.method private isValidScreenId(I)Z
    .locals 1
    .parameter "screen"

    .prologue
    .line 1015
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreens()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadFxWorkspace(Z)V
    .locals 8
    .parameter "currentOnly"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2373
    sget-boolean v3, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->localLOGD:Z

    if-eqz v3, :cond_0

    const-string v3, "Rotate.Performance"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+loadFxWorkspace: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2375
    :cond_0
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->isPortrait()Z

    move-result v3

    invoke-static {v3}, Lcom/htc/launcher/settings/SettingUtil;->setSceneRoot(Z)V

    .line 2377
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isTabletDevice()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2378
    new-instance v3, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-direct {v3, p0, v6}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;Z)V

    iput-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    .line 2383
    :goto_0
    invoke-direct {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->initSceneAndControlls()V

    .line 2388
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getChildCount()I

    move-result v0

    .line 2389
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 2390
    invoke-virtual {p0, v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2391
    .local v2, v:Landroid/view/View;
    instance-of v3, v2, Landroid/view/SurfaceView;

    if-eqz v3, :cond_1

    .line 2392
    invoke-virtual {v2, v7}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 2389
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2380
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    :cond_2
    new-instance v3, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-direct {v3, p0, v7}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;Z)V

    iput-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    goto :goto_0

    .line 2396
    .restart local v0       #N:I
    .restart local v1       #i:I
    :cond_3
    invoke-virtual {p0, v6}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->setFocusable(Z)V

    .line 2397
    invoke-virtual {p0, v6}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->setFocusableInTouchMode(Z)V

    .line 2399
    invoke-direct {p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->populateScreens(Z)V

    .line 2401
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isTabletDevice()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2402
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mButtonBarHandler:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->setNullDataForButtonBar()V

    .line 2405
    :cond_4
    sget-boolean v3, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->localLOGD:Z

    if-eqz v3, :cond_5

    const-string v3, "Rotate.Performance"

    const-string v4, "-loadFxWorkspace"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2406
    :cond_5
    return-void
.end method

.method private populateScreens(Z)V
    .locals 2
    .parameter "currentOnly"

    .prologue
    const/4 v1, 0x0

    .line 439
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->getWorkspace()Lcom/htc/launcher/Workspace;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->getWorkspace()Lcom/htc/launcher/Workspace;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->syncWorkspaceScreen(Lcom/htc/launcher/Workspace;)V

    .line 442
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->switchMode(II)V

    .line 443
    return-void

    :cond_1
    move v0, v1

    .line 442
    goto :goto_0
.end method

.method private resetQuickScroll()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 580
    iput-boolean v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mQuickScrolling:Z

    .line 581
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->quickScroll(Z)V

    .line 582
    return-void
.end method

.method private setupFloating(Lcom/htc/launcher/FxItem;Landroid/graphics/RectF;)Lcom/htc/fusion/fx/FxScene;
    .locals 23
    .parameter "item"
    .parameter "bounds"

    .prologue
    .line 739
    sget-boolean v18, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->localLOGD:Z

    if-eqz v18, :cond_0

    sget-object v18, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    const-string v19, "[EDIT_DEBUG]# FxWorkspace.setupFloating() - enter"

    invoke-static/range {v18 .. v19}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    :cond_0
    if-nez p1, :cond_1

    .line 741
    const/4 v7, 0x0

    .line 845
    :goto_0
    return-object v7

    .line 744
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getCurrentScreen()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getScreen(I)Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    move-result-object v8

    .line 745
    .local v8, currentScreen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;
    if-nez v8, :cond_2

    .line 746
    const/4 v7, 0x0

    goto :goto_0

    .line 749
    :cond_2
    sget-boolean v18, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->localLOGD:Z

    if-eqz v18, :cond_3

    sget-object v18, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[EDIT_DEBUG] FxWorkspace.setupFloating() - ItemInfo:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Lcom/htc/launcher/FxItem;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    :cond_3
    const/4 v7, 0x0

    .line 751
    .local v7, container:Lcom/htc/fusion/fx/FxScene;
    const/4 v15, 0x0

    .line 752
    .local v15, itemContainer:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;
    invoke-virtual/range {p1 .. p1}, Lcom/htc/launcher/FxItem;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->getDesktopItem(Lcom/htc/launcher/ItemInfo;)Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;

    move-result-object v9

    .line 753
    .local v9, desktopItem:Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;
    if-eqz v9, :cond_4

    .line 754
    iget-object v15, v9, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->mItemContainer:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;

    .line 755
    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v9, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->isDragging:Z

    .line 758
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/htc/launcher/FxItem;->getInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v14

    .line 760
    .local v14, info:Lcom/htc/launcher/ItemInfo;
    if-nez v15, :cond_9

    .line 761
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getScreen(I)Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    move-result-object v16

    .line 763
    .local v16, layoutHelper:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isSupportLandscape()Z

    move-result v18

    if-nez v18, :cond_7

    .line 764
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v19, Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;->PORTRAIT:Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;

    invoke-virtual/range {v19 .. v19}, Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;->get()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v14, Lcom/htc/launcher/ItemInfo;->spanX:I

    move/from16 v19, v0

    iget v0, v14, Lcom/htc/launcher/ItemInfo;->spanY:I

    move/from16 v20, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->getM10PathByWH(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v7

    .line 767
    :goto_1
    iget v0, v14, Lcom/htc/launcher/ItemInfo;->itemType:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_8

    const/4 v5, 0x1

    .line 769
    .local v5, bCanDrop:Z
    :goto_2
    new-instance v13, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;

    invoke-direct {v13}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;-><init>()V

    .line 770
    .local v13, icb:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;
    invoke-virtual {v13, v7}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;->setScene(Lcom/htc/fusion/fx/FxScene;)Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;

    move-result-object v18

    const-string v19, "container"

    invoke-virtual/range {v18 .. v19}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;->setContainer(Ljava/lang/String;)Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lcom/htc/launcher/FxItem;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;->setItem(Lcom/htc/fusion/fx/FxScene;)Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;

    move-result-object v18

    const-string v19, "Drag"

    invoke-virtual/range {v18 .. v19}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;->setDrag(Ljava/lang/String;)Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;->setDrop(Z)Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;->build()Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;

    move-result-object v15

    .line 778
    sget-boolean v18, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->localLOGD:Z

    if-eqz v18, :cond_5

    sget-object v18, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    const-string v19, "[EDIT_DEBUG] FxWorkspace.setupFloating() - new Container"

    invoke-static/range {v18 .. v19}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    .end local v5           #bCanDrop:Z
    .end local v13           #icb:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;
    .end local v16           #layoutHelper:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;
    :cond_5
    :goto_3
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;

    move/from16 v18, v0

    if-eqz v18, :cond_6

    move-object/from16 v18, p1

    .line 786
    check-cast v18, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;

    invoke-virtual/range {v18 .. v18}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->disableDropControl()V

    .line 789
    :cond_6
    if-nez v7, :cond_a

    .line 790
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 766
    .restart local v16       #layoutHelper:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;
    :cond_7
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/launcher/Launcher;->getFxPath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v14, Lcom/htc/launcher/ItemInfo;->spanX:I

    move/from16 v19, v0

    iget v0, v14, Lcom/htc/launcher/ItemInfo;->spanY:I

    move/from16 v20, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->getM10PathByWH(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v7

    goto :goto_1

    .line 767
    :cond_8
    const/4 v5, 0x0

    goto :goto_2

    .line 780
    .end local v16           #layoutHelper:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;
    :cond_9
    invoke-virtual {v15}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v7

    .line 781
    sget-boolean v18, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->localLOGD:Z

    if-eqz v18, :cond_5

    sget-object v18, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    const-string v19, "[EDIT_DEBUG] FxWorkspace.setupFloating() - old Container"

    invoke-static/range {v18 .. v19}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 792
    :cond_a
    if-nez p2, :cond_b

    .line 793
    invoke-virtual {v7}, Lcom/htc/fusion/fx/FxScene;->getSize()Landroid/graphics/PointF;

    move-result-object v17

    .line 794
    .local v17, size:Landroid/graphics/PointF;
    invoke-virtual {v8}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->getSize()Landroid/graphics/PointF;

    move-result-object v6

    .line 795
    .local v6, box:Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mFloatingBounds:Landroid/graphics/RectF;

    move-object/from16 p2, v0

    .line 796
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v20, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    move-object/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 797
    iget v0, v6, Landroid/graphics/PointF;->x:F

    move/from16 v18, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    const/high16 v19, 0x4000

    div-float v18, v18, v19

    iget v0, v6, Landroid/graphics/PointF;->y:F

    move/from16 v19, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    const/high16 v20, 0x4000

    div-float v19, v19, v20

    move-object/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 800
    .end local v6           #box:Landroid/graphics/PointF;
    .end local v17           #size:Landroid/graphics/PointF;
    :cond_b
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCellLeftPadding:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v18, v18, v19

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCellTopPadding:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v19, v19, v20

    move-object/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 801
    sget-boolean v18, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->localLOGD:Z

    if-eqz v18, :cond_c

    .line 802
    sget-object v18, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[EDIT_DEBUG]# FxWorkspace.setupFloating() setPosition("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    :cond_c
    const/4 v11, 0x0

    .line 806
    .local v11, fOffsetX:F
    const/4 v12, 0x0

    .line 807
    .local v12, fOffsetY:F
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;

    move/from16 v18, v0

    if-eqz v18, :cond_f

    .line 813
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCellLeftPadding:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v18, v18, v19

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v19

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLastMotionDownX:F

    move/from16 v19, v0

    sub-float v11, v18, v19

    .line 814
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCellTopPadding:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v18, v18, v19

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v19

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLastMotionDownY:F

    move/from16 v19, v0

    sub-float v12, v18, v19

    .line 816
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->m_nFxShortcutButtonDragOffsetX:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v19

    div-float v19, v11, v19

    mul-float v11, v18, v19

    .line 817
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->m_nFxShortcutButtonDragOffsetY:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v19

    div-float v19, v12, v19

    mul-float v12, v18, v19

    .line 826
    :cond_d
    :goto_4
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    add-float v18, v18, v11

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 827
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v18, v0

    add-float v18, v18, v12

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 828
    new-instance v18, Lcom/htc/fusion/Point3F;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v11, v12, v1}, Lcom/htc/fusion/Point3F;-><init>(FFF)V

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/htc/fusion/fx/FxScene;->setPosition(Lcom/htc/fusion/Point3F;)V

    .line 831
    new-instance v18, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FloatingItem;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FloatingItem;-><init>(Lcom/htc/launcher/FxItem;Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;Landroid/graphics/RectF;Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$1;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mFloatingScreenItem:Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;

    .line 832
    invoke-virtual/range {p1 .. p1}, Lcom/htc/launcher/FxItem;->getDraggee()Lcom/htc/launcher/Draggee;

    move-result-object v10

    .line 833
    .local v10, draggee:Lcom/htc/launcher/Draggee;
    if-eqz v10, :cond_e

    instance-of v0, v10, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$FxDraggee;

    move/from16 v18, v0

    if-nez v18, :cond_10

    .line 834
    :cond_e
    new-instance v18, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$FxDraggee;

    iget-wide v0, v14, Lcom/htc/launcher/ItemInfo;->id:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mFloatingScreenItem:Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;

    move-object/from16 v21, v0

    invoke-virtual/range {p1 .. p1}, Lcom/htc/launcher/FxItem;->getDraggee()Lcom/htc/launcher/Draggee;

    move-result-object v22

    invoke-direct/range {v18 .. v22}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$FxDraggee;-><init>(JLcom/htc/android/rosie/home/fxcontrol/DesktopItem;Lcom/htc/launcher/Draggee;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/launcher/FxItem;->setDraggee(Lcom/htc/launcher/Draggee;)V

    .line 841
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mFloatingScreenItem:Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->attachTo(Lcom/htc/fusion/fx/FxView;)V

    .line 843
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->fakeTouchDown()V

    goto/16 :goto_0

    .line 818
    .end local v10           #draggee:Lcom/htc/launcher/Draggee;
    :cond_f
    iget v0, v14, Lcom/htc/launcher/ItemInfo;->itemType:I

    move/from16 v18, v0

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_d

    iget v0, v14, Lcom/htc/launcher/ItemInfo;->itemType:I

    move/from16 v18, v0

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_d

    .line 821
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->m_nDragViewOffsetX:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v11, v0

    .line 822
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->m_nDragViewOffsetY:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v12, v0

    goto/16 :goto_4

    .line 836
    .restart local v10       #draggee:Lcom/htc/launcher/Draggee;
    :cond_10
    new-instance v18, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$FxDraggee;

    iget-wide v0, v14, Lcom/htc/launcher/ItemInfo;->id:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mFloatingScreenItem:Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-direct/range {v18 .. v22}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$FxDraggee;-><init>(JLcom/htc/android/rosie/home/fxcontrol/DesktopItem;Lcom/htc/launcher/Draggee;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/launcher/FxItem;->setDraggee(Lcom/htc/launcher/Draggee;)V

    goto :goto_5
.end method

.method private shouldFreezeScreens()Z
    .locals 1

    .prologue
    .line 3095
    iget-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mDidRelinquishScreenCache:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private syncWorkspaceScreen(Lcom/htc/launcher/Workspace;)V
    .locals 6
    .parameter "workspace"

    .prologue
    const/4 v4, 0x0

    .line 659
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getPageSlideControl()Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;

    move-result-object v3

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    .line 671
    :cond_0
    :goto_0
    return-void

    .line 662
    :cond_1
    invoke-virtual {p1}, Lcom/htc/launcher/Workspace;->getWidth()I

    move-result v0

    .line 663
    .local v0, screenWidth:I
    invoke-virtual {p1}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v3

    mul-int v1, v3, v0

    .line 665
    .local v1, scrollX:I
    new-instance v2, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$SnapInfo;

    invoke-direct {v2, p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$SnapInfo;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)V

    .line 666
    .local v2, si:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$SnapInfo;
    iput-boolean v4, v2, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$SnapInfo;->isSnap:Z

    .line 667
    iput v4, v2, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$SnapInfo;->begin:I

    .line 668
    const/4 v3, -0x1

    iput v3, v2, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$SnapInfo;->end:I

    .line 669
    sget-boolean v3, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->localLOGD:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "slideToScreen: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", d: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;->NONE:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", s: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    :cond_2
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getPageSlideControl()Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;

    move-result-object v3

    int-to-float v4, v1

    sget-object v5, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;->NONE:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

    invoke-virtual {v3, v4, v0, v5, v2}, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->slideTo(FILcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$SnapInfo;)V

    goto :goto_0
.end method

.method private updateDropTargets()V
    .locals 3

    .prologue
    .line 2291
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getDropBar()Lcom/htc/android/rosie/home/fxcontrol/DropBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/DropBar;->getDropZones()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/rosie/home/fxcontrol/DropZone;

    .line 2292
    .local v1, z:Lcom/htc/android/rosie/home/fxcontrol/DropZone;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/DropZone;->getTarget()Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2293
    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/DropZone;->updateBounds()V

    goto :goto_0

    .line 2296
    .end local v1           #z:Lcom/htc/android/rosie/home/fxcontrol/DropZone;
    :cond_1
    return-void
.end method


# virtual methods
.method public addItemToScreen(IJLcom/htc/launcher/FxItem;Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;)Z
    .locals 8
    .parameter "screen"
    .parameter "id"
    .parameter "item"
    .parameter "layout"

    .prologue
    .line 887
    invoke-virtual {p4}, Lcom/htc/launcher/FxItem;->getDraggee()Lcom/htc/launcher/Draggee;

    move-result-object v6

    .line 888
    .local v6, draggee:Lcom/htc/launcher/Draggee;
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->addItemToScreen(IJLcom/htc/launcher/FxItem;Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;)Z

    move-result v7

    .line 889
    .local v7, ret:Z
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getAnother()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    .line 890
    .local v0, otherClient:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;
    if-eqz v7, :cond_0

    if-eqz v0, :cond_0

    .line 891
    new-instance v4, Lcom/htc/launcher/FxItem;

    invoke-virtual {p4}, Lcom/htc/launcher/FxItem;->getInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v1

    invoke-direct {v4, v1, v6}, Lcom/htc/launcher/FxItem;-><init>(Lcom/htc/launcher/ItemInfo;Lcom/htc/launcher/Draggee;)V

    .local v4, aItem:Lcom/htc/launcher/FxItem;
    move v1, p1

    move-wide v2, p2

    move-object v5, p5

    .line 892
    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->addItemToScreen(IJLcom/htc/launcher/FxItem;Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;)Z

    .line 894
    .end local v4           #aItem:Lcom/htc/launcher/FxItem;
    :cond_0
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v1

    iget-boolean v1, v1, Lcom/htc/launcher/DesktopItemController;->IS_EXTERNAL_APP_ADDING:Z

    if-eqz v1, :cond_1

    .line 895
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/htc/launcher/DesktopItemController;->IS_EXTERNAL_APP_ADDING:Z

    .line 896
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/launcher/DesktopItemController;->resumeRenderring()V

    .line 898
    :cond_1
    return v7
.end method

.method public addNavbarItems(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2983
    .local p1, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/ItemInfo;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2984
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/FxShortcutInfo;

    .line 2985
    .local v1, info:Lcom/htc/launcher/FxShortcutInfo;
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->m_NavBarButtonHandler:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavBarButtonHandler;

    iget v3, v1, Lcom/htc/launcher/FxShortcutInfo;->cellX:I

    invoke-virtual {v2, v1, v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavBarButtonHandler;->addNavbarItem(Lcom/htc/launcher/FxShortcutInfo;I)V

    .line 2983
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2987
    .end local v1           #info:Lcom/htc/launcher/FxShortcutInfo;
    :cond_0
    return-void
.end method

.method public asTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaceTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method public bindListenerTipBubble(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2370
    return-void
.end method

.method public captureScreenShot()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 2969
    iget-boolean v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mFrozen:Z

    if-eqz v1, :cond_0

    .line 2970
    const/4 v1, 0x0

    .line 2973
    :goto_0
    return-object v1

    .line 2972
    :cond_0
    invoke-static {}, Lcom/htc/launcher/Workspace;->getDefaultScreenIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getScreen(I)Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    move-result-object v0

    .line 2973
    .local v0, screen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;
    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->getSnapshot()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public changeScreensVisibility(Z)V
    .locals 10
    .parameter "aligned"

    .prologue
    const/4 v6, 0x0

    .line 554
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->canFreeze()Z

    move-result v0

    if-nez v0, :cond_1

    .line 563
    :cond_0
    :goto_0
    return-void

    .line 557
    :cond_1
    iget-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mFrozen:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, v6}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->freeze(Z)V

    .line 559
    :cond_2
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    iget v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentScreen:I

    iget v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mNextScreen:I

    iget v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mTiltValue:F

    const/high16 v5, 0x7f80

    move v1, p1

    iget-object v7, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "tweaks_rosie_smooth"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    const/4 v9, 0x2

    if-ne v7, v9, :cond_3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->changeScreensVisibility2(ZIIFF)V

    goto :goto_1

    :cond_3
    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->changeScreensVisibility(ZIIFF)V

    .line 560
    :goto_1
    iget-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mDidRelinquishScreenCache:Z

    if-eqz v0, :cond_0

    .line 561
    iput-boolean v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mDidRelinquishScreenCache:Z

    goto :goto_0
.end method

.method public changeVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 567
    return-void
.end method

.method public checkUnlockFrameSet()Z
    .locals 1

    .prologue
    .line 2482
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->checkUnlockFrameSet()Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0, p0}, Lcom/htc/launcher/Launcher;->unregisterTiltObserver(Lcom/htc/launcher/Launcher$TiltObserver;)V

    .line 677
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreens()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreens()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getSlideScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 682
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getSlideScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->removeScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 685
    :cond_1
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getLeapScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 686
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getLeapScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->removeScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 689
    :cond_2
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getLeapRearrangeScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 690
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getLeapRearrangeScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->removeScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 692
    :cond_3
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 1125
    iget-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIsScrolling:Z

    if-nez v0, :cond_0

    .line 1126
    invoke-super {p0, p1}, Lcom/htc/fusion/fx/FxView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1142
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    const/4 v1, 0x1

    .line 1188
    const/4 v0, 0x0

    .line 1195
    .local v0, handled:Z
    iget-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mTouchByDelegate:Z

    if-eqz v2, :cond_4

    .line 1199
    iget-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIsStartDrag:Z

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 1200
    :cond_0
    sget-boolean v2, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->DEBUG_TOUCH:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    const-string v3, "motionevent cancel"

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    :cond_1
    :goto_0
    return v1

    .line 1204
    :cond_2
    invoke-super {p0, p1}, Lcom/htc/fusion/fx/FxView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1205
    sget-boolean v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->DEBUG_TOUCH:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatch touch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), is handled? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    move v1, v0

    .line 1214
    goto :goto_0

    .line 1208
    :cond_4
    const/4 v0, 0x0

    .line 1209
    sget-boolean v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->DEBUG_TOUCH:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignore touch:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public dropItemToScreen(ILcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;)Z
    .locals 7
    .parameter "screen"
    .parameter "layout"

    .prologue
    .line 864
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mFloatingScreenItem:Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;

    iget-object v4, v0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->mFxItem:Lcom/htc/launcher/FxItem;

    .line 865
    .local v4, floating:Lcom/htc/launcher/FxItem;
    if-eqz v4, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 866
    invoke-virtual {v4}, Lcom/htc/launcher/FxItem;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v6

    .line 867
    .local v6, info:Lcom/htc/launcher/ItemInfo;
    instance-of v0, v6, Lcom/htc/launcher/FxItemInfo;

    if-eqz v0, :cond_0

    .line 868
    check-cast v6, Lcom/htc/launcher/FxItemInfo;

    .end local v6           #info:Lcom/htc/launcher/ItemInfo;
    iget v0, v6, Lcom/htc/launcher/FxItemInfo;->widgetId:I

    int-to-long v2, v0

    move-object v0, p0

    move v1, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->addItemToScreen(IJLcom/htc/launcher/FxItem;Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;)Z

    .line 871
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public findNearestLeapPanel(FF)I
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->findNearestLeapPanel(FF)I

    move-result v0

    return v0
.end method

.method public freeze(Z)V
    .locals 6
    .parameter "enable"

    .prologue
    .line 420
    iget-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mFrozen:Z

    if-ne v2, p1, :cond_0

    .line 436
    :goto_0
    return-void

    .line 422
    :cond_0
    if-eqz p1, :cond_2

    .line 423
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->stopFade(Z)V

    .line 425
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 426
    .local v0, start:J
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getViewObject()Lcom/htc/fusion/fx/FxViewObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/fusion/fx/FxViewObject;->pauseRendering()V

    .line 427
    sget-boolean v2, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->localLOGD:Z

    if-eqz v2, :cond_1

    const-string v2, "PREF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pauseRendering costs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    :cond_1
    :goto_1
    iput-boolean p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mFrozen:Z

    goto :goto_0

    .line 431
    .end local v0           #start:J
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 432
    .restart local v0       #start:J
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getViewObject()Lcom/htc/fusion/fx/FxViewObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/fusion/fx/FxViewObject;->resumeRendering()V

    .line 433
    sget-boolean v2, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->localLOGD:Z

    if-eqz v2, :cond_1

    const-string v2, "PREF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resumeRendering costs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public freezeAllScreens()V
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->freezeAllScreens()V

    .line 603
    return-void
.end method

.method public freezeLauncherBar()V
    .locals 4

    .prologue
    .line 627
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getCurrentWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getNavbarButtons()Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;

    move-result-object v2

    .line 628
    .local v2, navbarButton:Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;
    if-nez v2, :cond_1

    .line 640
    :cond_0
    return-void

    .line 632
    :cond_1
    const/4 v1, 0x0

    .line 633
    .local v1, nIndex:I
    invoke-virtual {v2, v1}, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;->getSceneContainer(I)Lcom/htc/fusion/fx/controls/FxSceneContainer;

    move-result-object v0

    .line 634
    .local v0, fxSceneContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;
    :goto_0
    if-eqz v0, :cond_0

    .line 635
    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->freeze()Ljava/util/concurrent/Future;

    .line 637
    add-int/lit8 v1, v1, 0x1

    .line 638
    invoke-virtual {v2, v1}, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;->getSceneContainer(I)Lcom/htc/fusion/fx/controls/FxSceneContainer;

    move-result-object v0

    goto :goto_0
.end method

.method public freezeNavBar()V
    .locals 2

    .prologue
    .line 619
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getNavigationBar()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->freeze(Z)V

    .line 620
    return-void
.end method

.method public freezeScreen(I)V
    .locals 1
    .parameter "nScreenId"

    .prologue
    .line 606
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->freezeScreen(I)V

    .line 607
    return-void
.end method

.method public freezeScreens()V
    .locals 3

    .prologue
    .line 610
    invoke-static {}, Lcom/htc/launcher/PagesManager;->instance()Lcom/htc/launcher/PagesManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/launcher/PagesManager;->getCurrentPagesCount()I

    move-result v0

    .line 611
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 612
    iget v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentScreen:I

    if-eq v1, v2, :cond_0

    .line 613
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->freezeScreens(I)V

    .line 611
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 616
    :cond_1
    return-void
.end method

.method public getAnotherWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;
    .locals 1

    .prologue
    .line 1304
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getAnother()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    return-object v0
.end method

.method public getButtonBarLongClickX(FF)I
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2990
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mButtonBarHandler:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->getButtonBarLongClickX(FF)I

    move-result v0

    return v0
.end method

.method getCurrentScreen()I
    .locals 1

    .prologue
    .line 2536
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentScreen:I

    return v0
.end method

.method public getCurrentWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;
    .locals 1

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    return-object v0
.end method

.method public getDropTargets()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/launcher/DropTarget;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2299
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2300
    .local v0, drops:Ljava/util/List;,"Ljava/util/List<Lcom/htc/launcher/DropTarget;>;"
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getDropBar()Lcom/htc/android/rosie/home/fxcontrol/DropBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/DropBar;->getDropZones()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/rosie/home/fxcontrol/DropZone;

    .line 2301
    .local v2, z:Lcom/htc/android/rosie/home/fxcontrol/DropZone;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/DropZone;->getTarget()Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2302
    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/DropZone;->getTarget()Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2304
    .end local v2           #z:Lcom/htc/android/rosie/home/fxcontrol/DropZone;
    :cond_1
    return-object v0
.end method

.method public getIsButtonBarNull(I)Z
    .locals 1
    .parameter "x"

    .prologue
    .line 2994
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mButtonBarHandler:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;

    invoke-virtual {v0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->getIsButtonBarNull(I)Z

    move-result v0

    return v0
.end method

.method public getLeapAnimationPlayer()Lcom/htc/launcher/LeapController$LeapAnimationPlayer;
    .locals 1

    .prologue
    .line 1733
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLeapPlayer:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxLeapPlayer;

    if-nez v0, :cond_0

    .line 1734
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxLeapPlayer;

    invoke-direct {v0, p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxLeapPlayer;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLeapPlayer:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxLeapPlayer;

    .line 1736
    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLeapPlayer:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxLeapPlayer;

    return-object v0
.end method

.method public getLeapListener()Lcom/htc/launcher/LeapController$LeapListener;
    .locals 1

    .prologue
    .line 1740
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLeapListener:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxLeapListener;

    if-nez v0, :cond_0

    .line 1741
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxLeapListener;

    invoke-direct {v0, p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxLeapListener;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLeapListener:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxLeapListener;

    .line 1743
    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLeapListener:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxLeapListener;

    return-object v0
.end method

.method public getNavBarButtonHandler()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavBarButtonHandler;
    .locals 1

    .prologue
    .line 3313
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->m_NavBarButtonHandler:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavBarButtonHandler;

    return-object v0
.end method

.method public getNavBarScreenShot(Z)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "isLeapMode"

    .prologue
    .line 2979
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getNavBarSceneCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationBar()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;
    .locals 1

    .prologue
    .line 2409
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getNavigationBar()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;

    move-result-object v0

    return-object v0
.end method

.method public getPageSinkControl()Lcom/htc/android/rosie/home/fxcontrol/IPageSinkControl;
    .locals 1

    .prologue
    .line 1616
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mSinkControl:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxPageSinkControl;

    if-nez v0, :cond_0

    .line 1617
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxPageSinkControl;

    invoke-direct {v0, p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxPageSinkControl;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mSinkControl:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxPageSinkControl;

    .line 1618
    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mSinkControl:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$FxPageSinkControl;

    return-object v0
.end method

.method public getPosition()Landroid/graphics/Rect;
    .locals 4

    .prologue
    .line 1109
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mFloatingScreenItem:Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;

    if-nez v2, :cond_0

    .line 1110
    const/4 v1, 0x0

    .line 1119
    :goto_0
    return-object v1

    .line 1112
    :cond_0
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mFloatingScreenItem:Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;

    iget-object v2, v2, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->mItemContainer:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    .line 1114
    .local v0, floatingScene:Lcom/htc/fusion/fx/FxScene;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1115
    .local v1, rect:Landroid/graphics/Rect;
    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxScene;->getWorldPosition()Lcom/htc/fusion/Point3F;

    move-result-object v2

    iget v2, v2, Lcom/htc/fusion/Point3F;->x:F

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 1116
    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxScene;->getWorldPosition()Lcom/htc/fusion/Point3F;

    move-result-object v2

    iget v2, v2, Lcom/htc/fusion/Point3F;->y:F

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 1117
    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxScene;->getSize()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    float-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 1118
    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxScene;->getSize()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    float-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method public getScreen(I)Lcom/htc/android/rosie/home/fxcontrol/FxScreen;
    .locals 1
    .parameter "screen"

    .prologue
    .line 399
    invoke-direct {p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->isValidScreenId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 400
    const/4 v0, 0x0

    .line 401
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreens()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;

    iget-object v0, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFxScreen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    goto :goto_0
.end method

.method getScreenCount()I
    .locals 1

    .prologue
    .line 2540
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentPagesCount:I

    return v0
.end method

.method getScreens()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2544
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreens()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasFreeRoom(ILcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;)Z
    .locals 5
    .parameter "screen"
    .parameter "layout"

    .prologue
    .line 2945
    sget-boolean v2, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->localLOGD:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[APTR_TEST, shooterU_534] screen:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2947
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreens()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;

    .line 2949
    .local v1, screenHolder:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;
    iget-object v2, v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFxScreen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    invoke-virtual {v2, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->hasFreeRoom(Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2954
    .end local v1           #screenHolder:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;
    :goto_0
    return v2

    .line 2950
    :catch_0
    move-exception v0

    .line 2951
    .local v0, e:Ljava/lang/Exception;
    sget-boolean v2, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->localLOGD:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[APTR_TEST, shooterU_534] hasFreeRoom exception"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2952
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2954
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hide()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 413
    sget-boolean v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->localLOGD:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mSlideScene Visibility: false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getSlideScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/FxScene;->setVisibility(Z)Ljava/util/ArrayList;

    .line 415
    iput-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mSlideSceneVisibility:Z

    .line 416
    return-void
.end method

.method public hideFxSurface(Z)V
    .locals 3
    .parameter "bHide"

    .prologue
    .line 3372
    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideFxSurface was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->m_bIsHideFxSurface:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3373
    iget-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->m_bIsHideFxSurface:Z

    if-ne v0, p1, :cond_0

    .line 3377
    :goto_0
    return-void

    .line 3375
    :cond_0
    iput-boolean p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->m_bIsHideFxSurface:Z

    .line 3376
    if-eqz p1, :cond_1

    const/4 v0, 0x4

    :goto_1
    invoke-virtual {p0, v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public hideTipBubble()V
    .locals 3

    .prologue
    .line 2364
    sget-boolean v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->localLOGD:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    const-string v2, "hideTipBubble"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2365
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentPagesCount:I

    if-ge v0, v1, :cond_1

    .line 2366
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreens()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;

    iget-object v1, v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFxScreen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->setBackPanelMode(I)V

    .line 2365
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2367
    :cond_1
    return-void
.end method

.method public isStartDrag()Z
    .locals 1

    .prologue
    .line 3368
    iget-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIsStartDrag:Z

    return v0
.end method

.method public onBeginFling()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 278
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->showAllScreens()V

    .line 280
    :cond_0
    invoke-virtual {p0, v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->onQuickScroll(Z)V

    .line 281
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->showScrollbar(Z)V

    .line 282
    sget-boolean v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->localLOGD:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onWorkspaceBeginFling()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_1
    return-void
.end method

.method public onBeginScroll(ZII)V
    .locals 4
    .parameter "paramBoolean"
    .parameter "paramInt1"
    .parameter "paramInt2"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 286
    iget-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIsLeapMode:Z

    if-eqz v0, :cond_0

    .line 299
    :goto_0
    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mSnapInfo:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$SnapInfo;

    iput-boolean p1, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$SnapInfo;->isSnap:Z

    .line 291
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mSnapInfo:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$SnapInfo;

    iput p2, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$SnapInfo;->begin:I

    .line 292
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mSnapInfo:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$SnapInfo;

    iput p3, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$SnapInfo;->end:I

    .line 293
    iput-boolean v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIsScrolling:Z

    .line 294
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mContext:Landroid/content/Context;

    .line 295
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_rosie_smooth"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    invoke-virtual {p0, v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->onQuickScroll(Z)V

    .line 297
    :cond_1
    iput-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIsFlingMode:Z

    .line 298
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->stopFade(Z)V

    goto :goto_0
.end method

.method public onClick(I)V
    .locals 1
    .parameter "message"

    .prologue
    .line 2998
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mUiHandler:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$UiHandler;

    invoke-virtual {v0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$UiHandler;->sendEmptyMessage(I)Z

    .line 2999
    return-void
.end method

.method public onDragEnd()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2263
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isTabletDevice()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2264
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->showEditControls(Z)V

    .line 2265
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getAnother()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v1

    .line 2266
    .local v1, other:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;
    if-eqz v1, :cond_0

    .line 2267
    invoke-virtual {v1, v4}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->showEditControls(Z)V

    .line 2271
    .end local v1           #other:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;
    :cond_0
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->onEndDrag()V

    .line 2274
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mDragStartRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    .line 2275
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mDragStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2276
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mDragStartRunnable:Ljava/lang/Runnable;

    .line 2279
    :cond_1
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v2

    iget v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentScreen:I

    invoke-virtual {v2, v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreen(I)Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->onDragEnd()V

    .line 2281
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentPagesCount:I

    if-ge v0, v2, :cond_3

    .line 2282
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreen(I)Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->thawChildren()V

    .line 2283
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->isPortrait()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2284
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreen(I)Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->setBackPanelMode(I)V

    .line 2281
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2287
    :cond_3
    iput-boolean v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIsStartDrag:Z

    .line 2288
    return-void
.end method

.method public onDropCompleted(Lcom/htc/launcher/DropTarget;Z)V
    .locals 4
    .parameter "target"
    .parameter "success"

    .prologue
    const/4 v3, 0x0

    .line 2833
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isTabletDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2835
    if-eqz p2, :cond_3

    .line 2838
    if-eq p1, p0, :cond_2

    .line 2840
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mButtonBarHandler:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->removeOriButtonInfo()V

    .line 2855
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mAppInfoForDropBackButtonBar:Lcom/htc/launcher/ApplicationInfo;

    .line 2856
    iput-boolean v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIsLongClick:Z

    .line 2857
    iput v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mTimeOfButtonBarLongclick:I

    .line 2859
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLauncher:Lcom/htc/launcher/Launcher;

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mDesktopItemController:Lcom/htc/launcher/DesktopItemController;

    invoke-virtual {v0}, Lcom/htc/launcher/DesktopItemController;->cleanUpFloatingFxItem()V

    .line 2860
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->removeItem()Z

    .line 2863
    :cond_1
    return-void

    .line 2843
    :cond_2
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIndexOfButtonbarTouch:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIndexOfButtonbarTouch:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 2845
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIndexOfButtonbarTouch:I

    invoke-virtual {p0, v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getIsButtonBarNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2847
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mButtonBarHandler:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->removeOriButtonInfo()V

    goto :goto_0

    .line 2853
    :cond_3
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mButtonBarHandler:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mAppInfoForDropBackButtonBar:Lcom/htc/launcher/ApplicationInfo;

    iget v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIndexOfButtonbarTouchStart:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->dropBackToButtonBar(Lcom/htc/launcher/ApplicationInfo;I)V

    goto :goto_0
.end method

.method public onEndScroll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 302
    iget-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIsLeapMode:Z

    if-eqz v0, :cond_1

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    invoke-virtual {p0, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->onQuickScroll(Z)V

    .line 307
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentScrollX:I

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLastScrollX:I

    .line 308
    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;->NONE:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mBeginDirection:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

    .line 309
    iput-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIsScrolling:Z

    .line 310
    iput-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIsFlingMode:Z

    .line 311
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mZoomRatio:F

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLastZoomRatio:F

    .line 313
    iget-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIsStartDrag:Z

    if-eqz v0, :cond_2

    .line 314
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mSnapInfo:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$SnapInfo;

    iget v1, v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$SnapInfo;->begin:I

    invoke-virtual {v0, v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreen(I)Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->thawChildren()V

    .line 315
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mSnapInfo:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$SnapInfo;

    iget v1, v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$SnapInfo;->end:I

    invoke-virtual {v0, v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreen(I)Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->freezeChildren()V

    .line 318
    :cond_2
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isDoubleShot()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 319
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getPageSlideControl()Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->setScrollBarControlVisibility(Z)V

    .line 321
    :cond_3
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->showScrollbar(Z)V

    .line 323
    sget-boolean v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->localLOGD:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onWorkspaceStopScroll()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onFling(III)V
    .locals 3
    .parameter "x"
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 1276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIsFlingMode:Z

    .line 1277
    sget-boolean v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->localLOGD:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FxWorkspace.onFling("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    :cond_0
    sub-int v0, p2, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x1e0

    if-le v0, v1, :cond_2

    .line 1279
    sub-int v0, p1, p2

    int-to-float v0, v0

    sub-int v1, p3, p2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mZoomRatio:F

    .line 1287
    :cond_1
    :goto_0
    return-void

    .line 1280
    :cond_2
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mZoomRatio:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 1281
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLastZoomRatio:F

    const/high16 v1, 0x3f00

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    .line 1282
    sub-int v0, p1, p2

    int-to-float v0, v0

    const/high16 v1, 0x3f80

    iget v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLastZoomRatio:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    sub-int v1, p3, p2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLastZoomRatio:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mZoomRatio:F

    goto :goto_0

    .line 1284
    :cond_3
    sub-int v0, p1, p3

    int-to-float v0, v0

    iget v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLastZoomRatio:F

    mul-float/2addr v0, v1

    sub-int v1, p2, p3

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mZoomRatio:F

    goto :goto_0
.end method

.method public onFloat(Lcom/htc/launcher/Draggee;Landroid/graphics/RectF;)Z
    .locals 2
    .parameter "item"
    .parameter "bounds"

    .prologue
    .line 699
    sget-boolean v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->localLOGD:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[EDIT_DEBUG] FxWorkspace.onFloat()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    :cond_0
    check-cast p1, Lcom/htc/launcher/FxItem;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->putItem(Lcom/htc/launcher/FxItem;Landroid/graphics/RectF;)Z

    move-result v0

    return v0
.end method

.method public onHomeIndexChanged(I)V
    .locals 4
    .parameter "newHomeIndex"

    .prologue
    .line 3228
    sget-boolean v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->localLOGD:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onHomeIndexChanged, newHomeIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3229
    :cond_0
    iput p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentHomeIndex:I

    .line 3232
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {}, Lcom/htc/launcher/PagesManager;->instance()Lcom/htc/launcher/PagesManager;

    const/4 v1, 0x7

    if-ge v0, v1, :cond_2

    .line 3233
    iget v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentHomeIndex:I

    if-ne v0, v1, :cond_1

    .line 3234
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getLeapRearrangeController()Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->getFxLeapRearrangeController()Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->getLeapDrags()[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->getHomePageTimeLine()Lcom/htc/fusion/fx/FxTimelineControl;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 3232
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3237
    :cond_1
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getLeapRearrangeController()Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->getFxLeapRearrangeController()Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->getLeapDrags()[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->getHomePageTimeLine()Lcom/htc/fusion/fx/FxTimelineControl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    goto :goto_1

    .line 3241
    :cond_2
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    .line 1242
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 1243
    .local v0, focus:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 1251
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->requestFocus()Z

    .line 1253
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/fusion/fx/FxView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1254
    .local v1, ret:Z
    sget-boolean v2, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->DEBUG_TOUCH:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "intercept touch:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public onLand(Lcom/htc/launcher/Draggee;III)Z
    .locals 4
    .parameter "item"
    .parameter "container"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 715
    sget-boolean v2, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->localLOGD:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[EDIT_DEBUG] FxWorkspace.onLand()"

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    :cond_0
    sget-boolean v2, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mFloatingScreenItem:Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;

    iget-object v2, v2, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->mFxItem:Lcom/htc/launcher/FxItem;

    if-eq p1, v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 717
    :cond_1
    invoke-interface {p1}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v0

    .line 718
    .local v0, info:Lcom/htc/launcher/ItemInfo;
    new-instance v1, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;

    iget v2, v0, Lcom/htc/launcher/ItemInfo;->spanX:I

    iget v3, v0, Lcom/htc/launcher/ItemInfo;->spanY:I

    invoke-direct {v1, p3, p4, v2, v3}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;-><init>(IIII)V

    .line 719
    .local v1, layout:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;
    invoke-virtual {p0, p2, v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->dropItemToScreen(ILcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;)Z

    move-result v2

    return v2
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 11
    .parameter "view"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2867
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isTabletDevice()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2869
    iget-boolean v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIsLeapMode:Z

    if-eqz v4, :cond_0

    move v4, v5

    .line 2923
    :goto_0
    return v4

    .line 2873
    :cond_0
    iput-boolean v5, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIsLongClick:Z

    .line 2875
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mButtonBarHandler:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;

    iget-object v7, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget-object v8, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v4, v7, v8}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->getButtonBarLongClickX(FF)I

    move-result v4

    iput v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIndexOfButtonbarTouchStart:I

    .line 2876
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mEvStartX:I

    .line 2877
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mEvStartY:I

    .line 2879
    iget v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIndexOfButtonbarTouchStart:I

    if-lt v4, v5, :cond_1

    iget v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIndexOfButtonbarTouchStart:I

    if-gt v4, v9, :cond_1

    .line 2883
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mMotionEvent:Landroid/view/MotionEvent;

    const/4 v7, 0x3

    invoke-virtual {v4, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2885
    iput-boolean v5, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mTouchByDelegate:Z

    .line 2886
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {p0, v4}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2887
    iput-boolean v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mTouchByDelegate:Z

    .line 2890
    iget v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIndexOfButtonbarTouchStart:I

    invoke-virtual {p0, v4}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getIsButtonBarNull(I)Z

    move-result v4

    if-ne v4, v5, :cond_2

    .line 2892
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLauncher:Lcom/htc/launcher/Launcher;

    iget v5, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIndexOfButtonbarTouchStart:I

    invoke-virtual {v4, v5}, Lcom/htc/launcher/Launcher;->addButtonbarItems(I)V

    .line 2893
    iput-boolean v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIsLongClick:Z

    :cond_1
    :goto_1
    move v4, v6

    .line 2923
    goto :goto_0

    .line 2898
    :cond_2
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v4}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mButtonBarDropControl:[Lcom/htc/fusion/fx/controls/FxDropControl;

    iget v7, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIndexOfButtonbarTouchStart:I

    aget-object v4, v4, v7

    iget-object v7, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->m_strScopeEmpty:[Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/htc/fusion/fx/controls/FxDropControl;->setDragScope([Ljava/lang/String;)V

    .line 2900
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mApplicationInfoSaved:Ljava/util/ArrayList;

    iget v7, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIndexOfButtonbarTouch:I

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/ApplicationInfo;

    .line 2901
    .local v0, applicationInfo:Lcom/htc/launcher/ApplicationInfo;
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mApplicationInfoSaved:Ljava/util/ArrayList;

    iget v7, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIndexOfButtonbarTouch:I

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/launcher/ApplicationInfo;

    iput-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mAppInfoForDropBackButtonBar:Lcom/htc/launcher/ApplicationInfo;

    .line 2902
    if-nez v0, :cond_3

    move v4, v6

    .line 2903
    goto :goto_0

    .line 2906
    :cond_3
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0, v4, v10}, Lcom/htc/launcher/ApplicationInfo;->createItem(Lcom/htc/launcher/Launcher;Landroid/view/ViewGroup;)Lcom/htc/launcher/Draggee;

    move-result-object v2

    check-cast v2, Lcom/htc/launcher/FxItem;

    .line 2907
    .local v2, fxItem:Lcom/htc/launcher/FxItem;
    iget-object v4, v0, Lcom/htc/launcher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    iget-object v7, v0, Lcom/htc/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4, v7}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->prepareDragView(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v3

    .line 2908
    .local v3, icon:Landroid/view/View;
    if-nez v3, :cond_4

    .line 2909
    sget-object v4, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    const-string v7, "prepareDragView failed title:%s, icon:%s"

    new-array v8, v9, [Ljava/lang/Object;

    iget-object v9, v0, Lcom/htc/launcher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    aput-object v9, v8, v6

    iget-object v9, v0, Lcom/htc/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    aput-object v9, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    .line 2910
    goto/16 :goto_0

    .line 2913
    :cond_4
    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2914
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mButtonBarHandler:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;

    iget v5, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIndexOfButtonbarTouchStart:I

    #calls: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->buttonBarImageTextVisibility(IZ)V
    invoke-static {v4, v5, v6}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->access$2400(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;IZ)V

    .line 2915
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mApplicationInfoSaved:Ljava/util/ArrayList;

    iget v5, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIndexOfButtonbarTouchStart:I

    invoke-virtual {v4, v5, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2917
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v4}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/htc/launcher/DesktopItemController;->getExternalFloatingBounds(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v1

    .line 2918
    .local v1, bounds:Landroid/graphics/RectF;
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v4}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v4

    invoke-virtual {v4, p0, v2, v1}, Lcom/htc/launcher/DesktopItemController;->startDragFxWidget(Lcom/htc/launcher/DragSource;Lcom/htc/launcher/FxItem;Landroid/graphics/RectF;)Z

    goto :goto_1
.end method

.method public onLowMemory()V
    .locals 5

    .prologue
    .line 3099
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreens()Ljava/util/List;

    move-result-object v2

    .line 3100
    .local v2, screens:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 3101
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 3102
    iget v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentScreen:I

    if-eq v1, v3, :cond_0

    iget v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentHomeIndex:I

    if-ne v1, v3, :cond_1

    .line 3101
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3104
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->thaw(Z)V

    goto :goto_1

    .line 3106
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mDidRelinquishScreenCache:Z

    .line 3107
    return-void
.end method

.method public onNavbarButtonLongTab(ILcom/htc/launcher/ItemInfo;)V
    .locals 3
    .parameter "index"
    .parameter "info"

    .prologue
    .line 3319
    move-object v1, p2

    check-cast v1, Lcom/htc/launcher/FxShortcutInfo;

    .line 3321
    .local v1, runInfo:Lcom/htc/launcher/FxShortcutInfo;
    move v0, p1

    .line 3322
    .local v0, nNavbarIndex:I
    new-instance v2, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$2;

    invoke-direct {v2, p0, v1, v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$2;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;Lcom/htc/launcher/FxShortcutInfo;I)V

    invoke-virtual {p0, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->post(Ljava/lang/Runnable;)Z

    .line 3334
    return-void
.end method

.method public onPagesCountChanged(I)V
    .locals 13
    .parameter "newPagesCount"

    .prologue
    .line 3123
    sget-boolean v10, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->localLOGD:Z

    if-eqz v10, :cond_0

    sget-object v10, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onPagesCountChanged: newPagesCount - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", currentPagesCount - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentPagesCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3126
    :cond_0
    iget v10, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentPagesCount:I

    if-ge p1, v10, :cond_8

    .line 3128
    iget-object v10, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mContext:Landroid/content/Context;

    const-string v11, "launcher"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 3130
    .local v9, preferences:Landroid/content/SharedPreferences;
    sget-boolean v10, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->localLOGD:Z

    if-eqz v10, :cond_1

    sget-object v10, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onPagesCountChanged: remove a page, newPagesCount - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3131
    :cond_1
    move v5, p1

    .local v5, i:I
    :goto_0
    iget v10, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentPagesCount:I

    if-le v10, v5, :cond_5

    .line 3132
    iget-object v10, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getLeapRearrangeController()Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->getFxLeapRearrangeController()Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->getLeapDrags()[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    move-result-object v10

    aget-object v10, v10, v5

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->getFxDrag()Lcom/htc/fusion/fx/controls/FxDragControl;

    move-result-object v3

    .line 3134
    .local v3, fxDrag:Lcom/htc/fusion/fx/controls/FxDragControl;
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/htc/fusion/fx/controls/FxDragControl;->setEnabled(Z)V

    .line 3135
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/htc/fusion/fx/controls/FxDragControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 3137
    iget-object v10, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getLeapRearrangeController()Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->getFxLeapRearrangeController()Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->getLeapDrops()[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    move-result-object v10

    aget-object v10, v10, v5

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->getFxDrop()Lcom/htc/fusion/fx/controls/FxDropControl;

    move-result-object v4

    .line 3139
    .local v4, fxDrop:Lcom/htc/fusion/fx/controls/FxDropControl;
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lcom/htc/fusion/fx/controls/FxDropControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 3142
    invoke-static {}, Lcom/htc/launcher/PagesManager;->instance()Lcom/htc/launcher/PagesManager;

    const/4 v10, 0x6

    if-ne v5, v10, :cond_2

    .line 3143
    iget-object v10, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getNavBarScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v10

    const-string v11, "timeline.NavBar_add_content"

    invoke-virtual {v10, v11}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 3144
    .local v1, fxAddContentTimeline:Lcom/htc/fusion/fx/FxTimelineControl;
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 3146
    iget-object v10, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getNavBarScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v10

    const-string v11, "timeline.NavBar_add_bg"

    invoke-virtual {v10, v11}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 3147
    .local v2, fxAddContentTimelineBg:Lcom/htc/fusion/fx/FxTimelineControl;
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 3149
    iget-object v10, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getNavBarScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v10

    const-string v11, "btn.add_middle_press"

    invoke-virtual {v10, v11}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/controls/FxButton;

    .line 3150
    .local v0, fxAddBtn:Lcom/htc/fusion/fx/controls/FxButton;
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lcom/htc/fusion/fx/controls/FxButton;->setEnabled(Z)V

    .line 3154
    .end local v0           #fxAddBtn:Lcom/htc/fusion/fx/controls/FxButton;
    .end local v1           #fxAddContentTimeline:Lcom/htc/fusion/fx/FxTimelineControl;
    .end local v2           #fxAddContentTimelineBg:Lcom/htc/fusion/fx/FxTimelineControl;
    :cond_2
    iget-object v10, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v10}, Lcom/htc/launcher/Launcher;->isShowTutorialNotice()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 3155
    iget-object v10, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreens()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;

    iget-object v10, v10, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFxScreen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->setBackPanelMode(I)V

    .line 3157
    :cond_3
    iget-object v10, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getLeapControlPanels()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 3161
    iget-object v10, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v10}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/launcher/DesktopItemController;->pauseRenderring()V

    .line 3163
    iget-object v10, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreens()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;

    iget-object v10, v10, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFxScreen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->dumpItems()Ljava/util/ArrayList;

    move-result-object v8

    .line 3164
    .local v8, pageItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/ItemInfo;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/launcher/ItemInfo;

    .line 3165
    .local v7, item:Lcom/htc/launcher/ItemInfo;
    iget-object v10, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v10}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v7}, Lcom/htc/launcher/DesktopItemController;->removeItem(Lcom/htc/launcher/DragSource;Lcom/htc/launcher/ItemInfo;)V

    goto :goto_1

    .line 3167
    .end local v7           #item:Lcom/htc/launcher/ItemInfo;
    :cond_4
    iget-object v10, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->removePageItems(I)V

    .line 3169
    iget-object v10, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v10}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/launcher/DesktopItemController;->resumeRenderring()V

    .line 3174
    iget-object v10, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getLeapRearrangeController()Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v5}, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->setDragEnable(ZI)V

    .line 3131
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 3179
    .end local v3           #fxDrag:Lcom/htc/fusion/fx/controls/FxDragControl;
    .end local v4           #fxDrop:Lcom/htc/fusion/fx/controls/FxDropControl;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v8           #pageItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/ItemInfo;>;"
    :cond_5
    iget-object v10, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->thawRemovedScreen()V

    .line 3219
    .end local v5           #i:I
    .end local v9           #preferences:Landroid/content/SharedPreferences;
    :cond_6
    iget v10, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentPagesCount:I

    if-eq p1, v10, :cond_7

    .line 3220
    iget-object v10, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getPageSlideControl()Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->screenCountChanged(I)V

    .line 3222
    :cond_7
    iput p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentPagesCount:I

    .line 3223
    return-void

    .line 3182
    :cond_8
    iget v10, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentPagesCount:I

    if-le p1, v10, :cond_6

    .line 3183
    sget-boolean v10, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->localLOGD:Z

    if-eqz v10, :cond_9

    sget-object v10, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onPagesCountChanged: add a page, newPagesCount - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3184
    :cond_9
    iget v5, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentPagesCount:I

    .restart local v5       #i:I
    :goto_2
    if-le p1, v5, :cond_6

    .line 3185
    iget-object v10, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getLeapRearrangeController()Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->getFxLeapRearrangeController()Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->getLeapDrags()[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    move-result-object v10

    aget-object v10, v10, v5

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->getFxDrag()Lcom/htc/fusion/fx/controls/FxDragControl;

    move-result-object v3

    .line 3187
    .restart local v3       #fxDrag:Lcom/htc/fusion/fx/controls/FxDragControl;
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Lcom/htc/fusion/fx/controls/FxDragControl;->setEnabled(Z)V

    .line 3188
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Lcom/htc/fusion/fx/controls/FxDragControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 3190
    iget-object v10, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getLeapRearrangeController()Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->getFxLeapRearrangeController()Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->getLeapDrops()[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    move-result-object v10

    aget-object v10, v10, v5

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->getFxDrop()Lcom/htc/fusion/fx/controls/FxDropControl;

    move-result-object v4

    .line 3192
    .restart local v4       #fxDrop:Lcom/htc/fusion/fx/controls/FxDropControl;
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Lcom/htc/fusion/fx/controls/FxDropControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 3194
    iget-object v10, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getLeapControlPanels()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 3196
    invoke-static {}, Lcom/htc/launcher/PagesManager;->instance()Lcom/htc/launcher/PagesManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/launcher/PagesManager;->isPageFull()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 3197
    iget-object v10, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getNavBarScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v10

    const-string v11, "timeline.NavBar_add_content"

    invoke-virtual {v10, v11}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 3198
    .restart local v1       #fxAddContentTimeline:Lcom/htc/fusion/fx/FxTimelineControl;
    const-string v10, "disable"

    invoke-virtual {v1, v10}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 3200
    iget-object v10, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getNavBarScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v10

    const-string v11, "timeline.NavBar_add_bg"

    invoke-virtual {v10, v11}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 3201
    .restart local v2       #fxAddContentTimelineBg:Lcom/htc/fusion/fx/FxTimelineControl;
    if-eqz v2, :cond_a

    const-string v10, "disable"

    invoke-virtual {v2, v10}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v10

    if-eqz v10, :cond_a

    .line 3202
    const-string v10, "disable"

    invoke-virtual {v2, v10}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 3204
    :cond_a
    iget-object v10, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getNavBarScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v10

    const-string v11, "btn.add_middle_press"

    invoke-virtual {v10, v11}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/controls/FxButton;

    .line 3205
    .restart local v0       #fxAddBtn:Lcom/htc/fusion/fx/controls/FxButton;
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lcom/htc/fusion/fx/controls/FxButton;->setEnabled(Z)V

    .line 3208
    .end local v0           #fxAddBtn:Lcom/htc/fusion/fx/controls/FxButton;
    .end local v1           #fxAddContentTimeline:Lcom/htc/fusion/fx/FxTimelineControl;
    .end local v2           #fxAddContentTimelineBg:Lcom/htc/fusion/fx/FxTimelineControl;
    :cond_b
    iget-object v10, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v10}, Lcom/htc/launcher/Launcher;->isShowTutorialNotice()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 3209
    iget-object v10, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreens()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;

    iget-object v10, v10, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFxScreen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->setBackPanelMode(I)V

    .line 3213
    :cond_c
    iget-object v10, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getLeapRearrangeController()Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11, v5}, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->setDragEnable(ZI)V

    .line 3184
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2
.end method

.method public onPoof(Lcom/htc/launcher/Draggee;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 704
    sget-boolean v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->localLOGD:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[EDIT_DEBUG] FxWorkspace.onPoof()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    :cond_0
    instance-of v0, p1, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;

    if-eqz v0, :cond_1

    .line 709
    check-cast p1, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->enableDropControl()V

    .line 711
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->removeItem()Z

    move-result v0

    return v0
.end method

.method public onPostDragStart(Lcom/htc/launcher/Draggee;Lcom/htc/launcher/DragSource;Ljava/lang/Object;I)V
    .locals 2
    .parameter "draggee"
    .parameter "source"
    .parameter "info"
    .parameter "dragAction"

    .prologue
    .line 2256
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentPagesCount:I

    if-ge v0, v1, :cond_0

    .line 2257
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreens()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;

    iget-object v1, v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFxScreen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->loadOccupiedMaps()V

    .line 2256
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2259
    :cond_0
    return-void
.end method

.method public onPreDragStart(Lcom/htc/launcher/Draggee;Lcom/htc/launcher/DragSource;Ljava/lang/Object;I)V
    .locals 5
    .parameter "draggee"
    .parameter "source"
    .parameter "info"
    .parameter "dragAction"

    .prologue
    .line 2209
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->onStartDrag()V

    .line 2212
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getDropBar()Lcom/htc/android/rosie/home/fxcontrol/DropBar;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/htc/android/rosie/home/fxcontrol/DropBar;->onDragStart(Lcom/htc/launcher/Draggee;Lcom/htc/launcher/DragSource;Ljava/lang/Object;I)V

    .line 2215
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v2}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v2

    invoke-interface {p1}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/launcher/DesktopItemController;->updateFolderIconDropTarget(Lcom/htc/launcher/ItemInfo;)V

    .line 2218
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v2

    iget v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentScreen:I

    invoke-virtual {v2, v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreen(I)Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->freezeChildren()V

    .line 2220
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIsStartDrag:Z

    .line 2222
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->setEditHeaderText(I)V

    .line 2223
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->showNavEditBar()V

    .line 2225
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isTabletDevice()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2228
    new-instance v2, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$1;

    invoke-direct {v2, p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$1;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)V

    iput-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mDragStartRunnable:Ljava/lang/Runnable;

    .line 2241
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mDragStartRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0xc8

    invoke-virtual {p0, v2, v3, v4}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2245
    :cond_0
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getDropBar()Lcom/htc/android/rosie/home/fxcontrol/DropBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/DropBar;->getDropZones()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/rosie/home/fxcontrol/DropZone;

    .line 2246
    .local v1, z:Lcom/htc/android/rosie/home/fxcontrol/DropZone;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/DropZone;->getTarget()Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2247
    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/DropZone;->getTarget()Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->resetClaimDrop()V

    goto :goto_0

    .line 2250
    .end local v1           #z:Lcom/htc/android/rosie/home/fxcontrol/DropZone;
    :cond_2
    return-void
.end method

.method public onQuickScroll(Z)V
    .locals 2
    .parameter "quickScroll"

    .prologue
    .line 570
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->quickScroll(Z)V

    .line 571
    if-nez p1, :cond_0

    .line 572
    iget-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mQuickScrolling:Z

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    iget v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentScreen:I

    invoke-virtual {v0, v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->fadeOtherScreens(I)V

    .line 576
    :cond_0
    iput-boolean p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mQuickScrolling:Z

    .line 577
    return-void
.end method

.method public onScrollTo(FFII)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "scrollRange"
    .parameter "screenWidth"

    .prologue
    .line 210
    if-nez p4, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    mul-int/lit8 v1, p4, 0x7

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_4

    .line 213
    mul-int/lit8 v1, p4, 0x7

    int-to-float v1, v1

    rem-float/2addr p1, v1

    .line 223
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mBeginDirection:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

    sget-object v2, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;->NONE:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

    if-ne v1, v2, :cond_3

    .line 224
    iget v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLastScrollX:I

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_5

    .line 225
    sget-object v1, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;->RIGHT:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

    iput-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mBeginDirection:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

    .line 229
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mBeginDirection:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

    sget-object v2, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;->LEFT:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

    if-ne v1, v2, :cond_7

    .line 230
    iget v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLastScrollX:I

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_6

    .line 231
    sget-object v1, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;->RIGHT:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

    iput-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mDirection:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

    .line 244
    :goto_3
    float-to-int v1, p1

    iput v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentScrollX:I

    .line 245
    iget v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentScrollX:I

    invoke-direct {p0, v1, p4}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->determineCurrentScreen(II)Z

    move-result v0

    .line 246
    .local v0, aligned:Z
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getPageSlideControl()Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mDirection:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mSnapInfo:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$SnapInfo;

    invoke-virtual {v1, p1, p4, v2, v3}, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->slideTo(FILcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$SnapInfo;)V

    .line 247
    iget-boolean v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIsLeapMode:Z

    if-nez v1, :cond_0

    .line 248
    invoke-virtual {p0, v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->changeScreensVisibility(Z)V

    goto :goto_0

    .line 215
    .end local v0           #aligned:Z
    :cond_4
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->usesRingSlide()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_2

    .line 216
    mul-int/lit8 v1, p4, 0x7

    int-to-float v1, v1

    mul-int/lit8 v2, p4, 0x7

    int-to-float v2, v2

    rem-float v2, p1, v2

    add-float p1, v1, v2

    .line 217
    mul-int/lit8 v1, p4, 0x7

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-nez v1, :cond_2

    .line 218
    const/4 p1, 0x0

    goto :goto_1

    .line 227
    :cond_5
    sget-object v1, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;->LEFT:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

    iput-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mBeginDirection:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

    goto :goto_2

    .line 233
    :cond_6
    sget-object v1, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;->LEFT:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

    iput-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mDirection:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

    goto :goto_3

    .line 235
    :cond_7
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mBeginDirection:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

    sget-object v2, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;->RIGHT:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

    if-ne v1, v2, :cond_9

    .line 236
    iget v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLastScrollX:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_8

    .line 237
    sget-object v1, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;->LEFT:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

    iput-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mDirection:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

    goto :goto_3

    .line 239
    :cond_8
    sget-object v1, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;->RIGHT:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

    iput-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mDirection:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

    goto :goto_3

    .line 242
    :cond_9
    sget-object v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    const-string v2, "begin direction should not enter this state."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public onTilt(FF)V
    .locals 7
    .parameter "tilt"
    .parameter "speed"

    .prologue
    .line 1079
    sget-object v4, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FxWorkspace.onTilt("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") - enter"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v4}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    .line 1082
    .local v0, currentClient:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;
    if-nez v0, :cond_1

    .line 1105
    :cond_0
    :goto_0
    return-void

    .line 1085
    :cond_1
    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreens()Ljava/util/List;

    move-result-object v2

    .line 1086
    .local v2, screens:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;>;"
    if-eqz v2, :cond_0

    .line 1089
    iput p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mTiltValue:F

    .line 1090
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->isPortrait()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1092
    iget v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentScreen:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;

    iget v5, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mTiltValue:F

    invoke-virtual {v4, v5, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->setSensorValue(FF)V

    .line 1101
    :cond_2
    sget-object v4, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FxWorkspace.onTilt("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") - exit"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1096
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 1097
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 1098
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;

    const/high16 v5, 0x3f80

    iget v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mTiltValue:F

    sub-float/2addr v5, v6

    invoke-virtual {v4, v5, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->setSensorValue(FF)V

    .line 1097
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public onTouch(Landroid/view/MotionEvent;I)V
    .locals 2
    .parameter "ev"
    .parameter "x"

    .prologue
    .line 1290
    iget-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIsFlingMode:Z

    if-eqz v0, :cond_0

    .line 1291
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIsFlingMode:Z

    .line 1292
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mZoomRatio:F

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLastZoomRatio:F

    .line 1294
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 1295
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentScrollX:I

    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getWidth()I

    move-result v1

    div-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLastScrollX:I

    .line 1297
    :cond_1
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "from"
    .parameter "ev"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1155
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1156
    .local v0, action:I
    if-eqz v0, :cond_0

    if-ne v0, v6, :cond_1

    .line 1158
    :cond_0
    sget-object v2, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DEBUG_TOUCH] onTouch("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    :cond_1
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isTabletDevice()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1163
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mButtonBarHandler:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->getButtonBarLongClickX(FF)I

    move-result v2

    iput v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIndexOfButtonbarTouch:I

    .line 1165
    :cond_2
    iput-object p2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mMotionEvent:Landroid/view/MotionEvent;

    .line 1166
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mSnapInfo:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$SnapInfo;

    iput-boolean v5, v2, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$SnapInfo;->isSnap:Z

    .line 1167
    iput-boolean v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mTouchByDelegate:Z

    .line 1168
    invoke-virtual {p0, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1169
    .local v1, handled:Z
    iput-boolean v5, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mTouchByDelegate:Z

    .line 1171
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    .line 1260
    invoke-super {p0, p1}, Lcom/htc/fusion/fx/FxView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1261
    .local v0, ret:Z
    sget-boolean v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->DEBUG_TOUCH:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "on touch:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public playPhoneAnim()V
    .locals 0

    .prologue
    .line 2961
    return-void
.end method

.method public playSink()V
    .locals 2

    .prologue
    .line 2453
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getPageSinkControl()Lcom/htc/android/rosie/home/fxcontrol/IPageSinkControl;

    move-result-object v0

    .line 2454
    .local v0, sinkControl:Lcom/htc/android/rosie/home/fxcontrol/IPageSinkControl;
    if-nez v0, :cond_0

    .line 2458
    :goto_0
    return-void

    .line 2457
    :cond_0
    const/high16 v1, 0x3f80

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/home/fxcontrol/IPageSinkControl;->playSink(F)V

    goto :goto_0
.end method

.method public populateOtherScreens()V
    .locals 1

    .prologue
    .line 447
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->changeScreensVisibility(Z)V

    .line 448
    return-void
.end method

.method prepareDragView(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 7
    .parameter "name"
    .parameter "icon"

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2800
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2801
    .local v1, mDrag:Landroid/widget/TextView;
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2802
    .local v6, lp:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2803
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2804
    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 2806
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2807
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2808
    const/high16 v0, 0x4190

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2810
    if-eqz p2, :cond_0

    .line 2811
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-static {p2, v0}, Lcom/htc/launcher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 2813
    :cond_0
    invoke-virtual {v1, v3, p2, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v2

    .line 2815
    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 2816
    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mOffsetX:I

    .line 2817
    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mOffsetY:I

    .line 2819
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mOffsetX:I

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mOffsetY:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mOffsetX:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iget v5, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mOffsetY:I

    add-int/2addr v4, v5

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 2821
    invoke-virtual {v1}, Landroid/widget/TextView;->isDrawingCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2822
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    .line 2823
    invoke-virtual {v1}, Landroid/widget/TextView;->buildDrawingCache()V

    .line 2825
    :cond_1
    return-object v1
.end method

.method public prepareUnlockAnimation(Z)V
    .locals 1
    .parameter "useCache"

    .prologue
    .line 2470
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->prepareUnlockAnimation(Z)V

    .line 2471
    return-void
.end method

.method public pulseFreezeAllScreens()V
    .locals 1

    .prologue
    .line 597
    iget-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mSlideSceneVisibility:Z

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->pulseFreezeAllScreens()V

    .line 599
    :cond_0
    return-void
.end method

.method public putItem(Lcom/htc/launcher/FxItem;Landroid/graphics/RectF;)Z
    .locals 3
    .parameter "item"
    .parameter "bounds"

    .prologue
    const/4 v0, 0x1

    .line 722
    sget-boolean v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->localLOGD:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[EDIT_DEBUG] FxWorkspace.putItem()"

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    :cond_0
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mFloatingScreenItem:Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;

    if-nez v1, :cond_2

    .line 725
    sget-boolean v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->localLOGD:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[EDIT_DEBUG] FxWorkspace.putItem() - setupFloating()"

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->setupFloating(Lcom/htc/launcher/FxItem;Landroid/graphics/RectF;)Lcom/htc/fusion/fx/FxScene;

    .line 728
    iput-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mIsStartDrag:Z

    .line 733
    :goto_0
    return v0

    .line 732
    :cond_2
    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is something in the air already:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mFloatingScreenItem:Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;

    iget-object v2, v2, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->mFxItem:Lcom/htc/launcher/FxItem;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public releaseScreenCache()V
    .locals 5

    .prologue
    .line 3111
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreens()Ljava/util/List;

    move-result-object v2

    .line 3112
    .local v2, screens:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 3113
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 3114
    iget v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentScreen:I

    if-eq v1, v3, :cond_0

    iget v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentHomeIndex:I

    if-ne v1, v3, :cond_1

    .line 3113
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3116
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->thawScreen(Z)V

    goto :goto_1

    .line 3118
    :cond_2
    return-void
.end method

.method public removeAllItems()V
    .locals 2

    .prologue
    .line 1028
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->removeAllItems()V

    .line 1029
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getAnother()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    .line 1030
    .local v0, anotherClient:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->removeAllItems()V

    .line 1032
    :cond_0
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->m_NavBarButtonHandler:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavBarButtonHandler;

    if-eqz v1, :cond_1

    .line 1033
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->m_NavBarButtonHandler:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavBarButtonHandler;

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavBarButtonHandler;->removeAllItems()V

    .line 1035
    :cond_1
    return-void
.end method

.method public removeButtonBarShortcut(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3073
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mButtonBarHandler:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;

    if-nez v3, :cond_1

    .line 3074
    const/4 v0, 0x0

    .line 3089
    :cond_0
    return-object v0

    .line 3076
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3077
    .local v0, appInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/ApplicationInfo;>;"
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mButtonBarHandler:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->getButtonBarItemNum()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 3079
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mButtonBarHandler:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;

    invoke-virtual {v3, v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->getButtonInfo(I)Lcom/htc/launcher/ApplicationInfo;

    move-result-object v2

    .line 3082
    .local v2, info:Lcom/htc/launcher/ApplicationInfo;
    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/htc/launcher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/htc/launcher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3084
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mButtonBarHandler:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;

    invoke-virtual {v3, v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->removeOriButtonInfo(I)V

    .line 3085
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3077
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public removeItem()Z
    .locals 2

    .prologue
    .line 850
    sget-boolean v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->localLOGD:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[EDIT_DEBUG]# FxWorkspace.removeItem() - enter"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mFloatingScreenItem:Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;

    if-eqz v0, :cond_2

    .line 853
    sget-boolean v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->localLOGD:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    const-string v1, "remove floating scene"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    :cond_1
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mFloatingScreenItem:Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->detach()Z

    .line 855
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mFloatingScreenItem:Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;

    .line 856
    const/4 v0, 0x1

    .line 858
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeItemFromScreen(II)Z
    .locals 3
    .parameter "screen"
    .parameter "id"

    .prologue
    .line 1019
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->removeItemFromScreen(II)Z

    move-result v1

    .line 1020
    .local v1, ret:Z
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getAnother()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    .line 1021
    .local v0, other:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1022
    invoke-virtual {v0, p1, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->removeItemFromScreen(II)Z

    .line 1024
    :cond_0
    return v1
.end method

.method public removeItemFromScreen(Lcom/htc/launcher/Draggee;I)Z
    .locals 5
    .parameter "dragItem"
    .parameter "from"

    .prologue
    .line 980
    sget-boolean v3, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->localLOGD:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[EDIT_DEBUG] FxWorkspace.removeItemFromScreen() - 2"

    invoke-static {v3, v4}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    :cond_0
    invoke-virtual {p0, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getScreen(I)Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    move-result-object v2

    .line 982
    .local v2, source:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;
    if-eqz p1, :cond_1

    if-nez v2, :cond_3

    .line 983
    :cond_1
    const/4 v1, 0x0

    .line 993
    :cond_2
    :goto_0
    return v1

    .line 985
    :cond_3
    invoke-virtual {v2, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->removeItem(Lcom/htc/launcher/Draggee;)Z

    move-result v1

    .line 987
    .local v1, ret:Z
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getAnother()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    .line 988
    .local v0, other:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 989
    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreens()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;

    iget-object v2, v3, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFxScreen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    .line 990
    invoke-virtual {v2, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->removeItem(Lcom/htc/launcher/Draggee;)Z

    goto :goto_0
.end method

.method public removeItemSceneFromScreen(Lcom/htc/launcher/Draggee;I)Z
    .locals 5
    .parameter "dragItem"
    .parameter "from"

    .prologue
    .line 997
    sget-boolean v3, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->localLOGD:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[EDIT_DEBUG] FxWorkspace.removeItemSceneFromScreen()"

    invoke-static {v3, v4}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    :cond_0
    invoke-virtual {p0, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getScreen(I)Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    move-result-object v2

    .line 999
    .local v2, source:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;
    if-eqz p1, :cond_1

    if-nez v2, :cond_3

    .line 1000
    :cond_1
    const/4 v1, 0x0

    .line 1010
    :cond_2
    :goto_0
    return v1

    .line 1002
    :cond_3
    invoke-virtual {v2, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->removeItemScene(Lcom/htc/launcher/Draggee;)Z

    move-result v1

    .line 1004
    .local v1, ret:Z
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getAnother()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    .line 1005
    .local v0, other:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 1006
    invoke-virtual {v0, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreen(I)Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    move-result-object v2

    .line 1007
    invoke-virtual {v2, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->removeItemScene(Lcom/htc/launcher/Draggee;)Z

    goto :goto_0
.end method

.method public resetSink()V
    .locals 2

    .prologue
    .line 2461
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getPageSinkControl()Lcom/htc/android/rosie/home/fxcontrol/IPageSinkControl;

    move-result-object v0

    .line 2462
    .local v0, sinkControl:Lcom/htc/android/rosie/home/fxcontrol/IPageSinkControl;
    if-nez v0, :cond_0

    .line 2466
    :goto_0
    return-void

    .line 2465
    :cond_0
    invoke-interface {v0}, Lcom/htc/android/rosie/home/fxcontrol/IPageSinkControl;->reset()V

    goto :goto_0
.end method

.method public resumeItemInScreen(Lcom/htc/launcher/Draggee;IIII)Z
    .locals 5
    .parameter "dragItem"
    .parameter "from"
    .parameter "to"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 931
    invoke-virtual {p0, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getScreen(I)Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    move-result-object v2

    .local v2, source:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;
    invoke-virtual {p0, p3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getScreen(I)Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    move-result-object v3

    .line 932
    .local v3, target:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;
    if-eqz p1, :cond_0

    if-eqz v2, :cond_0

    if-nez v3, :cond_2

    .line 933
    :cond_0
    const/4 v1, 0x0

    .line 945
    :cond_1
    :goto_0
    return v1

    .line 935
    :cond_2
    invoke-virtual {v2, p1, v3, p4, p5}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->resumeItem(Lcom/htc/launcher/Draggee;Lcom/htc/android/rosie/home/fxcontrol/FxScreen;II)Z

    move-result v1

    .line 938
    .local v1, ret:Z
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v4}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getAnother()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    .line 939
    .local v0, otherClient:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 940
    invoke-virtual {v0, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreen(I)Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    move-result-object v2

    .line 941
    invoke-virtual {v0, p3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreen(I)Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    move-result-object v3

    .line 942
    invoke-virtual {v2, p1, v3, p4, p5}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->resumeItem(Lcom/htc/launcher/Draggee;Lcom/htc/android/rosie/home/fxcontrol/FxScreen;II)Z

    goto :goto_0
.end method

.method public setCurrentScreen(II)V
    .locals 4
    .parameter "screen"
    .parameter "width"

    .prologue
    .line 252
    sget-boolean v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->localLOGD:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentScreen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_0
    mul-int v0, p1, p2

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentScrollX:I

    .line 254
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getPageSlideControl()Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;

    move-result-object v0

    iget v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentScrollX:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mDirection:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mSnapInfo:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$SnapInfo;

    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->slideTo(FILcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$SnapInfo;)V

    .line 255
    return-void
.end method

.method public setDragger(Lcom/htc/launcher/DragController;)V
    .locals 0
    .parameter "dragger"

    .prologue
    .line 2829
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mDragger:Lcom/htc/launcher/DragController;

    .line 2830
    return-void
.end method

.method public setEditModeListener(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IEditModeListener;)V
    .locals 1
    .parameter "editModeListener"

    .prologue
    .line 3053
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->setEditModeListener(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IEditModeListener;)V

    .line 3054
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getAnother()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3055
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getAnother()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->setEditModeListener(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IEditModeListener;)V

    .line 3057
    :cond_0
    return-void
.end method

.method public setMotionEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "ev"

    .prologue
    .line 3364
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mMotionEvent:Landroid/view/MotionEvent;

    .line 3365
    return-void
.end method

.method public setPageSlideZFrame(IIII)V
    .locals 1
    .parameter "begin"
    .parameter "end"
    .parameter "screenWidth"
    .parameter "scrollX"

    .prologue
    .line 1580
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getPageSlideZControl()Lcom/htc/android/rosie/home/fxcontrol/PageSlideZControl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/android/rosie/home/fxcontrol/PageSlideZControl;->setFrame(IIII)V

    .line 1581
    return-void
.end method

.method public setPanFrame(F)V
    .locals 3
    .parameter "value"

    .prologue
    .line 1574
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreens()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;

    .line 1575
    .local v0, holder:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mDirection:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

    #calls: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->setPanFrame(FLcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;)V
    invoke-static {v0, p1, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->access$700(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;FLcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;)V

    goto :goto_0

    .line 1577
    .end local v0           #holder:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;
    :cond_0
    return-void
.end method

.method public setUnlockAnimationListener(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IUnlockAnimationListener;)V
    .locals 2
    .parameter "unlockAnimationListener"

    .prologue
    .line 2486
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mUnlockAnimationListener:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IUnlockAnimationListener;

    .line 2487
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getPageSlideControl()Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2488
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getPageSlideControl()Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mUnlockAnimationListener:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IUnlockAnimationListener;

    invoke-virtual {v0, v1}, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->setUnlockAnimationListener(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IUnlockAnimationListener;)V

    .line 2489
    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getAnother()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getAnother()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getPageSlideControl()Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2490
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getAnother()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getPageSlideControl()Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mUnlockAnimationListener:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IUnlockAnimationListener;

    invoke-virtual {v0, v1}, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->setUnlockAnimationListener(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IUnlockAnimationListener;)V

    .line 2491
    :cond_1
    return-void
.end method

.method public setUnlockframeFlag(Z)V
    .locals 1
    .parameter "set"

    .prologue
    .line 2474
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->setUnlockframeFlag(Z)V

    .line 2475
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getAnother()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2476
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getAnother()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->setUnlockframeFlag(Z)V

    .line 2479
    :cond_0
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 406
    sget-boolean v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->localLOGD:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mSlideScene Visibility: true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getSlideScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/FxScene;->setVisibility(Z)Ljava/util/ArrayList;

    .line 408
    iput-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mSlideSceneVisibility:Z

    .line 409
    return-void
.end method

.method public showAllScreens()V
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->showAllScreens()V

    .line 586
    return-void
.end method

.method public showDrag(Lcom/htc/launcher/ItemInfo;)V
    .locals 5
    .parameter "itemInfo"

    .prologue
    .line 950
    if-nez p1, :cond_1

    .line 951
    sget-boolean v2, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->localLOGD:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[EDIT_DEBUG]# FxWorkspace.showDrag() itemInfo = null, return!"

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    :cond_0
    :goto_0
    return-void

    .line 955
    :cond_1
    iget v2, p1, Lcom/htc/launcher/ItemInfo;->screen:I

    invoke-virtual {p0, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getScreen(I)Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    move-result-object v1

    .line 956
    .local v1, source:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;
    if-nez v1, :cond_2

    .line 957
    sget-boolean v2, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->localLOGD:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[EDIT_DEBUG]# FxWorkspace.showDrag() Source screen = null, return!"

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 961
    :cond_2
    invoke-virtual {v1, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->getDesktopItem(Lcom/htc/launcher/ItemInfo;)Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;

    move-result-object v0

    .line 962
    .local v0, item:Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;
    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->mItemContainer:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;

    if-nez v2, :cond_4

    .line 963
    :cond_3
    sget-boolean v2, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->localLOGD:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[EDIT_DEBUG]# FxWorkspace.showDrag() MyItemContainer = null, return!"

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 967
    :cond_4
    sget-boolean v2, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->localLOGD:Z

    if-eqz v2, :cond_5

    sget-object v2, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[EDIT_DEBUG]# FxWorkspace.showDrag("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    :cond_5
    iget-object v2, v0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->mItemContainer:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->setDragVisibility(Z)V

    goto :goto_0
.end method

.method public showFunctionBarHighlight()V
    .locals 1

    .prologue
    .line 3244
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getCurrentWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3245
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getCurrentWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->showFunctionBtnHighlight()V

    .line 3247
    :cond_0
    return-void
.end method

.method public showTipBubble()V
    .locals 3

    .prologue
    .line 2358
    sget-boolean v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->localLOGD:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    const-string v2, "showTipBubble"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2359
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentPagesCount:I

    if-ge v0, v1, :cond_1

    .line 2360
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreens()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;

    iget-object v1, v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFxScreen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->setBackPanelMode(I)V

    .line 2359
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2361
    :cond_1
    return-void
.end method

.method public startDragFromNavBar(I)V
    .locals 12
    .parameter "index"

    .prologue
    const/4 v11, 0x1

    .line 3339
    iget-object v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v6}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->m_strScopeLauncherBarAccept:[Ljava/lang/String;

    invoke-virtual {v6, p1, v7}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->setDragScopeForNavBarDropControl(I[Ljava/lang/String;)V

    .line 3340
    iget-object v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v6}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v6

    invoke-virtual {v6, p1, v11}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->setEnableForNavBarDropControl(IZ)V

    .line 3342
    iget-object v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLauncher:Lcom/htc/launcher/Launcher;

    iget-object v6, v6, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v6}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getCurrentWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getNavbarDropTarget(I)Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;

    move-result-object v4

    .line 3343
    .local v4, launcherBar:Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;
    invoke-virtual {v4}, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->getItem()Lcom/htc/launcher/FxItem;

    move-result-object v1

    check-cast v1, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;

    .line 3344
    .local v1, button:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;
    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->getInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v3

    check-cast v3, Lcom/htc/launcher/FxShortcutInfo;

    .line 3346
    .local v3, info:Lcom/htc/launcher/FxShortcutInfo;
    iget-object v6, v3, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    iget-object v7, v3, Lcom/htc/launcher/FxShortcutInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v6, v7}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->prepareDragView(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v2

    .line 3347
    .local v2, icon:Landroid/view/View;
    if-nez v2, :cond_0

    .line 3348
    sget-object v6, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    const-string v7, "prepareDragView failed title:%s, icon:%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, v3, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    aput-object v10, v8, v9

    iget-object v9, v3, Lcom/htc/launcher/FxShortcutInfo;->icon:Landroid/graphics/drawable/Drawable;

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3361
    :goto_0
    return-void

    .line 3351
    :cond_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3353
    iget-object v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v6}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/htc/launcher/DesktopItemController;->getExternalFloatingBounds(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v0

    .line 3355
    .local v0, bounds:Landroid/graphics/RectF;
    iget-object v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v6}, Lcom/htc/launcher/Launcher;->getFxWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getNavBarButtonHandler()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavBarButtonHandler;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavBarButtonHandler;->getSceneContainer(I)Lcom/htc/fusion/fx/controls/FxSceneContainer;

    move-result-object v5

    .line 3356
    .local v5, sc:Lcom/htc/fusion/fx/controls/FxSceneContainer;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->removeScene(Lcom/htc/fusion/fx/FxObject;)V

    .line 3358
    invoke-virtual {v1, v11}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->setTextLabelVisibility(Z)V

    .line 3359
    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->onBeforeDrag()V

    .line 3360
    iget-object v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v6}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v6

    invoke-virtual {v6, v4, v1, v0}, Lcom/htc/launcher/DesktopItemController;->startDragFxWidget(Lcom/htc/launcher/DragSource;Lcom/htc/launcher/FxItem;Landroid/graphics/RectF;)Z

    goto :goto_0
.end method

.method public stopPhoneAnim()V
    .locals 0

    .prologue
    .line 2965
    return-void
.end method

.method switchMode(II)V
    .locals 2
    .parameter "mode"
    .parameter "op"

    .prologue
    .line 480
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mSwitchModeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 481
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->doSwitchMode(II)V

    .line 482
    monitor-exit v1

    .line 483
    return-void

    .line 482
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public syncItemInAnotherScreen(Lcom/htc/launcher/Draggee;IIII)Z
    .locals 3
    .parameter "dragItem"
    .parameter "from"
    .parameter "to"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 921
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getAnother()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    .line 922
    .local v0, otherClient:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;
    if-eqz v0, :cond_0

    .line 923
    invoke-virtual {v0, p3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreen(I)Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    move-result-object v1

    .line 924
    .local v1, target:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;
    invoke-virtual {v1, p1, p4, p5}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->syncItemInfo(Lcom/htc/launcher/Draggee;II)V

    .line 926
    .end local v1           #target:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public thawAllScreens()V
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->thawAllScreens()V

    .line 590
    return-void
.end method

.method public thawLauncherBar()V
    .locals 4

    .prologue
    .line 643
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getCurrentWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getNavbarButtons()Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;

    move-result-object v2

    .line 644
    .local v2, navbarButton:Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;
    if-nez v2, :cond_1

    .line 656
    :cond_0
    return-void

    .line 648
    :cond_1
    const/4 v1, 0x0

    .line 649
    .local v1, nIndex:I
    invoke-virtual {v2, v1}, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;->getSceneContainer(I)Lcom/htc/fusion/fx/controls/FxSceneContainer;

    move-result-object v0

    .line 650
    .local v0, fxSceneContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;
    :goto_0
    if-eqz v0, :cond_0

    .line 651
    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->thaw()V

    .line 653
    add-int/lit8 v1, v1, 0x1

    .line 654
    invoke-virtual {v2, v1}, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;->getSceneContainer(I)Lcom/htc/fusion/fx/controls/FxSceneContainer;

    move-result-object v0

    goto :goto_0
.end method

.method public thawNavBar()V
    .locals 2

    .prologue
    .line 623
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getNavigationBar()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->freeze(Z)V

    .line 624
    return-void
.end method

.method public thawScreen(I)V
    .locals 1
    .parameter "nScreenId"

    .prologue
    .line 593
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->thawScreen(I)V

    .line 594
    return-void
.end method

.method public unlockAnimation()V
    .locals 2

    .prologue
    .line 2432
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getPageSlideControl()Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2442
    :goto_0
    return-void

    .line 2435
    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getPageSlideControl()Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->unlockAnimation()V

    .line 2437
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2438
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->stopFade(Z)V

    .line 2439
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->showAllScreens()V

    .line 2441
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->show()V

    goto :goto_0
.end method

.method public unlockAnimationStop()V
    .locals 1

    .prologue
    .line 2445
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getPageSlideControl()Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2450
    :goto_0
    return-void

    .line 2448
    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getPageSlideControl()Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->unlockAnimationStop()V

    goto :goto_0
.end method

.method unlockFadeBackPanels()Z
    .locals 6

    .prologue
    .line 2523
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreens()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_0

    .line 2524
    const/4 v0, 0x0

    .line 2532
    :goto_0
    return v0

    .line 2525
    :cond_0
    const/4 v0, 0x1

    .line 2526
    .local v0, canPlayAnimation:Z
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreens()Ljava/util/List;

    move-result-object v4

    monitor-enter v4

    .line 2527
    :try_start_0
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreens()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;

    .line 2528
    .local v2, sh:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;
    iget-object v3, v2, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFxScreen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->fadeBackPanel(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2529
    const/4 v0, 0x0

    goto :goto_1

    .line 2531
    .end local v2           #sh:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;
    :cond_2
    monitor-exit v4

    goto :goto_0

    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public updateFxScreen()V
    .locals 3

    .prologue
    .line 2413
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentPagesCount:I

    if-ge v0, v1, :cond_0

    .line 2414
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreens()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->updateFxWidgets(Lcom/htc/launcher/Launcher;)V

    .line 2413
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2416
    :cond_0
    return-void
.end method

.method public updateFxWorkspace(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfiguration"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2311
    invoke-virtual {p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->updateOrientation(Landroid/content/res/Configuration;)V

    .line 2313
    invoke-virtual {p0, v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->freeze(Z)V

    .line 2317
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->detach()V

    .line 2318
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getAnother()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    .line 2319
    .local v0, prevClient:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;
    if-eqz v0, :cond_0

    .line 2320
    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->detach()V

    .line 2323
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->updateFxScreen()V

    .line 2325
    iget v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mMode:I

    packed-switch v1, :pswitch_data_0

    .line 2341
    :goto_0
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isSupportLandscape()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2342
    invoke-direct {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->updateDropTargets()V

    .line 2345
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->resetQuickScroll()V

    .line 2346
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getPageSinkControl()Lcom/htc/android/rosie/home/fxcontrol/IPageSinkControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/android/rosie/home/fxcontrol/IPageSinkControl;->reset()V

    .line 2348
    invoke-virtual {p0, v4}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->freeze(Z)V

    .line 2351
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v1, v2}, Lcom/htc/fusion/fx/FxSkinUtility;->loadSkinResource(Landroid/content/Context;I)V

    .line 2355
    return-void

    .line 2327
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->show()V

    .line 2328
    sget-boolean v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->localLOGD:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    const-string v2, "addScene: SlideScene"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2329
    :cond_2
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getPageContainer()Lcom/htc/fusion/fx/controls/FxSceneContainer;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->attachTo(Lcom/htc/fusion/fx/controls/FxSceneContainer;I)V

    goto :goto_0

    .line 2332
    :pswitch_1
    sget-boolean v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->localLOGD:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    const-string v2, "addScene: LeapScene"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2333
    :cond_3
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getPageContainer()Lcom/htc/fusion/fx/controls/FxSceneContainer;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->attachTo(Lcom/htc/fusion/fx/controls/FxSceneContainer;I)V

    goto :goto_0

    .line 2336
    :pswitch_2
    sget-boolean v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->localLOGD:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    const-string v2, "addScene: LeapRearrangeScene"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2337
    :cond_4
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getPageContainer()Lcom/htc/fusion/fx/controls/FxSceneContainer;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->attachTo(Lcom/htc/fusion/fx/controls/FxSceneContainer;I)V

    goto/16 :goto_0

    .line 2325
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public updateInitFrame()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getPageSlideControl()Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->initFrame()V

    .line 260
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getAnother()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getAnother()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getPageSlideControl()Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->initFrame()V

    .line 262
    :cond_0
    return-void
.end method

.method public updateMotionDown(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1177
    iput p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLastMotionDownX:F

    .line 1178
    iput p2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLastMotionDownY:F

    .line 1179
    return-void
.end method

.method public updateOrientation(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    const/4 v0, 0x1

    .line 1626
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->sIsPortrait:Z

    .line 1627
    return-void

    .line 1626
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateScreenIndices([I)V
    .locals 12
    .parameter "originalIndices"

    .prologue
    .line 2548
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2549
    .local v7, screenCaches:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2550
    .local v8, sensorAnimationCaches:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2551
    .local v0, fadeAnimationCaches:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;>;"
    iget-object v9, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v9}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreens()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;

    .line 2552
    .local v1, holder:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2553
    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mSensorAnimation:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;
    invoke-static {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->access$1600(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;)Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2554
    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFadeAnimation:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;
    invoke-static {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->access$1700(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;)Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2557
    .end local v1           #holder:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;
    :cond_0
    invoke-static {}, Lcom/htc/launcher/PagesManager;->instance()Lcom/htc/launcher/PagesManager;

    move-result-object v6

    .line 2558
    .local v6, pm:Lcom/htc/launcher/PagesManager;
    const/4 v2, 0x0

    .line 2560
    .local v2, homeChanged:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getScreens()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_3

    .line 2561
    aget v9, p1, v3

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;

    .line 2562
    .restart local v1       #holder:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;
    sget-boolean v9, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->localLOGD:Z

    if-eqz v9, :cond_1

    sget-object v9, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[ROSIE_DEBUG] set "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v11, p1, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2564
    :cond_1
    aget v9, p1, v3

    iget v10, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentHomeIndex:I

    if-ne v9, v10, :cond_2

    if-nez v2, :cond_2

    iget v9, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mCurrentHomeIndex:I

    if-eq v3, v9, :cond_2

    .line 2565
    invoke-virtual {v6, v3}, Lcom/htc/launcher/PagesManager;->setHomeIndex(I)V

    .line 2566
    const/4 v2, 0x1

    .line 2567
    sget-boolean v9, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->localLOGD:Z

    if-eqz v9, :cond_2

    sget-object v9, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HomeIndexChanged : set HomeIndex to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2569
    :cond_2
    iget-object v9, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v9}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreens()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2570
    invoke-virtual {v1, v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->updateScreenId(I)V

    .line 2571
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    invoke-virtual {v1, v9}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->setSensor(Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;)V

    .line 2572
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    invoke-virtual {v1, v9}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->setFadeAnimation(Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;)V

    .line 2573
    iget-object v9, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v9}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v9

    iget-object v10, v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFxScreen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->getFxItems()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v9, v10, v3}, Lcom/htc/launcher/DesktopItemController;->updateWidgetContainerId(Ljava/util/List;I)V

    .line 2560
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 2576
    .end local v1           #holder:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;
    :cond_3
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 2577
    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 2578
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2580
    iget-object v9, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    invoke-virtual {v9}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getAnother()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v5

    .line 2581
    .local v5, other:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;
    if-eqz v5, :cond_6

    .line 2582
    invoke-virtual {v5}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreens()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;

    .line 2583
    .restart local v1       #holder:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2584
    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mSensorAnimation:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;
    invoke-static {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->access$1600(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;)Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2585
    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFadeAnimation:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;
    invoke-static {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->access$1700(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;)Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2588
    .end local v1           #holder:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;
    :cond_4
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getScreens()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_6

    .line 2589
    aget v9, p1, v3

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;

    .line 2590
    .restart local v1       #holder:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;
    sget-boolean v9, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->localLOGD:Z

    if-eqz v9, :cond_5

    sget-object v9, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[ROSIE_DEBUG] set "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v11, p1, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2591
    :cond_5
    invoke-virtual {v5}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreens()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2592
    invoke-virtual {v1, v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->updateScreenId(I)V

    .line 2593
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    invoke-virtual {v1, v9}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->setSensor(Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;)V

    .line 2594
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    invoke-virtual {v1, v9}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->setFadeAnimation(Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;)V

    .line 2595
    iget-object v9, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v9}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v9

    iget-object v10, v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFxScreen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->getFxItems()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v9, v10, v3}, Lcom/htc/launcher/DesktopItemController;->updateWidgetContainerId(Ljava/util/List;I)V

    .line 2588
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2599
    .end local v1           #holder:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;
    :cond_6
    iget-object v9, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v9}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/htc/launcher/DesktopItemController;->onLeapRearrangeComplete([I)V

    .line 2600
    return-void
.end method

.method public updateSnapInfo(II)V
    .locals 1
    .parameter "endScreen"
    .parameter "snapOffset"

    .prologue
    .line 3067
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mSnapInfo:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$SnapInfo;

    iput p1, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$SnapInfo;->end:I

    .line 3068
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mSnapInfo:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$SnapInfo;

    iput p2, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$SnapInfo;->snapOffset:I

    .line 3069
    return-void
.end method
