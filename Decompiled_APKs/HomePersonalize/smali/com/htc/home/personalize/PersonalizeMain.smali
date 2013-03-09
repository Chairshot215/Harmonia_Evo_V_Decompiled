.class public Lcom/htc/home/personalize/PersonalizeMain;
.super Landroid/app/Activity;
.source "PersonalizeMain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/home/personalize/PersonalizeMain$PersonalizeOnItemClickListener;,
        Lcom/htc/home/personalize/PersonalizeMain$AddToHomeItemClickListener;,
        Lcom/htc/home/personalize/PersonalizeMain$PersonalizeHandler;,
        Lcom/htc/home/personalize/PersonalizeMain$SearchListener;,
        Lcom/htc/home/personalize/PersonalizeMain$ListType;
    }
.end annotation


# static fields
.field public static final ACTION_PERSONALIZE_ADD_APP_TO_HOME:Ljava/lang/String; = "com.htc.intent.ACTION_PERSONALIZE_ADD_APP_TO_HOME"

.field public static final ACTION_PERSONALIZE_ADD_APP_TO_HOME_CHANGED:Ljava/lang/String; = "com.htc.intent.ACTION_PERSONALIZE_ADD_APP_TO_HOME_CHANGED"

.field public static final ACTION_PERSONALIZE_ADD_FOLDER_TO_HOME:Ljava/lang/String; = "com.htc.intent.ACTION_PERSONALIZE_ADD_FOLDER_TO_HOME"

.field public static final ACTION_PERSONALIZE_ADD_FOLDER_TO_HOME_CHANGED:Ljava/lang/String; = "com.htc.intent.ACTION_PERSONALIZE_ADD_FOLDER_TO_HOME_CHANGED"

.field public static final ACTION_PERSONALIZE_ADD_SHORTCUT_TO_HOME:Ljava/lang/String; = "com.htc.intent.ACTION_PERSONALIZE_ADD_SHORTCUT_TO_HOME"

.field public static final ACTION_PERSONALIZE_ADD_SHORTCUT_TO_HOME_CHANGED:Ljava/lang/String; = "com.htc.intent.ACTION_PERSONALIZE_ADD_SHORTCUT_TO_HOME_CHANGED"

.field public static final ACTION_PERSONALIZE_ADD_WIDGET_TO_HOME:Ljava/lang/String; = "com.htc.intent.ACTION_PERSONALIZE_ADD_WIDGET_TO_HOME"

.field public static final ACTION_PERSONALIZE_ADD_WIDGET_TO_HOME_CHANGED:Ljava/lang/String; = "com.htc.intent.ACTION_PERSONALIZE_ADD_WIDGET_TO_HOME_CHANGED"

.field public static final ACTION_SUMMARY_CHANGES:[Ljava/lang/String; = null

.field public static final ALL_PROGRAM_LIST_DEFAULT_PRIORITY:I = 0xc8

.field private static final APPWIDGET_HOST_ID:I = 0x270f

.field private static final DIALOG_CREATE_WALLPAPER:I = 0x65

.field public static final EXTRA_KEY_CLASS:Ljava/lang/String; = "classname"

.field public static final EXTRA_KEY_EXCUTE:Ljava/lang/String; = "Excute"

.field public static final EXTRA_KEY_PACKAGE:Ljava/lang/String; = "packagename"

.field public static final EXTRA_PERSONALIZE_TAB_ID:Ljava/lang/String; = "personalize_tab_id"

.field public static final FXWIDGET_PICKER_EXTRA_KEY_WIDGET_PROVIDER_ARRAY:Ljava/lang/String; = "com.htc.launcher.intent.EXTRA_KEY_WIDGET_PROVIDER_ARRAY"

.field public static final INTENT_ACTION:Ljava/lang/String; = "com.htc.personalize.ACTION_HOMEPERSONALIZE_MAIN"

.field private static final MSG_REFRESH_ADD_TO_HOME:I = 0x3e9

.field public static final PERSONALIZE_PACKAGE_NAME:Ljava/lang/String; = "com.htc.home.personalize"

.field public static final PERSONALIZE_PREFERENCES:Ljava/lang/String; = "PersonalizeSummary"

.field public static final PICK_APP_WIDGET_ACTION:Ljava/lang/String; = "com.htc.home.personalize.Action.PickAppWidget"

.field public static final PICK_ITEM_ACTION:Ljava/lang/String; = "com.htc.home.personalize.Action.PickItem"

.field public static final PICK_ITEM_EXTRA_ITEM_DATA:Ljava/lang/String; = "pick_item_data"

.field public static final PICK_ITEM_EXTRA_ITEM_TYPE:Ljava/lang/String; = "pick_item_type"

.field private static final REQUEST_CREATE_APPWIDGET:I = 0x5

.field private static final REQUEST_CREATE_LIVE_FOLDER:I = 0x4

.field private static final REQUEST_CREATE_NEW_FOLDER:I = 0x3

.field private static final REQUEST_CREATE_SHORTCUT:I = 0x1

.field private static final REQUEST_PICK_APPLICATION:I = 0x6

.field private static final REQUEST_PICK_APPWIDGET:I = 0x9

.field private static final REQUEST_PICK_BOOKMARK_SHORTCUT:I = 0xb

.field public static final REQUEST_PICK_FXWIDGET:I = 0xc

.field private static final REQUEST_PICK_LIVE_FOLDER:I = 0x8

.field private static final REQUEST_PICK_NOTIFICATION_SOUND:I = 0xe

.field private static final REQUEST_PICK_RINGTONE:I = 0xd

.field private static final REQUEST_PICK_SETTINGWIDGET:I = 0xa

.field private static final REQUEST_PICK_SHORTCUT:I = 0x7

.field public static final REQUEST_VARIATION_OPTION:I = 0x1f4

.field private static final REQUEST_WIDGET_DOWNLOAD_MANAGER:I = 0xf

.field public static final STRING_FORMAT_CACHE_PATH:Ljava/lang/String; = "/data/data/com.htc.launcher/files/scenes_picker.png"

.field public static final STRING_FORMAT_CACHE_PATH_LAND:Ljava/lang/String; = "/data/data/com.htc.launcher/files/scenes_picker_land.png"

.field public static final STYLE_CHOOSER_CLASS_NAME:Ljava/lang/String; = "com.htc.home.personalize.fusionwidget.StyleChooser"

.field public static final TAB_ADD_TO_HOME:Ljava/lang/String; = "add_to_home"

.field public static final TAB_DISPLAY:Ljava/lang/String; = "display"

.field public static final TAB_ID_ADD_TO_HOME:I = 0x7d1

.field public static final TAB_ID_DISPLAY:I = 0x7d2

.field public static final TAB_ID_SOUND:I = 0x7d3

.field public static final TAB_SOUND:Ljava/lang/String; = "sound"

.field private static final TAG:Ljava/lang/String; = "Personalize"

.field private static final WALLPAPER_SELECTED_HOME:I = 0x0

.field private static final WALLPAPER_SELECTED_LOCK_SCREEN:I = 0x1

.field public static final WIDGET_PICKER_CLASS_NAME:Ljava/lang/String; = "com.htc.home.personalize.widgetpicker.WidgetPicker"

.field public static final WIDGET_PICKER_EXTRA_KEY_ITEM_TYPE:Ljava/lang/String; = "item_type"

.field private static final localLOGV:Z

.field public static mRefPersonalize:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/home/personalize/PersonalizeMain;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private launchAppType:Ljava/lang/String;

.field private mAppWidgetComponent:Landroid/content/ComponentName;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCurListType:Lcom/htc/home/personalize/PersonalizeMain$ListType;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderBar:Lcom/htc/widget/HeaderBar;

.field private mHeaderBarShort:Lcom/htc/widget/HeaderBar;

.field private mHeaderImageLeft:Lcom/htc/widget/HeaderBarImage;

.field private mHeaderInput:Lcom/htc/widget/HeaderBarInput;

.field private mHeaderText:Lcom/htc/widget/HeaderBarText;

.field private mHeaderTextShort:Lcom/htc/widget/HeaderBarText;

.field mIsShowSearchbar:Z

.field private mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private mListAdapter:Lcom/htc/home/personalize/AddListAdapter;

.field mNeedStayCurrentPage:Z

.field private mProgramListLayout:Lcom/htc/home/personalize/AddWidgetLayout;

.field private mTabID:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 71
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.htc.intent.ACTION_PERSONALIZE_SCENE_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.htc.intent.ACTION_PERSONALIZE_WALLPAPER_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.htc.intent.ACTION_PERSONALIZE_SKIN_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.htc.intent.ACTION_PERSONALIZE_ADD_WIDGET_TO_HOME_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.htc.intent.ACTION_PERSONALIZE_ADD_APP_TO_HOME_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.htc.intent.ACTION_PERSONALIZE_ADD_SHORTCUT_TO_HOME_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.htc.intent.ACTION_PERSONALIZE_ADD_FOLDER_TO_HOME_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.htc.intent.ACTION_PERSONALIZE_SOUND_SET_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.htc.intent.ACTION_PERSONALIZE_RINGTONE_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.htc.intent.ACTION_PERSONALIZE_NOTIFICATION_SOUNDS_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.htc.intent.ACTION_PERSONALIZE_ALARM_CHANGED"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/home/personalize/PersonalizeMain;->ACTION_SUMMARY_CHANGES:[Ljava/lang/String;

    .line 158
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/home/personalize/PersonalizeMain;->mRefPersonalize:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 89
    sget-object v0, Lcom/htc/home/personalize/PersonalizeMain$ListType;->LIST_MAIN:Lcom/htc/home/personalize/PersonalizeMain$ListType;

    iput-object v0, p0, Lcom/htc/home/personalize/PersonalizeMain;->mCurListType:Lcom/htc/home/personalize/PersonalizeMain$ListType;

    .line 148
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/home/personalize/PersonalizeMain;->launchAppType:Ljava/lang/String;

    .line 154
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/home/personalize/PersonalizeMain;->mTabID:I

    .line 155
    iput-boolean v2, p0, Lcom/htc/home/personalize/PersonalizeMain;->mIsShowSearchbar:Z

    .line 156
    iput-boolean v2, p0, Lcom/htc/home/personalize/PersonalizeMain;->mNeedStayCurrentPage:Z

    .line 159
    iput-object v1, p0, Lcom/htc/home/personalize/PersonalizeMain;->mHandler:Landroid/os/Handler;

    .line 160
    iput-object v1, p0, Lcom/htc/home/personalize/PersonalizeMain;->mAppWidgetComponent:Landroid/content/ComponentName;

    .line 162
    iput-object v1, p0, Lcom/htc/home/personalize/PersonalizeMain;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    .line 163
    iput-object v1, p0, Lcom/htc/home/personalize/PersonalizeMain;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    .line 164
    iput-object v1, p0, Lcom/htc/home/personalize/PersonalizeMain;->mHeaderImageLeft:Lcom/htc/widget/HeaderBarImage;

    .line 165
    iput-object v1, p0, Lcom/htc/home/personalize/PersonalizeMain;->mHeaderInput:Lcom/htc/widget/HeaderBarInput;

    .line 166
    iput-object v1, p0, Lcom/htc/home/personalize/PersonalizeMain;->mHeaderBarShort:Lcom/htc/widget/HeaderBar;

    .line 167
    iput-object v1, p0, Lcom/htc/home/personalize/PersonalizeMain;->mHeaderTextShort:Lcom/htc/widget/HeaderBarText;

    .line 749
    new-instance v0, Lcom/htc/home/personalize/PersonalizeMain$2;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/PersonalizeMain$2;-><init>(Lcom/htc/home/personalize/PersonalizeMain;)V

    iput-object v0, p0, Lcom/htc/home/personalize/PersonalizeMain;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/home/personalize/PersonalizeMain;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/htc/home/personalize/PersonalizeMain;->startWallpaperNoLiveWallpaper()V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/home/personalize/PersonalizeMain;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/htc/home/personalize/PersonalizeMain;->startLockScreenWallpaper()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/home/personalize/PersonalizeMain;)Lcom/htc/widget/HeaderBarInput;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/home/personalize/PersonalizeMain;->mHeaderInput:Lcom/htc/widget/HeaderBarInput;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/home/personalize/PersonalizeMain;)Lcom/htc/home/personalize/AddListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/home/personalize/PersonalizeMain;->mListAdapter:Lcom/htc/home/personalize/AddListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/home/personalize/PersonalizeMain;ILandroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/htc/home/personalize/PersonalizeMain;->launchHomeWithAddToHome(ILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$502(Lcom/htc/home/personalize/PersonalizeMain;Lcom/htc/home/personalize/PersonalizeMain$ListType;)Lcom/htc/home/personalize/PersonalizeMain$ListType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/htc/home/personalize/PersonalizeMain;->mCurListType:Lcom/htc/home/personalize/PersonalizeMain$ListType;

    return-object p1
.end method

.method static synthetic access$600(Lcom/htc/home/personalize/PersonalizeMain;ILandroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/htc/home/personalize/PersonalizeMain;->onPickItem(ILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/home/personalize/PersonalizeMain;)Landroid/content/ComponentName;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/home/personalize/PersonalizeMain;->mAppWidgetComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$702(Lcom/htc/home/personalize/PersonalizeMain;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/htc/home/personalize/PersonalizeMain;->mAppWidgetComponent:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic access$800(Lcom/htc/home/personalize/PersonalizeMain;ILandroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/htc/home/personalize/PersonalizeMain;->sendIntentToLauncher(ILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/home/personalize/PersonalizeMain;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/htc/home/personalize/PersonalizeMain;->startWallpaper()V

    return-void
.end method

.method public static getSceneName(Lcom/htc/htcSceneManager/scene/Scene;Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "scene"
    .parameter "context"

    .prologue
    .line 1039
    invoke-virtual {p0}, Lcom/htc/htcSceneManager/scene/Scene;->getTranslateId()I

    move-result v1

    .line 1040
    .local v1, translateId:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1041
    .local v0, names:[Ljava/lang/String;
    if-eqz v0, :cond_0

    if-ltz v1, :cond_0

    array-length v2, v0

    if-lt v1, v2, :cond_1

    .line 1043
    :cond_0
    invoke-virtual {p0}, Lcom/htc/htcSceneManager/scene/Scene;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1045
    :goto_0
    return-object v2

    :cond_1
    aget-object v2, v0, v1

    goto :goto_0
.end method

.method private initView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 222
    const v0, 0x7f0b0043

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/PersonalizeMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/home/personalize/AddWidgetLayout;

    iput-object v0, p0, Lcom/htc/home/personalize/PersonalizeMain;->mProgramListLayout:Lcom/htc/home/personalize/AddWidgetLayout;

    .line 223
    iget-object v0, p0, Lcom/htc/home/personalize/PersonalizeMain;->mProgramListLayout:Lcom/htc/home/personalize/AddWidgetLayout;

    invoke-virtual {v0, v3}, Lcom/htc/home/personalize/AddWidgetLayout;->updateContentView(Z)V

    .line 224
    iget-object v0, p0, Lcom/htc/home/personalize/PersonalizeMain;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/home/personalize/PersonalizeMain;->mHeaderBarShort:Lcom/htc/widget/HeaderBar;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/htc/home/personalize/PersonalizeMain;->mProgramListLayout:Lcom/htc/home/personalize/AddWidgetLayout;

    iget-object v1, p0, Lcom/htc/home/personalize/PersonalizeMain;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    iget-object v2, p0, Lcom/htc/home/personalize/PersonalizeMain;->mHeaderBarShort:Lcom/htc/widget/HeaderBar;

    invoke-virtual {v0, v1, v2}, Lcom/htc/home/personalize/AddWidgetLayout;->setHeaderBarView(Lcom/htc/widget/HeaderBar;Lcom/htc/widget/HeaderBar;)V

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/PersonalizeMain;->mProgramListLayout:Lcom/htc/home/personalize/AddWidgetLayout;

    invoke-virtual {v0}, Lcom/htc/home/personalize/AddWidgetLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v0, p0, Lcom/htc/home/personalize/PersonalizeMain;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 229
    new-instance v0, Lcom/htc/home/personalize/AddListAdapter;

    iget v1, p0, Lcom/htc/home/personalize/PersonalizeMain;->mTabID:I

    invoke-direct {v0, p0, p0, v3, v1}, Lcom/htc/home/personalize/AddListAdapter;-><init>(Lcom/htc/home/personalize/PersonalizeMain;Landroid/content/Context;ZI)V

    iput-object v0, p0, Lcom/htc/home/personalize/PersonalizeMain;->mListAdapter:Lcom/htc/home/personalize/AddListAdapter;

    .line 230
    iget-object v0, p0, Lcom/htc/home/personalize/PersonalizeMain;->mProgramListLayout:Lcom/htc/home/personalize/AddWidgetLayout;

    iget-object v1, p0, Lcom/htc/home/personalize/PersonalizeMain;->mListAdapter:Lcom/htc/home/personalize/AddListAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/AddWidgetLayout;->setAdapter(Lcom/htc/home/personalize/AddListAdapter;)V

    .line 231
    iget-object v0, p0, Lcom/htc/home/personalize/PersonalizeMain;->mProgramListLayout:Lcom/htc/home/personalize/AddWidgetLayout;

    new-instance v1, Lcom/htc/home/personalize/PersonalizeMain$AddToHomeItemClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/home/personalize/PersonalizeMain$AddToHomeItemClickListener;-><init>(Lcom/htc/home/personalize/PersonalizeMain;Lcom/htc/home/personalize/PersonalizeMain$1;)V

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/AddWidgetLayout;->setAddWidgetListener(Lcom/htc/home/personalize/AddWidgetLayout$OnAddWidgetListener;)V

    .line 232
    iget-object v0, p0, Lcom/htc/home/personalize/PersonalizeMain;->mProgramListLayout:Lcom/htc/home/personalize/AddWidgetLayout;

    new-instance v1, Lcom/htc/home/personalize/PersonalizeMain$PersonalizeOnItemClickListener;

    invoke-direct {v1, p0}, Lcom/htc/home/personalize/PersonalizeMain$PersonalizeOnItemClickListener;-><init>(Lcom/htc/home/personalize/PersonalizeMain;)V

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/AddWidgetLayout;->setPersonalizeOnItemClickListener(Lcom/htc/home/personalize/PersonalizeMain$PersonalizeOnItemClickListener;)V

    .line 233
    return-void
.end method

.method private launchHomeWithAddToHome(ILandroid/content/Intent;)V
    .locals 4
    .parameter "request"
    .parameter "data"

    .prologue
    .line 1001
    const/4 v0, 0x0

    .line 1002
    .local v0, category:Ljava/lang/String;
    const-string v3, "uimode"

    invoke-virtual {p0, v3}, Lcom/htc/home/personalize/PersonalizeMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/UiModeManager;

    .line 1004
    .local v2, uiModeMgr:Landroid/app/UiModeManager;
    invoke-virtual {v2}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1012
    const-string v0, "android.intent.category.HOME"

    .line 1015
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1016
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1017
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1018
    const-string v3, "pick_item_type"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1019
    const-string v3, "pick_item_data"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1020
    invoke-virtual {p0, v1}, Lcom/htc/home/personalize/PersonalizeMain;->startActivity(Landroid/content/Intent;)V

    .line 1021
    invoke-virtual {p0}, Lcom/htc/home/personalize/PersonalizeMain;->finish()V

    .line 1022
    return-void

    .line 1006
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_0
    const-string v0, "android.intent.category.CAR_DOCK"

    .line 1007
    goto :goto_0

    .line 1009
    :pswitch_1
    const-string v0, "android.intent.category.DESK_DOCK"

    .line 1010
    goto :goto_0

    .line 1004
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onPickItem(ILandroid/content/Intent;)V
    .locals 4
    .parameter "request"
    .parameter "data"

    .prologue
    const/16 v3, 0x1f4

    const/4 v2, 0x1

    .line 827
    sparse-switch p1, :sswitch_data_0

    .line 912
    :goto_0
    :sswitch_0
    return-void

    .line 830
    :sswitch_1
    const/4 v1, 0x6

    invoke-direct {p0, v1, p2}, Lcom/htc/home/personalize/PersonalizeMain;->launchHomeWithAddToHome(ILandroid/content/Intent;)V

    goto :goto_0

    .line 834
    :sswitch_2
    const/16 v1, 0xb

    invoke-direct {p0, v1, p2}, Lcom/htc/home/personalize/PersonalizeMain;->launchHomeWithAddToHome(ILandroid/content/Intent;)V

    goto :goto_0

    .line 838
    :sswitch_3
    invoke-virtual {p0, p2}, Lcom/htc/home/personalize/PersonalizeMain;->addShortcut(Landroid/content/Intent;)V

    goto :goto_0

    .line 842
    :sswitch_4
    invoke-direct {p0, v2, p2}, Lcom/htc/home/personalize/PersonalizeMain;->launchHomeWithAddToHome(ILandroid/content/Intent;)V

    goto :goto_0

    .line 846
    :sswitch_5
    invoke-virtual {p0, p2}, Lcom/htc/home/personalize/PersonalizeMain;->addLiveFolder(Landroid/content/Intent;)V

    goto :goto_0

    .line 850
    :sswitch_6
    const/4 v1, 0x4

    invoke-direct {p0, v1, p2}, Lcom/htc/home/personalize/PersonalizeMain;->launchHomeWithAddToHome(ILandroid/content/Intent;)V

    goto :goto_0

    .line 858
    :sswitch_7
    const/4 v1, 0x5

    invoke-direct {p0, v1, p2}, Lcom/htc/home/personalize/PersonalizeMain;->launchHomeWithAddToHome(ILandroid/content/Intent;)V

    goto :goto_0

    .line 879
    :sswitch_8
    invoke-direct {p0, v3, p2}, Lcom/htc/home/personalize/PersonalizeMain;->launchHomeWithAddToHome(ILandroid/content/Intent;)V

    goto :goto_0

    .line 898
    :sswitch_9
    const-string v1, "widget_2d"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 899
    .local v0, is2DWidget:Z
    if-eqz v0, :cond_0

    .line 900
    invoke-direct {p0, v3, p2}, Lcom/htc/home/personalize/PersonalizeMain;->launchHomeWithAddToHome(ILandroid/content/Intent;)V

    goto :goto_0

    .line 902
    :cond_0
    const/16 v1, 0xc

    invoke-direct {p0, v1, p2}, Lcom/htc/home/personalize/PersonalizeMain;->launchHomeWithAddToHome(ILandroid/content/Intent;)V

    goto :goto_0

    .line 906
    .end local v0           #is2DWidget:Z
    :sswitch_a
    const-string v1, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-static {p0, v2, v1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_0

    .line 909
    :sswitch_b
    const/4 v2, 0x2

    const-string v1, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-static {p0, v2, v1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_0

    .line 827
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x4 -> :sswitch_6
        0x5 -> :sswitch_7
        0x6 -> :sswitch_1
        0x7 -> :sswitch_3
        0x8 -> :sswitch_5
        0x9 -> :sswitch_0
        0xb -> :sswitch_2
        0xc -> :sswitch_9
        0xd -> :sswitch_a
        0xe -> :sswitch_b
        0x1f4 -> :sswitch_8
    .end sparse-switch
.end method

.method private prepareAddToHomeContent()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 329
    iget-object v0, p0, Lcom/htc/home/personalize/PersonalizeMain;->mListAdapter:Lcom/htc/home/personalize/AddListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/home/personalize/PersonalizeMain;->mListAdapter:Lcom/htc/home/personalize/AddListAdapter;

    invoke-virtual {v0}, Lcom/htc/home/personalize/AddListAdapter;->getLevel()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/home/personalize/PersonalizeMain;->mNeedStayCurrentPage:Z

    if-nez v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/htc/home/personalize/PersonalizeMain;->mListAdapter:Lcom/htc/home/personalize/AddListAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/AddListAdapter;->reset(Z)V

    .line 335
    :goto_0
    iget-object v0, p0, Lcom/htc/home/personalize/PersonalizeMain;->mProgramListLayout:Lcom/htc/home/personalize/AddWidgetLayout;

    invoke-virtual {v0}, Lcom/htc/home/personalize/AddWidgetLayout;->doCheckTitle()V

    .line 336
    return-void

    .line 332
    :cond_0
    iput-boolean v1, p0, Lcom/htc/home/personalize/PersonalizeMain;->mNeedStayCurrentPage:Z

    .line 333
    invoke-virtual {p0}, Lcom/htc/home/personalize/PersonalizeMain;->refreshAddToHomeAdapter()V

    goto :goto_0
.end method

.method private sendIntentToLauncher(ILandroid/content/Intent;)V
    .locals 4
    .parameter "request"
    .parameter "data"

    .prologue
    .line 1025
    const-string v1, "Personalize"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendIntentToLauncher request = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    const-string v1, "Personalize"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendIntentToLauncher data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    const-string v1, "Personalize"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendIntentToLauncher data extra = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.home.personalize.Action.PickItem"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1030
    .local v0, pickIntent:Landroid/content/Intent;
    const-string v1, "pick_item_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1031
    const-string v1, "pick_item_data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1032
    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/PersonalizeMain;->sendBroadcast(Landroid/content/Intent;)V

    .line 1033
    return-void
.end method

.method private setupSearchBar()V
    .locals 4

    .prologue
    .line 236
    new-instance v1, Lcom/htc/home/personalize/PersonalizeMain$SearchListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/home/personalize/PersonalizeMain$SearchListener;-><init>(Lcom/htc/home/personalize/PersonalizeMain;Lcom/htc/home/personalize/PersonalizeMain$1;)V

    .line 237
    .local v1, searchListener:Lcom/htc/home/personalize/PersonalizeMain$SearchListener;
    iget-object v2, p0, Lcom/htc/home/personalize/PersonalizeMain;->mHeaderInput:Lcom/htc/widget/HeaderBarInput;

    invoke-virtual {v2}, Lcom/htc/widget/HeaderBarInput;->getAutoCompleteTextView()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    .line 238
    .local v0, searchBox:Landroid/widget/AutoCompleteTextView;
    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 241
    :cond_0
    iget-object v2, p0, Lcom/htc/home/personalize/PersonalizeMain;->mHeaderImageLeft:Lcom/htc/widget/HeaderBarImage;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 242
    iget-object v2, p0, Lcom/htc/home/personalize/PersonalizeMain;->mHeaderImageLeft:Lcom/htc/widget/HeaderBarImage;

    const v3, 0x7f020001

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 244
    return-void
.end method

.method private startLockScreenWallpaper()V
    .locals 3

    .prologue
    .line 696
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SET_WALLPAPER_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 698
    .local v0, pickIntent:Landroid/content/Intent;
    const-string v1, "IS_SELECT_LOCKSCREEN"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 699
    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/PersonalizeMain;->startActivity(Landroid/content/Intent;)V

    .line 700
    return-void
.end method

.method private startWallpaper()V
    .locals 3

    .prologue
    .line 703
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SET_WALLPAPER_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 705
    .local v0, pickIntent:Landroid/content/Intent;
    const-string v1, "IS_LIVE_WALLPAPER"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 706
    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/PersonalizeMain;->startActivity(Landroid/content/Intent;)V

    .line 710
    return-void
.end method

.method private startWallpaperNoLiveWallpaper()V
    .locals 2

    .prologue
    .line 690
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SET_WALLPAPER_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 692
    .local v0, pickIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/PersonalizeMain;->startActivity(Landroid/content/Intent;)V

    .line 693
    return-void
.end method


# virtual methods
.method addAppWidget(Landroid/content/Intent;)V
    .locals 8
    .parameter "data"

    .prologue
    .line 957
    const-string v5, "appWidgetId"

    const/4 v6, -0x1

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 969
    .local v1, appWidgetId:I
    :try_start_0
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 970
    .local v2, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V

    .line 971
    const-string v5, "Personalize"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bindAppWidgetId appWidgetId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    invoke-virtual {v2, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 973
    .local v0, appWidget:Landroid/appwidget/AppWidgetProviderInfo;
    const-string v5, "Personalize"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "appWidget = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    if-eqz v0, :cond_0

    iget-object v5, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v5, :cond_0

    .line 977
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 978
    .local v4, intent:Landroid/content/Intent;
    iget-object v5, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 979
    const-string v5, "appWidgetId"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 980
    const/4 v5, 0x5

    invoke-virtual {p0, v4, v5}, Lcom/htc/home/personalize/PersonalizeMain;->startActivityForResult(Landroid/content/Intent;I)V

    .line 991
    .end local v0           #appWidget:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v2           #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    .end local v4           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 984
    .restart local v0       #appWidget:Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v2       #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    :cond_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 985
    .restart local v4       #intent:Landroid/content/Intent;
    const-string v5, "appWidgetId"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 986
    const/4 v5, 0x5

    invoke-direct {p0, v5, v4}, Lcom/htc/home/personalize/PersonalizeMain;->onPickItem(ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 988
    .end local v0           #appWidget:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v2           #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    .end local v4           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 989
    .local v3, e:Ljava/lang/IllegalArgumentException;
    const-string v5, "Personalize"

    const-string v6, "addAppWidget fail "

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method addLiveFolder(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 951
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/htc/home/personalize/PersonalizeMain;->startActivityForResult(Landroid/content/Intent;I)V

    .line 953
    return-void
.end method

.method addShortcut(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 938
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/home/personalize/PersonalizeMain;->startActivityForResult(Landroid/content/Intent;I)V

    .line 940
    return-void
.end method

.method public checkLauncherHasRoom()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 358
    invoke-static {p0}, Lcom/htc/home/personalize/util/ProviderHelper;->getRoomCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v2

    .line 359
    .local v2, cursor:Landroid/database/Cursor;
    const/4 v3, 0x1

    .line 360
    .local v3, hasRoom:Z
    if-eqz v2, :cond_3

    .line 361
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 362
    const-string v6, "max_span_x"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 363
    .local v4, span_x:I
    const-string v6, "max_span_y"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 364
    .local v5, span_y:I
    const-string v6, "cell_width"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 365
    .local v1, cell_w:I
    const-string v6, "cell_height"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 367
    .local v0, cell_h:I
    const-string v6, "Personalize"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "span_x = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", span_y = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const-string v6, "Personalize"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cell_w = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", cell_h = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    if-lt v4, v9, :cond_0

    if-ge v5, v9, :cond_1

    .line 370
    :cond_0
    const/4 v3, 0x0

    .line 373
    .end local v0           #cell_h:I
    .end local v1           #cell_w:I
    .end local v4           #span_x:I
    .end local v5           #span_y:I
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 374
    :cond_2
    const/4 v2, 0x0

    .line 376
    :cond_3
    return v3
.end method

.method public checkSummaryUpdated(I)Z
    .locals 3
    .parameter "nTabID"

    .prologue
    .line 1051
    invoke-virtual {p0}, Lcom/htc/home/personalize/PersonalizeMain;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/home/personalize/PersonalizeCarousel;

    .line 1052
    .local v0, personalizeCarousel:Lcom/htc/home/personalize/PersonalizeCarousel;
    if-nez v0, :cond_0

    .line 1054
    const-string v1, "Personalize"

    const-string v2, "needUpdateSummary can not get the carousel"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    const/4 v1, 0x1

    .line 1058
    :goto_0
    return v1

    :cond_0
    iget-object v1, v0, Lcom/htc/home/personalize/PersonalizeCarousel;->listUpdatedTabID:Ljava/util/ArrayList;

    iget v2, p0, Lcom/htc/home/personalize/PersonalizeMain;->mTabID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 285
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_5

    .line 286
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 317
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 318
    .local v0, ret:Z
    const/16 v1, 0x54

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-ne v1, v3, :cond_9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v2, v1, :cond_9

    :goto_1
    move v2, v0

    .line 325
    .end local v0           #ret:Z
    :cond_1
    :goto_2
    return v2

    .line 288
    :sswitch_0
    iget-boolean v3, p0, Lcom/htc/home/personalize/PersonalizeMain;->mIsShowSearchbar:Z

    if-eqz v3, :cond_3

    .line 289
    iget-boolean v3, p0, Lcom/htc/home/personalize/PersonalizeMain;->mIsShowSearchbar:Z

    if-nez v3, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Lcom/htc/home/personalize/PersonalizeMain;->enableSearchBar(Z)V

    .line 300
    :goto_3
    iget-object v1, p0, Lcom/htc/home/personalize/PersonalizeMain;->mListAdapter:Lcom/htc/home/personalize/AddListAdapter;

    invoke-virtual {v1}, Lcom/htc/home/personalize/AddListAdapter;->getLevel()I

    move-result v1

    if-nez v1, :cond_1

    .line 301
    sget-object v1, Lcom/htc/home/personalize/PersonalizeMain$ListType;->LIST_MAIN:Lcom/htc/home/personalize/PersonalizeMain$ListType;

    iput-object v1, p0, Lcom/htc/home/personalize/PersonalizeMain;->mCurListType:Lcom/htc/home/personalize/PersonalizeMain$ListType;

    goto :goto_2

    .line 290
    :cond_3
    iget-object v1, p0, Lcom/htc/home/personalize/PersonalizeMain;->mListAdapter:Lcom/htc/home/personalize/AddListAdapter;

    invoke-virtual {v1}, Lcom/htc/home/personalize/AddListAdapter;->getLevel()I

    move-result v1

    if-lez v1, :cond_4

    .line 291
    iget-object v1, p0, Lcom/htc/home/personalize/PersonalizeMain;->mListAdapter:Lcom/htc/home/personalize/AddListAdapter;

    invoke-virtual {v1}, Lcom/htc/home/personalize/AddListAdapter;->callback()V

    .line 292
    iget-object v1, p0, Lcom/htc/home/personalize/PersonalizeMain;->mProgramListLayout:Lcom/htc/home/personalize/AddWidgetLayout;

    invoke-virtual {v1}, Lcom/htc/home/personalize/AddWidgetLayout;->doCheckTitle()V

    .line 296
    iget-object v1, p0, Lcom/htc/home/personalize/PersonalizeMain;->mProgramListLayout:Lcom/htc/home/personalize/AddWidgetLayout;

    invoke-virtual {v1}, Lcom/htc/home/personalize/AddWidgetLayout;->postInvalidate()V

    goto :goto_3

    .line 298
    :cond_4
    invoke-virtual {p0}, Lcom/htc/home/personalize/PersonalizeMain;->finish()V

    goto :goto_3

    .line 304
    :sswitch_1
    iput-boolean v2, p0, Lcom/htc/home/personalize/PersonalizeMain;->mNeedStayCurrentPage:Z

    goto :goto_0

    .line 307
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 308
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 310
    :pswitch_0
    iget-object v3, p0, Lcom/htc/home/personalize/PersonalizeMain;->mCurListType:Lcom/htc/home/personalize/PersonalizeMain$ListType;

    sget-object v4, Lcom/htc/home/personalize/PersonalizeMain$ListType;->LIST_MAIN:Lcom/htc/home/personalize/PersonalizeMain$ListType;

    if-eq v3, v4, :cond_6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    move v2, v1

    .line 311
    goto :goto_2

    .line 312
    :cond_7
    iget-boolean v3, p0, Lcom/htc/home/personalize/PersonalizeMain;->mIsShowSearchbar:Z

    if-nez v3, :cond_8

    move v1, v2

    :cond_8
    invoke-virtual {p0, v1}, Lcom/htc/home/personalize/PersonalizeMain;->enableSearchBar(Z)V

    goto :goto_2

    .line 323
    .restart local v0       #ret:Z
    :cond_9
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1

    .line 286
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x54 -> :sswitch_1
    .end sparse-switch

    .line 308
    :pswitch_data_0
    .packed-switch 0x54
        :pswitch_0
    .end packed-switch
.end method

.method public enableSearchBar(Z)V
    .locals 7
    .parameter "enable"

    .prologue
    const v3, 0x7f0b0041

    const/4 v4, 0x3

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 766
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/htc/home/personalize/PersonalizeMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 767
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/htc/home/personalize/PersonalizeMain;->mHeaderInput:Lcom/htc/widget/HeaderBarInput;

    invoke-virtual {v2}, Lcom/htc/widget/HeaderBarInput;->getAutoCompleteTextView()Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    .line 768
    .local v1, searchBox:Landroid/widget/AutoCompleteTextView;
    if-nez v1, :cond_0

    .line 807
    :goto_0
    return-void

    .line 771
    :cond_0
    if-eqz p1, :cond_1

    .line 772
    iget-object v2, p0, Lcom/htc/home/personalize/PersonalizeMain;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HeaderBar;->setVisibility(I)V

    .line 773
    iget-object v2, p0, Lcom/htc/home/personalize/PersonalizeMain;->mHeaderBarShort:Lcom/htc/widget/HeaderBar;

    invoke-virtual {v2, v6}, Lcom/htc/widget/HeaderBar;->setVisibility(I)V

    .line 774
    iget-object v2, p0, Lcom/htc/home/personalize/PersonalizeMain;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 776
    const v2, 0x7f090084

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setHint(I)V

    .line 777
    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 778
    new-instance v2, Lcom/htc/home/personalize/PersonalizeMain$3;

    invoke-direct {v2, p0, v0, v1}, Lcom/htc/home/personalize/PersonalizeMain$3;-><init>(Lcom/htc/home/personalize/PersonalizeMain;Landroid/view/inputmethod/InputMethodManager;Landroid/widget/AutoCompleteTextView;)V

    const-wide/16 v3, 0x190

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/AutoCompleteTextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 784
    iget-object v2, p0, Lcom/htc/home/personalize/PersonalizeMain;->mHeaderImageLeft:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 785
    iget-object v2, p0, Lcom/htc/home/personalize/PersonalizeMain;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v2, v6}, Lcom/htc/widget/HeaderBarText;->setVisibility(I)V

    .line 786
    iget-object v2, p0, Lcom/htc/home/personalize/PersonalizeMain;->mHeaderInput:Lcom/htc/widget/HeaderBarInput;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HeaderBarInput;->setVisibility(I)V

    .line 806
    :goto_1
    iput-boolean p1, p0, Lcom/htc/home/personalize/PersonalizeMain;->mIsShowSearchbar:Z

    goto :goto_0

    .line 788
    :cond_1
    iget-object v2, p0, Lcom/htc/home/personalize/PersonalizeMain;->mListAdapter:Lcom/htc/home/personalize/AddListAdapter;

    invoke-virtual {v2}, Lcom/htc/home/personalize/AddListAdapter;->getLevel()I

    move-result v2

    if-nez v2, :cond_2

    .line 789
    iget-object v2, p0, Lcom/htc/home/personalize/PersonalizeMain;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HeaderBar;->setVisibility(I)V

    .line 790
    iget-object v2, p0, Lcom/htc/home/personalize/PersonalizeMain;->mHeaderBarShort:Lcom/htc/widget/HeaderBar;

    invoke-virtual {v2, v6}, Lcom/htc/widget/HeaderBar;->setVisibility(I)V

    .line 791
    iget-object v2, p0, Lcom/htc/home/personalize/PersonalizeMain;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 798
    :goto_2
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 799
    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 801
    iget-object v2, p0, Lcom/htc/home/personalize/PersonalizeMain;->mHeaderImageLeft:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v2, v6}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 802
    iget-object v2, p0, Lcom/htc/home/personalize/PersonalizeMain;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HeaderBarText;->setVisibility(I)V

    .line 803
    iget-object v2, p0, Lcom/htc/home/personalize/PersonalizeMain;->mHeaderInput:Lcom/htc/widget/HeaderBarInput;

    invoke-virtual {v2, v6}, Lcom/htc/widget/HeaderBarInput;->setVisibility(I)V

    goto :goto_1

    .line 793
    :cond_2
    iget-object v2, p0, Lcom/htc/home/personalize/PersonalizeMain;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    invoke-virtual {v2, v6}, Lcom/htc/widget/HeaderBar;->setVisibility(I)V

    .line 794
    iget-object v2, p0, Lcom/htc/home/personalize/PersonalizeMain;->mHeaderBarShort:Lcom/htc/widget/HeaderBar;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HeaderBar;->setVisibility(I)V

    .line 795
    iget-object v2, p0, Lcom/htc/home/personalize/PersonalizeMain;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    const v3, 0x7f0b0042

    invoke-virtual {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_2
.end method

.method public notifySummaryUpdated(I)V
    .locals 3
    .parameter "nTabID"

    .prologue
    .line 1063
    invoke-virtual {p0}, Lcom/htc/home/personalize/PersonalizeMain;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/home/personalize/PersonalizeCarousel;

    .line 1064
    .local v0, personalizeCarousel:Lcom/htc/home/personalize/PersonalizeCarousel;
    if-nez v0, :cond_0

    .line 1066
    const-string v1, "Personalize"

    const-string v2, "notifySummaryUpdated can not get the carousel"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    :goto_0
    return-void

    .line 1070
    :cond_0
    iget-object v1, v0, Lcom/htc/home/personalize/PersonalizeCarousel;->listUpdatedTabID:Ljava/util/ArrayList;

    iget v2, p0, Lcom/htc/home/personalize/PersonalizeMain;->mTabID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 916
    const-string v0, "Personalize"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/home/personalize/PersonalizeMain;->mNeedStayCurrentPage:Z

    .line 918
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 919
    invoke-direct {p0, p1, p3}, Lcom/htc/home/personalize/PersonalizeMain;->onPickItem(ILandroid/content/Intent;)V

    .line 923
    :cond_0
    :goto_0
    return-void

    .line 920
    :cond_1
    if-nez p2, :cond_0

    .line 921
    const-string v0, "Personalize"

    const-string v1, "Cancel to pick item"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 196
    const-string v1, "Personalize"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 198
    const v1, 0x7f030015

    invoke-virtual {p0, v1}, Lcom/htc/home/personalize/PersonalizeMain;->setContentView(I)V

    .line 199
    invoke-virtual {p0}, Lcom/htc/home/personalize/PersonalizeMain;->setupHeaderBar()V

    .line 200
    invoke-direct {p0}, Lcom/htc/home/personalize/PersonalizeMain;->setupSearchBar()V

    .line 202
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 203
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    const-string v1, "com.htc.home.personalize.Action.PickAppWidget"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, Lcom/htc/home/personalize/PersonalizeMain;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/home/personalize/PersonalizeMain;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 206
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/htc/home/personalize/PersonalizeMain;->mRefPersonalize:Ljava/lang/ref/WeakReference;

    .line 207
    new-instance v1, Lcom/htc/home/personalize/PersonalizeMain$PersonalizeHandler;

    invoke-direct {v1, p0}, Lcom/htc/home/personalize/PersonalizeMain$PersonalizeHandler;-><init>(Lcom/htc/home/personalize/PersonalizeMain;)V

    iput-object v1, p0, Lcom/htc/home/personalize/PersonalizeMain;->mHandler:Landroid/os/Handler;

    .line 209
    invoke-virtual {p0}, Lcom/htc/home/personalize/PersonalizeMain;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "personalize_tab_id"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/home/personalize/PersonalizeMain;->mTabID:I

    .line 211
    invoke-direct {p0}, Lcom/htc/home/personalize/PersonalizeMain;->initView()V

    .line 212
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .parameter "id"

    .prologue
    .line 638
    packed-switch p1, :pswitch_data_0

    .line 685
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v2

    :goto_1
    return-object v2

    .line 641
    :pswitch_0
    :try_start_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 642
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v2, 0x7f090083

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 643
    const v2, 0x7f03001a

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 645
    .local v1, textEntryView:Landroid/view/View;
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 646
    const v2, 0x7f0b0050

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ListView;

    .line 648
    .local v8, list:Landroid/widget/ListView;
    new-instance v6, Lcom/htc/home/personalize/AddWallpaperDialogAdapter;

    invoke-direct {v6, p0}, Lcom/htc/home/personalize/AddWallpaperDialogAdapter;-><init>(Landroid/content/Context;)V

    .line 649
    .local v6, adapter:Lcom/htc/home/personalize/AddWallpaperDialogAdapter;
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 650
    invoke-virtual {v8, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 651
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 652
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 653
    new-instance v2, Lcom/htc/home/personalize/PersonalizeMain$1;

    invoke-direct {v2, p0}, Lcom/htc/home/personalize/PersonalizeMain$1;-><init>(Lcom/htc/home/personalize/PersonalizeMain;)V

    invoke-virtual {v8, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 676
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;IIII)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 678
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_1

    .line 679
    .end local v0           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v1           #textEntryView:Landroid/view/View;
    .end local v6           #adapter:Lcom/htc/home/personalize/AddWallpaperDialogAdapter;
    .end local v8           #list:Landroid/widget/ListView;
    :catch_0
    move-exception v7

    .line 681
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 638
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 216
    const-string v0, "Personalize"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/htc/home/personalize/PersonalizeMain;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/PersonalizeMain;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 218
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 219
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 811
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 813
    .local v0, handled:Z
    const-string v1, "Personalize"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyUp : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 815
    iget-boolean v1, p0, Lcom/htc/home/personalize/PersonalizeMain;->mIsShowSearchbar:Z

    if-eqz v1, :cond_0

    .line 816
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/home/personalize/PersonalizeMain;->enableSearchBar(Z)V

    .line 819
    :cond_0
    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 274
    const-string v0, "Personalize"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 276
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/PersonalizeMain;->enableSearchBar(Z)V

    .line 277
    iget v0, p0, Lcom/htc/home/personalize/PersonalizeMain;->mTabID:I

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/PersonalizeMain;->checkSummaryUpdated(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    invoke-direct {p0}, Lcom/htc/home/personalize/PersonalizeMain;->prepareAddToHomeContent()V

    .line 281
    :cond_0
    return-void
.end method

.method public refreshAddToHomeAdapter()V
    .locals 4

    .prologue
    .line 339
    iget-object v0, p0, Lcom/htc/home/personalize/PersonalizeMain;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/htc/home/personalize/PersonalizeMain;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 342
    :cond_0
    return-void
.end method

.method public setCarouselWidgetVisibility(Z)V
    .locals 1
    .parameter "showCarouselWidget"

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/htc/home/personalize/PersonalizeMain;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/home/personalize/PersonalizeCarousel;

    .line 189
    .local v0, personalizeCarousel:Lcom/htc/home/personalize/PersonalizeCarousel;
    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0, p1}, Lcom/htc/home/personalize/PersonalizeCarousel;->setCarouselWidgetVisibility(Z)V

    .line 192
    :cond_0
    return-void
.end method

.method public setCurListType(Lcom/htc/home/personalize/PersonalizeMain$ListType;)V
    .locals 0
    .parameter "listType"

    .prologue
    .line 823
    iput-object p1, p0, Lcom/htc/home/personalize/PersonalizeMain;->mCurListType:Lcom/htc/home/personalize/PersonalizeMain$ListType;

    .line 824
    return-void
.end method

.method public setupHeaderBar()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 170
    const v0, 0x7f0b0041

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/PersonalizeMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBar;

    iput-object v0, p0, Lcom/htc/home/personalize/PersonalizeMain;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    .line 171
    const v0, 0x7f0b000e

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/PersonalizeMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarText;

    iput-object v0, p0, Lcom/htc/home/personalize/PersonalizeMain;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    .line 172
    const v0, 0x7f0b0010

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/PersonalizeMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarImage;

    iput-object v0, p0, Lcom/htc/home/personalize/PersonalizeMain;->mHeaderImageLeft:Lcom/htc/widget/HeaderBarImage;

    .line 173
    const v0, 0x7f0b0011

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/PersonalizeMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarInput;

    iput-object v0, p0, Lcom/htc/home/personalize/PersonalizeMain;->mHeaderInput:Lcom/htc/widget/HeaderBarInput;

    .line 175
    const v0, 0x7f0b0042

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/PersonalizeMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBar;

    iput-object v0, p0, Lcom/htc/home/personalize/PersonalizeMain;->mHeaderBarShort:Lcom/htc/widget/HeaderBar;

    .line 176
    const v0, 0x7f0b0012

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/PersonalizeMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarText;

    iput-object v0, p0, Lcom/htc/home/personalize/PersonalizeMain;->mHeaderTextShort:Lcom/htc/widget/HeaderBarText;

    .line 178
    iget-object v0, p0, Lcom/htc/home/personalize/PersonalizeMain;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBar;->enableLeftDivider(Z)V

    .line 180
    iget-object v0, p0, Lcom/htc/home/personalize/PersonalizeMain;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/htc/home/personalize/PersonalizeMain;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/htc/home/personalize/PersonalizeMain;->mHeaderInput:Lcom/htc/widget/HeaderBarInput;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarInput;->setInputMode(I)V

    .line 183
    iget-object v0, p0, Lcom/htc/home/personalize/PersonalizeMain;->mHeaderInput:Lcom/htc/widget/HeaderBarInput;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarInput;->setClearIconVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/htc/home/personalize/PersonalizeMain;->mHeaderTextShort:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 185
    return-void
.end method

.method public startActivitySafely(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const v6, 0x7f090050

    const/4 v5, 0x0

    .line 713
    const/high16 v2, 0x1000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 715
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/htc/home/personalize/PersonalizeMain;->startActivity(Landroid/content/Intent;)V

    .line 716
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 720
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v1

    .line 723
    .local v1, uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    const-string v2, "com.htc.launcher"

    invoke-virtual {v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v2

    const-string v3, "app_launch"

    invoke-interface {v2, v3}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 726
    const-string v2, "type"

    iget-object v3, p0, Lcom/htc/home/personalize/PersonalizeMain;->launchAppType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 727
    const-string v2, "Personalize"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTC user profiling     type     "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/home/personalize/PersonalizeMain;->launchAppType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/home/personalize/PersonalizeMain;->launchAppType:Ljava/lang/String;

    .line 729
    const-string v2, "app"

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 730
    const-string v2, "Personalize"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTC user profiling     app     "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    invoke-static {v1}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 735
    invoke-virtual {v1}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 747
    .end local v1           #uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    :cond_0
    :goto_0
    return-void

    .line 737
    :catch_0
    move-exception v0

    .line 738
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-static {p0, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 740
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 741
    .local v0, e:Ljava/lang/SecurityException;
    invoke-static {p0, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 743
    const-string v2, "Personalize"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Launcher does not have the permission to launch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Make sure to create a MAIN intent-filter for the corresponding activity or use the exported attribute for this activity."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
