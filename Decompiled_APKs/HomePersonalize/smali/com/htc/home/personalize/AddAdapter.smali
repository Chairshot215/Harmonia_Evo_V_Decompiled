.class public Lcom/htc/home/personalize/AddAdapter;
.super Landroid/widget/BaseAdapter;
.source "AddAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/home/personalize/AddAdapter$ListItem;
    }
.end annotation


# static fields
.field private static final ACTION_PERSONALIZE_IDLESCREEN_SHORTCUT_CHANGED:Ljava/lang/String; = "com.htc.personalize.shortcut.chang"

.field public static final ADAPTER_ASSIGN_PROGRAM:I = 0x1fc

.field public static final ADAPTER_ASSIGN_SHORTCUT:I = 0x1fd

.field public static final ADAPTER_CHT_WIDGET:I = 0x258

.field public static final ADAPTER_COMBINED_WIDGET:I = 0x1f7

.field public static final ADAPTER_EXT_END:I = 0x2bc

.field public static final ADAPTER_EXT_START:I = 0x258

.field public static final ADAPTER_FOLDER:I = 0x1fa

.field public static final ADAPTER_HTC_SETTINGS:I = 0x1f8

.field public static final ADAPTER_LIVE_FOLDER:I = 0x1fb

.field public static final ADAPTER_MENU:I = 0x1f4

.field public static final ADAPTER_PROGRAM:I = 0x1f5

.field public static final ADAPTER_SHORTCUT:I = 0x1f6

.field private static final CHT_IMSI:Ljava/lang/String; = "46692"

.field private static final CUSTOMIZATION_URI_STRING:Ljava/lang/String; = "content://customization_settings/SettingTable/application_Launcher"

.field private static final DOWNLOAD_MANAGER_TEXT:Ljava/lang/String; = "menu_text"

.field private static final DRM_COLUMNS:[Ljava/lang/String; = null

.field public static final EXCUTE_BOOKMARK_SHORTCUT:I = 0x194

.field public static final EXCUTE_GOOGLE_WIDGET:I = 0x191

.field public static final EXCUTE_LIVE_FOLDER:I = 0x193

.field public static final EXCUTE_PROGRAM:I = 0x192

.field public static final EXCUTE_SHORTCUT:I = 0x190

.field private static final EXTRA_APPLICATION_ID:Ljava/lang/String; = "com.android.browser.application_id"

.field static final EXTRA_GETMOREKEY:Ljava/lang/String; = "get_more_key"

.field static final EXTRA_GETMOREKEY_VALUE:Ljava/lang/String; = "Widget"

.field static final EXTRA_NAVIGATETO:Ljava/lang/String; = "navigate_to"

.field static final EXTRA_NAVIGATETO_VALUE:Ljava/lang/String; = "get_more"

.field static final EXTRA_REQUESTER:Ljava/lang/String; = "requester"

.field static final EXTRA_REQUESTER_VALUE:Ljava/lang/String; = "com.htc.store_oad"

.field public static final ITEM_APPLICATION:I = 0x0

.field public static final ITEM_APPWIDGET:I = 0x3

.field public static final ITEM_CATEGORY_CHT_WIDGET:I = 0x12c

.field public static final ITEM_CATEGORY_DEFAULT:I = 0x64

.field public static final ITEM_CATEGORY_SETTINGS:I = 0xc8

.field public static final ITEM_DONOTHING:I = -0x2

.field public static final ITEM_FOLDER:I = 0x5

.field public static final ITEM_FXWIDGET:I = 0x6a

.field public static final ITEM_FXWIDGET_SETTINGS:I = 0x6b

.field public static final ITEM_GOOGLE_GADGET:I = 0x12d

.field private static ITEM_INFO_LOG:Ljava/lang/String; = null

.field public static final ITEM_LIVE_FOLDER:I = 0x4

.field public static final ITEM_NONE:I = -0x1

.field public static final ITEM_PERSONALIZE:I = 0x67

.field public static final ITEM_PERSONALIZE_ADD_TO_HOME:I = 0x69

.field public static final ITEM_PERSONALIZE_LOCK_SCREEN_SHORTCUTS:I = 0x68

.field public static final ITEM_SETTING_GADGET:I = 0x7

.field public static final ITEM_SHORTCUT:I = 0x1

.field public static final ITEM_WALLPAPER:I = 0x6

.field public static final ITEM_WIDGET:I = 0x64

.field public static final ITEM_WIDGET_ALL_HTC_PICKER:I = 0x66

.field public static final ITEM_WIDGET_DOWNLOAD_MANAGER:I = 0x65

.field private static LOG_TAG:Ljava/lang/String; = null

.field private static final MEDIA_COLUMNS:[Ljava/lang/String; = null

.field static final STORE_ACTION:Ljava/lang/String; = "com.htc.store.action.DISPATCH"

.field public static final TYPE_APPLICATION:I = 0x1

.field public static final TYPE_OTHER:I = 0x0

.field public static final TYPE_WIDGET:I = 0x2

.field private static final VIEW_TYPE_ALL_WIDGETS:I = 0x5

.field public static final VIEW_TYPE_MAX_COUNT:I = 0x6

.field private static final VIEW_TYPE_SETTING:I = 0x3

.field private static final VIEW_TYPE_WITHOUT_SUMMARY:I = 0x1

.field private static final VIEW_TYPE_WITH_CHECKBOX:I = 0x4

.field private static final VIEW_TYPE_WITH_RIGHT_ICON:I = 0x2

.field private static final VIEW_TYPE_WITH_SUMMARY:I = 0x0

.field private static final WALLPAPER_ROOT_PATH:Ljava/lang/String; = "/system/customize/resource/"

.field static final WIDGET_DOWNLOAD_MANAGER_ACTIVITY:Ljava/lang/String; = "com.htc.wdm.activity.WidgetList"

.field static final WIDGET_DOWNLOAD_MANAGER_PACKAGE:Ljava/lang/String; = "com.htc.wdm"

.field public static localLOGV:Z


# instance fields
.field private mAddCHTItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/home/personalize/AddAdapter$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAddCombinedGadgetItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/home/personalize/AddAdapter$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAddEXTItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/home/personalize/AddAdapter$ListItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAddFolderItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/home/personalize/AddAdapter$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAddLiveFolderItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/home/personalize/AddAdapter$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAddMenuItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/home/personalize/AddAdapter$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAddProgramItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/home/personalize/AddAdapter$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAddSettingsWidgetItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/home/personalize/AddAdapter$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAddShortcutItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/home/personalize/AddAdapter$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field mExtGroup_icon:[Landroid/graphics/drawable/Drawable;

.field mExtGroup_id:[I

.field mExtGroup_name:[Ljava/lang/String;

.field private mExtGroups:I

.field private mGadgetId:I

.field private mGadgetManager:Landroid/appwidget/AppWidgetManager;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/home/personalize/AddAdapter$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;

.field private mShowTitleId:I

.field private final mTabID:I

.field private mTitleStrId:[I

.field private maddFuncMenuItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/home/personalize/AddAdapter$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private showCheckLog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 94
    sput-boolean v2, Lcom/htc/home/personalize/AddAdapter;->localLOGV:Z

    .line 95
    const-string v0, "Personalize_AddAdapter"

    sput-object v0, Lcom/htc/home/personalize/AddAdapter;->LOG_TAG:Ljava/lang/String;

    .line 96
    const-string v0, "ItemInfo"

    sput-object v0, Lcom/htc/home/personalize/AddAdapter;->ITEM_INFO_LOG:Ljava/lang/String;

    .line 1858
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/home/personalize/AddAdapter;->DRM_COLUMNS:[Ljava/lang/String;

    .line 1864
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/home/personalize/AddAdapter;->MEDIA_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/htc/home/personalize/PersonalizeMain;I)V
    .locals 3
    .parameter "personalizeMain"
    .parameter "tabId"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 540
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 93
    iput-boolean v2, p0, Lcom/htc/home/personalize/AddAdapter;->showCheckLog:Z

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/home/personalize/AddAdapter;->mAddProgramItems:Ljava/util/ArrayList;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/home/personalize/AddAdapter;->mAddShortcutItems:Ljava/util/ArrayList;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/home/personalize/AddAdapter;->mAddCombinedGadgetItems:Ljava/util/ArrayList;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/home/personalize/AddAdapter;->mAddSettingsWidgetItems:Ljava/util/ArrayList;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/home/personalize/AddAdapter;->mAddLiveFolderItems:Ljava/util/ArrayList;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/home/personalize/AddAdapter;->mAddFolderItems:Ljava/util/ArrayList;

    .line 120
    iput-object v1, p0, Lcom/htc/home/personalize/AddAdapter;->mAddMenuItems:Ljava/util/ArrayList;

    .line 121
    iput-object v1, p0, Lcom/htc/home/personalize/AddAdapter;->maddFuncMenuItems:Ljava/util/ArrayList;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/home/personalize/AddAdapter;->mAddCHTItems:Ljava/util/ArrayList;

    .line 125
    iput-object v1, p0, Lcom/htc/home/personalize/AddAdapter;->mAddEXTItems:Ljava/util/ArrayList;

    .line 189
    iput-object v1, p0, Lcom/htc/home/personalize/AddAdapter;->mGadgetManager:Landroid/appwidget/AppWidgetManager;

    .line 192
    iput-object v1, p0, Lcom/htc/home/personalize/AddAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 202
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/home/personalize/AddAdapter;->mTitleStrId:[I

    .line 211
    iput v2, p0, Lcom/htc/home/personalize/AddAdapter;->mShowTitleId:I

    .line 1108
    iput v2, p0, Lcom/htc/home/personalize/AddAdapter;->mExtGroups:I

    .line 542
    iput-object p1, p0, Lcom/htc/home/personalize/AddAdapter;->mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;

    .line 543
    iput p2, p0, Lcom/htc/home/personalize/AddAdapter;->mTabID:I

    .line 545
    iget-object v0, p0, Lcom/htc/home/personalize/AddAdapter;->mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/PersonalizeMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/home/personalize/AddAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 552
    iget-object v0, p0, Lcom/htc/home/personalize/AddAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/htc/home/personalize/AddAdapter;->mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;

    invoke-virtual {v0}, Lcom/htc/home/personalize/PersonalizeMain;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/personalize/AddAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/AddAdapter;->mGadgetManager:Landroid/appwidget/AppWidgetManager;

    if-nez v0, :cond_1

    .line 559
    iget-object v0, p0, Lcom/htc/home/personalize/AddAdapter;->mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/personalize/AddAdapter;->mGadgetManager:Landroid/appwidget/AppWidgetManager;

    .line 562
    :cond_1
    iget v0, p0, Lcom/htc/home/personalize/AddAdapter;->mTabID:I

    const/16 v1, 0x7d1

    if-ne v0, v1, :cond_2

    .line 563
    invoke-direct {p0}, Lcom/htc/home/personalize/AddAdapter;->loadExtGroups()V

    .line 564
    invoke-virtual {p0}, Lcom/htc/home/personalize/AddAdapter;->resetItems()V

    .line 566
    :cond_2
    invoke-direct {p0}, Lcom/htc/home/personalize/AddAdapter;->addMenuItems()V

    .line 568
    iget-object v0, p0, Lcom/htc/home/personalize/AddAdapter;->mTitleStrId:[I

    aget v0, v0, v2

    iput v0, p0, Lcom/htc/home/personalize/AddAdapter;->mShowTitleId:I

    .line 569
    iget-object v0, p0, Lcom/htc/home/personalize/AddAdapter;->mAddMenuItems:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/htc/home/personalize/AddAdapter;->mItems:Ljava/util/ArrayList;

    .line 571
    return-void

    .line 202
    nop

    :array_0
    .array-data 0x4
        0x74t 0x0t 0x9t 0x7ft
        0x75t 0x0t 0x9t 0x7ft
        0x76t 0x0t 0x9t 0x7ft
        0x78t 0x0t 0x9t 0x7ft
        0x7at 0x0t 0x9t 0x7ft
        0x7bt 0x0t 0x9t 0x7ft
        0x79t 0x0t 0x9t 0x7ft
        0x77t 0x0t 0x9t 0x7ft
        0x7ct 0x0t 0x9t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/htc/home/personalize/AddAdapter;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/home/personalize/AddAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/home/personalize/AddAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/htc/home/personalize/AddAdapter;->addProgramItems()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/home/personalize/AddAdapter;)Lcom/htc/home/personalize/PersonalizeMain;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/home/personalize/AddAdapter;->mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/home/personalize/AddAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/htc/home/personalize/AddAdapter;->addShortcutItems()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/home/personalize/AddAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/htc/home/personalize/AddAdapter;->addCombinedGadgetItems()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/home/personalize/AddAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/htc/home/personalize/AddAdapter;->addSettingsWidget()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/home/personalize/AddAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/htc/home/personalize/AddAdapter;->addFolder()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/home/personalize/AddAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/htc/home/personalize/AddAdapter;->addLiveFolder()V

    return-void
.end method

.method private addCHTItems()V
    .locals 4

    .prologue
    .line 1169
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1171
    .local v1, tempList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/home/personalize/AddAdapter$ListItem;>;"
    iget-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;

    invoke-virtual {v2}, Lcom/htc/home/personalize/PersonalizeMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "cht"

    invoke-static {v2, v3}, Lcom/htc/home/personalize/util/ProviderHelper;->getDataCursor(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1175
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 1176
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/htc/home/personalize/AddAdapter;->convertListItem(Landroid/database/Cursor;I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1177
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1178
    :cond_0
    const/4 v0, 0x0

    .line 1181
    :cond_1
    iget-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mAddCHTItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1182
    iget-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mAddCHTItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1183
    return-void
.end method

.method private addCombinedGadgetItems()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 1187
    iget-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mTitleStrId:[I

    aget v2, v2, v5

    iput v2, p0, Lcom/htc/home/personalize/AddAdapter;->mShowTitleId:I

    .line 1188
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1189
    .local v1, tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/home/personalize/AddAdapter$ListItem;>;"
    iget-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;

    invoke-virtual {v2}, Lcom/htc/home/personalize/PersonalizeMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "combined_gadget"

    invoke-static {v2, v3}, Lcom/htc/home/personalize/util/ProviderHelper;->getDataCursor(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1193
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 1194
    invoke-virtual {p0, v0, v5}, Lcom/htc/home/personalize/AddAdapter;->convertListItem(Landroid/database/Cursor;I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1195
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1196
    :cond_0
    const/4 v0, 0x0

    .line 1199
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_3

    .line 1201
    :cond_2
    sget-object v2, Lcom/htc/home/personalize/AddAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addCombinedGadgetItems tempList = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    :goto_0
    return-void

    .line 1205
    :cond_3
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/home/personalize/AddAdapter$ListItem;

    iget v2, v2, Lcom/htc/home/personalize/AddAdapter$ListItem;->actionTag:I

    const/16 v3, 0x65

    if-ne v2, v3, :cond_4

    .line 1207
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1227
    :cond_4
    iget-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mAddCombinedGadgetItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1228
    iget-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mAddCombinedGadgetItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private addEXTItems()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1146
    iget v2, p0, Lcom/htc/home/personalize/AddAdapter;->mExtGroups:I

    if-gtz v2, :cond_0

    .line 1165
    :goto_0
    return-void

    .line 1149
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1151
    .local v1, tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/home/personalize/AddAdapter$ListItem;>;"
    iget-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;

    invoke-virtual {v2}, Lcom/htc/home/personalize/PersonalizeMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ext"

    invoke-static {v2, v3}, Lcom/htc/home/personalize/util/ProviderHelper;->getDataCursor(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1155
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 1156
    invoke-virtual {p0, v0, v4}, Lcom/htc/home/personalize/AddAdapter;->convertListItem(Landroid/database/Cursor;I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1157
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1158
    :cond_1
    const/4 v0, 0x0

    .line 1161
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    iget v3, p0, Lcom/htc/home/personalize/AddAdapter;->mExtGroups:I

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mAddEXTItems:Ljava/util/ArrayList;

    .line 1162
    iget-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mAddEXTItems:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1163
    iget-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mAddEXTItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1164
    iget-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mAddEXTItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private addFolder()V
    .locals 7

    .prologue
    .line 927
    iget-object v0, p0, Lcom/htc/home/personalize/AddAdapter;->mTitleStrId:[I

    const/4 v1, 0x6

    aget v0, v0, v1

    iput v0, p0, Lcom/htc/home/personalize/AddAdapter;->mShowTitleId:I

    .line 928
    iget-object v0, p0, Lcom/htc/home/personalize/AddAdapter;->mAddFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 930
    iget-object v0, p0, Lcom/htc/home/personalize/AddAdapter;->mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;

    invoke-virtual {v0}, Lcom/htc/home/personalize/PersonalizeMain;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 932
    .local v2, res:Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/htc/home/personalize/AddAdapter;->mAddFolderItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/htc/home/personalize/AddAdapter$ListItem;

    const v3, 0x7f090072

    const v4, 0x7f020006

    const/4 v5, 0x5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/home/personalize/AddAdapter$ListItem;-><init>(Lcom/htc/home/personalize/AddAdapter;Landroid/content/res/Resources;III)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 974
    return-void
.end method

.method private addLiveFolder()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 978
    iget-object v10, p0, Lcom/htc/home/personalize/AddAdapter;->mTitleStrId:[I

    const/4 v11, 0x4

    aget v10, v10, v11

    iput v10, p0, Lcom/htc/home/personalize/AddAdapter;->mShowTitleId:I

    .line 980
    iget-object v10, p0, Lcom/htc/home/personalize/AddAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v10, :cond_0

    .line 981
    iget-object v10, p0, Lcom/htc/home/personalize/AddAdapter;->mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;

    invoke-virtual {v10}, Lcom/htc/home/personalize/PersonalizeMain;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/home/personalize/AddAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 984
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 986
    .local v9, tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/home/personalize/AddAdapter$ListItem;>;"
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.CREATE_LIVE_FOLDER"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 988
    .local v4, liveFolderIntent:Landroid/content/Intent;
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 989
    .local v6, pickIntent:Landroid/content/Intent;
    const-string v10, "android.intent.extra.INTENT"

    invoke-virtual {v6, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 991
    move-object v1, v6

    .line 992
    .local v1, intent:Landroid/content/Intent;
    new-instance v8, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v8, v10, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 993
    .local v8, targetIntent:Landroid/content/Intent;
    const-string v10, "android.intent.category.DEFAULT"

    invoke-virtual {v8, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 995
    const-string v10, "android.intent.extra.INTENT"

    invoke-virtual {v1, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    .line 996
    .local v5, parcel:Landroid/os/Parcelable;
    instance-of v10, v5, Landroid/content/Intent;

    if-eqz v10, :cond_1

    move-object v8, v5

    .line 997
    check-cast v8, Landroid/content/Intent;

    .line 1000
    :cond_1
    invoke-virtual {v8, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1002
    iget-object v10, p0, Lcom/htc/home/personalize/AddAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v8, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 1003
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v10, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    iget-object v11, p0, Lcom/htc/home/personalize/AddAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v10, v11}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v2, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1005
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 1006
    .local v3, listSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 1007
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 1008
    .local v7, resolveInfo:Landroid/content/pm/ResolveInfo;
    new-instance v10, Lcom/htc/home/personalize/AddAdapter$ListItem;

    iget-object v11, p0, Lcom/htc/home/personalize/AddAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v12, 0x193

    invoke-direct {v10, p0, v11, v7, v12}, Lcom/htc/home/personalize/AddAdapter$ListItem;-><init>(Lcom/htc/home/personalize/AddAdapter;Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1006
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1011
    .end local v7           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_2
    iget-object v10, p0, Lcom/htc/home/personalize/AddAdapter;->mAddLiveFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 1012
    iget-object v10, p0, Lcom/htc/home/personalize/AddAdapter;->mAddLiveFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1013
    return-void
.end method

.method private addMenuItems()V
    .locals 20

    .prologue
    .line 741
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/home/personalize/AddAdapter;->mAddMenuItems:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 742
    invoke-virtual/range {p0 .. p0}, Lcom/htc/home/personalize/AddAdapter;->updateSummary()V

    .line 905
    :goto_0
    return-void

    .line 745
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/home/personalize/AddAdapter;->mAddMenuItems:Ljava/util/ArrayList;

    .line 746
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/home/personalize/AddAdapter;->maddFuncMenuItems:Ljava/util/ArrayList;

    .line 748
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/home/personalize/AddAdapter;->mTitleStrId:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/home/personalize/AddAdapter;->mShowTitleId:I

    .line 749
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/home/personalize/AddAdapter;->mAddMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 750
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/home/personalize/AddAdapter;->mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;

    invoke-virtual {v1}, Lcom/htc/home/personalize/PersonalizeMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 752
    .local v3, res:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/home/personalize/AddAdapter;->mTabID:I

    packed-switch v1, :pswitch_data_0

    .line 886
    sget-object v1, Lcom/htc/home/personalize/AddAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tab id is not defined: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/home/personalize/AddAdapter;->mTabID:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/home/personalize/AddAdapter;->updateSummary()V

    .line 893
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/home/personalize/AddAdapter;->maddFuncMenuItems:Ljava/util/ArrayList;

    new-instance v9, Lcom/htc/home/personalize/AddAdapter$ListItem;

    const v12, 0x7f090066

    const v13, 0x7f02001c

    const/16 v14, 0x69

    const/16 v15, 0x1fc

    new-instance v16, Landroid/content/Intent;

    const-string v2, "com.htc.intent.ACTION_PERSONALIZE_ADD_APP_TO_HOME"

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v17, "com.htc.intent.ACTION_PERSONALIZE_ADD_APP_TO_HOME_CHANGED"

    move-object/from16 v10, p0

    move-object v11, v3

    invoke-direct/range {v9 .. v17}, Lcom/htc/home/personalize/AddAdapter$ListItem;-><init>(Lcom/htc/home/personalize/AddAdapter;Landroid/content/res/Resources;IIIILandroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 899
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/home/personalize/AddAdapter;->maddFuncMenuItems:Ljava/util/ArrayList;

    new-instance v9, Lcom/htc/home/personalize/AddAdapter$ListItem;

    const v12, 0x7f090067

    const/high16 v13, 0x7f02

    const/16 v14, 0x69

    const/16 v15, 0x1fd

    new-instance v16, Landroid/content/Intent;

    const-string v2, "com.htc.intent.ACTION_PERSONALIZE_ADD_SHORTCUT_TO_HOME"

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v17, "com.htc.intent.ACTION_PERSONALIZE_ADD_SHORTCUT_TO_HOME_CHANGED"

    move-object/from16 v10, p0

    move-object v11, v3

    invoke-direct/range {v9 .. v17}, Lcom/htc/home/personalize/AddAdapter$ListItem;-><init>(Lcom/htc/home/personalize/AddAdapter;Landroid/content/res/Resources;IIIILandroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 755
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/home/personalize/AddAdapter;->mAddMenuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/home/personalize/AddAdapter$ListItem;

    const v4, 0x7f09005d

    const v5, 0x7f02001e

    const/16 v6, 0x67

    const/4 v7, -0x1

    new-instance v8, Landroid/content/Intent;

    const-string v2, "com.htc.intent.ACTION_PERSONALIZE_SCENE"

    invoke-direct {v8, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "com.htc.intent.ACTION_PERSONALIZE_SCENE_CHANGED"

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/htc/home/personalize/AddAdapter$ListItem;-><init>(Lcom/htc/home/personalize/AddAdapter;Landroid/content/res/Resources;IIIILandroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/home/personalize/AddAdapter;->mAddMenuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/home/personalize/AddAdapter$ListItem;

    const v4, 0x7f09005e

    const v5, 0x7f020023

    const/16 v6, 0x67

    const/4 v7, -0x1

    new-instance v8, Landroid/content/Intent;

    const-string v2, "com.htc.intent.ACTION_PERSONALIZE_SKIN"

    invoke-direct {v8, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "com.htc.intent.ACTION_PERSONALIZE_SKIN_CHANGED"

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/htc/home/personalize/AddAdapter$ListItem;-><init>(Lcom/htc/home/personalize/AddAdapter;Landroid/content/res/Resources;IIIILandroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 763
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/home/personalize/AddAdapter;->mAddMenuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/home/personalize/AddAdapter$ListItem;

    const v4, 0x7f09005f

    const v5, 0x7f020026

    const/16 v6, 0x67

    const/4 v7, -0x1

    new-instance v8, Landroid/content/Intent;

    const-string v2, "com.htc.intent.ACTION_PERSONALIZE_WALLPAPER"

    invoke-direct {v8, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "com.htc.intent.ACTION_PERSONALIZE_WALLPAPER_CHANGED"

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/htc/home/personalize/AddAdapter$ListItem;-><init>(Lcom/htc/home/personalize/AddAdapter;Landroid/content/res/Resources;IIIILandroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 767
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/home/personalize/AddAdapter;->mAddMenuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/home/personalize/AddAdapter$ListItem;

    const v4, 0x7f090060

    const v5, 0x7f020017

    const/16 v6, 0x67

    const/4 v7, -0x1

    new-instance v8, Landroid/content/Intent;

    const-string v2, "com.htc.intent.ACTION_PERSONALIZE_IDLESCREEN"

    invoke-direct {v8, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "com.htc.intent.ACTION_PERSONALIZE_IDLESCREEN_CHANGED"

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/htc/home/personalize/AddAdapter$ListItem;-><init>(Lcom/htc/home/personalize/AddAdapter;Landroid/content/res/Resources;IIIILandroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/home/personalize/AddAdapter;->mAddMenuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/home/personalize/AddAdapter$ListItem;

    const v4, 0x7f090061

    const v5, 0x7f020018

    const/16 v6, 0x68

    const/4 v7, -0x1

    const-string v8, "com.htc.personalize.shortcut.chang"

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/htc/home/personalize/AddAdapter$ListItem;-><init>(Lcom/htc/home/personalize/AddAdapter;Landroid/content/res/Resources;IIIILjava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 779
    :pswitch_1
    const/16 v19, 0x0

    .line 780
    .local v19, extTmp:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/home/personalize/AddAdapter;->mExtGroups:I

    if-lez v1, :cond_2

    .line 781
    :goto_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/home/personalize/AddAdapter;->mExtGroups:I

    move/from16 v0, v19

    if-ge v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/home/personalize/AddAdapter;->mExtGroup_id:[I

    aget v1, v1, v19

    const/16 v2, 0x26c

    if-gt v1, v2, :cond_2

    .line 782
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/home/personalize/AddAdapter;->mAddMenuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/home/personalize/AddAdapter$ListItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/AddAdapter;->mExtGroup_name:[Ljava/lang/String;

    aget-object v2, v2, v19

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/AddAdapter;->mExtGroup_icon:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v2, v19

    const/16 v6, 0x69

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/AddAdapter;->mExtGroup_id:[I

    aget v7, v2, v19

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/htc/home/personalize/AddAdapter$ListItem;-><init>(Lcom/htc/home/personalize/AddAdapter;Landroid/content/res/Resources;Ljava/lang/String;Landroid/graphics/drawable/Drawable;II)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 788
    :cond_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/home/personalize/AddAdapter;->mAddMenuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/home/personalize/AddAdapter$ListItem;

    const v4, 0x7f090065

    const v5, 0x7f020001

    const/16 v6, 0x69

    const/16 v7, 0x1f7

    new-instance v8, Landroid/content/Intent;

    const-string v2, "com.htc.intent.ACTION_PERSONALIZE_ADD_WIDGET_TO_HOME"

    invoke-direct {v8, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "com.htc.intent.ACTION_PERSONALIZE_ADD_WIDGET_TO_HOME_CHANGED"

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/htc/home/personalize/AddAdapter$ListItem;-><init>(Lcom/htc/home/personalize/AddAdapter;Landroid/content/res/Resources;IIIILandroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 794
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/home/personalize/AddAdapter;->mExtGroups:I

    if-lez v1, :cond_3

    .line 795
    :goto_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/home/personalize/AddAdapter;->mExtGroups:I

    move/from16 v0, v19

    if-ge v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/home/personalize/AddAdapter;->mExtGroup_id:[I

    aget v1, v1, v19

    const/16 v2, 0x2a8

    if-gt v1, v2, :cond_3

    .line 796
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/home/personalize/AddAdapter;->mAddMenuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/home/personalize/AddAdapter$ListItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/AddAdapter;->mExtGroup_name:[Ljava/lang/String;

    aget-object v2, v2, v19

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/AddAdapter;->mExtGroup_icon:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v2, v19

    const/16 v6, 0x69

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/AddAdapter;->mExtGroup_id:[I

    aget v7, v2, v19

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/htc/home/personalize/AddAdapter$ListItem;-><init>(Lcom/htc/home/personalize/AddAdapter;Landroid/content/res/Resources;Ljava/lang/String;Landroid/graphics/drawable/Drawable;II)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 798
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 802
    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/home/personalize/AddAdapter;->mAddMenuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/home/personalize/AddAdapter$ListItem;

    const v4, 0x7f090066

    const v5, 0x7f02001c

    const/16 v6, 0x69

    const/16 v7, 0x1f5

    new-instance v8, Landroid/content/Intent;

    const-string v2, "com.htc.intent.ACTION_PERSONALIZE_ADD_APP_TO_HOME"

    invoke-direct {v8, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "com.htc.intent.ACTION_PERSONALIZE_ADD_APP_TO_HOME_CHANGED"

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/htc/home/personalize/AddAdapter$ListItem;-><init>(Lcom/htc/home/personalize/AddAdapter;Landroid/content/res/Resources;IIIILandroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 808
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/home/personalize/AddAdapter;->mExtGroups:I

    if-lez v1, :cond_4

    .line 809
    :goto_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/home/personalize/AddAdapter;->mExtGroups:I

    move/from16 v0, v19

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/home/personalize/AddAdapter;->mExtGroup_id:[I

    aget v1, v1, v19

    const/16 v2, 0x28a

    if-gt v1, v2, :cond_4

    .line 810
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/home/personalize/AddAdapter;->mAddMenuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/home/personalize/AddAdapter$ListItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/AddAdapter;->mExtGroup_name:[Ljava/lang/String;

    aget-object v2, v2, v19

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/AddAdapter;->mExtGroup_icon:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v2, v19

    const/16 v6, 0x69

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/AddAdapter;->mExtGroup_id:[I

    aget v7, v2, v19

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/htc/home/personalize/AddAdapter$ListItem;-><init>(Lcom/htc/home/personalize/AddAdapter;Landroid/content/res/Resources;Ljava/lang/String;Landroid/graphics/drawable/Drawable;II)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 812
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 816
    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/home/personalize/AddAdapter;->mAddMenuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/home/personalize/AddAdapter$ListItem;

    const v4, 0x7f090067

    const/high16 v5, 0x7f02

    const/16 v6, 0x69

    const/16 v7, 0x1f6

    new-instance v8, Landroid/content/Intent;

    const-string v2, "com.htc.intent.ACTION_PERSONALIZE_ADD_SHORTCUT_TO_HOME"

    invoke-direct {v8, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "com.htc.intent.ACTION_PERSONALIZE_ADD_SHORTCUT_TO_HOME_CHANGED"

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/htc/home/personalize/AddAdapter$ListItem;-><init>(Lcom/htc/home/personalize/AddAdapter;Landroid/content/res/Resources;IIIILandroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 822
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/home/personalize/AddAdapter;->mExtGroups:I

    if-lez v1, :cond_5

    .line 823
    :goto_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/home/personalize/AddAdapter;->mExtGroups:I

    move/from16 v0, v19

    if-ge v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/home/personalize/AddAdapter;->mExtGroup_id:[I

    aget v1, v1, v19

    const/16 v2, 0x280

    if-gt v1, v2, :cond_5

    .line 824
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/home/personalize/AddAdapter;->mAddMenuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/home/personalize/AddAdapter$ListItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/AddAdapter;->mExtGroup_name:[Ljava/lang/String;

    aget-object v2, v2, v19

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/AddAdapter;->mExtGroup_icon:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v2, v19

    const/16 v6, 0x69

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/AddAdapter;->mExtGroup_id:[I

    aget v7, v2, v19

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/htc/home/personalize/AddAdapter$ListItem;-><init>(Lcom/htc/home/personalize/AddAdapter;Landroid/content/res/Resources;Ljava/lang/String;Landroid/graphics/drawable/Drawable;II)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 826
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 836
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/home/personalize/AddAdapter;->mExtGroups:I

    if-lez v1, :cond_1

    .line 837
    :goto_6
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/home/personalize/AddAdapter;->mExtGroups:I

    move/from16 v0, v19

    if-ge v0, v1, :cond_1

    .line 838
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/home/personalize/AddAdapter;->mAddMenuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/home/personalize/AddAdapter$ListItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/AddAdapter;->mExtGroup_name:[Ljava/lang/String;

    aget-object v2, v2, v19

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/AddAdapter;->mExtGroup_icon:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v2, v19

    const/16 v6, 0x69

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/AddAdapter;->mExtGroup_id:[I

    aget v7, v2, v19

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/htc/home/personalize/AddAdapter$ListItem;-><init>(Lcom/htc/home/personalize/AddAdapter;Landroid/content/res/Resources;Ljava/lang/String;Landroid/graphics/drawable/Drawable;II)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 840
    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    .line 849
    .end local v19           #extTmp:I
    :pswitch_2
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 850
    .local v8, data:Landroid/content/Intent;
    new-instance v18, Landroid/os/Bundle;

    invoke-direct/range {v18 .. v18}, Landroid/os/Bundle;-><init>()V

    .line 851
    .local v18, bundle:Landroid/os/Bundle;
    const-string v1, "SDMListType"

    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 852
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 853
    const-string v1, "com.htc.sdm"

    const-string v2, "com.htc.sdm.activity.SoundSetList"

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 854
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/home/personalize/AddAdapter;->mAddMenuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/home/personalize/AddAdapter$ListItem;

    const v4, 0x7f090068

    const v5, 0x7f020024

    const/16 v6, 0x67

    const/4 v7, -0x1

    const-string v9, "com.htc.intent.ACTION_PERSONALIZE_SOUND_SET_CHANGED"

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/htc/home/personalize/AddAdapter$ListItem;-><init>(Lcom/htc/home/personalize/AddAdapter;Landroid/content/res/Resources;IIIILandroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 858
    new-instance v8, Landroid/content/Intent;

    .end local v8           #data:Landroid/content/Intent;
    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 859
    .restart local v8       #data:Landroid/content/Intent;
    new-instance v18, Landroid/os/Bundle;

    .end local v18           #bundle:Landroid/os/Bundle;
    invoke-direct/range {v18 .. v18}, Landroid/os/Bundle;-><init>()V

    .line 860
    .restart local v18       #bundle:Landroid/os/Bundle;
    const-string v1, "SDMListType"

    const/4 v2, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 861
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 862
    const-string v1, "com.htc.sdm"

    const-string v2, "com.htc.sdm.activity.SoundSetList"

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 863
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/home/personalize/AddAdapter;->mAddMenuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/home/personalize/AddAdapter$ListItem;

    const v4, 0x7f090069

    const v5, 0x7f02001d

    const/16 v6, 0x67

    const/4 v7, -0x1

    const-string v9, "com.htc.intent.ACTION_PERSONALIZE_RINGTONE_CHANGED"

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/htc/home/personalize/AddAdapter$ListItem;-><init>(Lcom/htc/home/personalize/AddAdapter;Landroid/content/res/Resources;IIIILandroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 867
    new-instance v8, Landroid/content/Intent;

    .end local v8           #data:Landroid/content/Intent;
    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 868
    .restart local v8       #data:Landroid/content/Intent;
    new-instance v18, Landroid/os/Bundle;

    .end local v18           #bundle:Landroid/os/Bundle;
    invoke-direct/range {v18 .. v18}, Landroid/os/Bundle;-><init>()V

    .line 869
    .restart local v18       #bundle:Landroid/os/Bundle;
    const-string v1, "com.htc.sdm"

    const-string v2, "com.htc.sdm.activity.SDMNotificationList"

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 870
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/home/personalize/AddAdapter;->mAddMenuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/home/personalize/AddAdapter$ListItem;

    const v4, 0x7f09006a

    const v5, 0x7f020019

    const/16 v6, 0x67

    const/4 v7, -0x1

    const-string v9, "com.htc.intent.ACTION_PERSONALIZE_NOTIFICATION_SOUNDS_CHANGED"

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/htc/home/personalize/AddAdapter$ListItem;-><init>(Lcom/htc/home/personalize/AddAdapter;Landroid/content/res/Resources;IIIILandroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 874
    new-instance v8, Landroid/content/Intent;

    .end local v8           #data:Landroid/content/Intent;
    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 875
    .restart local v8       #data:Landroid/content/Intent;
    new-instance v18, Landroid/os/Bundle;

    .end local v18           #bundle:Landroid/os/Bundle;
    invoke-direct/range {v18 .. v18}, Landroid/os/Bundle;-><init>()V

    .line 876
    .restart local v18       #bundle:Landroid/os/Bundle;
    const-string v1, "SDMListType"

    const/4 v2, 0x4

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 877
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 878
    const-string v1, "com.htc.sdm"

    const-string v2, "com.htc.sdm.activity.SoundSetList"

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 879
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/home/personalize/AddAdapter;->mAddMenuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/home/personalize/AddAdapter$ListItem;

    const v4, 0x7f09006b

    const v5, 0x7f020002

    const/16 v6, 0x67

    const/4 v7, -0x1

    const-string v9, "com.htc.intent.ACTION_PERSONALIZE_ALARM_CHANGED"

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/htc/home/personalize/AddAdapter$ListItem;-><init>(Lcom/htc/home/personalize/AddAdapter;Landroid/content/res/Resources;IIIILandroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 752
    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private addProgramItems()V
    .locals 4

    .prologue
    .line 1017
    iget-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mTitleStrId:[I

    const/4 v3, 0x5

    aget v2, v2, v3

    iput v2, p0, Lcom/htc/home/personalize/AddAdapter;->mShowTitleId:I

    .line 1018
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1019
    .local v1, tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/home/personalize/AddAdapter$ListItem;>;"
    iget-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;

    invoke-virtual {v2}, Lcom/htc/home/personalize/PersonalizeMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "program"

    invoke-static {v2, v3}, Lcom/htc/home/personalize/util/ProviderHelper;->getDataCursor(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1023
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 1024
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/htc/home/personalize/AddAdapter;->convertListItem(Landroid/database/Cursor;I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1025
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1026
    const/4 v0, 0x0

    .line 1029
    :cond_0
    iget-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mAddProgramItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1030
    iget-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mAddProgramItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1031
    return-void
.end method

.method private addSettingsWidget()V
    .locals 4

    .prologue
    .line 909
    iget-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mTitleStrId:[I

    const/4 v3, 0x7

    aget v2, v2, v3

    iput v2, p0, Lcom/htc/home/personalize/AddAdapter;->mShowTitleId:I

    .line 910
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 911
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/home/personalize/AddAdapter$ListItem;>;"
    iget-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;

    invoke-virtual {v2}, Lcom/htc/home/personalize/PersonalizeMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "setting_widget"

    invoke-static {v2, v3}, Lcom/htc/home/personalize/util/ProviderHelper;->getDataCursor(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 915
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 916
    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/htc/home/personalize/AddAdapter;->convertListItem(Landroid/database/Cursor;I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 917
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 918
    :cond_0
    const/4 v0, 0x0

    .line 921
    :cond_1
    iget-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mAddSettingsWidgetItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 922
    iget-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mAddSettingsWidgetItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 923
    return-void
.end method

.method private addShortcutItems()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    .line 1035
    iget-object v9, p0, Lcom/htc/home/personalize/AddAdapter;->mTitleStrId:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    iput v9, p0, Lcom/htc/home/personalize/AddAdapter;->mShowTitleId:I

    .line 1036
    iget-object v9, p0, Lcom/htc/home/personalize/AddAdapter;->mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;

    invoke-static {v9}, Lcom/htc/home/personalize/ApplicationManager;->instance(Landroid/content/Context;)Lcom/htc/home/personalize/ApplicationManager;

    move-result-object v0

    .line 1037
    .local v0, applicationManager:Lcom/htc/home/personalize/ApplicationManager;
    iget-object v9, p0, Lcom/htc/home/personalize/AddAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v9, :cond_0

    .line 1038
    iget-object v9, p0, Lcom/htc/home/personalize/AddAdapter;->mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;

    invoke-virtual {v9}, Lcom/htc/home/personalize/PersonalizeMain;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/home/personalize/AddAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1041
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1043
    .local v8, tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/home/personalize/AddAdapter$ListItem;>;"
    new-instance v7, Landroid/content/Intent;

    const-string v9, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1044
    .local v7, shortcutIntent:Landroid/content/Intent;
    iget-object v9, p0, Lcom/htc/home/personalize/AddAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v10, 0x0

    invoke-virtual {v9, v7, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 1046
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 1048
    .local v4, listSize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_3

    .line 1049
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 1050
    .local v6, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1051
    .local v5, packageName:Ljava/lang/String;
    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1052
    .local v1, className:Ljava/lang/String;
    invoke-virtual {v0, v5, v1, v12}, Lcom/htc/home/personalize/ApplicationManager;->inHideCustomizationList(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1048
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1054
    :cond_2
    const-string v9, "com.android.mms"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1056
    invoke-virtual {v0, v5, v1, v12}, Lcom/htc/home/personalize/ApplicationManager;->getCustomizationListPriority(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    iput v9, v6, Landroid/content/pm/ResolveInfo;->priority:I

    .line 1057
    new-instance v9, Lcom/htc/home/personalize/AddAdapter$ListItem;

    iget-object v10, p0, Lcom/htc/home/personalize/AddAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v11, 0x190

    invoke-direct {v9, p0, v10, v6, v11}, Lcom/htc/home/personalize/AddAdapter$ListItem;-><init>(Lcom/htc/home/personalize/AddAdapter;Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;I)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1061
    .end local v1           #className:Ljava/lang/String;
    .end local v5           #packageName:Ljava/lang/String;
    .end local v6           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_3
    new-instance v9, Lcom/htc/home/personalize/AddAdapter$7;

    invoke-direct {v9, p0}, Lcom/htc/home/personalize/AddAdapter$7;-><init>(Lcom/htc/home/personalize/AddAdapter;)V

    invoke-static {v8, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1072
    iget-object v9, p0, Lcom/htc/home/personalize/AddAdapter;->mAddShortcutItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 1073
    iget-object v9, p0, Lcom/htc/home/personalize/AddAdapter;->mAddShortcutItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1074
    return-void
.end method

.method public static checkIfCHT_SIM_Card(Landroid/content/Context;)Z
    .locals 5
    .parameter "launcher"

    .prologue
    const/4 v2, 0x0

    .line 1613
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1614
    .local v1, tm:Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    .line 1615
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 1616
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 1618
    .local v0, simOperator:Ljava/lang/String;
    const-string v3, "46692"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1619
    const/4 v2, 0x1

    .line 1627
    .end local v0           #simOperator:Ljava/lang/String;
    :cond_0
    return v2
.end method

.method private getInflateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "parent"

    .prologue
    const/4 v2, 0x0

    .line 1393
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x8a

    if-ne v0, v1, :cond_0

    .line 1394
    iget-object v0, p0, Lcom/htc/home/personalize/AddAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030014

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1396
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/AddAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030013

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public static getModuleBundle(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 10
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 1077
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1078
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "content://customization_settings/SettingTable/application_Launcher"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 1079
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1082
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Lcom/htc/home/personalize/AddAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cursor = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1084
    const-string v2, "value"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 1085
    .local v9, idValue:I
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 1086
    .local v6, buffer:[B
    invoke-static {v6}, Lcom/htc/home/personalize/util/Utilities;->byteArrayToBundle([B)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 1090
    .local v7, bundle:Landroid/os/Bundle;
    if-eqz v8, :cond_1

    .line 1091
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1092
    :cond_0
    const/4 v8, 0x0

    .line 1097
    .end local v6           #buffer:[B
    .end local v7           #bundle:Landroid/os/Bundle;
    .end local v9           #idValue:I
    :cond_1
    :goto_0
    return-object v7

    .line 1090
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_3

    .line 1091
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1092
    :cond_2
    const/4 v8, 0x0

    .line 1090
    :cond_3
    throw v2

    :cond_4
    if-eqz v8, :cond_6

    .line 1091
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1092
    :cond_5
    const/4 v8, 0x0

    .line 1096
    :cond_6
    sget-object v2, Lcom/htc/home/personalize/AddAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no module bundle found = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method private static getTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;
    .locals 13
    .parameter "context"
    .parameter "uri"
    .parameter "followSettingsUri"

    .prologue
    .line 1871
    const/4 v9, 0x0

    .line 1872
    .local v9, cursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1874
    .local v0, res:Landroid/content/ContentResolver;
    const/4 v12, 0x0

    .line 1876
    .local v12, title:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 1877
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    .line 1879
    .local v8, authority:Ljava/lang/String;
    const-string v1, "settings"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1880
    if-eqz p2, :cond_0

    .line 1881
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v1

    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v7

    .line 1883
    .local v7, actualUri:Landroid/net/Uri;
    const/4 v1, 0x0

    invoke-static {p0, v7, v1}, Lcom/htc/home/personalize/AddAdapter;->getTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v6

    .line 1884
    .local v6, actualTitle:Ljava/lang/String;
    const v1, 0x10403d6

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 1927
    .end local v6           #actualTitle:Ljava/lang/String;
    .end local v7           #actualUri:Landroid/net/Uri;
    .end local v8           #authority:Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v12, :cond_1

    .line 1928
    const v1, 0x10403d9

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1930
    if-nez v12, :cond_1

    .line 1931
    const-string v12, ""

    .line 1934
    :cond_1
    if-eqz v9, :cond_3

    .line 1935
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1936
    :cond_2
    const/4 v9, 0x0

    :cond_3
    move-object v1, v12

    .line 1938
    :cond_4
    :goto_1
    return-object v1

    .line 1890
    .restart local v8       #authority:Ljava/lang/String;
    :cond_5
    const-string v1, "drm"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1892
    :try_start_0
    sget-object v2, Lcom/htc/home/personalize/AddAdapter;->DRM_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1907
    :cond_6
    :goto_2
    if-eqz v9, :cond_b

    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b

    .line 1908
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1909
    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 1919
    if-eqz v9, :cond_4

    .line 1920
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1921
    :cond_7
    const/4 v9, 0x0

    goto :goto_1

    .line 1893
    :catch_0
    move-exception v10

    .line 1894
    .local v10, e:Ljava/lang/Exception;
    sget-boolean v1, Lcom/htc/home/personalize/AddAdapter;->localLOGV:Z

    if-eqz v1, :cond_8

    sget-object v1, Lcom/htc/home/personalize/AddAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    :cond_8
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1897
    .end local v10           #e:Ljava/lang/Exception;
    :cond_9
    const-string v1, "media"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1899
    :try_start_2
    sget-object v2, Lcom/htc/home/personalize/AddAdapter;->MEDIA_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v9

    goto :goto_2

    .line 1900
    :catch_1
    move-exception v10

    .line 1901
    .restart local v10       #e:Ljava/lang/Exception;
    sget-boolean v1, Lcom/htc/home/personalize/AddAdapter;->localLOGV:Z

    if-eqz v1, :cond_a

    sget-object v1, Lcom/htc/home/personalize/AddAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    :cond_a
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 1912
    .end local v10           #e:Ljava/lang/Exception;
    :cond_b
    :try_start_3
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v11

    .line 1913
    .local v11, ringtone:Landroid/media/Ringtone;
    if-eqz v11, :cond_c

    .line 1914
    invoke-virtual {v11, p0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 1915
    :cond_c
    sget-object v1, Lcom/htc/home/personalize/AddAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v2, "We cannot get ringone name from cursor, we can only get title by RingtoneManager"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1919
    if-eqz v9, :cond_0

    .line 1920
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1921
    :cond_d
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1919
    .end local v11           #ringtone:Landroid/media/Ringtone;
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_f

    .line 1920
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1921
    :cond_e
    const/4 v9, 0x0

    .line 1919
    :cond_f
    throw v1
.end method

.method private loadExtGroups()V
    .locals 13

    .prologue
    .line 1111
    iget-object v10, p0, Lcom/htc/home/personalize/AddAdapter;->mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;

    invoke-virtual {v10}, Lcom/htc/home/personalize/PersonalizeMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/htc/home/personalize/AddAdapter;->getModuleBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v9

    .line 1112
    .local v9, moduleBundle:Landroid/os/Bundle;
    const-string v8, "ext_groups"

    .line 1113
    .local v8, key:Ljava/lang/String;
    invoke-virtual {v9, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 1114
    .local v1, extBundle:Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 1115
    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v10

    iput v10, p0, Lcom/htc/home/personalize/AddAdapter;->mExtGroups:I

    .line 1116
    iget v10, p0, Lcom/htc/home/personalize/AddAdapter;->mExtGroups:I

    new-array v10, v10, [I

    iput-object v10, p0, Lcom/htc/home/personalize/AddAdapter;->mExtGroup_id:[I

    .line 1117
    iget v10, p0, Lcom/htc/home/personalize/AddAdapter;->mExtGroups:I

    new-array v10, v10, [Ljava/lang/String;

    iput-object v10, p0, Lcom/htc/home/personalize/AddAdapter;->mExtGroup_name:[Ljava/lang/String;

    .line 1118
    iget v10, p0, Lcom/htc/home/personalize/AddAdapter;->mExtGroups:I

    new-array v10, v10, [Landroid/graphics/drawable/Drawable;

    iput-object v10, p0, Lcom/htc/home/personalize/AddAdapter;->mExtGroup_icon:[Landroid/graphics/drawable/Drawable;

    .line 1120
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    iget v10, p0, Lcom/htc/home/personalize/AddAdapter;->mExtGroups:I

    if-ge v6, v10, :cond_1

    .line 1121
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "plenty_set"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v6, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1122
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1123
    .local v0, childBundle:Landroid/os/Bundle;
    const-string v10, "group_id"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1124
    .local v4, gId:I
    const-string v10, "group_name"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1125
    .local v5, gName:Ljava/lang/String;
    const-string v10, "group_icon"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1128
    .local v2, gIconFileName:Ljava/lang/String;
    iget-object v10, p0, Lcom/htc/home/personalize/AddAdapter;->mExtGroup_id:[I

    aput v4, v10, v6

    .line 1129
    iget-object v10, p0, Lcom/htc/home/personalize/AddAdapter;->mExtGroup_name:[Ljava/lang/String;

    aput-object v5, v10, v6

    .line 1132
    if-eqz v2, :cond_0

    .line 1133
    invoke-static {v2}, Lcom/htc/home/personalize/AddAdapter;->manipulateResourcePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1134
    .local v3, gIconFilePath:Ljava/lang/String;
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v10, p0, Lcom/htc/home/personalize/AddAdapter;->mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;

    invoke-virtual {v10}, Lcom/htc/home/personalize/PersonalizeMain;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-direct {v7, v10, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 1135
    .local v7, icon:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v10, p0, Lcom/htc/home/personalize/AddAdapter;->mExtGroup_icon:[Landroid/graphics/drawable/Drawable;

    aput-object v7, v10, v6

    .line 1120
    .end local v3           #gIconFilePath:Ljava/lang/String;
    .end local v7           #icon:Landroid/graphics/drawable/BitmapDrawable;
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1137
    :cond_0
    sget-object v10, Lcom/htc/home/personalize/AddAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot get icon path of customize group ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") from customize bundle."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    iget-object v10, p0, Lcom/htc/home/personalize/AddAdapter;->mExtGroup_icon:[Landroid/graphics/drawable/Drawable;

    const/4 v11, 0x0

    aput-object v11, v10, v6

    goto :goto_1

    .line 1142
    .end local v0           #childBundle:Landroid/os/Bundle;
    .end local v2           #gIconFileName:Ljava/lang/String;
    .end local v4           #gId:I
    .end local v5           #gName:Ljava/lang/String;
    .end local v6           #i:I
    :cond_1
    return-void
.end method

.method public static manipulateResourcePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "fileName"

    .prologue
    .line 1101
    if-eqz p0, :cond_0

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1104
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/customize/resource/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private match(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "name"
    .parameter "keyword"

    .prologue
    .line 1568
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1569
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 1570
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1571
    const/4 v0, 0x1

    .line 1573
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public convertListItem(Landroid/database/Cursor;I)Ljava/util/ArrayList;
    .locals 32
    .parameter "cursor"
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/home/personalize/AddAdapter$ListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 427
    sget-object v3, Lcom/htc/home/personalize/AddAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "convertListItem type: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/home/personalize/AddAdapter;->mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;

    invoke-virtual {v3}, Lcom/htc/home/personalize/PersonalizeMain;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    .line 429
    .local v23, res:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/home/personalize/AddAdapter;->mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;

    invoke-virtual {v3}, Lcom/htc/home/personalize/PersonalizeMain;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    .line 430
    .local v22, pm:Landroid/content/pm/PackageManager;
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 431
    .local v28, widgetGroup:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/home/personalize/widgetpicker/WidgetItem;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/home/personalize/AddAdapter;->mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;

    const/16 v30, -0x1

    move/from16 v0, v30

    move-object/from16 v1, v28

    invoke-static {v3, v0, v1}, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->collectWidgetInfo(Landroid/content/Context;ILjava/util/ArrayList;)Ljava/util/List;

    move-result-object v29

    .line 432
    .local v29, widgets:Ljava/util/List;,"Ljava/util/List<Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 434
    .local v13, cursorItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/home/personalize/AddAdapter$ListItem;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 435
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 436
    .local v24, start:J
    if-eqz p1, :cond_2

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 437
    const/16 v18, 0x0

    .line 439
    .local v18, iconBundle:Landroid/os/Bundle;
    :try_start_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 445
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 447
    :cond_0
    const-string v3, "text"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 448
    .local v4, text:Ljava/lang/String;
    const-string v3, "actionTag"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 449
    .local v6, actionTag:I
    const-string v3, "priority"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 450
    .local v7, priority:I
    const-string v3, "next_level"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 452
    .local v20, nextLevel:I
    const-string v3, "packageName"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 453
    .local v21, packageName:Ljava/lang/String;
    const-string v3, "className"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 454
    .local v10, className:Ljava/lang/String;
    const-string v3, "component"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 455
    .local v12, componentString:Ljava/lang/String;
    if-nez v12, :cond_3

    const/4 v11, 0x0

    .line 456
    .local v11, component:Landroid/content/ComponentName;
    :goto_1
    const-string v3, "widget_item_type"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 458
    .local v19, itemType:I
    const/4 v5, 0x0

    .line 459
    .local v5, icon:Landroid/graphics/drawable/Drawable;
    const/16 v3, 0x1f8

    move/from16 v0, v20

    if-ne v0, v3, :cond_4

    .line 460
    const v3, 0x7f020022

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 507
    :cond_1
    :goto_2
    new-instance v2, Lcom/htc/home/personalize/AddAdapter$ListItem;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/htc/home/personalize/AddAdapter$ListItem;-><init>(Lcom/htc/home/personalize/AddAdapter;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;II)V

    .line 509
    .local v2, item:Lcom/htc/home/personalize/AddAdapter$ListItem;
    const-string v3, "gadgetId"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/htc/home/personalize/AddAdapter$ListItem;->GadgetId:I

    .line 510
    move-object/from16 v0, v21

    iput-object v0, v2, Lcom/htc/home/personalize/AddAdapter$ListItem;->packageName:Ljava/lang/String;

    .line 511
    iput-object v10, v2, Lcom/htc/home/personalize/AddAdapter$ListItem;->className:Ljava/lang/String;

    .line 512
    iput-object v11, v2, Lcom/htc/home/personalize/AddAdapter$ListItem;->mComponent:Landroid/content/ComponentName;

    .line 513
    move/from16 v0, v20

    iput v0, v2, Lcom/htc/home/personalize/AddAdapter$ListItem;->mNextAdapter:I

    .line 515
    const-string v3, "intent"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 516
    .local v26, uri:Ljava/lang/String;
    if-nez v26, :cond_e

    .line 517
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/htc/home/personalize/AddAdapter$ListItem;->intent:Landroid/content/Intent;

    .line 526
    :goto_3
    new-instance v3, Lcom/htc/home/personalize/WidgetItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/AddAdapter;->mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-direct {v3, v0}, Lcom/htc/home/personalize/WidgetItem;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/htc/home/personalize/AddAdapter$ListItem;->widgetItem:Lcom/htc/home/personalize/WidgetItem;

    .line 527
    iget-object v3, v2, Lcom/htc/home/personalize/AddAdapter$ListItem;->widgetItem:Lcom/htc/home/personalize/WidgetItem;

    const-string v30, "widget_item_is_group_item"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    move/from16 v0, v30

    iput v0, v3, Lcom/htc/home/personalize/WidgetItem;->mItemCategory:I

    .line 528
    iget-object v3, v2, Lcom/htc/home/personalize/AddAdapter$ListItem;->widgetItem:Lcom/htc/home/personalize/WidgetItem;

    move/from16 v0, v19

    iput v0, v3, Lcom/htc/home/personalize/WidgetItem;->mItemType:I

    .line 530
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 532
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    sub-long v14, v30, v24

    .line 533
    .local v14, diff:J
    sget-object v3, Lcom/htc/home/personalize/AddAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "convertListItem spend time "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " ms"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    .end local v2           #item:Lcom/htc/home/personalize/AddAdapter$ListItem;
    .end local v4           #text:Ljava/lang/String;
    .end local v5           #icon:Landroid/graphics/drawable/Drawable;
    .end local v6           #actionTag:I
    .end local v7           #priority:I
    .end local v10           #className:Ljava/lang/String;
    .end local v11           #component:Landroid/content/ComponentName;
    .end local v12           #componentString:Ljava/lang/String;
    .end local v14           #diff:J
    .end local v18           #iconBundle:Landroid/os/Bundle;
    .end local v19           #itemType:I
    .end local v20           #nextLevel:I
    .end local v21           #packageName:Ljava/lang/String;
    .end local v26           #uri:Ljava/lang/String;
    :cond_2
    return-object v13

    .line 441
    .restart local v18       #iconBundle:Landroid/os/Bundle;
    :catch_0
    move-exception v16

    .line 442
    .local v16, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/home/personalize/AddAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v30, "It fails to get icons by getExtras()"

    move-object/from16 v0, v30

    move-object/from16 v1, v16

    invoke-static {v3, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 455
    .end local v16           #e:Ljava/lang/Exception;
    .restart local v4       #text:Ljava/lang/String;
    .restart local v6       #actionTag:I
    .restart local v7       #priority:I
    .restart local v10       #className:Ljava/lang/String;
    .restart local v12       #componentString:Ljava/lang/String;
    .restart local v20       #nextLevel:I
    .restart local v21       #packageName:Ljava/lang/String;
    :cond_3
    invoke-static {v12}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v11

    goto/16 :goto_1

    .line 461
    .restart local v5       #icon:Landroid/graphics/drawable/Drawable;
    .restart local v11       #component:Landroid/content/ComponentName;
    .restart local v19       #itemType:I
    :cond_4
    const/16 v3, 0x66

    if-ne v6, v3, :cond_5

    .line 462
    const v3, 0x7f020015

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto/16 :goto_2

    .line 464
    :cond_5
    const/4 v9, 0x0

    .line 466
    .local v9, bitmap:Landroid/graphics/Bitmap;
    if-eqz v18, :cond_6

    .line 468
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    move-object v9, v3

    check-cast v9, Landroid/graphics/Bitmap;

    .line 470
    :cond_6
    if-eqz v9, :cond_7

    .line 471
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5           #icon:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v23

    invoke-direct {v5, v0, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v5       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_2

    .line 474
    :cond_7
    if-eqz v11, :cond_a

    .line 475
    const/4 v8, 0x0

    .line 476
    .local v8, ai:Landroid/content/pm/ActivityInfo;
    const/4 v3, 0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_9

    .line 477
    const/4 v3, 0x0

    :try_start_1
    move-object/from16 v0, v22

    invoke-virtual {v0, v11, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v8

    .line 481
    :cond_8
    :goto_4
    if-eqz v8, :cond_1

    .line 482
    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto/16 :goto_2

    .line 478
    :cond_9
    const/4 v3, 0x2

    move/from16 v0, p2

    if-ne v0, v3, :cond_8

    .line 479
    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11, v3}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v8

    goto :goto_4

    .line 485
    .end local v8           #ai:Landroid/content/pm/ActivityInfo;
    :cond_a
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :cond_b
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/htc/home/personalize/widgetpicker/WidgetItem;

    .line 486
    .local v27, widget:Lcom/htc/home/personalize/widgetpicker/WidgetItem;
    move-object/from16 v0, v27

    iget v3, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mItemType:I

    move/from16 v0, v19

    if-ne v3, v0, :cond_b

    .line 487
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v27

    iget v0, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mIconResource:I

    move/from16 v30, v0

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 492
    .end local v27           #widget:Lcom/htc/home/personalize/widgetpicker/WidgetItem;
    :cond_c
    if-nez v5, :cond_1

    if-eqz v29, :cond_1

    .line 493
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_d
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;

    .line 494
    .local v27, widget:Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;
    invoke-interface/range {v27 .. v27}, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;->getId()I

    move-result v3

    move/from16 v0, v19

    if-ne v3, v0, :cond_d

    .line 495
    invoke-interface/range {v27 .. v27}, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;->getPreviewImage()Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 496
    goto/16 :goto_2

    .line 501
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v27           #widget:Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;
    :catch_1
    move-exception v16

    .line 502
    .local v16, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_2

    .line 520
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    .end local v16           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2       #item:Lcom/htc/home/personalize/AddAdapter$ListItem;
    .restart local v26       #uri:Ljava/lang/String;
    :cond_e
    const/4 v3, 0x0

    :try_start_2
    move-object/from16 v0, v26

    invoke-static {v0, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/home/personalize/AddAdapter$ListItem;->intent:Landroid/content/Intent;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_3

    .line 521
    :catch_2
    move-exception v16

    .line 522
    .local v16, e:Ljava/net/URISyntaxException;
    invoke-virtual/range {v16 .. v16}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto/16 :goto_3
.end method

.method protected createShortcutIntent(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/content/Intent;
    .locals 22
    .parameter "url"
    .parameter "title"
    .parameter "touchIcon"
    .parameter "favicon"

    .prologue
    .line 1772
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 1773
    .local v7, i:Landroid/content/Intent;
    new-instance v12, Landroid/content/Intent;

    const-string v18, "android.intent.action.VIEW"

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1774
    .local v12, shortcutIntent:Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 1775
    .local v16, urlHash:J
    const/16 v18, 0x20

    shl-long v18, v16, v18

    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    or-long v14, v18, v20

    .line 1776
    .local v14, uniqueId:J
    const-string v18, "com.android.browser.application_id"

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1777
    const-string v18, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1778
    const-string v18, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1780
    if-eqz p3, :cond_0

    .line 1784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/AddAdapter;->mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/home/personalize/PersonalizeMain;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const/high16 v19, 0x105

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 1785
    .local v8, iconSize:I
    sget-object v18, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v18

    invoke-static {v8, v8, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1786
    .local v4, bm:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1787
    .local v5, canvas:Landroid/graphics/Canvas;
    new-instance v13, Landroid/graphics/Rect;

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v13, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1788
    .local v13, src:Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1791
    .local v6, dest:Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Paint;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-direct {v9, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 1792
    .local v9, paint:Landroid/graphics/Paint;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1793
    move-object/from16 v0, p3

    invoke-virtual {v5, v0, v13, v6, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1797
    new-instance v10, Landroid/graphics/Path;

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    .line 1798
    .local v10, path:Landroid/graphics/Path;
    sget-object v18, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 1799
    new-instance v11, Landroid/graphics/RectF;

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v11, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1800
    .local v11, rect:Landroid/graphics/RectF;
    const/high16 v18, 0x3f80

    const/high16 v19, 0x3f80

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 1801
    const/high16 v18, 0x4100

    const/high16 v19, 0x4100

    sget-object v20, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v10, v11, v0, v1, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 1804
    new-instance v18, Landroid/graphics/PorterDuffXfermode;

    sget-object v19, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v18 .. v19}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1805
    invoke-virtual {v5, v10, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1807
    const-string v18, "android.intent.extra.shortcut.ICON"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1854
    .end local v4           #bm:Landroid/graphics/Bitmap;
    .end local v5           #canvas:Landroid/graphics/Canvas;
    .end local v6           #dest:Landroid/graphics/Rect;
    .end local v8           #iconSize:I
    .end local v9           #paint:Landroid/graphics/Paint;
    .end local v10           #path:Landroid/graphics/Path;
    .end local v11           #rect:Landroid/graphics/RectF;
    .end local v13           #src:Landroid/graphics/Rect;
    :goto_0
    const-string v18, "duplicate"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1855
    return-object v7

    .line 1809
    :cond_0
    sget-object v18, Lcom/htc/home/personalize/AddAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v19, "createShortcutIntent(), touchIcon should not be null"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1564
    iget-object v0, p0, Lcom/htc/home/personalize/AddAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    .line 1577
    invoke-virtual {p0}, Lcom/htc/home/personalize/AddAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 1578
    sget-object v0, Lcom/htc/home/personalize/AddAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IndexOutOfBounds on AddAdapter, position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", getCount() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/home/personalize/AddAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    invoke-virtual {p0}, Lcom/htc/home/personalize/AddAdapter;->notifyDataSetChanged()V

    .line 1580
    iget-object v0, p0, Lcom/htc/home/personalize/AddAdapter;->mItems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1582
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/AddAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 1586
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .parameter "position"

    .prologue
    .line 1369
    invoke-virtual {p0, p1}, Lcom/htc/home/personalize/AddAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/home/personalize/AddAdapter$ListItem;

    .line 1370
    .local v0, item:Lcom/htc/home/personalize/AddAdapter$ListItem;
    invoke-virtual {v0}, Lcom/htc/home/personalize/AddAdapter$ListItem;->isPersonalizeItem()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/htc/home/personalize/AddAdapter$ListItem;->isWidget()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1371
    :cond_0
    const/4 v1, 0x0

    .line 1382
    :goto_0
    return v1

    .line 1372
    :cond_1
    iget v1, v0, Lcom/htc/home/personalize/AddAdapter$ListItem;->actionTag:I

    const/16 v2, 0x68

    if-ne v1, v2, :cond_2

    .line 1373
    const/4 v1, 0x4

    goto :goto_0

    .line 1375
    :cond_2
    iget v1, v0, Lcom/htc/home/personalize/AddAdapter$ListItem;->actionTag:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_3

    .line 1376
    const/4 v1, 0x2

    goto :goto_0

    .line 1377
    :cond_3
    invoke-virtual {p0, p1}, Lcom/htc/home/personalize/AddAdapter;->haseNextLevel(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1378
    const/4 v1, 0x3

    goto :goto_0

    .line 1379
    :cond_4
    iget v1, v0, Lcom/htc/home/personalize/AddAdapter$ListItem;->actionTag:I

    const/16 v2, 0x66

    if-ne v1, v2, :cond_5

    .line 1380
    const/4 v1, 0x5

    goto :goto_0

    .line 1382
    :cond_5
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getTitleString()I
    .locals 1

    .prologue
    .line 1591
    iget v0, p0, Lcom/htc/home/personalize/AddAdapter;->mShowTitleId:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1402
    invoke-virtual/range {p0 .. p1}, Lcom/htc/home/personalize/AddAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/home/personalize/AddAdapter$ListItem;

    .line 1403
    .local v7, item:Lcom/htc/home/personalize/AddAdapter$ListItem;
    invoke-virtual/range {p0 .. p1}, Lcom/htc/home/personalize/AddAdapter;->getItemViewType(I)I

    move-result v13

    .line 1404
    .local v13, viewType:I
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1406
    .local v3, context:Landroid/content/Context;
    if-nez v13, :cond_8

    .line 1407
    invoke-virtual {v7}, Lcom/htc/home/personalize/AddAdapter$ListItem;->isPersonalizeItem()Z

    move-result v9

    .line 1408
    .local v9, personalizeItem:Z
    const/4 v8, 0x1

    .line 1409
    .local v8, needToDoInflate:Z
    if-eqz p2, :cond_0

    .line 1411
    const/4 v8, 0x0

    .line 1415
    :cond_0
    if-eqz v9, :cond_2

    .line 1416
    if-eqz v8, :cond_1

    .line 1417
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/htc/home/personalize/AddAdapter;->getInflateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1419
    :cond_1
    const v14, 0x7f0b003a

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 1420
    .local v5, iconLeft:Landroid/widget/ImageView;
    iget-object v14, v7, Lcom/htc/home/personalize/AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1422
    const v14, 0x7f0b003e

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 1423
    .local v10, primaryText:Landroid/widget/TextView;
    const v14, 0x7f0b003f

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1424
    .local v11, secondaryText:Landroid/widget/TextView;
    iget-object v14, v7, Lcom/htc/home/personalize/AddAdapter$ListItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1425
    iget-object v14, v7, Lcom/htc/home/personalize/AddAdapter$ListItem;->summary:Ljava/lang/String;

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1427
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1560
    .end local v8           #needToDoInflate:Z
    .end local v9           #personalizeItem:Z
    :goto_0
    return-object p2

    .line 1429
    .end local v5           #iconLeft:Landroid/widget/ImageView;
    .end local v10           #primaryText:Landroid/widget/TextView;
    .end local v11           #secondaryText:Landroid/widget/TextView;
    .restart local v8       #needToDoInflate:Z
    .restart local v9       #personalizeItem:Z
    :cond_2
    if-eqz v8, :cond_3

    .line 1430
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/htc/home/personalize/AddAdapter;->getInflateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1432
    :cond_3
    const v14, 0x7f0b003a

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 1433
    .restart local v5       #iconLeft:Landroid/widget/ImageView;
    iget-object v14, v7, Lcom/htc/home/personalize/AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    if-eqz v14, :cond_6

    .line 1434
    iget-object v14, v7, Lcom/htc/home/personalize/AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1440
    :cond_4
    :goto_1
    const v14, 0x7f0b003e

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 1441
    .restart local v10       #primaryText:Landroid/widget/TextView;
    const v14, 0x7f0b003f

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1442
    .restart local v11       #secondaryText:Landroid/widget/TextView;
    iget-object v14, v7, Lcom/htc/home/personalize/AddAdapter$ListItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1443
    iget v14, v7, Lcom/htc/home/personalize/AddAdapter$ListItem;->actionTag:I

    const/16 v15, 0x64

    if-eq v14, v15, :cond_5

    iget v14, v7, Lcom/htc/home/personalize/AddAdapter$ListItem;->actionTag:I

    const/16 v15, 0x6a

    if-ne v14, v15, :cond_7

    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/AddAdapter;->mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;

    invoke-virtual {v14}, Lcom/htc/home/personalize/PersonalizeMain;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f090086

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    :goto_2
    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1447
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 1436
    .end local v10           #primaryText:Landroid/widget/TextView;
    .end local v11           #secondaryText:Landroid/widget/TextView;
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/AddAdapter;->mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;

    invoke-virtual {v14}, Lcom/htc/home/personalize/PersonalizeMain;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f020013

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1437
    sget-boolean v14, Lcom/htc/home/personalize/AddAdapter;->localLOGV:Z

    if-eqz v14, :cond_4

    sget-object v14, Lcom/htc/home/personalize/AddAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v15, "AddAdapter:List items\'s icon is null"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1443
    .restart local v10       #primaryText:Landroid/widget/TextView;
    .restart local v11       #secondaryText:Landroid/widget/TextView;
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/AddAdapter;->mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;

    invoke-virtual {v14}, Lcom/htc/home/personalize/PersonalizeMain;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f090085

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_2

    .line 1449
    .end local v5           #iconLeft:Landroid/widget/ImageView;
    .end local v8           #needToDoInflate:Z
    .end local v9           #personalizeItem:Z
    .end local v10           #primaryText:Landroid/widget/TextView;
    .end local v11           #secondaryText:Landroid/widget/TextView;
    :cond_8
    const/4 v14, 0x4

    if-ne v13, v14, :cond_a

    .line 1450
    if-nez p2, :cond_9

    iget v14, v7, Lcom/htc/home/personalize/AddAdapter$ListItem;->actionTag:I

    const/16 v15, 0x68

    if-ne v14, v15, :cond_9

    .line 1451
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/htc/home/personalize/AddAdapter;->getInflateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1453
    :cond_9
    const v14, 0x7f0b003a

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 1454
    .restart local v5       #iconLeft:Landroid/widget/ImageView;
    iget-object v14, v7, Lcom/htc/home/personalize/AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1455
    const v14, 0x7f0b003e

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 1456
    .restart local v10       #primaryText:Landroid/widget/TextView;
    const v14, 0x7f0b003f

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1457
    .restart local v11       #secondaryText:Landroid/widget/TextView;
    iget-object v14, v7, Lcom/htc/home/personalize/AddAdapter$ListItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1458
    iget-object v14, v7, Lcom/htc/home/personalize/AddAdapter$ListItem;->summary:Ljava/lang/String;

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1460
    invoke-static {v3}, Lcom/htc/home/personalize/idlescreen/shortcut/LockscreenSetting;->getShortcutVisibility(Landroid/content/Context;)Z

    move-result v2

    .line 1461
    .local v2, bShortcutEnabled:Z
    const v14, 0x7f0b0040

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/CheckBox;

    .line 1462
    .local v12, shortcutEnabledCheckBox:Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/AddAdapter;->mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;

    const-string v15, "common_checkbox"

    const v16, 0x2080012

    invoke-static/range {v14 .. v16}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    .line 1463
    .local v4, drawableID:I
    invoke-virtual {v12, v4}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 1464
    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1465
    invoke-virtual {v12, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1467
    new-instance v14, Lcom/htc/home/personalize/AddAdapter$8;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v3}, Lcom/htc/home/personalize/AddAdapter$8;-><init>(Lcom/htc/home/personalize/AddAdapter;Landroid/content/Context;)V

    invoke-virtual {v12, v14}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1474
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1476
    .end local v2           #bShortcutEnabled:Z
    .end local v4           #drawableID:I
    .end local v5           #iconLeft:Landroid/widget/ImageView;
    .end local v10           #primaryText:Landroid/widget/TextView;
    .end local v11           #secondaryText:Landroid/widget/TextView;
    .end local v12           #shortcutEnabledCheckBox:Landroid/widget/CheckBox;
    :cond_a
    const/4 v14, 0x2

    if-ne v13, v14, :cond_e

    .line 1477
    if-nez p2, :cond_b

    .line 1478
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/htc/home/personalize/AddAdapter;->getInflateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1480
    :cond_b
    const v14, 0x7f0b003a

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 1481
    .restart local v5       #iconLeft:Landroid/widget/ImageView;
    const/16 v14, 0x8

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1483
    const v14, 0x7f0b003e

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 1484
    .restart local v10       #primaryText:Landroid/widget/TextView;
    const v14, 0x7f0b003f

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1485
    .restart local v11       #secondaryText:Landroid/widget/TextView;
    iget-object v14, v7, Lcom/htc/home/personalize/AddAdapter$ListItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1486
    const/16 v14, 0x8

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1488
    const v14, 0x7f0b003b

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 1489
    .local v6, iconRight:Landroid/widget/ImageView;
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1490
    iget v14, v7, Lcom/htc/home/personalize/AddAdapter$ListItem;->actionTag:I

    const/16 v15, 0x65

    if-ne v14, v15, :cond_d

    .line 1491
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/AddAdapter;->mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;

    const-string v15, "common_download"

    const v16, 0x20807ec

    invoke-static/range {v14 .. v16}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v14

    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1498
    :cond_c
    :goto_3
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1493
    :cond_d
    iget v14, v7, Lcom/htc/home/personalize/AddAdapter$ListItem;->actionTag:I

    const/16 v15, 0x66

    if-ne v14, v15, :cond_c

    .line 1494
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/AddAdapter;->mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;

    const-string v15, "common_more_view"

    const v16, 0x2080065

    invoke-static/range {v14 .. v16}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v14

    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 1499
    .end local v5           #iconLeft:Landroid/widget/ImageView;
    .end local v6           #iconRight:Landroid/widget/ImageView;
    .end local v10           #primaryText:Landroid/widget/TextView;
    .end local v11           #secondaryText:Landroid/widget/TextView;
    :cond_e
    const/4 v14, 0x3

    if-ne v13, v14, :cond_12

    .line 1500
    if-nez p2, :cond_f

    .line 1501
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/htc/home/personalize/AddAdapter;->getInflateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1503
    :cond_f
    const v14, 0x7f0b003a

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 1504
    .restart local v5       #iconLeft:Landroid/widget/ImageView;
    iget-object v14, v7, Lcom/htc/home/personalize/AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    if-eqz v14, :cond_11

    .line 1505
    iget-object v14, v7, Lcom/htc/home/personalize/AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1511
    :cond_10
    :goto_4
    const v14, 0x7f0b003e

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 1512
    .restart local v10       #primaryText:Landroid/widget/TextView;
    const v14, 0x7f0b003f

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1513
    .restart local v11       #secondaryText:Landroid/widget/TextView;
    iget-object v14, v7, Lcom/htc/home/personalize/AddAdapter$ListItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1514
    const/16 v14, 0x8

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1516
    const v14, 0x7f0b003b

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 1517
    .restart local v6       #iconRight:Landroid/widget/ImageView;
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1518
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/AddAdapter;->mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;

    const-string v15, "common_search_more_rest"

    const v16, 0x20806b0

    invoke-static/range {v14 .. v16}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v14

    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1521
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1507
    .end local v6           #iconRight:Landroid/widget/ImageView;
    .end local v10           #primaryText:Landroid/widget/TextView;
    .end local v11           #secondaryText:Landroid/widget/TextView;
    :cond_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/AddAdapter;->mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;

    invoke-virtual {v14}, Lcom/htc/home/personalize/PersonalizeMain;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f020013

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1508
    sget-boolean v14, Lcom/htc/home/personalize/AddAdapter;->localLOGV:Z

    if-eqz v14, :cond_10

    sget-object v14, Lcom/htc/home/personalize/AddAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v15, "AddAdapter:List items\'s icon is null"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1522
    .end local v5           #iconLeft:Landroid/widget/ImageView;
    :cond_12
    const/4 v14, 0x5

    if-ne v13, v14, :cond_16

    .line 1523
    if-nez p2, :cond_13

    .line 1524
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/htc/home/personalize/AddAdapter;->getInflateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1526
    :cond_13
    const v14, 0x7f0b003a

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 1527
    .restart local v5       #iconLeft:Landroid/widget/ImageView;
    iget-object v14, v7, Lcom/htc/home/personalize/AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    if-eqz v14, :cond_15

    .line 1528
    iget-object v14, v7, Lcom/htc/home/personalize/AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1534
    :cond_14
    :goto_5
    const v14, 0x7f0b003e

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 1535
    .restart local v10       #primaryText:Landroid/widget/TextView;
    const v14, 0x7f0b003f

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1536
    .restart local v11       #secondaryText:Landroid/widget/TextView;
    iget-object v14, v7, Lcom/htc/home/personalize/AddAdapter$ListItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1537
    const/16 v14, 0x8

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1539
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1530
    .end local v10           #primaryText:Landroid/widget/TextView;
    .end local v11           #secondaryText:Landroid/widget/TextView;
    :cond_15
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/AddAdapter;->mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;

    invoke-virtual {v14}, Lcom/htc/home/personalize/PersonalizeMain;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f020013

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1531
    sget-boolean v14, Lcom/htc/home/personalize/AddAdapter;->localLOGV:Z

    if-eqz v14, :cond_14

    sget-object v14, Lcom/htc/home/personalize/AddAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v15, "AddAdapter:List items\'s icon is null"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1541
    .end local v5           #iconLeft:Landroid/widget/ImageView;
    :cond_16
    if-nez p2, :cond_17

    .line 1542
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/htc/home/personalize/AddAdapter;->getInflateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1544
    :cond_17
    const v14, 0x7f0b003a

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 1545
    .restart local v5       #iconLeft:Landroid/widget/ImageView;
    iget-object v14, v7, Lcom/htc/home/personalize/AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    if-eqz v14, :cond_19

    .line 1546
    iget-object v14, v7, Lcom/htc/home/personalize/AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1552
    :cond_18
    :goto_6
    const v14, 0x7f0b003e

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 1553
    .restart local v10       #primaryText:Landroid/widget/TextView;
    const v14, 0x7f0b003f

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1554
    .restart local v11       #secondaryText:Landroid/widget/TextView;
    iget-object v14, v7, Lcom/htc/home/personalize/AddAdapter$ListItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1555
    const/16 v14, 0x8

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1557
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1548
    .end local v10           #primaryText:Landroid/widget/TextView;
    .end local v11           #secondaryText:Landroid/widget/TextView;
    :cond_19
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/AddAdapter;->mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;

    invoke-virtual {v14}, Lcom/htc/home/personalize/PersonalizeMain;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f020013

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1549
    sget-boolean v14, Lcom/htc/home/personalize/AddAdapter;->localLOGV:Z

    if-eqz v14, :cond_18

    sget-object v14, Lcom/htc/home/personalize/AddAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v15, "AddAdapter:List items\'s icon is null"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1388
    const/4 v0, 0x6

    return v0
.end method

.method public haseNextLevel(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/htc/home/personalize/AddAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/htc/home/personalize/AddAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/home/personalize/AddAdapter$ListItem;

    iget v0, v0, Lcom/htc/home/personalize/AddAdapter$ListItem;->actionTag:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1362
    :cond_0
    const/4 v0, 0x0

    .line 1364
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 1632
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public onSummaryUpdate(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    .line 1640
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1641
    .local v0, action:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/home/personalize/AddAdapter;->mAddMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/home/personalize/AddAdapter$ListItem;

    .line 1642
    .local v2, item:Lcom/htc/home/personalize/AddAdapter$ListItem;
    iget-object v3, v2, Lcom/htc/home/personalize/AddAdapter$ListItem;->summaryChangedAction:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1643
    const-string v3, "com.htc.intent.EXTRA_SUMMARY"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/home/personalize/AddAdapter$ListItem;->summary:Ljava/lang/String;

    .line 1644
    sget-boolean v3, Lcom/htc/home/personalize/AddAdapter;->localLOGV:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/htc/home/personalize/AddAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update summary, item = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", summary = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/htc/home/personalize/AddAdapter$ListItem;->summary:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    :cond_1
    invoke-virtual {p0}, Lcom/htc/home/personalize/AddAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1648
    .end local v2           #item:Lcom/htc/home/personalize/AddAdapter$ListItem;
    :cond_2
    return-void
.end method

.method public declared-synchronized resetItems()V
    .locals 2

    .prologue
    .line 575
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/home/personalize/AddAdapter;->showCheckLog:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/home/personalize/AddAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v1, "resetItems start"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :cond_0
    invoke-direct {p0}, Lcom/htc/home/personalize/AddAdapter;->addCHTItems()V

    .line 595
    invoke-direct {p0}, Lcom/htc/home/personalize/AddAdapter;->addEXTItems()V

    .line 596
    iget-boolean v0, p0, Lcom/htc/home/personalize/AddAdapter;->showCheckLog:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/home/personalize/AddAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v1, "resetItems end"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 597
    :cond_1
    monitor-exit p0

    return-void

    .line 575
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAdapter(IIZ)V
    .locals 6
    .parameter "level"
    .parameter "index"
    .parameter "isAssignFunction"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 601
    iget-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;

    invoke-virtual {v2, v4}, Lcom/htc/home/personalize/PersonalizeMain;->enableSearchBar(Z)V

    .line 602
    iget-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;

    sget-object v3, Lcom/htc/home/personalize/PersonalizeMain$ListType;->LIST_MAIN:Lcom/htc/home/personalize/PersonalizeMain$ListType;

    invoke-virtual {v2, v3}, Lcom/htc/home/personalize/PersonalizeMain;->setCurListType(Lcom/htc/home/personalize/PersonalizeMain$ListType;)V

    .line 603
    if-nez p1, :cond_2

    .line 605
    iget-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;

    invoke-virtual {v2, v5}, Lcom/htc/home/personalize/PersonalizeMain;->setCarouselWidgetVisibility(Z)V

    .line 606
    invoke-direct {p0}, Lcom/htc/home/personalize/AddAdapter;->addMenuItems()V

    .line 607
    if-eqz p3, :cond_1

    .line 609
    iget-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mTitleStrId:[I

    aget v2, v2, v5

    iput v2, p0, Lcom/htc/home/personalize/AddAdapter;->mShowTitleId:I

    .line 610
    iget-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->maddFuncMenuItems:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mItems:Ljava/util/ArrayList;

    .line 738
    :cond_0
    :goto_0
    return-void

    .line 614
    :cond_1
    iget-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mTitleStrId:[I

    aget v2, v2, v4

    iput v2, p0, Lcom/htc/home/personalize/AddAdapter;->mShowTitleId:I

    .line 615
    iget-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mAddMenuItems:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mItems:Ljava/util/ArrayList;

    goto :goto_0

    .line 618
    :cond_2
    if-lez p1, :cond_0

    .line 620
    iget-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;

    invoke-virtual {v2, v4}, Lcom/htc/home/personalize/PersonalizeMain;->setCarouselWidgetVisibility(Z)V

    .line 621
    sparse-switch p2, :sswitch_data_0

    .line 725
    const/16 v2, 0x258

    if-le p2, v2, :cond_0

    const/16 v2, 0x2bc

    if-ge p2, v2, :cond_0

    .line 726
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v2, p0, Lcom/htc/home/personalize/AddAdapter;->mExtGroups:I

    if-ge v0, v2, :cond_0

    .line 727
    iget-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mExtGroup_id:[I

    aget v2, v2, v0

    if-ne p2, v2, :cond_9

    .line 728
    iget-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mTitleStrId:[I

    aget v2, v2, v4

    iput v2, p0, Lcom/htc/home/personalize/AddAdapter;->mShowTitleId:I

    .line 730
    iget-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mAddEXTItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mItems:Ljava/util/ArrayList;

    goto :goto_0

    .line 625
    .end local v0           #i:I
    :sswitch_0
    iget-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mAddProgramItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 626
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/home/personalize/AddAdapter$1;

    invoke-direct {v2, p0}, Lcom/htc/home/personalize/AddAdapter$1;-><init>(Lcom/htc/home/personalize/AddAdapter;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 633
    .local v1, thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 635
    .end local v1           #thread:Ljava/lang/Thread;
    :cond_3
    iget-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mTitleStrId:[I

    const/4 v3, 0x5

    aget v2, v2, v3

    iput v2, p0, Lcom/htc/home/personalize/AddAdapter;->mShowTitleId:I

    .line 636
    iget-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mAddProgramItems:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mItems:Ljava/util/ArrayList;

    goto :goto_0

    .line 640
    :sswitch_1
    iget-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mAddShortcutItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 641
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/home/personalize/AddAdapter$2;

    invoke-direct {v2, p0}, Lcom/htc/home/personalize/AddAdapter$2;-><init>(Lcom/htc/home/personalize/AddAdapter;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 648
    .restart local v1       #thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 650
    .end local v1           #thread:Ljava/lang/Thread;
    :cond_4
    iget-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mTitleStrId:[I

    aget v2, v2, v5

    iput v2, p0, Lcom/htc/home/personalize/AddAdapter;->mShowTitleId:I

    .line 651
    iget-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mAddShortcutItems:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mItems:Ljava/util/ArrayList;

    goto :goto_0

    .line 654
    :sswitch_2
    iget-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mAddCombinedGadgetItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 655
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/home/personalize/AddAdapter$3;

    invoke-direct {v2, p0}, Lcom/htc/home/personalize/AddAdapter$3;-><init>(Lcom/htc/home/personalize/AddAdapter;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 662
    .restart local v1       #thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 664
    .end local v1           #thread:Ljava/lang/Thread;
    :cond_5
    iget-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mTitleStrId:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    iput v2, p0, Lcom/htc/home/personalize/AddAdapter;->mShowTitleId:I

    .line 665
    iget-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mAddCombinedGadgetItems:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mItems:Ljava/util/ArrayList;

    .line 666
    iget-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;

    sget-object v3, Lcom/htc/home/personalize/PersonalizeMain$ListType;->LIST_WIDGET:Lcom/htc/home/personalize/PersonalizeMain$ListType;

    invoke-virtual {v2, v3}, Lcom/htc/home/personalize/PersonalizeMain;->setCurListType(Lcom/htc/home/personalize/PersonalizeMain$ListType;)V

    goto/16 :goto_0

    .line 674
    :sswitch_3
    iget-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mAddSettingsWidgetItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 675
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/home/personalize/AddAdapter$4;

    invoke-direct {v2, p0}, Lcom/htc/home/personalize/AddAdapter$4;-><init>(Lcom/htc/home/personalize/AddAdapter;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 682
    .restart local v1       #thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 684
    .end local v1           #thread:Ljava/lang/Thread;
    :cond_6
    iget-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mTitleStrId:[I

    const/4 v3, 0x7

    aget v2, v2, v3

    iput v2, p0, Lcom/htc/home/personalize/AddAdapter;->mShowTitleId:I

    .line 685
    iget-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mAddSettingsWidgetItems:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mItems:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 693
    :sswitch_4
    iget-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mAddFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 694
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/home/personalize/AddAdapter$5;

    invoke-direct {v2, p0}, Lcom/htc/home/personalize/AddAdapter$5;-><init>(Lcom/htc/home/personalize/AddAdapter;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 701
    .restart local v1       #thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 703
    .end local v1           #thread:Ljava/lang/Thread;
    :cond_7
    iget-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mTitleStrId:[I

    const/4 v3, 0x6

    aget v2, v2, v3

    iput v2, p0, Lcom/htc/home/personalize/AddAdapter;->mShowTitleId:I

    .line 704
    iget-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mAddFolderItems:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mItems:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 707
    :sswitch_5
    iget-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mAddLiveFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 708
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/home/personalize/AddAdapter$6;

    invoke-direct {v2, p0}, Lcom/htc/home/personalize/AddAdapter$6;-><init>(Lcom/htc/home/personalize/AddAdapter;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 715
    .restart local v1       #thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 717
    .end local v1           #thread:Ljava/lang/Thread;
    :cond_8
    iget-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mTitleStrId:[I

    const/4 v3, 0x4

    aget v2, v2, v3

    iput v2, p0, Lcom/htc/home/personalize/AddAdapter;->mShowTitleId:I

    .line 718
    iget-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mAddLiveFolderItems:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mItems:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 721
    :sswitch_6
    iget-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mTitleStrId:[I

    const/16 v3, 0x8

    aget v2, v2, v3

    iput v2, p0, Lcom/htc/home/personalize/AddAdapter;->mShowTitleId:I

    .line 722
    iget-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mAddCHTItems:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mItems:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 726
    .restart local v0       #i:I
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 621
    :sswitch_data_0
    .sparse-switch
        0x1f5 -> :sswitch_0
        0x1f6 -> :sswitch_1
        0x1f7 -> :sswitch_2
        0x1f8 -> :sswitch_3
        0x1fa -> :sswitch_4
        0x1fb -> :sswitch_5
        0x1fc -> :sswitch_0
        0x1fd -> :sswitch_1
        0x258 -> :sswitch_6
    .end sparse-switch
.end method

.method public setItemsData(Ljava/lang/String;)V
    .locals 4
    .parameter "keyword"

    .prologue
    .line 412
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 413
    :cond_0
    iget-object v3, p0, Lcom/htc/home/personalize/AddAdapter;->mAddCombinedGadgetItems:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/htc/home/personalize/AddAdapter;->mItems:Ljava/util/ArrayList;

    .line 424
    :goto_0
    return-void

    .line 417
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 418
    .local v2, temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/home/personalize/AddAdapter$ListItem;>;"
    iget-object v3, p0, Lcom/htc/home/personalize/AddAdapter;->mAddCombinedGadgetItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/home/personalize/AddAdapter$ListItem;

    .line 419
    .local v1, item:Lcom/htc/home/personalize/AddAdapter$ListItem;
    iget-object v3, v1, Lcom/htc/home/personalize/AddAdapter$ListItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/htc/home/personalize/AddAdapter;->match(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 420
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 423
    .end local v1           #item:Lcom/htc/home/personalize/AddAdapter$ListItem;
    :cond_3
    iput-object v2, p0, Lcom/htc/home/personalize/AddAdapter;->mItems:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public updateSummary()V
    .locals 17

    .prologue
    .line 1654
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/home/personalize/AddAdapter;->mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/home/personalize/AddAdapter;->mTabID:I

    invoke-virtual {v13, v14}, Lcom/htc/home/personalize/PersonalizeMain;->checkSummaryUpdated(I)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1

    .line 1656
    sget-object v13, Lcom/htc/home/personalize/AddAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v14, "do not need to update summary"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    :cond_0
    :goto_0
    return-void

    .line 1660
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/home/personalize/AddAdapter;->mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/home/personalize/AddAdapter;->mTabID:I

    invoke-virtual {v13, v14}, Lcom/htc/home/personalize/PersonalizeMain;->notifySummaryUpdated(I)V

    .line 1661
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 1662
    .local v9, time:J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/home/personalize/AddAdapter;->mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;

    invoke-virtual {v13}, Lcom/htc/home/personalize/PersonalizeMain;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1664
    .local v7, res:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/home/personalize/AddAdapter;->mAddMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/home/personalize/AddAdapter$ListItem;

    .line 1666
    .local v4, item:Lcom/htc/home/personalize/AddAdapter$ListItem;
    const-string v13, "com.htc.intent.ACTION_PERSONALIZE_SCENE_CHANGED"

    iget-object v14, v4, Lcom/htc/home/personalize/AddAdapter$ListItem;->summaryChangedAction:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1667
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/home/personalize/AddAdapter;->mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;

    invoke-static {v13}, Lcom/htc/htcSceneManager/scene/SceneManager;->getInstance(Landroid/content/Context;)Lcom/htc/htcSceneManager/scene/SceneManager;

    move-result-object v8

    .line 1668
    .local v8, sceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/htc/htcSceneManager/scene/SceneManager;->getCurrentScene()Lcom/htc/htcSceneManager/scene/Scene;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 1669
    invoke-virtual {v8}, Lcom/htc/htcSceneManager/scene/SceneManager;->getCurrentScene()Lcom/htc/htcSceneManager/scene/Scene;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/AddAdapter;->mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;

    invoke-static {v13, v14}, Lcom/htc/home/personalize/PersonalizeMain;->getSceneName(Lcom/htc/htcSceneManager/scene/Scene;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v4, Lcom/htc/home/personalize/AddAdapter$ListItem;->summary:Ljava/lang/String;

    goto :goto_1

    .line 1671
    :cond_3
    const v13, 0x7f090081

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v4, Lcom/htc/home/personalize/AddAdapter$ListItem;->summary:Ljava/lang/String;

    goto :goto_1

    .line 1676
    .end local v8           #sceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;
    :cond_4
    const-string v13, "com.htc.intent.ACTION_PERSONALIZE_WALLPAPER_CHANGED"

    iget-object v14, v4, Lcom/htc/home/personalize/AddAdapter$ListItem;->summaryChangedAction:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1677
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/home/personalize/AddAdapter;->mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;

    invoke-static {v13}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v12

    .line 1678
    .local v12, wallpapaerManager:Landroid/app/WallpaperManager;
    if-nez v12, :cond_5

    .line 1679
    const v13, 0x7f090081

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v4, Lcom/htc/home/personalize/AddAdapter$ListItem;->summary:Ljava/lang/String;

    goto :goto_1

    .line 1681
    :cond_5
    invoke-virtual {v12}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v3

    .line 1682
    .local v3, info:Landroid/app/WallpaperInfo;
    if-nez v3, :cond_6

    .line 1683
    const v13, 0x7f090081

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v4, Lcom/htc/home/personalize/AddAdapter$ListItem;->summary:Ljava/lang/String;

    goto :goto_1

    .line 1685
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/home/personalize/AddAdapter;->mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;

    invoke-virtual {v13}, Lcom/htc/home/personalize/PersonalizeMain;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/app/WallpaperInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v4, Lcom/htc/home/personalize/AddAdapter$ListItem;->summary:Ljava/lang/String;

    goto :goto_1

    .line 1690
    .end local v3           #info:Landroid/app/WallpaperInfo;
    .end local v12           #wallpapaerManager:Landroid/app/WallpaperManager;
    :cond_7
    const-string v13, "com.htc.intent.ACTION_PERSONALIZE_IDLESCREEN_CHANGED"

    iget-object v14, v4, Lcom/htc/home/personalize/AddAdapter$ListItem;->summaryChangedAction:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 1691
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/home/personalize/AddAdapter;->mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;

    const-string v14, "keyguard"

    invoke-virtual {v13, v14}, Lcom/htc/home/personalize/PersonalizeMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/HtcIfKeyguardManager;

    .line 1693
    .local v5, keyguardManager:Landroid/app/HtcIfKeyguardManager;
    invoke-interface {v5}, Landroid/app/HtcIfKeyguardManager;->getIdleScreenLabel()Ljava/lang/String;

    move-result-object v2

    .line 1694
    .local v2, idleScreenName:Ljava/lang/String;
    if-eqz v2, :cond_8

    .line 1695
    iput-object v2, v4, Lcom/htc/home/personalize/AddAdapter$ListItem;->summary:Ljava/lang/String;

    goto/16 :goto_1

    .line 1697
    :cond_8
    const v13, 0x7f090081

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v4, Lcom/htc/home/personalize/AddAdapter$ListItem;->summary:Ljava/lang/String;

    goto/16 :goto_1

    .line 1701
    .end local v2           #idleScreenName:Ljava/lang/String;
    .end local v5           #keyguardManager:Landroid/app/HtcIfKeyguardManager;
    :cond_9
    const-string v13, "com.htc.personalize.shortcut.chang"

    iget-object v14, v4, Lcom/htc/home/personalize/AddAdapter$ListItem;->summaryChangedAction:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 1702
    const v13, 0x7f090062

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v4, Lcom/htc/home/personalize/AddAdapter$ListItem;->summary:Ljava/lang/String;

    goto/16 :goto_1

    .line 1705
    :cond_a
    const-string v13, "com.htc.intent.ACTION_PERSONALIZE_SKIN_CHANGED"

    iget-object v14, v4, Lcom/htc/home/personalize/AddAdapter$ListItem;->summaryChangedAction:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 1706
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/home/personalize/AddAdapter;->mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;

    invoke-static {}, Lcom/htc/util/skin/HtcSkinUtil;->getAppliedSkinPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/util/skin/HtcSkinUtil;->getSkinName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v4, Lcom/htc/home/personalize/AddAdapter$ListItem;->summary:Ljava/lang/String;

    goto/16 :goto_1

    .line 1709
    :cond_b
    const-string v13, "com.htc.intent.ACTION_PERSONALIZE_ADD_WIDGET_TO_HOME_CHANGED"

    iget-object v14, v4, Lcom/htc/home/personalize/AddAdapter$ListItem;->summaryChangedAction:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 1710
    const v13, 0x7f09007d

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v4, Lcom/htc/home/personalize/AddAdapter$ListItem;->summary:Ljava/lang/String;

    goto/16 :goto_1

    .line 1713
    :cond_c
    const-string v13, "com.htc.intent.ACTION_PERSONALIZE_ADD_APP_TO_HOME_CHANGED"

    iget-object v14, v4, Lcom/htc/home/personalize/AddAdapter$ListItem;->summaryChangedAction:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 1714
    const v13, 0x7f09007e

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v4, Lcom/htc/home/personalize/AddAdapter$ListItem;->summary:Ljava/lang/String;

    goto/16 :goto_1

    .line 1717
    :cond_d
    const-string v13, "com.htc.intent.ACTION_PERSONALIZE_ADD_SHORTCUT_TO_HOME_CHANGED"

    iget-object v14, v4, Lcom/htc/home/personalize/AddAdapter$ListItem;->summaryChangedAction:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 1718
    const v13, 0x7f09007f

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v4, Lcom/htc/home/personalize/AddAdapter$ListItem;->summary:Ljava/lang/String;

    goto/16 :goto_1

    .line 1721
    :cond_e
    const-string v13, "com.htc.intent.ACTION_PERSONALIZE_ADD_FOLDER_TO_HOME_CHANGED"

    iget-object v14, v4, Lcom/htc/home/personalize/AddAdapter$ListItem;->summaryChangedAction:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 1722
    const v13, 0x7f090080

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v4, Lcom/htc/home/personalize/AddAdapter$ListItem;->summary:Ljava/lang/String;

    goto/16 :goto_1

    .line 1725
    :cond_f
    const-string v13, "com.htc.intent.ACTION_PERSONALIZE_SOUND_SET_CHANGED"

    iget-object v14, v4, Lcom/htc/home/personalize/AddAdapter$ListItem;->summaryChangedAction:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 1726
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/home/personalize/AddAdapter;->mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;

    const-string v14, "PersonalizeSummary"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/htc/home/personalize/PersonalizeMain;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 1727
    .local v6, preferences:Landroid/content/SharedPreferences;
    const-string v13, "com.htc.intent.ACTION_PERSONALIZE_SOUND_SET_CHANGED"

    const v14, 0x7f090081

    invoke-virtual {v7, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v6, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v4, Lcom/htc/home/personalize/AddAdapter$ListItem;->summary:Ljava/lang/String;

    goto/16 :goto_1

    .line 1730
    .end local v6           #preferences:Landroid/content/SharedPreferences;
    :cond_10
    const-string v13, "com.htc.intent.ACTION_PERSONALIZE_RINGTONE_CHANGED"

    iget-object v14, v4, Lcom/htc/home/personalize/AddAdapter$ListItem;->summaryChangedAction:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 1731
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/home/personalize/AddAdapter;->mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v11

    .line 1735
    .local v11, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/home/personalize/AddAdapter;->mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;

    const/4 v14, 0x1

    invoke-static {v13, v11, v14}, Lcom/htc/home/personalize/AddAdapter;->getTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v4, Lcom/htc/home/personalize/AddAdapter$ListItem;->summary:Ljava/lang/String;

    goto/16 :goto_1

    .line 1738
    .end local v11           #uri:Landroid/net/Uri;
    :cond_11
    const-string v13, "com.htc.intent.ACTION_PERSONALIZE_NOTIFICATION_SOUNDS_CHANGED"

    iget-object v14, v4, Lcom/htc/home/personalize/AddAdapter$ListItem;->summaryChangedAction:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 1739
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/home/personalize/AddAdapter;->mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;

    const/4 v14, 0x2

    invoke-static {v13, v14}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v11

    .line 1743
    .restart local v11       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/home/personalize/AddAdapter;->mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;

    const/4 v14, 0x1

    invoke-static {v13, v11, v14}, Lcom/htc/home/personalize/AddAdapter;->getTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v4, Lcom/htc/home/personalize/AddAdapter$ListItem;->summary:Ljava/lang/String;

    goto/16 :goto_1

    .line 1746
    .end local v11           #uri:Landroid/net/Uri;
    :cond_12
    const-string v13, "com.htc.intent.ACTION_PERSONALIZE_ALARM_CHANGED"

    iget-object v14, v4, Lcom/htc/home/personalize/AddAdapter$ListItem;->summaryChangedAction:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1747
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/home/personalize/AddAdapter;->mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;

    const/4 v14, 0x4

    invoke-static {v13, v14}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v11

    .line 1751
    .restart local v11       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/home/personalize/AddAdapter;->mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;

    const/4 v14, 0x1

    invoke-static {v13, v11, v14}, Lcom/htc/home/personalize/AddAdapter;->getTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v4, Lcom/htc/home/personalize/AddAdapter$ListItem;->summary:Ljava/lang/String;

    goto/16 :goto_1

    .line 1754
    .end local v4           #item:Lcom/htc/home/personalize/AddAdapter$ListItem;
    .end local v11           #uri:Landroid/net/Uri;
    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/home/personalize/AddAdapter;->maddFuncMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/home/personalize/AddAdapter$ListItem;

    .line 1755
    .restart local v4       #item:Lcom/htc/home/personalize/AddAdapter$ListItem;
    const-string v13, "com.htc.intent.ACTION_PERSONALIZE_ADD_APP_TO_HOME_CHANGED"

    iget-object v14, v4, Lcom/htc/home/personalize/AddAdapter$ListItem;->summaryChangedAction:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 1756
    const v13, 0x7f09007e

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v4, Lcom/htc/home/personalize/AddAdapter$ListItem;->summary:Ljava/lang/String;

    goto :goto_2

    .line 1758
    :cond_15
    const-string v13, "com.htc.intent.ACTION_PERSONALIZE_ADD_SHORTCUT_TO_HOME_CHANGED"

    iget-object v14, v4, Lcom/htc/home/personalize/AddAdapter$ListItem;->summaryChangedAction:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14

    .line 1759
    const v13, 0x7f09007f

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v4, Lcom/htc/home/personalize/AddAdapter$ListItem;->summary:Ljava/lang/String;

    goto :goto_2

    .line 1764
    .end local v4           #item:Lcom/htc/home/personalize/AddAdapter$ListItem;
    :cond_16
    sget-boolean v13, Lcom/htc/home/personalize/AddAdapter;->localLOGV:Z

    if-eqz v13, :cond_0

    sget-object v13, Lcom/htc/home/personalize/AddAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "update summaries takes "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v9

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ms"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
