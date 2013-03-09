.class public Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;
.super Ljava/lang/Object;
.source "FxWorkspaceClient.java"

# interfaces
.implements Lcom/htc/launcher/WallpaperManager$OnWallpaperChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$InComingCallControl;,
        Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$CustomizeShortcut;,
        Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$MiddleButtonZone;,
        Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$EditZone;,
        Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$RemoveZone;
    }
.end annotation


# static fields
.field private static final ADD_CONTENT_LABEL:Ljava/lang/String; = "add_panel"

.field private static final ADD_PANEL_BAR_BKG:Ljava/lang/String; = "timeline.NavBar_add_bg"

.field private static final ADD_PANEL_BAR_BTN:Ljava/lang/String; = "timeline.NavBar_add_btn"

.field private static final ADD_PANEL_BAR_CONTENT:Ljava/lang/String; = "timeline.NavBar_add_content"

.field private static final BKG_CONTAINER_FX_NAME:Ljava/lang/String; = "scenecontainer.bg_effects"

.field private static final BKG_IMG_WALLPAPER_FX_NAME:Ljava/lang/String; = "dy.wallpaper"

.field private static final BUTTON_BAR_BKG:Ljava/lang/String; = "timeline.NavBar_edit_bg"

.field private static final BUTTON_BAR_CONTENT:Ljava/lang/String; = "timeline.NavBar_edit_content"

.field private static final DRAG:I = 0x1

.field private static final DROP_EDIT_FX_NAME:Ljava/lang/String; = "drop.navbtn_side_left_content"

.field private static final DROP_EDIT_LABEL:Ljava/lang/String; = "edit"

.field private static final DROP_MIDDLE_CENTER_FX_NAME:Ljava/lang/String; = "drop.navbar_middle_center"

.field private static final DROP_MIDDLE_LEFT_FX_NAME:Ljava/lang/String; = "drop.navbar_middle_left"

.field private static final DROP_MIDDLE_RIGHT_FX_NAME:Ljava/lang/String; = "drop.navbar_middle_right"

.field private static final DROP_NAVBAR_LEFT:Ljava/lang/String; = "drop.navbar_left"

.field private static final DROP_NAVBAR_MIDDLE_LEFT:Ljava/lang/String; = "drop.navbar_mid_left"

.field private static final DROP_NAVBAR_MIDDLE_RIGHT:Ljava/lang/String; = "drop.navbar_mid_right"

.field private static final DROP_NAVBAR_RIGHT:Ljava/lang/String; = "drop.navbar_right"

.field private static final DROP_REMOVE_CONTENT_FX_NAME:Ljava/lang/String; = "drop.NavBar_remove_content"

.field private static final DROP_REMOVE_CONTENT_LABEL:Ljava/lang/String; = "remove_panel_button"

.field private static final DROP_REMOVE_FX_NAME:Ljava/lang/String; = "drop.navbtn_side_right_content"

.field private static final DROP_REMOVE_LABEL:Ljava/lang/String; = "Remove"

.field private static final EDIT:I = 0x2

.field private static final EDIT_HEADER_BAR:Ljava/lang/String; = "edit_header"

.field private static final EDIT_HEADER_LABEL:Ljava/lang/String; = "Panel"

.field private static final EDIT_HEADER_REMOVE_LABEL:Ljava/lang/String; = "Remove_Panel"

.field private static final FUNCTION_BAR_BKG:Ljava/lang/String; = "timeline.NavBar_phone_bg"

.field private static final FUNCTION_BAR_BTN:Ljava/lang/String; = "timeline.NavBar_phone_btn"

.field private static final FUNCTION_BAR_CONTENT:Ljava/lang/String; = "timeline.NavBar_phone_content"

.field private static final FUNC_BTN_HIGHLIGHT_MARKER:Ljava/lang/String; = "highlight"

.field private static final FUNC_BTN_HIGHLIGHT_TIMELINE_LEFT:Ljava/lang/String; = "drop.navbtn_side_left_content"

.field private static final FUNC_BTN_HIGHLIGHT_TIMELINE_RIGHT:Ljava/lang/String; = "drop.navbtn_side_right_content"

.field private static final IN_EDITZONE:I = -0x3c0

.field public static final IN_LEFT:I = 0x0

.field public static final IN_MIDDLE_CENTER:I = 0x1

.field public static final IN_MIDDLE_LEFT:I = 0x1

.field public static final IN_MIDDLE_RIGHT:I = 0x2

.field private static final IN_REMOVEZONE:I = -0x3c1

.field public static final IN_RIGHT:I = 0x3

.field private static final IN_WORKSPACE:I = -0x3c2

.field private static final LEAP_CONTAINER:Ljava/lang/String; = "scenecontainer.leap_contents"

.field private static final LEAP_FX_PREFIX:Ljava/lang/String; = "scenecontainer.container_main_0"

.field private static final LEAP_M10:Ljava/lang/String; = "Rosie_leap.m10"

.field private static final LEAP_PANEL_FX_PREFIX:Ljava/lang/String; = "comp.leap_view_panel_0"

.field private static final LEAP_REARRANGE_M10:Ljava/lang/String; = "Rosie_leap_rearrange.m10"

.field private static final LOG_TAG:Ljava/lang/String; = null

.field static final MODE_LEAP:I = 0x1

.field static final MODE_LEAP_REARRANGE:I = 0x2

.field static final MODE_SCROLL:I = 0x0

.field private static final NAME_BUTTON_ALLAPPS:Ljava/lang/String; = "timeline.icon_all_apps_rest"

.field private static final NAME_BUTTON_BACKGROUND_IMAGE_CENTER:Ljava/lang/String; = "timeline.slots_rounded2"

.field private static final NAME_BUTTON_BACKGROUND_IMAGE_LEFT:Ljava/lang/String; = "timeline.slots_rounded3"

.field private static final NAME_BUTTON_BACKGROUND_IMAGE_RIGHT:Ljava/lang/String; = "timeline.slots_rounded1"

.field private static final NAME_BUTTON_DRAG_CENTER:Ljava/lang/String; = "drag.navbar_appicon_center"

.field private static final NAME_BUTTON_DRAG_LEFT:Ljava/lang/String; = "drag.navbar_appicon_left"

.field private static final NAME_BUTTON_DRAG_RIGHT:Ljava/lang/String; = "drag.navbar_appicon_right"

.field private static final NAME_BUTTON_IMAGE_CENTER:Ljava/lang/String; = "di.navbar_appicon_center"

.field private static final NAME_BUTTON_IMAGE_LEFT:Ljava/lang/String; = "di.navbar_appicon_left"

.field private static final NAME_BUTTON_IMAGE_RIGHT:Ljava/lang/String; = "di.navbar_appicon_right"

.field private static final NAME_BUTTON_LABEL_CENTER:Ljava/lang/String; = "text.navbar_app_center"

.field private static final NAME_BUTTON_LABEL_LEFT:Ljava/lang/String; = "text.navbar_app_left"

.field private static final NAME_BUTTON_LABEL_RIGHT:Ljava/lang/String; = "text.navbar_app_right"

.field private static final NAME_BUTTON_PERSONALIZE:Ljava/lang/String; = "timeline.icon_personalize_rest"

.field private static final NAME_BUTTON_PHONE:Ljava/lang/String; = "timeline.icon_phone_rest"

.field private static final NAVBAR_M10:Ljava/lang/String; = "Rosie_navbar.m10"

.field private static final NAVIGATION_BAR:Ljava/lang/String; = "timeline.NavBar_main"

.field private static final NAV_EDIT_BAR:Ljava/lang/String; = "timeline.NavBar_edit"

.field private static final NONDRAG:I = 0x0

.field static final OP_ALL:I = 0x0

.field static final OP_CURRENT_BESIDE:I = 0x2

.field static final OP_CURRENT_ONLY:I = 0x1

.field private static final PAGES_CONTAINER:Ljava/lang/String; = "scenecontainer.all_pages"

.field private static final PAGE_SLIDE_M10:Ljava/lang/String; = "Rosie_page_slide_main.m10"

.field private static final PAGE_SLIDE_Z:Ljava/lang/String; = "timeline.page_slide_z"

.field private static final PLAY_COMPLETE:I = 0x1

.field private static final REMOVE_PANEL_BAR_BKG:Ljava/lang/String; = "drop.NavBar_remove_bg"

.field private static final REMOVE_PANEL_BAR_CONTENT:Ljava/lang/String; = "drop.NavBar_remove_content"

.field private static final SCROLL_BAR:Ljava/lang/String; = "timeline.NavBar_scroller"

.field private static final SCROLL_BAR_SUB_CONTROL:Ljava/lang/String; = "timeline.scroller_main"

.field private static final SCROLL_CONTAINER_FX_NAME:Ljava/lang/String; = "scenecontainer.Page_template"

.field private static final WORKSPACE_LEAP_FX_PREFIX:Ljava/lang/String; = "timeline.leap_view"

.field private static final WORKSPACE_SCREEN_FX_PREFIX:Ljava/lang/String; = "timeline.Container_Main_0"

.field private static final localLOGD:Z


# instance fields
.field private mAttachedScene:Lcom/htc/fusion/fx/FxScene;

.field public mButtonBarDropControl:[Lcom/htc/fusion/fx/controls/FxDropControl;

.field private mButtonBarDropMarkers:[Lcom/htc/fusion/fx/Marker;

.field private mButtonListener:Lcom/htc/android/rosie/home/fxcontrol/NavbarButton$IButtonListener;

.field private mButtons:Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;

.field private mContext:Landroid/content/Context;

.field private mCustomizeShortcuts:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$CustomizeShortcut;

.field mDontFreezeWhenLeap:Z

.field private mDropBar:Lcom/htc/android/rosie/home/fxcontrol/DropBar;

.field private mEditHeader:Lcom/htc/fusion/fx/FxObject;

.field mEditModeListener:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IEditModeListener;

.field mFadeOutListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

.field private mFxEditBtnTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mFxParent:Lcom/htc/fusion/fx/controls/FxSceneContainer;

.field private mFxRemoveBtnTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

.field private mInComingCallControl:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$InComingCallControl;

.field mIsEnteringEditMode:Z

.field private mIsFirstDraw:Z

.field mIsLeavingEditMode:Z

.field private mIsPortrait:Z

.field private mIsUnlockFrameSet:Z

.field private mLauncher:Lcom/htc/launcher/Launcher;

.field private mLeapContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

.field private mLeapContainers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/fusion/fx/controls/FxSceneContainer;",
            ">;"
        }
    .end annotation
.end field

.field private mLeapControlPanels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/fusion/fx/FxTimelineControl;",
            ">;"
        }
    .end annotation
.end field

.field private mLeapPanels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/fusion/fx/FxNodeControl;",
            ">;"
        }
    .end annotation
.end field

.field private mLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;

.field private mLeapRearrangeScene:Lcom/htc/fusion/fx/FxScene;

.field private mLeapScene:Lcom/htc/fusion/fx/FxScene;

.field private mMode:I

.field private mNavFxObjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/fusion/fx/FxObject;",
            ">;"
        }
    .end annotation
.end field

.field private mNavbarScene:Lcom/htc/fusion/fx/FxScene;

.field private mNavigationBar:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;

.field private mPageContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

.field private mPageLeapControl:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$PageLeapControl;

.field private mPageSinkControl:Lcom/htc/android/rosie/home/fxcontrol/IPageSinkControl;

.field private mPageSlideControl:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;

.field private mPageSlideZControl:Lcom/htc/android/rosie/home/fxcontrol/PageSlideZControl;

.field private mQuickScrolling:Z

.field private mScopeEmpty:[Ljava/lang/String;

.field private mScopeFull:[Ljava/lang/String;

.field private mScreens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollContainers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/fusion/fx/controls/FxSceneContainer;",
            ">;"
        }
    .end annotation
.end field

.field private mSlideFxObjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/fusion/fx/FxObject;",
            ">;"
        }
    .end annotation
.end field

.field private mSlideScene:Lcom/htc/fusion/fx/FxScene;

.field private mWallpaperScene:Lcom/htc/fusion/fx/FxScene;

.field private m_Navbar:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;",
            ">;"
        }
    .end annotation
.end field

.field private mfxDropEdit:Lcom/htc/fusion/fx/controls/FxDropControl;

.field private mfxDropRemove:Lcom/htc/fusion/fx/controls/FxDropControl;

.field private mfxDropRemoveContent:Lcom/htc/fusion/fx/controls/FxDropControl;

.field private navBarTop:I

.field private overlayColorForLeapPanel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->LOG_TAG:Ljava/lang/String;

    .line 50
    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    sput-boolean v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->localLOGD:Z

    return-void
.end method

.method public constructor <init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;ZLcom/htc/android/rosie/home/fxcontrol/NavbarButton$IButtonListener;)V
    .locals 6
    .parameter "fxworkspace"
    .parameter "isPortrait"
    .parameter "buttonListner"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mFxParent:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    .line 96
    iput-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mAttachedScene:Lcom/htc/fusion/fx/FxScene;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mSlideFxObjects:Ljava/util/Map;

    .line 120
    iput-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mEditHeader:Lcom/htc/fusion/fx/FxObject;

    .line 131
    iput v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mMode:I

    .line 135
    iput-boolean v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mIsPortrait:Z

    .line 137
    iput-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;

    .line 151
    iput-boolean v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mDontFreezeWhenLeap:Z

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->m_Navbar:Ljava/util/ArrayList;

    .line 393
    iput-boolean v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mIsFirstDraw:Z

    .line 394
    iput-boolean v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mQuickScrolling:Z

    .line 1013
    iput-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mWallpaperScene:Lcom/htc/fusion/fx/FxScene;

    .line 1212
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$13;

    invoke-direct {v0, p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$13;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mFadeOutListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

    .line 1319
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "full"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mScopeFull:[Ljava/lang/String;

    .line 1320
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "empty"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mScopeEmpty:[Ljava/lang/String;

    .line 1321
    new-array v0, v5, [Lcom/htc/fusion/fx/Marker;

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mButtonBarDropMarkers:[Lcom/htc/fusion/fx/Marker;

    .line 1356
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/fusion/fx/controls/FxDropControl;

    aput-object v2, v0, v3

    aput-object v2, v0, v4

    const/4 v1, 0x2

    aput-object v2, v0, v1

    aput-object v2, v0, v5

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mButtonBarDropControl:[Lcom/htc/fusion/fx/controls/FxDropControl;

    .line 1358
    iput-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mFxRemoveBtnTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 1359
    iput-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mFxEditBtnTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 1756
    iput-boolean v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mIsUnlockFrameSet:Z

    .line 158
    sget-object v0, Lcom/htc/launcher/Launcher;->sRefLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/Launcher;

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLauncher:Lcom/htc/launcher/Launcher;

    .line 159
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    .line 160
    iput-boolean p2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mIsPortrait:Z

    .line 161
    iput-object p3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mButtonListener:Lcom/htc/android/rosie/home/fxcontrol/NavbarButton$IButtonListener;

    .line 162
    invoke-direct {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->initSceneAndControlls()V

    .line 163
    invoke-direct {p0, v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->populateScreens(Z)V

    .line 164
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->localLOGD:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->showAddPanelBar(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->showRemovePanelBar(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->showFunctionBar(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->showButtonBar(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;)Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mButtons:Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;)Lcom/htc/launcher/Launcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLauncher:Lcom/htc/launcher/Launcher;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;)Lcom/htc/fusion/fx/FxTimelineControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mFxEditBtnTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    return-object v0
.end method

.method private buildNavbar()V
    .locals 3

    .prologue
    .line 811
    new-instance v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;

    invoke-direct {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;-><init>()V

    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    const-string v2, "timeline.NavBar_edit_content"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->setButtonBar(Lcom/htc/fusion/fx/FxTimelineControl;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;

    move-result-object v1

    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    const-string v2, "timeline.NavBar_phone_content"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->setFunctionBar(Lcom/htc/fusion/fx/FxTimelineControl;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;

    move-result-object v1

    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    const-string v2, "edit_header"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->setHeaderBar(Lcom/htc/fusion/fx/FxTimelineControl;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;

    move-result-object v1

    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    const-string v2, "timeline.NavBar_edit"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->setNavEditBar(Lcom/htc/fusion/fx/FxTimelineControl;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;

    move-result-object v1

    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    const-string v2, "timeline.NavBar_main"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->setAnimationTimeline(Lcom/htc/fusion/fx/FxTimelineControl;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavbarScene:Lcom/htc/fusion/fx/FxScene;

    const-string v2, "recent_apps_off"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    new-instance v2, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$12;

    invoke-direct {v2, p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$12;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->setShowButtonBarMarker(Lcom/htc/fusion/fx/Marker;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavbarScene:Lcom/htc/fusion/fx/FxScene;

    const-string v2, "recent_apps_on"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    new-instance v2, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$11;

    invoke-direct {v2, p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$11;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->setHideButtonBarMarker(Lcom/htc/fusion/fx/Marker;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavbarScene:Lcom/htc/fusion/fx/FxScene;

    const-string v2, "slide_on"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    new-instance v2, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$10;

    invoke-direct {v2, p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$10;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->setShowFunctionBarMarker(Lcom/htc/fusion/fx/Marker;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavbarScene:Lcom/htc/fusion/fx/FxScene;

    const-string v2, "slide_off"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    new-instance v2, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$9;

    invoke-direct {v2, p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$9;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->setHideFunctionBarMarker(Lcom/htc/fusion/fx/Marker;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavbarScene:Lcom/htc/fusion/fx/FxScene;

    const-string v2, "rearrange_add_on"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    new-instance v2, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$8;

    invoke-direct {v2, p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$8;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->setShowAddPanelFunctionBarMarker(Lcom/htc/fusion/fx/Marker;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavbarScene:Lcom/htc/fusion/fx/FxScene;

    const-string v2, "rearrange_add_off"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    new-instance v2, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$7;

    invoke-direct {v2, p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$7;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->setHideAddPanelFunctionBarMarker(Lcom/htc/fusion/fx/Marker;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavbarScene:Lcom/htc/fusion/fx/FxScene;

    const-string v2, "rearrange_remove_on"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    new-instance v2, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$6;

    invoke-direct {v2, p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$6;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->setShowRemovePanelFunctionBarMarker(Lcom/htc/fusion/fx/Marker;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavbarScene:Lcom/htc/fusion/fx/FxScene;

    const-string v2, "rearrange_remove_off"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    new-instance v2, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$5;

    invoke-direct {v2, p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$5;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->setHideRemovePanelFunctionBarMarker(Lcom/htc/fusion/fx/Marker;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavbarScene:Lcom/htc/fusion/fx/FxScene;

    const-string v2, "edit_header_on"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    new-instance v2, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$4;

    invoke-direct {v2, p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$4;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->setShowEditHeaderMarker(Lcom/htc/fusion/fx/Marker;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavbarScene:Lcom/htc/fusion/fx/FxScene;

    const-string v2, "edit_header_off"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    new-instance v2, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$3;

    invoke-direct {v2, p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$3;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->setHideEditHeaderMarker(Lcom/htc/fusion/fx/Marker;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavbarScene:Lcom/htc/fusion/fx/FxScene;

    const-string v2, "remove_header_on"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    new-instance v2, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$2;

    invoke-direct {v2, p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$2;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->setShowRemoveHeaderMarker(Lcom/htc/fusion/fx/Marker;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavbarScene:Lcom/htc/fusion/fx/FxScene;

    const-string v2, "remove_header_off"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    new-instance v2, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$1;

    invoke-direct {v2, p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$1;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->setHideRemoveHeaderMarker(Lcom/htc/fusion/fx/Marker;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar$Builder;->build()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavigationBar:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;

    .line 1005
    return-void
.end method

.method private deinit()V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->deinitBackground()V

    .line 176
    return-void
.end method

.method private deinitBackground()V
    .locals 1

    .prologue
    .line 1030
    invoke-static {}, Lcom/htc/launcher/WallpaperManager;->getInstance()Lcom/htc/launcher/WallpaperManager;

    move-result-object v0

    .line 1031
    .local v0, wm:Lcom/htc/launcher/WallpaperManager;
    invoke-virtual {v0, p0}, Lcom/htc/launcher/WallpaperManager;->unregisterOnWallpaperChangedListener(Lcom/htc/launcher/WallpaperManager$OnWallpaperChangedListener;)V

    .line 1032
    return-void
.end method

.method private ensureLeapPanels()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1270
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLeapScene:Lcom/htc/fusion/fx/FxScene;

    if-nez v3, :cond_1

    .line 1290
    :cond_0
    :goto_0
    return v2

    .line 1273
    :cond_1
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLeapPanels:Ljava/util/List;

    if-nez v3, :cond_4

    .line 1274
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLeapPanels:Ljava/util/List;

    .line 1275
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/16 v3, 0x8

    if-ge v1, v3, :cond_3

    .line 1276
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLeapScene:Lcom/htc/fusion/fx/FxScene;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hitbox.leap_view_panel_0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 1277
    .local v0, b:Lcom/htc/fusion/fx/controls/FxHitbox;
    if-eqz v0, :cond_2

    .line 1285
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLeapPanels:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1275
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1288
    .end local v0           #b:Lcom/htc/fusion/fx/controls/FxHitbox;
    :cond_3
    sget-boolean v3, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->localLOGD:Z

    if-eqz v3, :cond_4

    sget-object v3, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLeapPanels:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " panels"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    .end local v1           #i:I
    :cond_4
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLeapPanels:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static findFxControls(Lcom/htc/fusion/fx/FxScene;Ljava/util/Map;)V
    .locals 6
    .parameter "root"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/fusion/fx/FxScene;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/fusion/fx/FxObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 681
    .local p1, objects:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/htc/fusion/fx/FxObject;>;"
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/BatchObjectFinder;->getInstance()Lcom/htc/android/rosie/home/fxcontrol/BatchObjectFinder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/BatchObjectFinder;->find(Lcom/htc/fusion/fx/FxObject;Ljava/util/Map;)V

    .line 685
    sget-boolean v3, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v3, :cond_1

    .line 686
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 687
    .local v2, names:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 688
    .local v1, name:Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 689
    sget-object v3, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t find "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/fusion/fx/FxScene;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 693
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #names:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method private findNavControls()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const-string v1, "tweaks_rosie_navbar_mode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "Rosie_navbar.m10"

    const/4 v3, 0x0

    if-eq v0, v3, :cond_0

    const-string v1, "Rosie_navbar_notext.m10"

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    const-string v1, "Rosie_navbar_transp.m10"

    const/16 v3, 0x2

    if-eq v0, v3, :cond_0

    const-string v1, "Rosie_navbar_transp_notext.m10"

    :cond_0
    const/4 v3, 0x0

    .line 767
    invoke-static {}, Lcom/htc/launcher/Launcher;->getFxSceneManager()Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;

    move-result-object v0

    iget-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mIsPortrait:Z

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->getFxScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavbarScene:Lcom/htc/fusion/fx/FxScene;

    .line 769
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    const-string v1, "timeline.NavBar_scroller"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    const-string v1, "timeline.scroller_main"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    const-string v1, "timeline.NavBar_main"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    const-string v1, "timeline.NavBar_phone_content"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    const-string v1, "timeline.NavBar_phone_btn"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    const-string v1, "timeline.NavBar_phone_bg"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    const-string v1, "timeline.NavBar_edit_content"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    const-string v1, "timeline.NavBar_edit_bg"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    const-string v1, "timeline.icon_all_apps_rest"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    const-string v1, "timeline.icon_personalize_rest"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    const-string v1, "timeline.navbtn_incall"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    const-string v1, "scenecontainer.all_pages"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    const-string v1, "btn.navbtn_side_anim_left"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    const-string v1, "btn.navbtn_side_anim_right"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    const-string v1, "btn.navbtn_side_anim_center"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    const-string v1, "btn.navbtn_side_anim_mid_left"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    const-string v1, "btn.navbtn_side_anim_mid_right"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    const-string v1, "btn.add_middle_press"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    const-string v1, "Container.navbar_left"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    const-string v1, "Container.navbar_mid_left"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    const-string v1, "Container.navbar_mid_right"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    const-string v1, "Container.navbar_right"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    const-string v1, "timeline.NavBar_add_content"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    const-string v1, "timeline.NavBar_add_btn"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    const-string v1, "timeline.NavBar_add_bg"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    const-string v1, "drop.NavBar_remove_content"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    const-string v1, "drop.NavBar_remove_bg"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    const-string v1, "scenecontainer.bg_effects"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    const-string v1, "edit_header"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    const-string v1, "timeline.NavBar_edit"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    const-string v1, "scenecontainer.leap_contents"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavbarScene:Lcom/htc/fusion/fx/FxScene;

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->findFxControls(Lcom/htc/fusion/fx/FxScene;Ljava/util/Map;)V

    .line 808
    return-void
.end method

.method private flattenFxDrawables()V
    .locals 3

    .prologue
    .line 1008
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    const-string v2, "timeline.NavBar_phone_content"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 1009
    .local v0, flatten:Lcom/htc/fusion/fx/FxTimelineControl;
    if-eqz v0, :cond_0

    .line 1010
    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->freeze()Ljava/util/concurrent/Future;

    .line 1011
    :cond_0
    return-void
.end method

.method private getFadeAnimation(Lcom/htc/fusion/fx/FxTimelineControl;)Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;
    .locals 6
    .parameter "timeline"

    .prologue
    const/4 v1, 0x0

    .line 1222
    const-string v0, "timeline.g-sensor_rotate"

    .line 1223
    .local v0, FX_ROTATE_NAME:Ljava/lang/String;
    const-string v4, "timeline.g-sensor_rotate"

    invoke-virtual {p1, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 1224
    .local v2, container:Lcom/htc/fusion/fx/FxTimelineControl;
    if-eqz v2, :cond_1

    .line 1225
    const-string v4, "Opacity_off"

    invoke-virtual {v2, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v3

    .line 1226
    .local v3, m:Lcom/htc/fusion/fx/Marker;
    if-nez v3, :cond_0

    .line 1227
    sget-object v4, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Fade out marker not found"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    .end local v3           #m:Lcom/htc/fusion/fx/Marker;
    :goto_0
    return-object v1

    .line 1230
    .restart local v3       #m:Lcom/htc/fusion/fx/Marker;
    :cond_0
    new-instance v1, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    invoke-direct {v1, v2, v3}, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;-><init>(Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/Marker;)V

    .line 1231
    .local v1, anim:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mFadeOutListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

    invoke-virtual {v1, v4}, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->setPlaybackListener(Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;)V

    goto :goto_0

    .line 1234
    .end local v1           #anim:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;
    .end local v3           #m:Lcom/htc/fusion/fx/Marker;
    :cond_1
    sget-object v4, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->LOG_TAG:Ljava/lang/String;

    const-string v5, "fail to get g-sensor rotation timeline"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getScreenControls(Lcom/htc/fusion/fx/FxScene;II)[Lcom/htc/fusion/fx/FxObject;
    .locals 5
    .parameter "scene"
    .parameter "startIndex"
    .parameter "endIndex"

    .prologue
    .line 1190
    sub-int v3, p3, p2

    new-array v0, v3, [Ljava/lang/String;

    .line 1191
    .local v0, controls:[Ljava/lang/String;
    move v1, p2

    .local v1, i:I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 1192
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "timeline.Container_Main_0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 1191
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1194
    :cond_0
    invoke-virtual {p1, v0}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v2

    .line 1195
    .local v2, retValues:[Lcom/htc/fusion/fx/FxObject;
    return-object v2
.end method

.method private getSensorAnimation(Lcom/htc/fusion/fx/FxTimelineControl;)Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;
    .locals 7
    .parameter "timeline"

    .prologue
    .line 1200
    const-string v0, "timeline.g-sensor_rotate"

    .line 1201
    .local v0, FX_ROTATE_NAME:Ljava/lang/String;
    const-string v5, "timeline.g-sensor_rotate"

    invoke-virtual {p1, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v4

    check-cast v4, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 1202
    .local v4, tilt:Lcom/htc/fusion/fx/FxTimelineControl;
    if-eqz v4, :cond_0

    .line 1203
    const-string v5, "limit_right"

    invoke-virtual {v4, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v5

    iget v3, v5, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    .local v3, start:I
    const-string v5, "limit_left"

    invoke-virtual {v4, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v5

    iget v2, v5, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    .line 1204
    .local v2, end:I
    new-instance v1, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    int-to-float v5, v3

    sub-int v6, v2, v3

    int-to-float v6, v6

    invoke-direct {v1, v4, v5, v6}, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;-><init>(Lcom/htc/fusion/fx/FxTimelineControl;FF)V

    .line 1208
    .end local v2           #end:I
    .end local v3           #start:I
    :goto_0
    return-object v1

    .line 1207
    :cond_0
    sget-object v5, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->LOG_TAG:Ljava/lang/String;

    const-string v6, "fail to get g-sensor rotation timeline"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initBackground()V
    .locals 5

    .prologue
    .line 1015
    invoke-static {}, Lcom/htc/launcher/Launcher;->getFxSceneManager()Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;

    move-result-object v2

    const-string v3, "Rosie_bkg_image.m10"

    iget-boolean v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mIsPortrait:Z

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->getFxScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mWallpaperScene:Lcom/htc/fusion/fx/FxScene;

    .line 1016
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mWallpaperScene:Lcom/htc/fusion/fx/FxScene;

    if-nez v2, :cond_1

    .line 1027
    :cond_0
    :goto_0
    return-void

    .line 1018
    :cond_1
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    const-string v3, "scenecontainer.bg_effects"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/controls/FxSceneContainer;

    .line 1019
    .local v0, bkg:Lcom/htc/fusion/fx/controls/FxSceneContainer;
    if-eqz v0, :cond_0

    .line 1022
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mWallpaperScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v2, v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->addScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 1024
    invoke-static {}, Lcom/htc/launcher/WallpaperManager;->getInstance()Lcom/htc/launcher/WallpaperManager;

    move-result-object v1

    .line 1025
    .local v1, wm:Lcom/htc/launcher/WallpaperManager;
    invoke-virtual {v1, p0}, Lcom/htc/launcher/WallpaperManager;->registerOnWallpaperChangedListener(Lcom/htc/launcher/WallpaperManager$OnWallpaperChangedListener;)V

    .line 1026
    invoke-virtual {v1}, Lcom/htc/launcher/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->onWallpaperChanged(Landroid/app/WallpaperInfo;)V

    goto :goto_0
.end method

.method private initDropBar()V
    .locals 37

    .prologue
    .line 1538
    new-instance v6, Lcom/htc/android/rosie/home/fxcontrol/DropBar;

    invoke-direct {v6}, Lcom/htc/android/rosie/home/fxcontrol/DropBar;-><init>()V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mDropBar:Lcom/htc/android/rosie/home/fxcontrol/DropBar;

    .line 1542
    const/16 v30, 0x0

    .line 1543
    .local v30, fxObjects:[Lcom/htc/fusion/fx/FxObject;
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isTabletDevice()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1544
    const/4 v6, 0x5

    new-array v0, v6, [Ljava/lang/String;

    move-object/from16 v28, v0

    const/4 v6, 0x0

    const-string v7, "drop.navbtn_side_right_content"

    aput-object v7, v28, v6

    const/4 v6, 0x1

    const-string v7, "drop.navbtn_side_left_content"

    aput-object v7, v28, v6

    const/4 v6, 0x2

    const-string v7, "drop.navbar_middle_left"

    aput-object v7, v28, v6

    const/4 v6, 0x3

    const-string v7, "drop.navbar_middle_center"

    aput-object v7, v28, v6

    const/4 v6, 0x4

    const-string v7, "drop.navbar_middle_right"

    aput-object v7, v28, v6

    .line 1551
    .local v28, controls:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getNavBarScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v30

    .line 1580
    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v6}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    .line 1582
    .local v33, r:Landroid/content/res/Resources;
    const v6, 0x7f0a0051

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v32

    .line 1583
    .local v32, left:I
    const v6, 0x7f0a0052

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v36

    .line 1584
    .local v36, top:I
    const v6, 0x7f0a0053

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v35

    .line 1585
    .local v35, right:I
    const v6, 0x7f0a0054

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    .line 1586
    .local v27, bottom:I
    new-instance v34, Landroid/graphics/Rect;

    move-object/from16 v0, v34

    move/from16 v1, v32

    move/from16 v2, v36

    move/from16 v3, v35

    move/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1588
    .local v34, removeRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v6}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLauncher:Lcom/htc/launcher/Launcher;

    const-string v9, "rosie_delete_color_filter"

    const v13, 0x7f080002

    invoke-static {v7, v9, v13}, Lcom/htc/launcher/custom/CustomResourceUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    .line 1591
    .local v10, overlayColor:I
    move-object/from16 v0, p0

    iput v10, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->overlayColorForLeapPanel:I

    .line 1592
    const/4 v6, 0x0

    aget-object v8, v30, v6

    check-cast v8, Lcom/htc/fusion/fx/controls/FxDropControl;

    .line 1593
    .local v8, fxDrop:Lcom/htc/fusion/fx/controls/FxDropControl;
    const/4 v6, 0x0

    aget-object v6, v30, v6

    check-cast v6, Lcom/htc/fusion/fx/controls/FxDropControl;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mfxDropRemove:Lcom/htc/fusion/fx/controls/FxDropControl;

    .line 1594
    const/4 v6, 0x1

    aget-object v6, v30, v6

    check-cast v6, Lcom/htc/fusion/fx/controls/FxDropControl;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mfxDropEdit:Lcom/htc/fusion/fx/controls/FxDropControl;

    .line 1596
    const/4 v6, 0x4

    aget-object v6, v30, v6

    check-cast v6, Lcom/htc/fusion/fx/FxTimelineControl;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mFxEditBtnTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 1597
    const/4 v6, 0x5

    aget-object v6, v30, v6

    check-cast v6, Lcom/htc/fusion/fx/FxTimelineControl;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mFxRemoveBtnTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 1599
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isTabletDevice()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1600
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mfxDropRemove:Lcom/htc/fusion/fx/controls/FxDropControl;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/htc/fusion/fx/controls/FxDropControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1601
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mfxDropEdit:Lcom/htc/fusion/fx/controls/FxDropControl;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/htc/fusion/fx/controls/FxDropControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1604
    :cond_1
    new-instance v5, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$RemoveZone;

    const-string v7, "item.drag_scope.remove"

    new-instance v9, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;

    sget-object v6, Lcom/htc/launcher/DragSource$DragCompletedAction;->REMOVE:Lcom/htc/launcher/DragSource$DragCompletedAction;

    move-object/from16 v0, v34

    invoke-direct {v9, v0, v6}, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;-><init>(Landroid/graphics/Rect;Lcom/htc/launcher/DragSource$DragCompletedAction;)V

    const/4 v11, 0x0

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v11}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$RemoveZone;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;Ljava/lang/String;Lcom/htc/fusion/fx/controls/FxDropControl;Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;ILcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$1;)V

    .line 1607
    .local v5, drop:Lcom/htc/android/rosie/home/fxcontrol/DropZone;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mDropBar:Lcom/htc/android/rosie/home/fxcontrol/DropBar;

    invoke-virtual {v6, v5}, Lcom/htc/android/rosie/home/fxcontrol/DropBar;->addDrop(Lcom/htc/android/rosie/home/fxcontrol/DropZone;)V

    .line 1610
    const v6, 0x7f0a004d

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v32

    .line 1611
    const v6, 0x7f0a004e

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v36

    .line 1612
    const v6, 0x7f0a004f

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v35

    .line 1613
    const v6, 0x7f0a0050

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    .line 1614
    new-instance v29, Landroid/graphics/Rect;

    move-object/from16 v0, v29

    move/from16 v1, v32

    move/from16 v2, v36

    move/from16 v3, v35

    move/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1617
    .local v29, editRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v6}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLauncher:Lcom/htc/launcher/Launcher;

    const-string v9, "rosie_setting_color_filter"

    const v13, 0x7f080003

    invoke-static {v7, v9, v13}, Lcom/htc/launcher/custom/CustomResourceUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    .line 1621
    const/4 v6, 0x1

    aget-object v8, v30, v6

    .end local v8           #fxDrop:Lcom/htc/fusion/fx/controls/FxDropControl;
    check-cast v8, Lcom/htc/fusion/fx/controls/FxDropControl;

    .line 1622
    .restart local v8       #fxDrop:Lcom/htc/fusion/fx/controls/FxDropControl;
    new-instance v5, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$EditZone;

    .end local v5           #drop:Lcom/htc/android/rosie/home/fxcontrol/DropZone;
    const-string v7, "item.drag_scope.edit"

    new-instance v9, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;

    sget-object v6, Lcom/htc/launcher/DragSource$DragCompletedAction;->SETTING:Lcom/htc/launcher/DragSource$DragCompletedAction;

    move-object/from16 v0, v29

    invoke-direct {v9, v0, v6}, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;-><init>(Landroid/graphics/Rect;Lcom/htc/launcher/DragSource$DragCompletedAction;)V

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$EditZone;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;Ljava/lang/String;Lcom/htc/fusion/fx/controls/FxDropControl;Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;I)V

    .line 1625
    .restart local v5       #drop:Lcom/htc/android/rosie/home/fxcontrol/DropZone;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mDropBar:Lcom/htc/android/rosie/home/fxcontrol/DropBar;

    invoke-virtual {v6, v5}, Lcom/htc/android/rosie/home/fxcontrol/DropBar;->addDrop(Lcom/htc/android/rosie/home/fxcontrol/DropZone;)V

    .line 1629
    const v6, 0x7f0a003b

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v32

    .line 1630
    const v6, 0x7f0a003c

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v36

    .line 1631
    const v6, 0x7f0a003d

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v35

    .line 1632
    const v6, 0x7f0a003e

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    .line 1633
    new-instance v12, Landroid/graphics/Rect;

    move/from16 v0, v32

    move/from16 v1, v36

    move/from16 v2, v35

    move/from16 v3, v27

    invoke-direct {v12, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1635
    .local v12, leftRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mButtonBarDropControl:[Lcom/htc/fusion/fx/controls/FxDropControl;

    const/4 v9, 0x0

    const/4 v6, 0x6

    aget-object v6, v30, v6

    check-cast v6, Lcom/htc/fusion/fx/controls/FxDropControl;

    aput-object v6, v7, v9

    .line 1636
    new-instance v11, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;

    sget-object v13, Lcom/htc/launcher/DragSource$DragCompletedAction;->DROP_ON_BUTTONBAR:Lcom/htc/launcher/DragSource$DragCompletedAction;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLauncher:Lcom/htc/launcher/Launcher;

    const/16 v16, 0x0

    move-object/from16 v15, p0

    invoke-direct/range {v11 .. v16}, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;-><init>(Landroid/graphics/Rect;Lcom/htc/launcher/DragSource$DragCompletedAction;Lcom/htc/launcher/Launcher;Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;I)V

    .line 1637
    .local v11, nb:Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->m_Navbar:Ljava/util/ArrayList;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1638
    new-instance v5, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$MiddleButtonZone;

    .end local v5           #drop:Lcom/htc/android/rosie/home/fxcontrol/DropZone;
    const-string v15, "accept"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mButtonBarDropControl:[Lcom/htc/fusion/fx/controls/FxDropControl;

    const/4 v7, 0x0

    aget-object v16, v6, v7

    const/4 v6, 0x0

    aget-object v18, v28, v6

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v13, v5

    move-object/from16 v14, p0

    move-object/from16 v17, v11

    invoke-direct/range {v13 .. v20}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$MiddleButtonZone;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;Ljava/lang/String;Lcom/htc/fusion/fx/controls/FxDropControl;Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;Ljava/lang/String;ILcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$1;)V

    .line 1640
    .restart local v5       #drop:Lcom/htc/android/rosie/home/fxcontrol/DropZone;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mDropBar:Lcom/htc/android/rosie/home/fxcontrol/DropBar;

    invoke-virtual {v6, v5}, Lcom/htc/android/rosie/home/fxcontrol/DropBar;->addDrop(Lcom/htc/android/rosie/home/fxcontrol/DropZone;)V

    .line 1643
    const v6, 0x7f0a003f

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v32

    .line 1644
    const v6, 0x7f0a0040

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v36

    .line 1645
    const v6, 0x7f0a0041

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v35

    .line 1646
    const v6, 0x7f0a0042

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    .line 1647
    new-instance v14, Landroid/graphics/Rect;

    move/from16 v0, v32

    move/from16 v1, v36

    move/from16 v2, v35

    move/from16 v3, v27

    invoke-direct {v14, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1649
    .local v14, middleLeftRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mButtonBarDropControl:[Lcom/htc/fusion/fx/controls/FxDropControl;

    const/4 v9, 0x1

    const/4 v6, 0x7

    aget-object v6, v30, v6

    check-cast v6, Lcom/htc/fusion/fx/controls/FxDropControl;

    aput-object v6, v7, v9

    .line 1650
    new-instance v11, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;

    .end local v11           #nb:Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;
    sget-object v15, Lcom/htc/launcher/DragSource$DragCompletedAction;->DROP_ON_BUTTONBAR:Lcom/htc/launcher/DragSource$DragCompletedAction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLauncher:Lcom/htc/launcher/Launcher;

    move-object/from16 v16, v0

    const/16 v18, 0x1

    move-object v13, v11

    move-object/from16 v17, p0

    invoke-direct/range {v13 .. v18}, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;-><init>(Landroid/graphics/Rect;Lcom/htc/launcher/DragSource$DragCompletedAction;Lcom/htc/launcher/Launcher;Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;I)V

    .line 1651
    .restart local v11       #nb:Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->m_Navbar:Ljava/util/ArrayList;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1652
    new-instance v5, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$MiddleButtonZone;

    .end local v5           #drop:Lcom/htc/android/rosie/home/fxcontrol/DropZone;
    const-string v17, "accept"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mButtonBarDropControl:[Lcom/htc/fusion/fx/controls/FxDropControl;

    const/4 v7, 0x1

    aget-object v18, v6, v7

    const/4 v6, 0x1

    aget-object v20, v28, v6

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object v15, v5

    move-object/from16 v16, p0

    move-object/from16 v19, v11

    invoke-direct/range {v15 .. v22}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$MiddleButtonZone;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;Ljava/lang/String;Lcom/htc/fusion/fx/controls/FxDropControl;Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;Ljava/lang/String;ILcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$1;)V

    .line 1654
    .restart local v5       #drop:Lcom/htc/android/rosie/home/fxcontrol/DropZone;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mDropBar:Lcom/htc/android/rosie/home/fxcontrol/DropBar;

    invoke-virtual {v6, v5}, Lcom/htc/android/rosie/home/fxcontrol/DropBar;->addDrop(Lcom/htc/android/rosie/home/fxcontrol/DropZone;)V

    .line 1657
    const v6, 0x7f0a0045

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v32

    .line 1658
    const v6, 0x7f0a0046

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v36

    .line 1659
    const v6, 0x7f0a0047

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v35

    .line 1660
    const v6, 0x7f0a0048

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    .line 1661
    new-instance v16, Landroid/graphics/Rect;

    move-object/from16 v0, v16

    move/from16 v1, v32

    move/from16 v2, v36

    move/from16 v3, v35

    move/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1663
    .local v16, middleRightRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mButtonBarDropControl:[Lcom/htc/fusion/fx/controls/FxDropControl;

    const/4 v9, 0x2

    const/16 v6, 0x8

    aget-object v6, v30, v6

    check-cast v6, Lcom/htc/fusion/fx/controls/FxDropControl;

    aput-object v6, v7, v9

    .line 1664
    new-instance v11, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;

    .end local v11           #nb:Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;
    sget-object v17, Lcom/htc/launcher/DragSource$DragCompletedAction;->DROP_ON_BUTTONBAR:Lcom/htc/launcher/DragSource$DragCompletedAction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLauncher:Lcom/htc/launcher/Launcher;

    move-object/from16 v18, v0

    const/16 v20, 0x2

    move-object v15, v11

    move-object/from16 v19, p0

    invoke-direct/range {v15 .. v20}, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;-><init>(Landroid/graphics/Rect;Lcom/htc/launcher/DragSource$DragCompletedAction;Lcom/htc/launcher/Launcher;Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;I)V

    .line 1665
    .restart local v11       #nb:Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->m_Navbar:Ljava/util/ArrayList;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1666
    new-instance v5, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$MiddleButtonZone;

    .end local v5           #drop:Lcom/htc/android/rosie/home/fxcontrol/DropZone;
    const-string v19, "accept"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mButtonBarDropControl:[Lcom/htc/fusion/fx/controls/FxDropControl;

    const/4 v7, 0x2

    aget-object v20, v6, v7

    const/4 v6, 0x2

    aget-object v22, v28, v6

    const/16 v23, 0x2

    const/16 v24, 0x0

    move-object/from16 v17, v5

    move-object/from16 v18, p0

    move-object/from16 v21, v11

    invoke-direct/range {v17 .. v24}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$MiddleButtonZone;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;Ljava/lang/String;Lcom/htc/fusion/fx/controls/FxDropControl;Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;Ljava/lang/String;ILcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$1;)V

    .line 1668
    .restart local v5       #drop:Lcom/htc/android/rosie/home/fxcontrol/DropZone;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mDropBar:Lcom/htc/android/rosie/home/fxcontrol/DropBar;

    invoke-virtual {v6, v5}, Lcom/htc/android/rosie/home/fxcontrol/DropBar;->addDrop(Lcom/htc/android/rosie/home/fxcontrol/DropZone;)V

    .line 1671
    const v6, 0x7f0a0049

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v32

    .line 1672
    const v6, 0x7f0a004a

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v36

    .line 1673
    const v6, 0x7f0a004b

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v35

    .line 1674
    const v6, 0x7f0a004c

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    .line 1675
    new-instance v18, Landroid/graphics/Rect;

    move-object/from16 v0, v18

    move/from16 v1, v32

    move/from16 v2, v36

    move/from16 v3, v35

    move/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1677
    .local v18, rightRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mButtonBarDropControl:[Lcom/htc/fusion/fx/controls/FxDropControl;

    const/4 v9, 0x3

    const/16 v6, 0x9

    aget-object v6, v30, v6

    check-cast v6, Lcom/htc/fusion/fx/controls/FxDropControl;

    aput-object v6, v7, v9

    .line 1678
    new-instance v11, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;

    .end local v11           #nb:Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;
    sget-object v19, Lcom/htc/launcher/DragSource$DragCompletedAction;->DROP_ON_BUTTONBAR:Lcom/htc/launcher/DragSource$DragCompletedAction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLauncher:Lcom/htc/launcher/Launcher;

    move-object/from16 v20, v0

    const/16 v22, 0x3

    move-object/from16 v17, v11

    move-object/from16 v21, p0

    invoke-direct/range {v17 .. v22}, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;-><init>(Landroid/graphics/Rect;Lcom/htc/launcher/DragSource$DragCompletedAction;Lcom/htc/launcher/Launcher;Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;I)V

    .line 1679
    .restart local v11       #nb:Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->m_Navbar:Ljava/util/ArrayList;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1680
    new-instance v5, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$MiddleButtonZone;

    .end local v5           #drop:Lcom/htc/android/rosie/home/fxcontrol/DropZone;
    const-string v21, "accept"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mButtonBarDropControl:[Lcom/htc/fusion/fx/controls/FxDropControl;

    const/4 v7, 0x3

    aget-object v22, v6, v7

    const/4 v6, 0x3

    aget-object v24, v28, v6

    const/16 v25, 0x3

    const/16 v26, 0x0

    move-object/from16 v19, v5

    move-object/from16 v20, p0

    move-object/from16 v23, v11

    invoke-direct/range {v19 .. v26}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$MiddleButtonZone;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;Ljava/lang/String;Lcom/htc/fusion/fx/controls/FxDropControl;Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;Ljava/lang/String;ILcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$1;)V

    .line 1682
    .restart local v5       #drop:Lcom/htc/android/rosie/home/fxcontrol/DropZone;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mDropBar:Lcom/htc/android/rosie/home/fxcontrol/DropBar;

    invoke-virtual {v6, v5}, Lcom/htc/android/rosie/home/fxcontrol/DropBar;->addDrop(Lcom/htc/android/rosie/home/fxcontrol/DropZone;)V

    .line 1684
    return-void

    .line 1554
    .end local v5           #drop:Lcom/htc/android/rosie/home/fxcontrol/DropZone;
    .end local v8           #fxDrop:Lcom/htc/fusion/fx/controls/FxDropControl;
    .end local v10           #overlayColor:I
    .end local v11           #nb:Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;
    .end local v12           #leftRect:Landroid/graphics/Rect;
    .end local v14           #middleLeftRect:Landroid/graphics/Rect;
    .end local v16           #middleRightRect:Landroid/graphics/Rect;
    .end local v18           #rightRect:Landroid/graphics/Rect;
    .end local v27           #bottom:I
    .end local v28           #controls:[Ljava/lang/String;
    .end local v29           #editRect:Landroid/graphics/Rect;
    .end local v32           #left:I
    .end local v33           #r:Landroid/content/res/Resources;
    .end local v34           #removeRect:Landroid/graphics/Rect;
    .end local v35           #right:I
    .end local v36           #top:I
    :cond_2
    const/16 v6, 0xa

    new-array v0, v6, [Ljava/lang/String;

    move-object/from16 v28, v0

    const/4 v6, 0x0

    const-string v7, "drop.navbtn_side_right_content"

    aput-object v7, v28, v6

    const/4 v6, 0x1

    const-string v7, "drop.navbtn_side_left_content"

    aput-object v7, v28, v6

    const/4 v6, 0x2

    const-string v7, "Remove"

    aput-object v7, v28, v6

    const/4 v6, 0x3

    const-string v7, "edit"

    aput-object v7, v28, v6

    const/4 v6, 0x4

    const-string v7, "drop.navbtn_side_left_content"

    aput-object v7, v28, v6

    const/4 v6, 0x5

    const-string v7, "drop.navbtn_side_right_content"

    aput-object v7, v28, v6

    const/4 v6, 0x6

    const-string v7, "drop.navbar_left"

    aput-object v7, v28, v6

    const/4 v6, 0x7

    const-string v7, "drop.navbar_mid_left"

    aput-object v7, v28, v6

    const/16 v6, 0x8

    const-string v7, "drop.navbar_mid_right"

    aput-object v7, v28, v6

    const/16 v6, 0x9

    const-string v7, "drop.navbar_right"

    aput-object v7, v28, v6

    .line 1566
    .restart local v28       #controls:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getNavBarScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v30

    .line 1567
    const/4 v6, 0x2

    aget-object v6, v30, v6

    const/4 v7, 0x3

    aget-object v7, v30, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->labelDrops(Lcom/htc/fusion/fx/FxObject;Lcom/htc/fusion/fx/FxObject;)V

    .line 1570
    sget-boolean v6, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v6, :cond_0

    .line 1571
    const/16 v31, 0x0

    .local v31, i:I
    :goto_0
    move-object/from16 v0, v30

    array-length v6, v0

    move/from16 v0, v31

    if-ge v0, v6, :cond_0

    .line 1572
    aget-object v6, v30, v31

    if-nez v6, :cond_3

    .line 1573
    sget-object v6, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->LOG_TAG:Ljava/lang/String;

    const-string v7, "dropBar fxObjects[%s] is null: %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v9, v13

    const/4 v13, 0x1

    aget-object v15, v28, v31

    aput-object v15, v9, v13

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    :cond_3
    add-int/lit8 v31, v31, 0x1

    goto :goto_0
.end method

.method private initLeap()V
    .locals 3

    .prologue
    .line 1110
    invoke-static {}, Lcom/htc/launcher/Launcher;->getFxSceneManager()Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;

    move-result-object v0

    const-string v1, "Rosie_leap.m10"

    iget-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mIsPortrait:Z

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->getFxScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLeapScene:Lcom/htc/fusion/fx/FxScene;

    .line 1112
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mPageLeapControl:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$PageLeapControl;

    if-nez v0, :cond_0

    .line 1113
    new-instance v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$PageLeapControl;

    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLeapScene:Lcom/htc/fusion/fx/FxScene;

    const-string v2, "timeline.leap_view"

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-direct {v1, v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$PageLeapControl;-><init>(Lcom/htc/fusion/fx/FxTimelineControl;)V

    iput-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mPageLeapControl:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$PageLeapControl;

    .line 1116
    :goto_0
    return-void

    .line 1115
    :cond_0
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mPageLeapControl:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$PageLeapControl;

    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLeapScene:Lcom/htc/fusion/fx/FxScene;

    const-string v2, "timeline.leap_view"

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$PageLeapControl;->setTimelineControl(Lcom/htc/fusion/fx/FxTimelineControl;)V

    goto :goto_0
.end method

.method private initLeapRearrange()V
    .locals 4

    .prologue
    .line 1119
    invoke-static {}, Lcom/htc/launcher/Launcher;->getFxSceneManager()Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;

    move-result-object v0

    const-string v1, "Rosie_leap_rearrange.m10"

    iget-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mIsPortrait:Z

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->getFxScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLeapRearrangeScene:Lcom/htc/fusion/fx/FxScene;

    .line 1120
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLeapRearrangeScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v0, :cond_0

    .line 1121
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLeapRearrangeScene:Lcom/htc/fusion/fx/FxScene;

    iget v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->overlayColorForLeapPanel:I

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;Lcom/htc/fusion/fx/FxScene;I)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;

    .line 1124
    :cond_0
    return-void
.end method

.method private initNavBar()V
    .locals 5

    .prologue
    .line 733
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->navBarTop:I

    .line 735
    invoke-direct {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->findNavControls()V

    .line 737
    invoke-direct {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->initBackground()V

    .line 739
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavbarScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v0, v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->addScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 741
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    const-string v1, "scenecontainer.all_pages"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/controls/FxSceneContainer;

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mPageContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    .line 743
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    const-string v1, "scenecontainer.leap_contents"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/controls/FxSceneContainer;

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLeapContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    .line 745
    invoke-direct {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->buildNavbar()V

    .line 747
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavbarScene:Lcom/htc/fusion/fx/FxScene;

    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mButtonListener:Lcom/htc/android/rosie/home/fxcontrol/NavbarButton$IButtonListener;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;Lcom/htc/fusion/fx/FxScene;Ljava/util/Map;Lcom/htc/android/rosie/home/fxcontrol/NavbarButton$IButtonListener;)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mButtons:Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;

    .line 749
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isTabletDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 750
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$CustomizeShortcut;

    invoke-direct {v0, p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$CustomizeShortcut;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mCustomizeShortcuts:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$CustomizeShortcut;

    .line 753
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->initDropBar()V

    .line 755
    invoke-direct {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->initPanelFunctionBar()V

    .line 757
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavigationBar:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->showFunctionBar()V

    .line 760
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isTabletDevice()Z

    move-result v0

    if-nez v0, :cond_1

    .line 761
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$InComingCallControl;

    invoke-direct {v0, p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$InComingCallControl;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mInComingCallControl:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$InComingCallControl;

    .line 763
    :cond_1
    return-void
.end method

.method private initPanelFunctionBar()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1688
    const/4 v1, 0x0

    .line 1689
    .local v1, fxObjects:[Lcom/htc/fusion/fx/FxObject;
    const/4 v2, 0x4

    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "add_panel"

    aput-object v2, v0, v3

    const-string v2, "remove_panel_button"

    aput-object v2, v0, v4

    const-string v2, "Panel"

    aput-object v2, v0, v5

    const-string v2, "Remove_Panel"

    aput-object v2, v0, v6

    .line 1695
    .local v0, controls:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getNavBarScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v1

    .line 1696
    aget-object v2, v1, v3

    aget-object v3, v1, v4

    aget-object v4, v1, v5

    aget-object v5, v1, v6

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->labelPanelFunctionBar(Lcom/htc/fusion/fx/FxObject;Lcom/htc/fusion/fx/FxObject;Lcom/htc/fusion/fx/FxObject;Lcom/htc/fusion/fx/FxObject;)V

    .line 1698
    return-void
.end method

.method private initSceneAndControlls()V
    .locals 1

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->initNavBar()V

    .line 168
    invoke-direct {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->initSlidePage()V

    .line 169
    invoke-direct {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->initLeap()V

    .line 170
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->initLeapRearrange()V

    .line 172
    :cond_0
    return-void
.end method

.method private initSlidePage()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 696
    invoke-static {}, Lcom/htc/launcher/Launcher;->getFxSceneManager()Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;

    move-result-object v0

    const-string v1, "Rosie_page_slide_main.m10"

    iget-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mIsPortrait:Z

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->getFxScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mSlideScene:Lcom/htc/fusion/fx/FxScene;

    .line 697
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 698
    .local v9, slideControlName:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mSlideFxObjects:Ljava/util/Map;

    invoke-interface {v0, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mSlideFxObjects:Ljava/util/Map;

    const-string v1, "timeline.page_slide_z"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mSlideScene:Lcom/htc/fusion/fx/FxScene;

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mSlideFxObjects:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->findFxControls(Lcom/htc/fusion/fx/FxScene;Ljava/util/Map;)V

    .line 702
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mSlideFxObjects:Ljava/util/Map;

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/fusion/fx/FxObject;

    .line 703
    .local v8, fxObj:Lcom/htc/fusion/fx/FxObject;
    new-instance v6, Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimator;

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-object v0, v8

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-direct {v6, v1, v0}, Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimator;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;Lcom/htc/fusion/fx/FxTimelineControl;)V

    .line 705
    .local v6, animator:Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimator;
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    const-string v1, "timeline.scroller_main"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 706
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLauncher:Lcom/htc/launcher/Launcher;

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-object v3, v8

    check-cast v3, Lcom/htc/fusion/fx/FxTimelineControl;

    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    const-string v5, "timeline.scroller_main"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/fusion/fx/FxTimelineControl;

    iget-object v5, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v5}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct/range {v0 .. v7}, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;-><init>(Landroid/app/Activity;Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Landroid/content/res/Resources;Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IUnlockAnimator;Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IUnlockAnimationListener;)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mPageSlideControl:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;

    .line 713
    :goto_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mSlideFxObjects:Ljava/util/Map;

    const-string v1, "timeline.page_slide_z"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #fxObj:Lcom/htc/fusion/fx/FxObject;
    check-cast v8, Lcom/htc/fusion/fx/FxObject;

    .line 714
    .restart local v8       #fxObj:Lcom/htc/fusion/fx/FxObject;
    new-instance v1, Lcom/htc/android/rosie/home/fxcontrol/PageSlideZControl;

    move-object v0, v8

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-direct {v1, v0}, Lcom/htc/android/rosie/home/fxcontrol/PageSlideZControl;-><init>(Lcom/htc/fusion/fx/FxTimelineControl;)V

    iput-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mPageSlideZControl:Lcom/htc/android/rosie/home/fxcontrol/PageSlideZControl;

    .line 715
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;

    check-cast v8, Lcom/htc/fusion/fx/FxTimelineControl;

    .end local v8           #fxObj:Lcom/htc/fusion/fx/FxObject;
    invoke-direct {v0, v8}, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;-><init>(Lcom/htc/fusion/fx/FxTimelineControl;)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mPageSinkControl:Lcom/htc/android/rosie/home/fxcontrol/IPageSinkControl;

    .line 716
    return-void

    .line 710
    .restart local v8       #fxObj:Lcom/htc/fusion/fx/FxObject;
    :cond_0
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLauncher:Lcom/htc/launcher/Launcher;

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-object v3, v8

    check-cast v3, Lcom/htc/fusion/fx/FxTimelineControl;

    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    const-string v5, "timeline.NavBar_scroller"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/fusion/fx/FxTimelineControl;

    iget-object v5, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v5}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct/range {v0 .. v7}, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;-><init>(Landroid/app/Activity;Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Landroid/content/res/Resources;Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IUnlockAnimator;Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IUnlockAnimationListener;)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mPageSlideControl:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;

    goto :goto_0
.end method

.method private isPortrait()Z
    .locals 1

    .prologue
    .line 652
    iget-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mIsPortrait:Z

    return v0
.end method

.method private isValidScreenId(I)Z
    .locals 1
    .parameter "screen"

    .prologue
    .line 1266
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mScreens:Ljava/util/List;

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

.method private labelDrops(Lcom/htc/fusion/fx/FxObject;Lcom/htc/fusion/fx/FxObject;)V
    .locals 6
    .parameter "remove"
    .parameter "edit"

    .prologue
    .line 1520
    iget-object v5, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    if-nez v5, :cond_1

    .line 1535
    :cond_0
    :goto_0
    return-void

    .line 1522
    :cond_1
    iget-object v5, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v5}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1523
    .local v3, r:Landroid/content/res/Resources;
    if-eqz p1, :cond_2

    instance-of v5, p1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v5, :cond_2

    move-object v4, p1

    .line 1524
    check-cast v4, Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 1525
    .local v4, rl:Lcom/htc/fusion/fx/controls/FxTextLabel;
    const v5, 0x7f0b0039

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1526
    .local v0, delete:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1527
    invoke-virtual {v4, v0}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1529
    .end local v0           #delete:Ljava/lang/String;
    .end local v4           #rl:Lcom/htc/fusion/fx/controls/FxTextLabel;
    :cond_2
    if-eqz p2, :cond_0

    instance-of v5, p2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v5, :cond_0

    move-object v2, p2

    .line 1530
    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 1531
    .local v2, el:Lcom/htc/fusion/fx/controls/FxTextLabel;
    const v5, 0x7f0b003a

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1532
    .local v1, e:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1533
    invoke-virtual {v2, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private labelPanelFunctionBar(Lcom/htc/fusion/fx/FxObject;Lcom/htc/fusion/fx/FxObject;Lcom/htc/fusion/fx/FxObject;Lcom/htc/fusion/fx/FxObject;)V
    .locals 5
    .parameter "addPanel"
    .parameter "removePanel"
    .parameter "editHeader"
    .parameter "removeHeader"

    .prologue
    .line 1705
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1707
    .local v0, res:Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    if-nez v3, :cond_0

    .line 1737
    :goto_0
    return-void

    .line 1710
    :cond_0
    if-eqz p1, :cond_1

    instance-of v3, p1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v3, :cond_1

    move-object v2, p1

    .line 1711
    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 1712
    .local v2, textLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;
    const v3, 0x7f0b003c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1713
    .local v1, string:Ljava/lang/String;
    invoke-virtual {v2, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1716
    .end local v1           #string:Ljava/lang/String;
    .end local v2           #textLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;
    :cond_1
    if-eqz p2, :cond_2

    instance-of v3, p2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v3, :cond_2

    move-object v2, p2

    .line 1717
    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 1718
    .restart local v2       #textLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;
    const v3, 0x7f0b0039

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1719
    .restart local v1       #string:Ljava/lang/String;
    invoke-virtual {v2, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1722
    .end local v1           #string:Ljava/lang/String;
    .end local v2           #textLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;
    :cond_2
    if-eqz p3, :cond_3

    instance-of v3, p3, Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v3, :cond_3

    .line 1723
    iput-object p3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mEditHeader:Lcom/htc/fusion/fx/FxObject;

    .line 1724
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->setEditHeaderText(I)V

    .line 1729
    :goto_1
    if-eqz p4, :cond_4

    instance-of v3, p4, Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v3, :cond_4

    move-object v2, p4

    .line 1730
    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 1731
    .restart local v2       #textLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;
    const v3, 0x7f0b003e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1732
    .restart local v1       #string:Ljava/lang/String;
    invoke-virtual {v2, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto :goto_0

    .line 1726
    .end local v1           #string:Ljava/lang/String;
    .end local v2           #textLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;
    :cond_3
    sget-object v3, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->LOG_TAG:Ljava/lang/String;

    const-string v4, "editHeader is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1734
    :cond_4
    sget-object v3, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->LOG_TAG:Ljava/lang/String;

    const-string v4, "removeHeader is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private populateScreens(Z)V
    .locals 15
    .parameter "currentOnly"

    .prologue
    .line 1127
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mScreens:Ljava/util/List;

    .line 1129
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mScrollContainers:Ljava/util/List;

    .line 1130
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLeapContainers:Ljava/util/List;

    .line 1131
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLeapControlPanels:Ljava/util/List;

    .line 1133
    const/4 v7, 0x0

    .line 1135
    .local v7, leapSceneRoot:Lcom/htc/fusion/fx/FxTimelineControl;
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getLeapScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v6

    .line 1137
    .local v6, leapScene:Lcom/htc/fusion/fx/FxScene;
    if-eqz v6, :cond_0

    .line 1138
    const-string v12, "timeline.leap_view"

    invoke-virtual {v6, v12}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v7

    .end local v7           #leapSceneRoot:Lcom/htc/fusion/fx/FxTimelineControl;
    check-cast v7, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 1141
    .restart local v7       #leapSceneRoot:Lcom/htc/fusion/fx/FxTimelineControl;
    :cond_0
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->getScreenCount()I

    move-result v0

    .line 1143
    .local v0, N:I
    iget-object v12, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mScreens:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v12, v0, :cond_3

    const/4 v3, 0x0

    .line 1145
    .local v3, isScreenExist:Z
    :goto_0
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getSlideScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct {p0, v12, v13, v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreenControls(Lcom/htc/fusion/fx/FxScene;II)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v9

    .line 1146
    .local v9, screenControls:[Lcom/htc/fusion/fx/FxObject;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_6

    .line 1147
    aget-object v10, v9, v2

    check-cast v10, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 1148
    .local v10, screenRoot:Lcom/htc/fusion/fx/FxTimelineControl;
    sget-boolean v12, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->localLOGD:Z

    if-eqz v12, :cond_1

    sget-object v12, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Screen#"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " found: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v10}, Lcom/htc/fusion/fx/FxTimelineControl;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    :cond_1
    if-nez v3, :cond_4

    .line 1151
    new-instance v8, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    iget-object v12, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLauncher:Lcom/htc/launcher/Launcher;

    iget-boolean v13, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mIsPortrait:Z

    invoke-direct {v8, v12, v2, v13}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;-><init>(Landroid/app/Activity;IZ)V

    .line 1155
    .local v8, screen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;
    new-instance v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;

    invoke-direct {p0, v10}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getSensorAnimation(Lcom/htc/fusion/fx/FxTimelineControl;)Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    move-result-object v12

    invoke-direct {v1, v8, v12, v10}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxScreen;Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;Lcom/htc/fusion/fx/FxTimelineControl;)V

    .line 1156
    .local v1, holder:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;
    invoke-direct {p0, v10}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getFadeAnimation(Lcom/htc/fusion/fx/FxTimelineControl;)Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->setFadeAnimation(Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;)V

    .line 1157
    const/high16 v12, 0x3f00

    const/high16 v13, 0x3f80

    invoke-virtual {v1, v12, v13}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->setSensorValue(FF)V

    .line 1158
    iget-object v12, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mScreens:Ljava/util/List;

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1170
    .end local v1           #holder:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;
    .end local v8           #screen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;
    :goto_2
    const-string v12, "scenecontainer.Page_template"

    invoke-virtual {v10, v12}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v11

    check-cast v11, Lcom/htc/fusion/fx/controls/FxSceneContainer;

    .line 1171
    .local v11, scroll:Lcom/htc/fusion/fx/controls/FxSceneContainer;
    iget-object v12, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mScrollContainers:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1173
    if-eqz v7, :cond_2

    iget-object v12, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLeapContainers:Ljava/util/List;

    if-eqz v12, :cond_2

    .line 1174
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "scenecontainer.container_main_0"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v4

    check-cast v4, Lcom/htc/fusion/fx/controls/FxSceneContainer;

    .line 1175
    .local v4, leap:Lcom/htc/fusion/fx/controls/FxSceneContainer;
    iget-object v12, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLeapContainers:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1177
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "comp.leap_view_panel_0"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v5

    check-cast v5, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 1178
    .local v5, leapPanel:Lcom/htc/fusion/fx/FxTimelineControl;
    iget-object v12, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLeapControlPanels:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1146
    .end local v4           #leap:Lcom/htc/fusion/fx/controls/FxSceneContainer;
    .end local v5           #leapPanel:Lcom/htc/fusion/fx/FxTimelineControl;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 1143
    .end local v2           #i:I
    .end local v3           #isScreenExist:Z
    .end local v9           #screenControls:[Lcom/htc/fusion/fx/FxObject;
    .end local v10           #screenRoot:Lcom/htc/fusion/fx/FxTimelineControl;
    .end local v11           #scroll:Lcom/htc/fusion/fx/controls/FxSceneContainer;
    :cond_3
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1162
    .restart local v2       #i:I
    .restart local v3       #isScreenExist:Z
    .restart local v9       #screenControls:[Lcom/htc/fusion/fx/FxObject;
    .restart local v10       #screenRoot:Lcom/htc/fusion/fx/FxTimelineControl;
    :cond_4
    iget-object v12, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mScreens:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;

    iget-object v13, v12, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFxScreen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    invoke-direct {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->isPortrait()Z

    move-result v12

    if-eqz v12, :cond_5

    const/4 v12, 0x2

    :goto_3
    invoke-virtual {v13, v12}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->setBackPanelMode(I)V

    .line 1163
    iget-object v12, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mScreens:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;

    invoke-virtual {v12}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->updateFxScreen()V

    .line 1164
    iget-object v12, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mScreens:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;

    invoke-direct {p0, v10}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getSensorAnimation(Lcom/htc/fusion/fx/FxTimelineControl;)Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->setSensor(Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;)V

    .line 1165
    iget-object v12, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mScreens:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;

    invoke-direct {p0, v10}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getFadeAnimation(Lcom/htc/fusion/fx/FxTimelineControl;)Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->setFadeAnimation(Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;)V

    .line 1166
    iget-object v12, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mScreens:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;

    invoke-virtual {v12, v10}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->setPan(Lcom/htc/fusion/fx/FxTimelineControl;)V

    goto/16 :goto_2

    .line 1162
    :cond_5
    const/4 v12, 0x0

    goto :goto_3

    .line 1182
    .end local v10           #screenRoot:Lcom/htc/fusion/fx/FxTimelineControl;
    :cond_6
    const/4 v2, 0x7

    :goto_4
    invoke-static {}, Lcom/htc/launcher/PagesManager;->instance()Lcom/htc/launcher/PagesManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/htc/launcher/PagesManager;->getCurrentPagesCount()I

    move-result v12

    if-le v2, v12, :cond_7

    .line 1183
    iget-object v12, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLeapControlPanels:Ljava/util/List;

    add-int/lit8 v13, v2, -0x1

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1182
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 1187
    :cond_7
    return-void
.end method

.method private showAddPanelBar(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 1076
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    const-string v2, "timeline.NavBar_add_content"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 1077
    .local v0, fx:Lcom/htc/fusion/fx/FxTimelineControl;
    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1078
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    const-string v2, "timeline.NavBar_add_btn"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #fx:Lcom/htc/fusion/fx/FxTimelineControl;
    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 1079
    .restart local v0       #fx:Lcom/htc/fusion/fx/FxTimelineControl;
    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1080
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    const-string v2, "timeline.NavBar_add_bg"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #fx:Lcom/htc/fusion/fx/FxTimelineControl;
    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 1081
    .restart local v0       #fx:Lcom/htc/fusion/fx/FxTimelineControl;
    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1082
    return-void
.end method

.method private showButtonBar(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 1036
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    const-string v2, "timeline.NavBar_edit_content"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 1037
    .local v0, fx:Lcom/htc/fusion/fx/FxTimelineControl;
    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1038
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    const-string v2, "timeline.NavBar_edit_bg"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #fx:Lcom/htc/fusion/fx/FxTimelineControl;
    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 1039
    .restart local v0       #fx:Lcom/htc/fusion/fx/FxTimelineControl;
    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1040
    return-void
.end method

.method private showFunctionBar(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 1044
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    const-string v2, "timeline.NavBar_phone_content"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 1045
    .local v0, fx:Lcom/htc/fusion/fx/FxTimelineControl;
    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1046
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    const-string v2, "timeline.NavBar_phone_btn"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #fx:Lcom/htc/fusion/fx/FxTimelineControl;
    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 1047
    .restart local v0       #fx:Lcom/htc/fusion/fx/FxTimelineControl;
    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1048
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    const-string v2, "timeline.NavBar_phone_bg"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #fx:Lcom/htc/fusion/fx/FxTimelineControl;
    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 1049
    .restart local v0       #fx:Lcom/htc/fusion/fx/FxTimelineControl;
    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1050
    return-void
.end method

.method private showRemovePanelBar(Z)V
    .locals 4
    .parameter "visible"

    .prologue
    .line 1085
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    const-string v3, "drop.NavBar_remove_content"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/controls/FxDropControl;

    .line 1086
    .local v0, fx:Lcom/htc/fusion/fx/controls/FxDropControl;
    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxDropControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1087
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    const-string v3, "drop.NavBar_remove_bg"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 1088
    .local v1, fxt:Lcom/htc/fusion/fx/FxTimelineControl;
    invoke-virtual {v1, p1}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1089
    return-void
.end method


# virtual methods
.method public addItemToScreen(IJLcom/htc/launcher/FxItem;Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;)Z
    .locals 3
    .parameter "screen"
    .parameter "id"
    .parameter "item"
    .parameter "layout"

    .prologue
    .line 532
    sget-boolean v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->localLOGD:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add widget#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to Screen#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->isValidScreenId(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 534
    const/4 v0, 0x0

    .line 536
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreens()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;

    iget-object v0, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFxScreen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->addItem(JLcom/htc/launcher/FxItem;Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;)Z

    move-result v0

    goto :goto_0
.end method

.method public attachTo(Lcom/htc/fusion/fx/controls/FxSceneContainer;I)V
    .locals 6
    .parameter "parent"
    .parameter "mode"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 180
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mFxParent:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mAttachedScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v1, :cond_2

    .line 181
    :cond_0
    sget-boolean v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->localLOGD:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->LOG_TAG:Ljava/lang/String;

    const-string v2, "%s: attach but has parent, detach first"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->detach()V

    .line 185
    :cond_2
    const/4 v0, 0x0

    .line 186
    .local v0, scene:Lcom/htc/fusion/fx/FxScene;
    packed-switch p2, :pswitch_data_0

    .line 198
    :goto_0
    if-nez v0, :cond_4

    .line 199
    sget-object v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->LOG_TAG:Ljava/lang/String;

    const-string v2, "%s: attach scene but scene is null"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_3
    :goto_1
    return-void

    .line 188
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getSlideScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    .line 189
    goto :goto_0

    .line 191
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getLeapScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    .line 192
    goto :goto_0

    .line 194
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getLeapRearrangeScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    goto :goto_0

    .line 203
    :cond_4
    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mAttachedScene:Lcom/htc/fusion/fx/FxScene;

    .line 204
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mFxParent:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    .line 205
    invoke-virtual {p1, v0}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->setScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 207
    sget-boolean v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->localLOGD:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->LOG_TAG:Ljava/lang/String;

    const-string v2, "%s: attch %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mAttachedScene:Lcom/htc/fusion/fx/FxScene;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public changeScreensVisibility(ZIIFF)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/htc/launcher/PagesManager;->instance()Lcom/htc/launcher/PagesManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/launcher/PagesManager;->getCurrentPagesCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_7

    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreens()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;

    iget-boolean v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mIsPortrait:Z

    if-eqz v3, :cond_4

    invoke-virtual {v2, p4, p5}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->setSensorValue(FF)V

    if-eq v1, p2, :cond_0

    if-nez p1, :cond_2

    if-ne v1, p3, :cond_2

    :cond_0
    invoke-virtual {v2, v5}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->setVisibility(Z)V

    iget-boolean v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mQuickScrolling:Z

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->thaw()V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->isFrozen()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v3, v1}, Lcom/htc/launcher/Launcher;->flattenWidgets(I)V

    sget-boolean v3, Lcom/htc/launcher/Launcher;->sIsBroughtToFront:Z

    if-nez v3, :cond_3

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->freeze()V

    :cond_3
    iget-boolean v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mQuickScrolling:Z

    if-nez v3, :cond_1

    invoke-virtual {v2, v4}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->setVisibility(Z)V

    goto :goto_1

    :cond_4
    const/high16 v3, 0x3f80

    sub-float/2addr v3, p4

    invoke-virtual {v2, v3, p5}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->setSensorValue(FF)V

    invoke-virtual {v2, v5}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->setVisibility(Z)V

    if-eq v1, p2, :cond_5

    if-nez p1, :cond_6

    if-ne v1, p3, :cond_6

    :cond_5
    iget-boolean v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mQuickScrolling:Z

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->thaw()V

    goto :goto_1

    :cond_6
    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->isFrozen()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v3, v1}, Lcom/htc/launcher/Launcher;->flattenWidgets(I)V

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->freezeAsync()V

    goto :goto_1

    :cond_7
    iget-boolean v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mIsFirstDraw:Z

    if-eqz v3, :cond_8

    iput-boolean v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mIsFirstDraw:Z

    :cond_8
    return-void
.end method

.method public changeScreensVisibility2(ZIIFF)V
    .locals 6
    .parameter "aligned"
    .parameter "currentScreen"
    .parameter "nextScreen"
    .parameter "value"
    .parameter "speed"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 396
    invoke-static {}, Lcom/htc/launcher/PagesManager;->instance()Lcom/htc/launcher/PagesManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/launcher/PagesManager;->getCurrentPagesCount()I

    move-result v0

    .line 398
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_8

    .line 399
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreens()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;

    .line 401
    .local v2, sh:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;
    iget-boolean v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mIsPortrait:Z

    if-eqz v3, :cond_5

    .line 402
    invoke-virtual {v2, p4, p5}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->setSensorValue(FF)V

    .line 403
    if-eq v1, p2, :cond_0

    if-nez p1, :cond_3

    if-ne v1, p3, :cond_3

    .line 404
    :cond_0
    invoke-virtual {v2, v5}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->setVisibility(Z)V

    .line 406
    iget-boolean v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mQuickScrolling:Z

    if-nez v3, :cond_2

    .line 407
    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->thaw()V

    .line 398
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 409
    :cond_2
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v3, v1}, Lcom/htc/launcher/Launcher;->flattenWidgets(I)V

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->freeze()V

    goto :goto_1

    .line 410
    :cond_3
    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->isFrozen()Z

    move-result v3

    if-nez v3, :cond_4

    .line 412
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v3, v1}, Lcom/htc/launcher/Launcher;->flattenWidgets(I)V

    .line 413
    sget-boolean v3, Lcom/htc/launcher/Launcher;->sIsBroughtToFront:Z

    if-nez v3, :cond_4

    .line 414
    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->freeze()V

    .line 415
    :cond_4
    iget-boolean v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mQuickScrolling:Z

    if-nez v3, :cond_1

    .line 416
    invoke-virtual {v2, v4}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->setVisibility(Z)V

    goto :goto_1

    .line 421
    :cond_5
    const/high16 v3, 0x3f80

    sub-float/2addr v3, p4

    invoke-virtual {v2, v3, p5}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->setSensorValue(FF)V

    .line 422
    invoke-virtual {v2, v5}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->setVisibility(Z)V

    .line 423
    if-eq v1, p2, :cond_6

    if-nez p1, :cond_7

    if-ne v1, p3, :cond_7

    .line 424
    :cond_6
    iget-boolean v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mQuickScrolling:Z

    if-nez v3, :cond_1

    .line 425
    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->thaw()V

    goto :goto_1

    .line 427
    :cond_7
    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->isFrozen()Z

    move-result v3

    if-nez v3, :cond_1

    .line 428
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v3, v1}, Lcom/htc/launcher/Launcher;->flattenWidgets(I)V

    .line 429
    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->freezeAsync()V

    goto :goto_1

    .line 457
    .end local v2           #sh:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;
    :cond_8
    iget-boolean v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mIsFirstDraw:Z

    if-eqz v3, :cond_9

    .line 458
    iput-boolean v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mIsFirstDraw:Z

    .line 459
    :cond_9
    return-void
.end method

.method public checkUnlockFrameSet()Z
    .locals 1

    .prologue
    .line 1763
    iget-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mIsUnlockFrameSet:Z

    return v0
.end method

.method public detach()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 211
    const/16 v0, 0xa

    sget-object v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->showStack(ILjava/lang/String;)Ljava/lang/String;

    .line 212
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mFxParent:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mAttachedScene:Lcom/htc/fusion/fx/FxScene;

    if-nez v0, :cond_1

    .line 213
    :cond_0
    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->LOG_TAG:Ljava/lang/String;

    const-string v1, "%s: detach but no parent"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :goto_0
    return-void

    .line 217
    :cond_1
    sget-boolean v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->localLOGD:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->LOG_TAG:Ljava/lang/String;

    const-string v1, "%s: detach %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mAttachedScene:Lcom/htc/fusion/fx/FxScene;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mFxParent:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    invoke-virtual {v0, v4}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->removeScene(Lcom/htc/fusion/fx/FxObject;)V

    .line 220
    iput-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mAttachedScene:Lcom/htc/fusion/fx/FxScene;

    .line 221
    iput-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mFxParent:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    goto :goto_0
.end method

.method public fadeOtherScreens(I)V
    .locals 4
    .parameter "currentScreen"

    .prologue
    .line 1240
    invoke-direct {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->isPortrait()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1242
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->getScreenCount()I

    move-result v0

    .line 1243
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1244
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreens()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;

    .line 1245
    .local v2, sh:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;
    if-eq v1, p1, :cond_0

    .line 1246
    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->startFade()V

    .line 1243
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1248
    :cond_0
    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->thaw()V

    goto :goto_1

    .line 1252
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #sh:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;
    :cond_1
    return-void
.end method

.method public findNearestLeapPanel(FF)I
    .locals 12
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1294
    invoke-direct {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->ensureLeapPanels()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1295
    const/4 v6, -0x1

    .line 1311
    :cond_0
    return v6

    .line 1297
    :cond_1
    const/4 v4, 0x0

    .local v4, i:I
    const/4 v6, -0x1

    .line 1298
    .local v6, m:I
    const v7, 0x7f7fffff

    .line 1299
    .local v7, min:F
    iget v9, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->navBarTop:I

    int-to-float v9, v9

    cmpg-float v9, p2, v9

    if-ltz v9, :cond_0

    .line 1300
    iget-object v9, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLeapPanels:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/FxNodeControl;

    .line 1301
    .local v0, c:Lcom/htc/fusion/fx/FxNodeControl;
    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxNodeControl;->getPosition()Lcom/htc/fusion/Point3F;

    move-result-object v8

    .line 1302
    .local v8, pos:Lcom/htc/fusion/Point3F;
    iget v9, v8, Lcom/htc/fusion/Point3F;->x:F

    sub-float v2, v9, p1

    .local v2, dx:F
    iget v9, v8, Lcom/htc/fusion/Point3F;->y:F

    sub-float v3, v9, p2

    .line 1303
    .local v3, dy:F
    mul-float v9, v2, v2

    mul-float v10, v3, v3

    add-float v1, v9, v10

    .line 1304
    .local v1, d:F
    sget-boolean v9, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->localLOGD:Z

    if-eqz v9, :cond_2

    const-string v9, "LeapMode"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "findNearestLeapPanel("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "), for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " min("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") <=> d("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") = dx("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")^2 + dy("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")^2"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    :cond_2
    cmpg-float v9, v1, v7

    if-gez v9, :cond_3

    .line 1306
    move v7, v1

    .line 1307
    move v6, v4

    .line 1309
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 1310
    goto/16 :goto_0
.end method

.method public freezeAllScreens()V
    .locals 5

    .prologue
    .line 510
    sget-boolean v3, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->localLOGD:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->LOG_TAG:Ljava/lang/String;

    const-string v4, "freezeAllScreens"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_0
    invoke-static {}, Lcom/htc/launcher/PagesManager;->instance()Lcom/htc/launcher/PagesManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/launcher/PagesManager;->getCurrentPagesCount()I

    move-result v0

    .line 512
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 513
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mScreens:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;

    .line 514
    .local v2, sh:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;
    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->freeze()V

    .line 512
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 516
    .end local v2           #sh:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;
    :cond_1
    return-void
.end method

.method public freezeScreen(I)V
    .locals 1
    .parameter "nScreenId"

    .prologue
    .line 519
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mScreens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->freeze()V

    .line 520
    return-void
.end method

.method public freezeScreens(I)V
    .locals 2
    .parameter "screen"

    .prologue
    .line 523
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mScreens:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;

    .line 524
    .local v0, sh:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;
    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->isFrozen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 525
    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->freeze()V

    .line 527
    :cond_0
    return-void
.end method

.method public getButtonBarLongClickX(FF)I
    .locals 14
    .parameter "x"
    .parameter "y"

    .prologue
    .line 593
    iget-object v12, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v12}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 595
    .local v9, res:Landroid/content/res/Resources;
    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v12, v12, Landroid/content/res/Configuration;->orientation:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_0

    .line 597
    move v10, p1

    .line 598
    .local v10, tempx:F
    move/from16 p1, p2

    .line 599
    move/from16 p2, v10

    .line 602
    .end local v10           #tempx:F
    :cond_0
    const v12, 0x7f0a0040

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 603
    .local v0, middle_btn_top:I
    const v12, 0x7f0a003f

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 604
    .local v4, middle_left_btn_left:I
    const v12, 0x7f0a0041

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 605
    .local v5, middle_left_btn_right:I
    const v12, 0x7f0a0043

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 606
    .local v2, middle_center_btn_right:I
    const v12, 0x7f0a0047

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 608
    .local v7, middle_right_btn_right:I
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isDoubleShot()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v12, v12, Landroid/content/res/Configuration;->orientation:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_6

    .line 609
    move v10, p1

    .line 610
    .restart local v10       #tempx:F
    move/from16 p1, p2

    .line 611
    move/from16 p2, v10

    .line 613
    const v12, 0x7f0a0046

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 614
    .local v8, middle_right_btn_top:I
    const v12, 0x7f0a0048

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 615
    .local v6, middle_right_btn_bottom:I
    const v12, 0x7f0a0044

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 616
    .local v1, middle_center_btn_bottom:I
    const v12, 0x7f0a0042

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 618
    .local v3, middle_left_btn_bottom:I
    int-to-float v12, v4

    cmpl-float v12, p1, v12

    if-ltz v12, :cond_5

    .line 619
    int-to-float v12, v8

    cmpg-float v12, p2, v12

    if-gez v12, :cond_1

    .line 620
    const v11, -0x3b8fc000

    .line 632
    .local v11, tmp:F
    :goto_0
    float-to-int v12, v11

    .line 648
    .end local v1           #middle_center_btn_bottom:I
    .end local v3           #middle_left_btn_bottom:I
    .end local v6           #middle_right_btn_bottom:I
    .end local v8           #middle_right_btn_top:I
    .end local v10           #tempx:F
    :goto_1
    return v12

    .line 621
    .end local v11           #tmp:F
    .restart local v1       #middle_center_btn_bottom:I
    .restart local v3       #middle_left_btn_bottom:I
    .restart local v6       #middle_right_btn_bottom:I
    .restart local v8       #middle_right_btn_top:I
    .restart local v10       #tempx:F
    :cond_1
    int-to-float v12, v6

    cmpg-float v12, p2, v12

    if-gtz v12, :cond_2

    .line 622
    const/high16 v11, 0x4000

    .restart local v11       #tmp:F
    goto :goto_0

    .line 623
    .end local v11           #tmp:F
    :cond_2
    int-to-float v12, v1

    cmpg-float v12, p2, v12

    if-gtz v12, :cond_3

    .line 624
    const/high16 v11, 0x3f80

    .restart local v11       #tmp:F
    goto :goto_0

    .line 625
    .end local v11           #tmp:F
    :cond_3
    int-to-float v12, v3

    cmpg-float v12, p2, v12

    if-gtz v12, :cond_4

    .line 626
    const/high16 v11, 0x3f80

    .restart local v11       #tmp:F
    goto :goto_0

    .line 628
    .end local v11           #tmp:F
    :cond_4
    const/high16 v11, -0x3b90

    .restart local v11       #tmp:F
    goto :goto_0

    .line 631
    .end local v11           #tmp:F
    :cond_5
    const v11, -0x3b8f8000

    .restart local v11       #tmp:F
    goto :goto_0

    .line 634
    .end local v1           #middle_center_btn_bottom:I
    .end local v3           #middle_left_btn_bottom:I
    .end local v6           #middle_right_btn_bottom:I
    .end local v8           #middle_right_btn_top:I
    .end local v10           #tempx:F
    .end local v11           #tmp:F
    :cond_6
    int-to-float v12, v0

    cmpl-float v12, p2, v12

    if-ltz v12, :cond_b

    .line 635
    int-to-float v12, v4

    cmpl-float v12, p1, v12

    if-ltz v12, :cond_7

    int-to-float v12, v5

    cmpg-float v12, p1, v12

    if-gez v12, :cond_7

    .line 636
    const/high16 v11, 0x3f80

    .line 648
    .restart local v11       #tmp:F
    :goto_2
    float-to-int v12, v11

    goto :goto_1

    .line 637
    .end local v11           #tmp:F
    :cond_7
    int-to-float v12, v5

    cmpl-float v12, p1, v12

    if-ltz v12, :cond_8

    int-to-float v12, v2

    cmpg-float v12, p1, v12

    if-gez v12, :cond_8

    .line 638
    const/high16 v11, 0x3f80

    .restart local v11       #tmp:F
    goto :goto_2

    .line 639
    .end local v11           #tmp:F
    :cond_8
    int-to-float v12, v2

    cmpl-float v12, p1, v12

    if-ltz v12, :cond_9

    int-to-float v12, v7

    cmpg-float v12, p1, v12

    if-gez v12, :cond_9

    .line 640
    const/high16 v11, 0x4000

    .restart local v11       #tmp:F
    goto :goto_2

    .line 641
    .end local v11           #tmp:F
    :cond_9
    int-to-float v12, v7

    cmpl-float v12, p1, v12

    if-ltz v12, :cond_a

    .line 642
    const v11, -0x3b8fc000

    .restart local v11       #tmp:F
    goto :goto_2

    .line 644
    .end local v11           #tmp:F
    :cond_a
    const/high16 v11, -0x3b90

    .restart local v11       #tmp:F
    goto :goto_2

    .line 647
    .end local v11           #tmp:F
    :cond_b
    const v11, -0x3b8f8000

    .restart local v11       #tmp:F
    goto :goto_2
.end method

.method public getDropBar()Lcom/htc/android/rosie/home/fxcontrol/DropBar;
    .locals 1

    .prologue
    .line 1362
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mDropBar:Lcom/htc/android/rosie/home/fxcontrol/DropBar;

    return-object v0
.end method

.method public getLeapContainer()Lcom/htc/fusion/fx/controls/FxSceneContainer;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLeapContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    return-object v0
.end method

.method public getLeapContainers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/fusion/fx/controls/FxSceneContainer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLeapContainers:Ljava/util/List;

    return-object v0
.end method

.method public getLeapControlPanels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/fusion/fx/FxTimelineControl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 279
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLeapControlPanels:Ljava/util/List;

    return-object v0
.end method

.method public getLeapRearrangeController()Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;

    return-object v0
.end method

.method public getLeapRearrangeScene()Lcom/htc/fusion/fx/FxScene;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLeapRearrangeScene:Lcom/htc/fusion/fx/FxScene;

    return-object v0
.end method

.method public getLeapScene()Lcom/htc/fusion/fx/FxScene;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLeapScene:Lcom/htc/fusion/fx/FxScene;

    return-object v0
.end method

.method public getNavBarFxItem(J)Lcom/htc/launcher/FxItem;
    .locals 5
    .parameter "id"

    .prologue
    .line 1883
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getNavbarDropTargetCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1884
    invoke-virtual {p0, v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getNavbarDropTarget(I)Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;

    move-result-object v2

    .line 1885
    .local v2, lb:Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;
    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->getItem()Lcom/htc/launcher/FxItem;

    move-result-object v1

    .line 1886
    .local v1, item:Lcom/htc/launcher/FxItem;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/htc/launcher/FxItem;->getInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/launcher/ItemInfo;->getId()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    .line 1891
    .end local v1           #item:Lcom/htc/launcher/FxItem;
    .end local v2           #lb:Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;
    :goto_1
    return-object v1

    .line 1883
    .restart local v1       #item:Lcom/htc/launcher/FxItem;
    .restart local v2       #lb:Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1891
    .end local v1           #item:Lcom/htc/launcher/FxItem;
    .end local v2           #lb:Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getNavBarScene()Lcom/htc/fusion/fx/FxScene;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavbarScene:Lcom/htc/fusion/fx/FxScene;

    return-object v0
.end method

.method public getNavBarSceneCache(Z)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "isLeapMode"

    .prologue
    .line 1054
    iget-object v5, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavbarScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v5, :cond_0

    if-nez p1, :cond_0

    .line 1057
    :try_start_0
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->getScreenShortAxisLength()I

    move-result v3

    .line 1058
    .local v3, screenWidth:I
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->getScreenLongAxisLength()I

    move-result v2

    .line 1059
    .local v2, screenHeight:I
    iget-object v5, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v5}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a005b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v1, v5

    .line 1060
    .local v1, navBarHeight:I
    iget-object v5, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavbarScene:Lcom/htc/fusion/fx/FxScene;

    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x0

    sub-int v8, v2, v1

    invoke-direct {v6, v7, v8, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/FxScene;->getSceneSnapshot(Landroid/graphics/Rect;)Ljava/util/concurrent/Future;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1069
    .end local v1           #navBarHeight:I
    .end local v2           #screenHeight:I
    .end local v3           #screenWidth:I
    :goto_0
    return-object v4

    .line 1063
    :catch_0
    move-exception v0

    .line 1064
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1069
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 1065
    :catch_1
    move-exception v0

    .line 1066
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_1
.end method

.method public getNavbarButtons()Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;
    .locals 1

    .prologue
    .line 1871
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mButtons:Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;

    return-object v0
.end method

.method public getNavbarDropTarget(I)Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;
    .locals 1
    .parameter "index"

    .prologue
    .line 1875
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->m_Navbar:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;

    return-object v0
.end method

.method public getNavbarDropTargetCount()I
    .locals 1

    .prologue
    .line 1879
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->m_Navbar:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getNavigationBar()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavigationBar:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;

    return-object v0
.end method

.method public getPageContainer()Lcom/htc/fusion/fx/controls/FxSceneContainer;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mPageContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    return-object v0
.end method

.method public getPageLeapControl()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$PageLeapControl;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mPageLeapControl:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$PageLeapControl;

    return-object v0
.end method

.method public getPageSinkControl()Lcom/htc/android/rosie/home/fxcontrol/IPageSinkControl;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mPageSinkControl:Lcom/htc/android/rosie/home/fxcontrol/IPageSinkControl;

    return-object v0
.end method

.method public getPageSlideControl()Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mPageSlideControl:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;

    return-object v0
.end method

.method public getPageSlideZControl()Lcom/htc/android/rosie/home/fxcontrol/PageSlideZControl;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mPageSlideZControl:Lcom/htc/android/rosie/home/fxcontrol/PageSlideZControl;

    return-object v0
.end method

.method public getScreen(I)Lcom/htc/android/rosie/home/fxcontrol/FxScreen;
    .locals 1
    .parameter "screen"

    .prologue
    .line 466
    invoke-direct {p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->isValidScreenId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 467
    const/4 v0, 0x0

    .line 468
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreens()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;

    iget-object v0, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFxScreen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    goto :goto_0
.end method

.method public getScreens()Ljava/util/List;
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
    .line 266
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mScreens:Ljava/util/List;

    return-object v0
.end method

.method public getScrollContainers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/fusion/fx/controls/FxSceneContainer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mScrollContainers:Ljava/util/List;

    return-object v0
.end method

.method public getSlideScene()Lcom/htc/fusion/fx/FxScene;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mSlideScene:Lcom/htc/fusion/fx/FxScene;

    return-object v0
.end method

.method public hideButtonBar()V
    .locals 1

    .prologue
    .line 1852
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavigationBar:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->hideButtonBar()V

    .line 1853
    return-void
.end method

.method public hideNavEditBar()V
    .locals 1

    .prologue
    .line 1860
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavigationBar:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->hideNavEditBar()V

    .line 1861
    return-void
.end method

.method onEndDrag()V
    .locals 1

    .prologue
    .line 1841
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mIsLeavingEditMode:Z

    .line 1842
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mEditModeListener:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IEditModeListener;

    if-eqz v0, :cond_0

    .line 1843
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mEditModeListener:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IEditModeListener;

    invoke-interface {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IEditModeListener;->onPreLeaveEditMode()V

    .line 1845
    :cond_0
    return-void
.end method

.method onStartDrag()V
    .locals 1

    .prologue
    .line 1834
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mIsEnteringEditMode:Z

    .line 1835
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mEditModeListener:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IEditModeListener;

    if-eqz v0, :cond_0

    .line 1836
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mEditModeListener:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IEditModeListener;

    invoke-interface {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IEditModeListener;->onPreEnterEditMode()V

    .line 1838
    :cond_0
    return-void
.end method

.method public onWallpaperChanged(Landroid/app/WallpaperInfo;)V
    .locals 6
    .parameter "info"

    .prologue
    .line 1092
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mWallpaperScene:Lcom/htc/fusion/fx/FxScene;

    if-nez v3, :cond_1

    .line 1107
    :cond_0
    :goto_0
    return-void

    .line 1094
    :cond_1
    sget-object v3, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FxWorkspace.onWallpaperChanged():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    if-nez p1, :cond_3

    invoke-static {}, Lcom/htc/launcher/WallpaperManager;->getInstance()Lcom/htc/launcher/WallpaperManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/launcher/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1096
    .local v1, image:Landroid/graphics/drawable/Drawable;
    :goto_1
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mWallpaperScene:Lcom/htc/fusion/fx/FxScene;

    const-string v4, "dy.wallpaper"

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 1097
    .local v2, wallpaper:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    if-eqz v2, :cond_0

    .line 1098
    if-eqz v1, :cond_4

    const/4 v0, 0x1

    .line 1099
    .local v0, draw:Z
    :goto_2
    if-eqz v0, :cond_2

    .line 1100
    if-eqz v1, :cond_5

    .line 1101
    invoke-virtual {v2, v1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 1105
    :cond_2
    :goto_3
    invoke-virtual {v2, v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    goto :goto_0

    .line 1095
    .end local v0           #draw:Z
    .end local v1           #image:Landroid/graphics/drawable/Drawable;
    .end local v2           #wallpaper:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 1098
    .restart local v1       #image:Landroid/graphics/drawable/Drawable;
    .restart local v2       #wallpaper:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 1103
    .restart local v0       #draw:Z
    :cond_5
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public playPhoneAnim()V
    .locals 1

    .prologue
    .line 1792
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mInComingCallControl:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$InComingCallControl;

    if-eqz v0, :cond_0

    .line 1793
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mInComingCallControl:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$InComingCallControl;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$InComingCallControl;->play()V

    .line 1794
    :cond_0
    return-void
.end method

.method public prepareUnlockAnimation(Z)V
    .locals 1
    .parameter "useCache"

    .prologue
    .line 1767
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mPageSlideControl:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;

    if-nez v0, :cond_0

    .line 1789
    :goto_0
    return-void

    .line 1770
    :cond_0
    iget-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mIsPortrait:Z

    if-eqz v0, :cond_2

    .line 1771
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->showAllScreens()V

    .line 1773
    iget-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mDontFreezeWhenLeap:Z

    if-eqz v0, :cond_1

    .line 1774
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->thawAllScreens()V

    .line 1784
    :goto_1
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mPageSlideControl:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->prepareAnimation()V

    .line 1786
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->setUnlockframeFlag(Z)V

    .line 1788
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mDontFreezeWhenLeap:Z

    goto :goto_0

    .line 1777
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->freezeAllScreens()V

    goto :goto_1

    .line 1781
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->freezeAllScreens()V

    goto :goto_1
.end method

.method public pulseFreezeAllScreens()V
    .locals 5

    .prologue
    .line 501
    sget-boolean v3, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->localLOGD:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->LOG_TAG:Ljava/lang/String;

    const-string v4, "pulseFreezeAllScreens"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_0
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->getScreenCount()I

    move-result v0

    .line 503
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 504
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mScreens:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;

    .line 505
    .local v2, sh:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;
    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->pulseFreeze()V

    .line 503
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 507
    .end local v2           #sh:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;
    :cond_1
    return-void
.end method

.method quickScroll(Z)V
    .locals 0
    .parameter "quickScroll"

    .prologue
    .line 462
    iput-boolean p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mQuickScrolling:Z

    .line 463
    return-void
.end method

.method public removeAllItems()V
    .locals 3

    .prologue
    .line 548
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreens()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    .line 557
    :cond_0
    return-void

    .line 551
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreens()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;

    .line 552
    .local v0, holder:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFxScreen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    if-eqz v2, :cond_2

    .line 553
    iget-object v2, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFxScreen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->removeFolder()Z

    .line 554
    iget-object v2, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFxScreen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->removeAllItems()Z

    goto :goto_0
.end method

.method public removeItemFromScreen(II)Z
    .locals 3
    .parameter "screen"
    .parameter "id"

    .prologue
    .line 541
    sget-boolean v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->localLOGD:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove widget from Screen#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->isValidScreenId(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 543
    const/4 v0, 0x0

    .line 544
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreens()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;

    iget-object v0, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFxScreen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->removeItem(J)Z

    move-result v0

    goto :goto_0
.end method

.method public removePageItems(I)V
    .locals 1
    .parameter "screen"

    .prologue
    .line 560
    invoke-virtual {p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreen(I)Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    move-result-object v0

    .line 561
    .local v0, mFxScreen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;
    if-eqz v0, :cond_0

    .line 562
    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->removeFolder()Z

    .line 563
    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->removeAllItems()Z

    .line 565
    :cond_0
    return-void
.end method

.method public setDragScopeForNavBarDropControl(I[Ljava/lang/String;)V
    .locals 1
    .parameter "nIndex"
    .parameter "sScope"

    .prologue
    .line 1899
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mButtonBarDropControl:[Lcom/htc/fusion/fx/controls/FxDropControl;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/htc/fusion/fx/controls/FxDropControl;->setDragScope([Ljava/lang/String;)V

    .line 1900
    return-void
.end method

.method public setEditHeaderText(I)V
    .locals 4
    .parameter "state"

    .prologue
    .line 1740
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1741
    .local v1, r:Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mEditHeader:Lcom/htc/fusion/fx/FxObject;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mEditHeader:Lcom/htc/fusion/fx/FxObject;

    instance-of v3, v3, Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v3, :cond_0

    .line 1742
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mEditHeader:Lcom/htc/fusion/fx/FxObject;

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 1743
    .local v0, hl:Lcom/htc/fusion/fx/controls/FxTextLabel;
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    .line 1744
    const v3, 0x7f0b003e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1745
    .local v2, text:Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1754
    .end local v0           #hl:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .end local v2           #text:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1746
    .restart local v0       #hl:Lcom/htc/fusion/fx/controls/FxTextLabel;
    :cond_1
    if-nez p1, :cond_2

    .line 1747
    const v3, 0x7f0b003d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1748
    .restart local v2       #text:Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto :goto_0

    .line 1749
    .end local v2           #text:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    .line 1750
    const v3, 0x7f0b0041

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1751
    .restart local v2       #text:Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method setEditModeListener(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IEditModeListener;)V
    .locals 0
    .parameter "editModeListener"

    .prologue
    .line 1828
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mEditModeListener:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IEditModeListener;

    .line 1829
    return-void
.end method

.method public setEnableForNavBarDropControl(IZ)V
    .locals 1
    .parameter "index"
    .parameter "v"

    .prologue
    .line 1895
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mButtonBarDropControl:[Lcom/htc/fusion/fx/controls/FxDropControl;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/htc/fusion/fx/controls/FxDropControl;->setEnabled(Z)V

    .line 1896
    return-void
.end method

.method public setUnlockframeFlag(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 1759
    iput-boolean p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mIsUnlockFrameSet:Z

    .line 1760
    return-void
.end method

.method public showAllScreens()V
    .locals 5

    .prologue
    .line 471
    sget-boolean v3, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->localLOGD:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->LOG_TAG:Ljava/lang/String;

    const-string v4, "showAllScreens"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_0
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->getScreenCount()I

    move-result v0

    .line 473
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 474
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreens()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;

    .line 475
    .local v2, sh:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->setVisibility(Z)V

    .line 473
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 477
    .end local v2           #sh:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;
    :cond_1
    return-void
.end method

.method public showButtonBar()V
    .locals 1

    .prologue
    .line 1848
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavigationBar:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->showButtonBar()V

    .line 1849
    return-void
.end method

.method public showCustomizeShortcut(IZ)V
    .locals 1
    .parameter "index"
    .parameter "show"

    .prologue
    .line 587
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mCustomizeShortcuts:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$CustomizeShortcut;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$CustomizeShortcut;->show(IZ)V

    .line 588
    return-void
.end method

.method public showEditControls(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 574
    return-void
.end method

.method public showFunctionBtnHighlight()V
    .locals 2

    .prologue
    .line 1864
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mFxRemoveBtnTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mFxEditBtnTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v0, :cond_1

    .line 1868
    :cond_0
    :goto_0
    return-void

    .line 1866
    :cond_1
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mFxRemoveBtnTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "highlight"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 1867
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mFxEditBtnTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "highlight"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showMiddleBackgroundImageControls([Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 580
    return-void
.end method

.method public showNavEditBar()V
    .locals 1

    .prologue
    .line 1856
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavigationBar:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->showNavEditBar()V

    .line 1857
    return-void
.end method

.method public showScrollbar(Z)V
    .locals 3
    .parameter "show"

    .prologue
    .line 719
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    const-string v2, "timeline.NavBar_scroller"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "disable"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v0

    .line 721
    .local v0, disable:Lcom/htc/fusion/fx/Marker;
    if-nez v0, :cond_0

    .line 730
    :goto_0
    return-void

    .line 724
    :cond_0
    if-eqz p1, :cond_1

    .line 725
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    const-string v2, "timeline.NavBar_scroller"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 726
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    const-string v2, "timeline.NavBar_scroller"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    iget v2, v0, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    goto :goto_0

    .line 729
    :cond_1
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;

    const-string v2, "timeline.NavBar_scroller"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "disable"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopFade(Z)V
    .locals 4
    .parameter "rewind"

    .prologue
    .line 1255
    invoke-direct {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->isPortrait()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1257
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->getScreenCount()I

    move-result v0

    .line 1258
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1259
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreens()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;

    .line 1260
    .local v2, sh:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;
    invoke-virtual {v2, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->stopFade(Z)V

    .line 1258
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1263
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #sh:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;
    :cond_0
    return-void
.end method

.method public stopPhoneAnim()V
    .locals 1

    .prologue
    .line 1797
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mInComingCallControl:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$InComingCallControl;

    if-eqz v0, :cond_0

    .line 1798
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mInComingCallControl:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$InComingCallControl;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$InComingCallControl;->stop()V

    .line 1799
    :cond_0
    return-void
.end method

.method switchMode(III)V
    .locals 17
    .parameter "mode"
    .parameter "op"
    .parameter "currentScreen"

    .prologue
    .line 287
    sget-boolean v14, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->localLOGD:Z

    if-eqz v14, :cond_0

    sget-object v14, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "(Client) switchMode("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", currentOnly? "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "), P? "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-direct/range {p0 .. p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->isPortrait()Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 289
    .local v12, st:J
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mMode:I

    .line 291
    .local v9, prevMode:I
    packed-switch p1, :pswitch_data_0

    .line 391
    :cond_1
    :goto_0
    return-void

    .line 295
    :pswitch_0
    const/4 v14, 0x1

    if-ne v9, v14, :cond_3

    .line 296
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mDontFreezeWhenLeap:Z

    if-eqz v14, :cond_2

    .line 297
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->freezeAllScreens()V

    .line 298
    :cond_2
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mDontFreezeWhenLeap:Z

    .line 301
    :cond_3
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mMode:I

    .line 302
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;

    if-eqz v14, :cond_4

    .line 303
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->setDragEenable(Z)V

    .line 306
    :cond_4
    if-nez p2, :cond_5

    .line 307
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mScreens:Ljava/util/List;

    invoke-static {v14}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->batchDetachScreens(Ljava/util/List;)V

    .line 308
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mScrollContainers:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mScreens:Ljava/util/List;

    invoke-static {v14, v15}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->batchAttachScreens(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 310
    :cond_5
    const/4 v14, 0x1

    move/from16 v0, p2

    if-ne v0, v14, :cond_7

    .line 311
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreens()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    move/from16 v0, p3

    if-ge v0, v14, :cond_6

    if-ltz p3, :cond_6

    .line 312
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreens()Ljava/util/List;

    move-result-object v14

    move/from16 v0, p3

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;

    .line 313
    .local v6, holder:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;
    invoke-virtual {v6}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->detach()Z

    .line 314
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScrollContainers()Ljava/util/List;

    move-result-object v14

    move/from16 v0, p3

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/fusion/fx/controls/FxSceneContainer;

    invoke-virtual {v6, v14}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->attachTo(Lcom/htc/fusion/fx/controls/FxSceneContainer;)Z

    goto :goto_0

    .line 317
    .end local v6           #holder:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;
    :cond_6
    sget-object v14, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "invalid screen "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 321
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreens()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v11, v14, -0x1

    .line 322
    .local v11, size:I
    new-array v4, v11, [Lcom/htc/fusion/fx/controls/FxSceneContainer;

    .line 323
    .local v4, fxSceneContainers:[Lcom/htc/fusion/fx/controls/FxSceneContainer;
    new-array v5, v11, [Lcom/htc/fusion/fx/FxScene;

    .line 325
    .local v5, fxScenes:[Lcom/htc/fusion/fx/FxScene;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 326
    .local v2, ScrollContainers:Ljava/util/List;,"Ljava/util/List<Lcom/htc/fusion/fx/controls/FxSceneContainer;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 327
    .local v10, scenes:Ljava/util/List;,"Ljava/util/List<Lcom/htc/fusion/fx/FxScene;>;"
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreens()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v7, v14, :cond_9

    .line 328
    move/from16 v0, p3

    if-eq v0, v7, :cond_8

    .line 329
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScrollContainers()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreens()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;

    iget-object v14, v14, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFxScreen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    invoke-virtual {v14}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v14

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreens()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScrollContainers()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/htc/fusion/fx/controls/FxSceneContainer;

    iput-object v15, v14, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->mFxParent:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    .line 327
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 335
    :cond_9
    const/4 v7, 0x0

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v14

    if-ge v7, v14, :cond_a

    .line 336
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/fusion/fx/controls/FxSceneContainer;

    aput-object v14, v4, v7

    .line 337
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/fusion/fx/FxScene;

    aput-object v14, v5, v7

    .line 335
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 340
    :cond_a
    new-array v3, v11, [Lcom/htc/fusion/fx/FxObject;

    .line 342
    .local v3, fxObjects:[Lcom/htc/fusion/fx/FxObject;
    invoke-static {v4, v3}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->batchRemoveScenes([Lcom/htc/fusion/fx/controls/FxSceneContainer;[Lcom/htc/fusion/fx/FxObject;)V

    .line 343
    invoke-static {v4, v5}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->batchSetScenes([Lcom/htc/fusion/fx/controls/FxSceneContainer;[Lcom/htc/fusion/fx/FxScene;)V

    goto/16 :goto_0

    .line 350
    .end local v2           #ScrollContainers:Ljava/util/List;,"Ljava/util/List<Lcom/htc/fusion/fx/controls/FxSceneContainer;>;"
    .end local v3           #fxObjects:[Lcom/htc/fusion/fx/FxObject;
    .end local v4           #fxSceneContainers:[Lcom/htc/fusion/fx/controls/FxSceneContainer;
    .end local v5           #fxScenes:[Lcom/htc/fusion/fx/FxScene;
    .end local v7           #i:I
    .end local v10           #scenes:Ljava/util/List;,"Ljava/util/List<Lcom/htc/fusion/fx/FxScene;>;"
    .end local v11           #size:I
    :pswitch_1
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mMode:I

    .line 351
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mScreens:Ljava/util/List;

    invoke-static {v14}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->batchDetachScreens(Ljava/util/List;)V

    .line 352
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLeapContainers:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mScreens:Ljava/util/List;

    invoke-static {v14, v15}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->batchAttachScreens(Ljava/util/List;Ljava/util/List;)V

    .line 353
    if-nez v9, :cond_1

    .line 354
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->isPortrait()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 355
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->showAllScreens()V

    .line 358
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mDontFreezeWhenLeap:Z

    if-eqz v14, :cond_c

    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->thawAllScreens()V

    goto/16 :goto_0

    .line 361
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->freezeAllScreens()V

    goto/16 :goto_0

    .line 367
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;

    if-eqz v14, :cond_1

    .line 370
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mDontFreezeWhenLeap:Z

    if-eqz v14, :cond_d

    .line 371
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->freezeAllScreens()V

    .line 372
    :cond_d
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mDontFreezeWhenLeap:Z

    .line 374
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mMode:I

    .line 375
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;

    if-eqz v14, :cond_e

    .line 376
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->setDragEenable(Z)V

    .line 379
    :cond_e
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 380
    .local v8, leapRearrangeContainers:Ljava/util/List;,"Ljava/util/List<Lcom/htc/fusion/fx/controls/FxSceneContainer;>;"
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mScreens:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v7, v14, :cond_f

    .line 381
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;

    invoke-virtual {v14, v7}, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->getLeapRearrangeContainer(I)Lcom/htc/fusion/fx/controls/FxSceneContainer;

    move-result-object v14

    invoke-interface {v8, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 384
    :cond_f
    sget-boolean v14, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->localLOGD:Z

    if-eqz v14, :cond_10

    const-string v14, "mode10"

    const-string v15, "[Rosie] Scene MODE_LEAP_REARRANGE - detach scene"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mScreens:Ljava/util/List;

    invoke-static {v14}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->batchDetachScreens(Ljava/util/List;)V

    .line 386
    sget-boolean v14, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->localLOGD:Z

    if-eqz v14, :cond_11

    const-string v14, "mode10"

    const-string v15, "[Rosie] Scene MODE_LEAP_REARRANGE - attach scene"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mScreens:Ljava/util/List;

    invoke-static {v8, v14}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->batchAttachScreens(Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_0

    .line 291
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public thawAllScreens()V
    .locals 5

    .prologue
    .line 480
    sget-boolean v3, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->localLOGD:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->LOG_TAG:Ljava/lang/String;

    const-string v4, "thawAllScreens"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_0
    invoke-static {}, Lcom/htc/launcher/PagesManager;->instance()Lcom/htc/launcher/PagesManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/launcher/PagesManager;->getCurrentPagesCount()I

    move-result v0

    .line 482
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 483
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreens()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;

    .line 484
    .local v2, sh:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;
    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->thaw()V

    .line 482
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 486
    .end local v2           #sh:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;
    :cond_1
    return-void
.end method

.method public thawRemovedScreen()V
    .locals 4

    .prologue
    .line 494
    sget-boolean v2, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->localLOGD:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->LOG_TAG:Ljava/lang/String;

    const-string v3, "thawRemovedScreens"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_0
    invoke-static {}, Lcom/htc/launcher/PagesManager;->instance()Lcom/htc/launcher/PagesManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/launcher/PagesManager;->getCurrentPagesCount()I

    move-result v0

    .line 496
    .local v0, N:I
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreens()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;

    .line 497
    .local v1, sh:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->thaw(Z)V

    .line 498
    return-void
.end method

.method public thawScreen(I)V
    .locals 1
    .parameter "nScreenId"

    .prologue
    .line 489
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mScreens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ScreenHolder;->thaw()V

    .line 490
    return-void
.end method

.method public updateCustomizeShortut(ILcom/htc/launcher/ApplicationInfo;)V
    .locals 3
    .parameter "index"
    .parameter "info"

    .prologue
    .line 583
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mCustomizeShortcuts:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$CustomizeShortcut;

    iget-object v1, p2, Lcom/htc/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v2, p2, Lcom/htc/launcher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1, v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$CustomizeShortcut;->set(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 584
    return-void
.end method
