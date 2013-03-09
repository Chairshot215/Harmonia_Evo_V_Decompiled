.class public Lcom/htc/launcher/AddAdapter;
.super Landroid/widget/BaseAdapter;
.source "AddAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/launcher/AddAdapter$ListItem;
    }
.end annotation


# static fields
.field public static final ADAPTER_ASSIGN_PROGRAM:I = 0x1fc

.field public static final ADAPTER_ASSIGN_SHORTCUT:I = 0x1fd

.field public static final ADAPTER_CHT_WIDGET:I = 0x258

.field public static final ADAPTER_COMBINED_WIDGET:I = 0x1f7

.field public static final ADAPTER_EXT_END:I = 0x2bc

.field public static final ADAPTER_EXT_START:I = 0x258

.field public static final ADAPTER_FOLDER:I = 0x1fa

.field public static final ADAPTER_HTC_SETTINGS:I = 0x1f8

.field public static final ADAPTER_LIEVE_FOLDER:I = 0x1fb

.field public static final ADAPTER_MENU:I = 0x1f4

.field public static final ADAPTER_PROGRAM:I = 0x1f5

.field public static final ADAPTER_SHORTCUT:I = 0x1f6

.field private static final CHT_IMSI:Ljava/lang/String; = "46692"

.field private static final DRM_COLUMNS:[Ljava/lang/String; = null

.field public static final EXCUTE_BOOKMARK_SHORTCUT:I = 0x194

.field public static final EXCUTE_GOOGLE_WIDGET:I = 0x191

.field public static final EXCUTE_LIVE_FOLDER:I = 0x193

.field public static final EXCUTE_PROGRAM:I = 0x192

.field public static final EXCUTE_SHORTCUT:I = 0x190

.field private static final EXTRA_APPLICATION_ID:Ljava/lang/String; = "com.android.browser.application_id"

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

.field public static final ITEM_SEPERATOR:I = 0x68

.field public static final ITEM_SETTING_GADGET:I = 0x7

.field public static final ITEM_SHORTCUT:I = 0x1

.field public static final ITEM_TITLE:I = 0xc8

.field public static final ITEM_WALLPAPER:I = 0x6

.field public static final ITEM_WIDGET:I = 0x64

.field public static final ITEM_WIDGET_ALL_HTC_PICKER:I = 0x66

.field public static final ITEM_WIDGET_DOWNLOAD_MANAGER:I = 0x65

.field private static LOG_TAG:Ljava/lang/String; = null

.field private static final MEDIA_COLUMNS:[Ljava/lang/String; = null

.field private static final VIEW_TYPE_ALL_WIDGETS:I = 0x5

.field private static final VIEW_TYPE_SEPERATOR:I = 0x0

.field private static final VIEW_TYPE_SETTING:I = 0x4

.field private static final VIEW_TYPE_WITHOUT_SUMMARY:I = 0x2

.field private static final VIEW_TYPE_WITH_RIGHT_ICON:I = 0x3

.field private static final VIEW_TYPE_WITH_SUMMARY:I = 0x1

.field static final WIDGET_DOWNLOAD_MANAGER_ACTIVITY:Ljava/lang/String; = "com.htc.wdm.activity.WidgetList"

.field static final WIDGET_DOWNLOAD_MANAGER_PACKAGE:Ljava/lang/String; = "com.htc.wdm"

.field private static localLOGV:Z

.field static mAddCHTItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/AddAdapter$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field static mAddCombinedGadgetItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/AddAdapter$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field static mAddEXTItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/AddAdapter$ListItem;",
            ">;>;"
        }
    .end annotation
.end field

.field static mAddFolderItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/AddAdapter$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field static mAddLiveFolderItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/AddAdapter$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field static mAddMenuItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/AddAdapter$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field static mAddProgramItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/AddAdapter$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field static mAddSettingsWidgetItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/AddAdapter$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field static mAddShortcutItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/AddAdapter$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field static maddFuncMenuItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/AddAdapter$ListItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mExtGroup_icon:[Landroid/graphics/drawable/Drawable;

.field mExtGroup_id:[I

.field mExtGroup_name:[Ljava/lang/String;

.field private mExtGroups:I

.field private mFxWidgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/rosie/widget/WidgetProvider$Info;",
            ">;"
        }
    .end annotation
.end field

.field private mGadgetId:I

.field private mGadgetManager:Landroid/appwidget/AppWidgetManager;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/AddAdapter$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mLauncher:Lcom/htc/launcher/Launcher;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPersonalizeSeperatorFontSize:I

.field private mShowTitleId:I

.field private mTitleStrId:[I

.field private order:I

.field private showCheckLog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 85
    sput-boolean v2, Lcom/htc/launcher/AddAdapter;->localLOGV:Z

    .line 86
    const-string v0, "Addapter"

    sput-object v0, Lcom/htc/launcher/AddAdapter;->LOG_TAG:Ljava/lang/String;

    .line 87
    const-string v0, "ItemInfo"

    sput-object v0, Lcom/htc/launcher/AddAdapter;->ITEM_INFO_LOG:Ljava/lang/String;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/launcher/AddAdapter;->mAddProgramItems:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/launcher/AddAdapter;->mAddShortcutItems:Ljava/util/ArrayList;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/launcher/AddAdapter;->mAddCombinedGadgetItems:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/launcher/AddAdapter;->mAddSettingsWidgetItems:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/launcher/AddAdapter;->mAddLiveFolderItems:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/launcher/AddAdapter;->mAddFolderItems:Ljava/util/ArrayList;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/launcher/AddAdapter;->mAddCHTItems:Ljava/util/ArrayList;

    .line 106
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/launcher/AddAdapter;->mAddEXTItems:Ljava/util/ArrayList;

    .line 2060
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/launcher/AddAdapter;->DRM_COLUMNS:[Ljava/lang/String;

    .line 2066
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/launcher/AddAdapter;->MEDIA_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/htc/launcher/Launcher;)V
    .locals 3
    .parameter "launcher"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 391
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 84
    iput-boolean v2, p0, Lcom/htc/launcher/AddAdapter;->showCheckLog:Z

    .line 168
    iput-object v0, p0, Lcom/htc/launcher/AddAdapter;->mGadgetManager:Landroid/appwidget/AppWidgetManager;

    .line 171
    iput-object v0, p0, Lcom/htc/launcher/AddAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 182
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/launcher/AddAdapter;->mTitleStrId:[I

    .line 191
    iput v2, p0, Lcom/htc/launcher/AddAdapter;->mShowTitleId:I

    .line 192
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/launcher/AddAdapter;->order:I

    .line 926
    iput v2, p0, Lcom/htc/launcher/AddAdapter;->mExtGroups:I

    .line 393
    iput-object p1, p0, Lcom/htc/launcher/AddAdapter;->mLauncher:Lcom/htc/launcher/Launcher;

    .line 395
    iget-object v0, p0, Lcom/htc/launcher/AddAdapter;->mLauncher:Lcom/htc/launcher/Launcher;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/htc/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/launcher/AddAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 398
    iget-object v0, p0, Lcom/htc/launcher/AddAdapter;->mLauncher:Lcom/htc/launcher/Launcher;

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mWidgetsManager:Lcom/htc/launcher/WidgetsManager;

    invoke-virtual {v0, p0}, Lcom/htc/launcher/WidgetsManager;->setAddAdapter(Lcom/htc/launcher/AddAdapter;)V

    .line 400
    iget-object v0, p0, Lcom/htc/launcher/AddAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/htc/launcher/AddAdapter;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/launcher/AddAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/AddAdapter;->mGadgetManager:Landroid/appwidget/AppWidgetManager;

    if-nez v0, :cond_1

    .line 407
    iget-object v0, p0, Lcom/htc/launcher/AddAdapter;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/launcher/AddAdapter;->mGadgetManager:Landroid/appwidget/AppWidgetManager;

    .line 410
    :cond_1
    invoke-direct {p0}, Lcom/htc/launcher/AddAdapter;->loadExtGroups()V

    .line 411
    invoke-direct {p0}, Lcom/htc/launcher/AddAdapter;->addMenuItems()V

    .line 412
    invoke-virtual {p0}, Lcom/htc/launcher/AddAdapter;->resetItems()V

    .line 414
    iget-object v0, p0, Lcom/htc/launcher/AddAdapter;->mTitleStrId:[I

    aget v0, v0, v2

    iput v0, p0, Lcom/htc/launcher/AddAdapter;->mShowTitleId:I

    .line 415
    sget-object v0, Lcom/htc/launcher/AddAdapter;->mAddMenuItems:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/htc/launcher/AddAdapter;->mItems:Ljava/util/ArrayList;

    .line 418
    iget-object v0, p0, Lcom/htc/launcher/AddAdapter;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/launcher/AddAdapter;->mPersonalizeSeperatorFontSize:I

    .line 419
    return-void

    .line 182
    nop

    :array_0
    .array-data 0x4
        0x22t 0x0t 0xbt 0x7ft
        0x12t 0x0t 0xbt 0x7ft
        0x13t 0x0t 0xbt 0x7ft
        0x15t 0x0t 0xbt 0x7ft
        0x17t 0x0t 0xbt 0x7ft
        0x18t 0x0t 0xbt 0x7ft
        0x16t 0x0t 0xbt 0x7ft
        0x14t 0x0t 0xbt 0x7ft
        0x61t 0x0t 0xbt 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/htc/launcher/AddAdapter;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/launcher/AddAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/htc/launcher/AddAdapter;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private addCHTItems()V
    .locals 7

    .prologue
    .line 1263
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1265
    .local v4, tempList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/launcher/AddAdapter$ListItem;>;"
    iget-object v5, p0, Lcom/htc/launcher/AddAdapter;->mLauncher:Lcom/htc/launcher/Launcher;

    iget-object v5, v5, Lcom/htc/launcher/Launcher;->mWidgetsManager:Lcom/htc/launcher/WidgetsManager;

    const/16 v6, 0x12c

    invoke-virtual {v5, v6}, Lcom/htc/launcher/WidgetsManager;->listListItems(I)[Lcom/htc/launcher/AddAdapter$ListItem;

    move-result-object v0

    .local v0, arr$:[Lcom/htc/launcher/AddAdapter$ListItem;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 1266
    .local v2, item:Lcom/htc/launcher/AddAdapter$ListItem;
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1265
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1269
    .end local v2           #item:Lcom/htc/launcher/AddAdapter$ListItem;
    :cond_0
    new-instance v5, Lcom/htc/launcher/AddAdapter$8;

    invoke-direct {v5, p0}, Lcom/htc/launcher/AddAdapter$8;-><init>(Lcom/htc/launcher/AddAdapter;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1275
    iget-object v5, p0, Lcom/htc/launcher/AddAdapter;->mLauncher:Lcom/htc/launcher/Launcher;

    new-instance v6, Lcom/htc/launcher/AddAdapter$9;

    invoke-direct {v6, p0, v4}, Lcom/htc/launcher/AddAdapter$9;-><init>(Lcom/htc/launcher/AddAdapter;Ljava/util/List;)V

    invoke-virtual {v5, v6}, Lcom/htc/launcher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1281
    return-void
.end method

.method private addCombinedGadgetItems()V
    .locals 37

    .prologue
    .line 1285
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/launcher/AddAdapter;->mTitleStrId:[I

    const/4 v7, 0x2

    aget v4, v4, v7

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/launcher/AddAdapter;->mShowTitleId:I

    .line 1286
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/launcher/AddAdapter;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-static {v4}, Lcom/htc/launcher/ApplicationManager;->instance(Landroid/content/Context;)Lcom/htc/launcher/ApplicationManager;

    move-result-object v19

    .line 1288
    .local v19, am:Lcom/htc/launcher/ApplicationManager;
    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 1289
    .local v35, tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/AddAdapter$ListItem;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/launcher/AddAdapter;->mLauncher:Lcom/htc/launcher/Launcher;

    iget-object v4, v4, Lcom/htc/launcher/Launcher;->mWidgetsManager:Lcom/htc/launcher/WidgetsManager;

    const/16 v7, 0x64

    invoke-virtual {v4, v7}, Lcom/htc/launcher/WidgetsManager;->listListItems(I)[Lcom/htc/launcher/AddAdapter$ListItem;

    move-result-object v20

    .local v20, arr$:[Lcom/htc/launcher/AddAdapter$ListItem;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v30, v0

    .local v30, len$:I
    const/16 v24, 0x0

    .local v24, i$:I
    :goto_0
    move/from16 v0, v24

    move/from16 v1, v30

    if-ge v0, v1, :cond_2

    aget-object v28, v20, v24

    .line 1290
    .local v28, item:Lcom/htc/launcher/AddAdapter$ListItem;
    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/htc/launcher/AddAdapter$ListItem;->widgetItem:Lcom/htc/launcher/WidgetItem;

    iget-object v0, v4, Lcom/htc/launcher/WidgetItem;->mPackageName:Ljava/lang/String;

    move-object/from16 v32, v0

    .line 1291
    .local v32, packageName:Ljava/lang/String;
    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/htc/launcher/AddAdapter$ListItem;->widgetItem:Lcom/htc/launcher/WidgetItem;

    iget-object v0, v4, Lcom/htc/launcher/WidgetItem;->mWidgetName:Ljava/lang/String;

    move-object/from16 v36, v0

    .line 1292
    .local v36, widgetName:Ljava/lang/String;
    sget-boolean v4, Lcom/htc/launcher/AddAdapter;->localLOGV:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/htc/launcher/AddAdapter;->ITEM_INFO_LOG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HTC Widget("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v28

    iget-object v8, v0, Lcom/htc/launcher/AddAdapter$ListItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "), "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    :cond_0
    const/4 v4, 0x4

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2, v4}, Lcom/htc/launcher/ApplicationManager;->inHideCustomizationList(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1289
    :goto_1
    add-int/lit8 v24, v24, 0x1

    goto :goto_0

    .line 1296
    :cond_1
    const/4 v4, 0x4

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2, v4}, Lcom/htc/launcher/ApplicationManager;->getCustomizationListPriority(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    move-object/from16 v0, v28

    iput v4, v0, Lcom/htc/launcher/AddAdapter$ListItem;->priority:I

    .line 1298
    move-object/from16 v0, v35

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1301
    .end local v28           #item:Lcom/htc/launcher/AddAdapter$ListItem;
    .end local v32           #packageName:Ljava/lang/String;
    .end local v36           #widgetName:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/launcher/AddAdapter;->mFxWidgets:Ljava/util/List;

    if-eqz v4, :cond_5

    .line 1302
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/launcher/AddAdapter;->mFxWidgets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/htc/android/rosie/widget/WidgetProvider$Info;

    .line 1303
    .local v28, item:Lcom/htc/android/rosie/widget/WidgetProvider$Info;
    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/htc/android/rosie/widget/WidgetProvider$Info;->category:Ljava/lang/String;

    const-string v7, "default"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1304
    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/htc/android/rosie/widget/WidgetProvider$Info;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v32

    .line 1305
    .restart local v32       #packageName:Ljava/lang/String;
    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/htc/android/rosie/widget/WidgetProvider$Info;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v22

    .line 1306
    .local v22, className:Ljava/lang/String;
    sget-boolean v4, Lcom/htc/launcher/AddAdapter;->localLOGV:Z

    if-eqz v4, :cond_4

    sget-object v4, Lcom/htc/launcher/AddAdapter;->ITEM_INFO_LOG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FxWidget("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v28

    iget-object v8, v0, Lcom/htc/android/rosie/widget/WidgetProvider$Info;->label:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "), "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    :cond_4
    const/4 v4, 0x5

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v4}, Lcom/htc/launcher/ApplicationManager;->inHideCustomizationList(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1310
    new-instance v31, Lcom/htc/launcher/AddAdapter$ListItem;

    const/16 v4, 0x6a

    const/4 v7, 0x5

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2, v4, v7}, Lcom/htc/launcher/AddAdapter$ListItem;-><init>(Lcom/htc/launcher/AddAdapter;Lcom/htc/android/rosie/widget/WidgetProvider$Info;II)V

    .line 1311
    .local v31, listItem:Lcom/htc/launcher/AddAdapter$ListItem;
    const/4 v4, 0x5

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v4}, Lcom/htc/launcher/ApplicationManager;->getCustomizationListPriority(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    move-object/from16 v0, v31

    iput v4, v0, Lcom/htc/launcher/AddAdapter$ListItem;->priority:I

    .line 1313
    const/4 v4, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v31

    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 1320
    .end local v22           #className:Ljava/lang/String;
    .end local v24           #i$:Ljava/util/Iterator;
    .end local v28           #item:Lcom/htc/android/rosie/widget/WidgetProvider$Info;
    .end local v31           #listItem:Lcom/htc/launcher/AddAdapter$ListItem;
    .end local v32           #packageName:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/launcher/AddAdapter;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v4}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1321
    .local v5, res:Landroid/content/res/Resources;
    new-instance v3, Lcom/htc/launcher/AddAdapter$ListItem;

    const v6, 0x20c0200

    const v7, 0x2080154

    const/4 v8, -0x1

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/htc/launcher/AddAdapter$ListItem;-><init>(Lcom/htc/launcher/AddAdapter;Landroid/content/res/Resources;III)V

    .line 1322
    .local v3, settingsItem:Lcom/htc/launcher/AddAdapter$ListItem;
    const/16 v4, 0x1f8

    iput v4, v3, Lcom/htc/launcher/AddAdapter$ListItem;->mNextAdapter:I

    .line 1323
    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1326
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/launcher/AddAdapter;->mGadgetManager:Landroid/appwidget/AppWidgetManager;

    if-nez v4, :cond_6

    .line 1328
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/launcher/AddAdapter;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-static {v4}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/launcher/AddAdapter;->mGadgetManager:Landroid/appwidget/AppWidgetManager;

    .line 1331
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/launcher/AddAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v4, :cond_7

    .line 1333
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/launcher/AddAdapter;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v4}, Lcom/htc/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/launcher/AddAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1336
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/AddAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v33, v0

    .line 1337
    .local v33, pm:Landroid/content/pm/PackageManager;
    new-instance v27, Landroid/content/Intent;

    const-string v4, "android.appwidget.action.APPWIDGET_UPDATE"

    move-object/from16 v0, v27

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1338
    .local v27, intent:Landroid/content/Intent;
    const/16 v4, 0x80

    move-object/from16 v0, v33

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v21

    .line 1341
    .local v21, broadcastReceivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v18

    .line 1343
    .local v18, N1:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/launcher/AddAdapter;->mGadgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v4}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v26

    .line 1344
    .local v26, installed:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v17

    .line 1346
    .local v17, N:I
    const/16 v23, 0x0

    .local v23, i:I
    :goto_3
    move/from16 v0, v23

    move/from16 v1, v17

    if-ge v0, v1, :cond_d

    .line 1347
    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/appwidget/AppWidgetProviderInfo;

    .line 1348
    .local v25, info:Landroid/appwidget/AppWidgetProviderInfo;
    move-object/from16 v0, v25

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v32

    .line 1349
    .restart local v32       #packageName:Ljava/lang/String;
    move-object/from16 v0, v25

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v22

    .line 1350
    .restart local v22       #className:Ljava/lang/String;
    sget-boolean v4, Lcom/htc/launcher/AddAdapter;->localLOGV:Z

    if-eqz v4, :cond_8

    sget-object v4, Lcom/htc/launcher/AddAdapter;->ITEM_INFO_LOG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "App Widget("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v25

    iget-object v8, v0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "), "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    :cond_8
    const/4 v4, 0x2

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v4}, Lcom/htc/launcher/ApplicationManager;->inHideCustomizationList(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1346
    :goto_4
    add-int/lit8 v23, v23, 0x1

    goto :goto_3

    .line 1354
    :cond_9
    move-object/from16 v0, v25

    iget-object v9, v0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 1356
    .local v9, name:Ljava/lang/String;
    const/16 v29, 0x0

    .local v29, j:I
    :goto_5
    move/from16 v0, v29

    move/from16 v1, v18

    if-ge v0, v1, :cond_a

    .line 1358
    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/pm/ResolveInfo;

    .line 1359
    .local v34, ri:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v34

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v7, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    move-object/from16 v0, v34

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v7, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1362
    move-object/from16 v0, v34

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/launcher/AddAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v7}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1367
    .end local v34           #ri:Landroid/content/pm/ResolveInfo;
    :cond_a
    const/4 v10, 0x0

    .line 1368
    .local v10, icon:Landroid/graphics/drawable/Drawable;
    sget-object v4, Lcom/htc/launcher/AddAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "info.icon:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v25

    iget v8, v0, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    move-object/from16 v0, v25

    iget v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    if-eqz v4, :cond_b

    .line 1370
    move-object/from16 v0, v25

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    iget v7, v0, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    const/4 v8, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v7, v8}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 1371
    if-nez v10, :cond_b

    .line 1372
    sget-object v4, Lcom/htc/launcher/AddAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t load icon drawable 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v25

    iget v8, v0, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for provider: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v25

    iget-object v8, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    :cond_b
    new-instance v6, Lcom/htc/launcher/AddAdapter$ListItem;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/launcher/AddAdapter;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v4}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/16 v11, 0x191

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/htc/launcher/AddAdapter$ListItem;-><init>(Lcom/htc/launcher/AddAdapter;Landroid/content/res/Resources;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 1377
    .local v6, listitem:Lcom/htc/launcher/AddAdapter$ListItem;
    const/4 v4, 0x2

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v4}, Lcom/htc/launcher/ApplicationManager;->getCustomizationListPriority(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, v6, Lcom/htc/launcher/AddAdapter$ListItem;->priority:I

    .line 1380
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/launcher/AddAdapter;->mGadgetId:I

    iput v4, v6, Lcom/htc/launcher/AddAdapter$ListItem;->GadgetId:I

    .line 1381
    move-object/from16 v0, v25

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iput-object v4, v6, Lcom/htc/launcher/AddAdapter$ListItem;->mComponent:Landroid/content/ComponentName;

    .line 1382
    move-object/from16 v0, v25

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/htc/launcher/AddAdapter$ListItem;->packageName:Ljava/lang/String;

    .line 1383
    move-object/from16 v0, v25

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/htc/launcher/AddAdapter$ListItem;->className:Ljava/lang/String;

    .line 1385
    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1356
    .end local v6           #listitem:Lcom/htc/launcher/AddAdapter$ListItem;
    .end local v10           #icon:Landroid/graphics/drawable/Drawable;
    .restart local v34       #ri:Landroid/content/pm/ResolveInfo;
    :cond_c
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_5

    .line 1389
    .end local v9           #name:Ljava/lang/String;
    .end local v22           #className:Ljava/lang/String;
    .end local v25           #info:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v29           #j:I
    .end local v32           #packageName:Ljava/lang/String;
    .end local v34           #ri:Landroid/content/pm/ResolveInfo;
    :cond_d
    new-instance v4, Lcom/htc/launcher/AddAdapter$10;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/htc/launcher/AddAdapter$10;-><init>(Lcom/htc/launcher/AddAdapter;)V

    move-object/from16 v0, v35

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1403
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v7, 0x9

    if-eq v4, v7, :cond_e

    .line 1404
    const/4 v4, 0x0

    new-instance v11, Lcom/htc/launcher/AddAdapter$ListItem;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/launcher/AddAdapter;->mLauncher:Lcom/htc/launcher/Launcher;

    const v8, 0x7f0b0074

    invoke-virtual {v7, v8}, Lcom/htc/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/launcher/AddAdapter;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v7}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020065

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    const/16 v15, 0x66

    const/high16 v16, -0x8000

    move-object/from16 v12, p0

    invoke-direct/range {v11 .. v16}, Lcom/htc/launcher/AddAdapter$ListItem;-><init>(Lcom/htc/launcher/AddAdapter;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;II)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1430
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/launcher/AddAdapter;->mLauncher:Lcom/htc/launcher/Launcher;

    new-instance v7, Lcom/htc/launcher/AddAdapter$11;

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v7, v0, v1}, Lcom/htc/launcher/AddAdapter$11;-><init>(Lcom/htc/launcher/AddAdapter;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v7}, Lcom/htc/launcher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1437
    return-void
.end method

.method private addEXTItems()V
    .locals 58

    .prologue
    .line 976
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/launcher/AddAdapter;->mExtGroups:I

    if-gtz v3, :cond_1

    .line 1259
    :cond_0
    return-void

    .line 979
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/AddAdapter;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v3}, Lcom/htc/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/launcher/WidgetPackageManager;->getModuleBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v46

    .line 980
    .local v46, moduleBundle:Landroid/os/Bundle;
    const-string v42, "ext_items"

    .line 983
    .local v42, key:Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/launcher/AddAdapter;->mExtGroups:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v3, Lcom/htc/launcher/AddAdapter;->mAddEXTItems:Ljava/util/ArrayList;

    .line 984
    const/16 v34, 0x0

    .local v34, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/launcher/AddAdapter;->mExtGroups:I

    move/from16 v0, v34

    if-ge v0, v3, :cond_2

    .line 985
    sget-object v3, Lcom/htc/launcher/AddAdapter;->mAddEXTItems:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 984
    add-int/lit8 v34, v34, 0x1

    goto :goto_0

    .line 989
    :cond_2
    move-object/from16 v0, v46

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v27

    .line 990
    .local v27, extBundle:Landroid/os/Bundle;
    if-eqz v27, :cond_0

    .line 991
    invoke-virtual/range {v27 .. v27}, Landroid/os/Bundle;->size()I

    move-result v44

    .line 994
    .local v44, mExtItemsSize:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/AddAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v3, :cond_3

    .line 995
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/AddAdapter;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v3}, Lcom/htc/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/launcher/AddAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 997
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/AddAdapter;->mGadgetManager:Landroid/appwidget/AppWidgetManager;

    if-nez v3, :cond_4

    .line 998
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/AddAdapter;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-static {v3}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/launcher/AddAdapter;->mGadgetManager:Landroid/appwidget/AppWidgetManager;

    .line 1000
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/AddAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v49, v0

    .line 1001
    .local v49, pm:Landroid/content/pm/PackageManager;
    new-instance v38, Landroid/content/Intent;

    const-string v3, "android.appwidget.action.APPWIDGET_UPDATE"

    move-object/from16 v0, v38

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1002
    .local v38, intent:Landroid/content/Intent;
    const/16 v3, 0x80

    move-object/from16 v0, v49

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v21

    .line 1005
    .local v21, broadcastReceivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v14

    .line 1007
    .local v14, N1:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/AddAdapter;->mGadgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v3}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v16

    .line 1008
    .local v16, appWidgetList:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/AddAdapter;->mLauncher:Lcom/htc/launcher/Launcher;

    iget-object v3, v3, Lcom/htc/launcher/Launcher;->mWidgetsManager:Lcom/htc/launcher/WidgetsManager;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Lcom/htc/launcher/WidgetsManager;->listListItems(I)[Lcom/htc/launcher/AddAdapter$ListItem;

    move-result-object v33

    .line 1009
    .local v33, htcWidgetList:[Lcom/htc/launcher/AddAdapter$ListItem;
    new-instance v53, Landroid/content/Intent;

    const-string v3, "android.intent.action.CREATE_SHORTCUT"

    move-object/from16 v0, v53

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1010
    .local v53, shortcutIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/AddAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    move-object/from16 v0, v53

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v54

    .line 1011
    .local v54, shortcutList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v45, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    move-object/from16 v0, v45

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1012
    .local v45, mainIntent:Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1013
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/AddAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    move-object/from16 v0, v45

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v19

    .line 1014
    .local v19, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/16 v40, 0x0

    .local v40, j:I
    :goto_1
    move/from16 v0, v40

    move/from16 v1, v44

    if-ge v0, v1, :cond_24

    .line 1015
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "plenty_set"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v40, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    .line 1016
    move-object/from16 v0, v27

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v22

    .line 1017
    .local v22, childBundle:Landroid/os/Bundle;
    const-string v3, "itemtype"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 1023
    .local v39, itemtype:Ljava/lang/String;
    const-string v3, "group_id"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    .line 1014
    :cond_5
    :goto_2
    add-int/lit8 v40, v40, 0x1

    goto :goto_1

    .line 1025
    :cond_6
    const-string v3, "group_id"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    .line 1026
    .local v30, group_id:I
    const/16 v31, 0x0

    .line 1027
    .local v31, group_index:I
    :goto_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/launcher/AddAdapter;->mExtGroups:I

    move/from16 v0, v31

    if-ge v0, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/AddAdapter;->mExtGroup_id:[I

    aget v3, v3, v31

    move/from16 v0, v30

    if-eq v3, v0, :cond_7

    .line 1028
    add-int/lit8 v31, v31, 0x1

    goto :goto_3

    .line 1029
    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/launcher/AddAdapter;->mExtGroups:I

    move/from16 v0, v31

    if-eq v0, v3, :cond_5

    .line 1032
    sget-object v3, Lcom/htc/launcher/AddAdapter;->mAddEXTItems:Ljava/util/ArrayList;

    move/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/util/ArrayList;

    .line 1033
    .local v29, group:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/AddAdapter$ListItem;>;"
    const-string v3, "2"

    move-object/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1035
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v13

    .line 1036
    .local v13, N:I
    const-string v3, "package"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 1037
    .local v48, package_name:Ljava/lang/String;
    const/16 v34, 0x0

    :goto_4
    move/from16 v0, v34

    if-ge v0, v13, :cond_f

    .line 1038
    move-object/from16 v0, v16

    move/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/appwidget/AppWidgetProviderInfo;

    .line 1039
    .local v37, info:Landroid/appwidget/AppWidgetProviderInfo;
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v17

    .line 1040
    .local v17, appWidgetPackageName:Ljava/lang/String;
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v15

    .line 1041
    .local v15, appWidgetClassName:Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1042
    const-string v3, "class"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1043
    .local v24, class_name:Ljava/lang/String;
    if-eqz v24, :cond_8

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1045
    :cond_8
    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 1047
    .local v5, name:Ljava/lang/String;
    const/16 v41, 0x0

    .local v41, k:I
    :goto_5
    move/from16 v0, v41

    if-ge v0, v14, :cond_9

    .line 1048
    move-object/from16 v0, v21

    move/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Landroid/content/pm/ResolveInfo;

    .line 1049
    .local v52, ri:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v52

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v37

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    move-object/from16 v0, v52

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v37

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1052
    move-object/from16 v0, v52

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/launcher/AddAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1057
    .end local v52           #ri:Landroid/content/pm/ResolveInfo;
    :cond_9
    const/4 v6, 0x0

    .line 1058
    .local v6, icon:Landroid/graphics/drawable/Drawable;
    sget-object v3, Lcom/htc/launcher/AddAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "info.icon:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget v8, v0, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    move-object/from16 v0, v37

    iget v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    if-eqz v3, :cond_a

    .line 1060
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v37

    iget v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    const/4 v8, 0x0

    move-object/from16 v0, v49

    invoke-virtual {v0, v3, v4, v8}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1061
    if-nez v6, :cond_a

    .line 1062
    sget-object v3, Lcom/htc/launcher/AddAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t load icon drawable 0x"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget v8, v0, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " for provider: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v8, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    :cond_a
    new-instance v2, Lcom/htc/launcher/AddAdapter$ListItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/AddAdapter;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v3}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/16 v7, 0x191

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/htc/launcher/AddAdapter$ListItem;-><init>(Lcom/htc/launcher/AddAdapter;Landroid/content/res/Resources;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 1068
    .local v2, listitem:Lcom/htc/launcher/AddAdapter$ListItem;
    const-string v3, "priority"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1069
    .local v12, priority:Ljava/lang/String;
    if-nez v12, :cond_e

    .line 1070
    const/16 v3, 0xc8

    iput v3, v2, Lcom/htc/launcher/AddAdapter$ListItem;->priority:I

    .line 1074
    :goto_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/launcher/AddAdapter;->mGadgetId:I

    iput v3, v2, Lcom/htc/launcher/AddAdapter$ListItem;->GadgetId:I

    .line 1075
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iput-object v3, v2, Lcom/htc/launcher/AddAdapter$ListItem;->mComponent:Landroid/content/ComponentName;

    .line 1076
    move-object/from16 v0, v17

    iput-object v0, v2, Lcom/htc/launcher/AddAdapter$ListItem;->packageName:Ljava/lang/String;

    .line 1077
    iput-object v15, v2, Lcom/htc/launcher/AddAdapter$ListItem;->className:Ljava/lang/String;

    .line 1078
    const-string v3, "show"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v55

    .line 1079
    .local v55, showCondition:Ljava/lang/String;
    const-string v3, "hide"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 1081
    .local v32, hideCondition:Ljava/lang/String;
    sget-boolean v3, Lcom/htc/launcher/AddAdapter;->localLOGV:Z

    if-eqz v3, :cond_b

    .line 1082
    sget-object v3, Lcom/htc/launcher/AddAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Order > "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/launcher/AddAdapter;->order:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    sget-object v3, Lcom/htc/launcher/AddAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cust_ATH_ExtraItems:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/launcher/AddAdapter;->order:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "_pkg > "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    sget-object v3, Lcom/htc/launcher/AddAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cust_ATH_ExtraItems:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/launcher/AddAdapter;->order:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "_widget > "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    sget-object v3, Lcom/htc/launcher/AddAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cust_ATH_ExtraItems:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/launcher/AddAdapter;->order:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "_Group_ID > "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    sget-object v3, Lcom/htc/launcher/AddAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cust_ATH_ExtraItems:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/launcher/AddAdapter;->order:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "_Show > "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v55

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    sget-object v3, Lcom/htc/launcher/AddAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cust_ATH_ExtraItems:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/launcher/AddAdapter;->order:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "_Hide > "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    sget-object v3, Lcom/htc/launcher/AddAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cust_ATH_ExtraItems:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/launcher/AddAdapter;->order:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "_ItemType > "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    :cond_b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/launcher/AddAdapter;->order:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/launcher/AddAdapter;->order:I

    .line 1091
    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1037
    .end local v2           #listitem:Lcom/htc/launcher/AddAdapter$ListItem;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #icon:Landroid/graphics/drawable/Drawable;
    .end local v12           #priority:Ljava/lang/String;
    .end local v24           #class_name:Ljava/lang/String;
    .end local v32           #hideCondition:Ljava/lang/String;
    .end local v41           #k:I
    .end local v55           #showCondition:Ljava/lang/String;
    :cond_c
    add-int/lit8 v34, v34, 0x1

    goto/16 :goto_4

    .line 1047
    .restart local v5       #name:Ljava/lang/String;
    .restart local v24       #class_name:Ljava/lang/String;
    .restart local v41       #k:I
    .restart local v52       #ri:Landroid/content/pm/ResolveInfo;
    :cond_d
    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_5

    .line 1072
    .end local v52           #ri:Landroid/content/pm/ResolveInfo;
    .restart local v2       #listitem:Lcom/htc/launcher/AddAdapter$ListItem;
    .restart local v6       #icon:Landroid/graphics/drawable/Drawable;
    .restart local v12       #priority:Ljava/lang/String;
    :cond_e
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/htc/launcher/AddAdapter$ListItem;->priority:I

    goto/16 :goto_6

    .line 1097
    .end local v2           #listitem:Lcom/htc/launcher/AddAdapter$ListItem;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #icon:Landroid/graphics/drawable/Drawable;
    .end local v12           #priority:Ljava/lang/String;
    .end local v15           #appWidgetClassName:Ljava/lang/String;
    .end local v17           #appWidgetPackageName:Ljava/lang/String;
    .end local v24           #class_name:Ljava/lang/String;
    .end local v37           #info:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v41           #k:I
    :cond_f
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/launcher/AddAdapter;->order:I

    goto/16 :goto_2

    .line 1098
    .end local v13           #N:I
    .end local v48           #package_name:Ljava/lang/String;
    :cond_10
    const-string v3, "1"

    move-object/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1099
    const-string v3, "package_name"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 1100
    .restart local v48       #package_name:Ljava/lang/String;
    const-string v3, "widget_name"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    .line 1101
    .local v57, widget_name:Ljava/lang/String;
    const-string v3, "show"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v55

    .line 1102
    .restart local v55       #showCondition:Ljava/lang/String;
    const-string v3, "hide"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 1103
    .restart local v32       #hideCondition:Ljava/lang/String;
    move-object/from16 v20, v33

    .local v20, arr$:[Lcom/htc/launcher/AddAdapter$ListItem;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v43, v0

    .local v43, len$:I
    const/16 v35, 0x0

    .local v35, i$:I
    :goto_7
    move/from16 v0, v35

    move/from16 v1, v43

    if-ge v0, v1, :cond_12

    aget-object v7, v20, v35

    .line 1104
    .local v7, item:Lcom/htc/launcher/AddAdapter$ListItem;
    iget-object v3, v7, Lcom/htc/launcher/AddAdapter$ListItem;->widgetItem:Lcom/htc/launcher/WidgetItem;

    iget-object v3, v3, Lcom/htc/launcher/WidgetItem;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v48

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    iget-object v3, v7, Lcom/htc/launcher/AddAdapter$ListItem;->widgetItem:Lcom/htc/launcher/WidgetItem;

    iget-object v3, v3, Lcom/htc/launcher/WidgetItem;->mWidgetName:Ljava/lang/String;

    move-object/from16 v0, v57

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1107
    const-string v3, "priority"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1108
    .restart local v12       #priority:Ljava/lang/String;
    if-nez v12, :cond_13

    .line 1109
    const/16 v3, 0xc8

    iput v3, v7, Lcom/htc/launcher/AddAdapter$ListItem;->priority:I

    .line 1113
    :goto_8
    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1114
    sget-boolean v3, Lcom/htc/launcher/AddAdapter;->localLOGV:Z

    if-eqz v3, :cond_11

    .line 1115
    sget-object v3, Lcom/htc/launcher/AddAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Order > "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/launcher/AddAdapter;->order:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    sget-object v3, Lcom/htc/launcher/AddAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cust_ATH_ExtraItems_HTCWidget:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/launcher/AddAdapter;->order:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "_pkg > "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    sget-object v3, Lcom/htc/launcher/AddAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cust_ATH_ExtraItems_HTCWidget:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/launcher/AddAdapter;->order:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "_widget > "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v57

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    sget-object v3, Lcom/htc/launcher/AddAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cust_ATH_ExtraItems_HTCWidget:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/launcher/AddAdapter;->order:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "_Group_ID > "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    sget-object v3, Lcom/htc/launcher/AddAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cust_ATH_ExtraItems_HTCWidget:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/launcher/AddAdapter;->order:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "_Show > "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v55

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    sget-object v3, Lcom/htc/launcher/AddAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cust_ATH_ExtraItems_HTCWidget:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/launcher/AddAdapter;->order:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "_Hide > "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    sget-object v3, Lcom/htc/launcher/AddAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cust_ATH_ExtraItems_HTCWidget:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/launcher/AddAdapter;->order:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "_ItemType > "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, v7, Lcom/htc/launcher/AddAdapter$ListItem;->widgetItem:Lcom/htc/launcher/WidgetItem;

    iget v8, v8, Lcom/htc/launcher/WidgetItem;->mItemType:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    :cond_11
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/launcher/AddAdapter;->order:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/launcher/AddAdapter;->order:I

    .line 1128
    .end local v7           #item:Lcom/htc/launcher/AddAdapter$ListItem;
    .end local v12           #priority:Ljava/lang/String;
    :cond_12
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/launcher/AddAdapter;->order:I

    goto/16 :goto_2

    .line 1111
    .restart local v7       #item:Lcom/htc/launcher/AddAdapter$ListItem;
    .restart local v12       #priority:Ljava/lang/String;
    :cond_13
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v7, Lcom/htc/launcher/AddAdapter$ListItem;->priority:I

    goto/16 :goto_8

    .line 1103
    .end local v12           #priority:Ljava/lang/String;
    :cond_14
    add-int/lit8 v35, v35, 0x1

    goto/16 :goto_7

    .line 1129
    .end local v7           #item:Lcom/htc/launcher/AddAdapter$ListItem;
    .end local v20           #arr$:[Lcom/htc/launcher/AddAdapter$ListItem;
    .end local v32           #hideCondition:Ljava/lang/String;
    .end local v35           #i$:I
    .end local v43           #len$:I
    .end local v48           #package_name:Ljava/lang/String;
    .end local v55           #showCondition:Ljava/lang/String;
    .end local v57           #widget_name:Ljava/lang/String;
    :cond_15
    const-string v3, "4"

    move-object/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1131
    const-string v3, "url"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    .line 1132
    .local v56, url:Ljava/lang/String;
    const-string v3, "name"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1133
    .local v9, title:Ljava/lang/String;
    const-string v3, "icon"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 1134
    .local v36, iconName:Ljava/lang/String;
    const-string v3, "priority"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 1135
    .local v50, priorityText:Ljava/lang/String;
    sget-boolean v3, Lcom/htc/launcher/AddAdapter;->localLOGV:Z

    if-eqz v3, :cond_16

    .line 1136
    sget-object v3, Lcom/htc/launcher/AddAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cust_ATH_ExtraItems_BookmarkShortcut:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/launcher/AddAdapter;->order:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "_URL> "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v56

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    sget-object v3, Lcom/htc/launcher/AddAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cust_ATH_ExtraItems_BookmarkShortcut:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/launcher/AddAdapter;->order:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "_Name> "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    sget-object v3, Lcom/htc/launcher/AddAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cust_ATH_ExtraItems_BookmarkShortcut:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/launcher/AddAdapter;->order:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "_Icon> "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    sget-object v3, Lcom/htc/launcher/AddAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cust_ATH_ExtraItems_BookmarkShortcut:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/launcher/AddAdapter;->order:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "_Group_ID> "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    sget-object v3, Lcom/htc/launcher/AddAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cust_ATH_ExtraItems_BookmarkShortcut:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/launcher/AddAdapter;->order:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "_Priority> "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v50

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    :cond_16
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/launcher/AddAdapter;->order:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/launcher/AddAdapter;->order:I

    .line 1146
    if-nez v50, :cond_17

    .line 1147
    const/16 v12, 0xc8

    .line 1151
    .local v12, priority:I
    :goto_9
    if-eqz v36, :cond_18

    .line 1152
    invoke-static/range {v36 .. v36}, Lcom/htc/launcher/WidgetPackageManager;->manipulateResourcePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1153
    .local v28, gIconFilePath:Ljava/lang/String;
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/AddAdapter;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v3}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-direct {v6, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 1157
    .local v6, icon:Landroid/graphics/drawable/BitmapDrawable;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/AddAdapter;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v3}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 1164
    .end local v28           #gIconFilePath:Ljava/lang/String;
    :goto_a
    new-instance v7, Lcom/htc/launcher/AddAdapter$ListItem;

    const/16 v11, 0x194

    move-object/from16 v8, p0

    move-object v10, v6

    invoke-direct/range {v7 .. v12}, Lcom/htc/launcher/AddAdapter$ListItem;-><init>(Lcom/htc/launcher/AddAdapter;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;II)V

    .line 1165
    .restart local v7       #item:Lcom/htc/launcher/AddAdapter$ListItem;
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v1, v9, v3, v4}, Lcom/htc/launcher/AddAdapter;->createShortcutIntent(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/content/Intent;

    move-result-object v3

    iput-object v3, v7, Lcom/htc/launcher/AddAdapter$ListItem;->intent:Landroid/content/Intent;

    .line 1167
    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1149
    .end local v6           #icon:Landroid/graphics/drawable/BitmapDrawable;
    .end local v7           #item:Lcom/htc/launcher/AddAdapter$ListItem;
    .end local v12           #priority:I
    :cond_17
    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .restart local v12       #priority:I
    goto :goto_9

    .line 1159
    :cond_18
    sget-object v3, Lcom/htc/launcher/AddAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot get bookmark icon path of bookmark("

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ") from customize bundle."

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    const/4 v6, 0x0

    .restart local v6       #icon:Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_a

    .line 1169
    .end local v6           #icon:Landroid/graphics/drawable/BitmapDrawable;
    .end local v9           #title:Ljava/lang/String;
    .end local v12           #priority:I
    .end local v36           #iconName:Ljava/lang/String;
    .end local v50           #priorityText:Ljava/lang/String;
    .end local v56           #url:Ljava/lang/String;
    :cond_19
    const-string v3, "package"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 1172
    .local v47, packageName:Ljava/lang/String;
    invoke-interface/range {v54 .. v54}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v35

    .local v35, i$:Ljava/util/Iterator;
    :cond_1a
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Landroid/content/pm/ResolveInfo;

    .line 1174
    .local v51, resolveInfo:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v51

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v47

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1175
    const-string v3, "class"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1177
    .local v23, className:Ljava/lang/String;
    if-eqz v23, :cond_1b

    move-object/from16 v0, v51

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1180
    :cond_1b
    const-string v3, "priority"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1181
    .local v12, priority:Ljava/lang/String;
    if-nez v12, :cond_22

    .line 1182
    const/16 v3, 0xc8

    move-object/from16 v0, v51

    iput v3, v0, Landroid/content/pm/ResolveInfo;->priority:I

    .line 1186
    :goto_b
    sget-boolean v3, Lcom/htc/launcher/AddAdapter;->localLOGV:Z

    if-eqz v3, :cond_1c

    .line 1187
    sget-object v3, Lcom/htc/launcher/AddAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cust_ATH_ExtraItems: AP Name> "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    sget-object v3, Lcom/htc/launcher/AddAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cust_ATH_ExtraItems: Class Name> "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    sget-object v3, Lcom/htc/launcher/AddAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cust_ATH_ExtraItems: Priority> "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v51

    iget v8, v0, Landroid/content/pm/ResolveInfo;->priority:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    :cond_1c
    new-instance v3, Lcom/htc/launcher/AddAdapter$ListItem;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/launcher/AddAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v8, 0x190

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v3, v0, v4, v1, v8}, Lcom/htc/launcher/AddAdapter$ListItem;-><init>(Lcom/htc/launcher/AddAdapter;Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;I)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1197
    .end local v12           #priority:Ljava/lang/String;
    .end local v23           #className:Ljava/lang/String;
    .end local v51           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_1d
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v35

    :cond_1e
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/content/pm/ResolveInfo;

    .line 1198
    .local v37, info:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v47

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1199
    const-string v3, "class"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1201
    .restart local v23       #className:Ljava/lang/String;
    if-eqz v23, :cond_1f

    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1205
    :cond_1f
    new-instance v25, Landroid/content/ComponentName;

    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v37

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    .local v25, componentName:Landroid/content/ComponentName;
    new-instance v18, Lcom/htc/launcher/ApplicationInfo;

    invoke-direct/range {v18 .. v18}, Lcom/htc/launcher/ApplicationInfo;-><init>()V

    .line 1209
    .local v18, application:Lcom/htc/launcher/ApplicationInfo;
    const/high16 v3, 0x1020

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v3}, Lcom/htc/launcher/ApplicationInfo;->setActivity(Landroid/content/ComponentName;I)V

    .line 1210
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/AddAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, v18

    iput-object v3, v0, Lcom/htc/launcher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    .line 1211
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/htc/launcher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    if-nez v3, :cond_20

    .line 1212
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v18

    iput-object v3, v0, Lcom/htc/launcher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    .line 1215
    :cond_20
    :try_start_0
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v49

    invoke-static {v0, v3}, Lcom/htc/launcher/ResourceUtil;->getApplicationIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, v18

    iput-object v3, v0, Lcom/htc/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1221
    :goto_c
    const-string v3, "priority"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1222
    .restart local v12       #priority:Ljava/lang/String;
    if-nez v12, :cond_23

    .line 1223
    const/16 v3, 0xc8

    move-object/from16 v0, v18

    iput v3, v0, Lcom/htc/launcher/ApplicationInfo;->priority:I

    .line 1227
    :goto_d
    sget-boolean v3, Lcom/htc/launcher/AddAdapter;->localLOGV:Z

    if-eqz v3, :cond_21

    .line 1228
    sget-object v3, Lcom/htc/launcher/AddAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cust_ATH_ExtraItems: AP Name> "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    sget-object v3, Lcom/htc/launcher/AddAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cust_ATH_ExtraItems: Class Name> "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    sget-object v3, Lcom/htc/launcher/AddAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cust_ATH_ExtraItems: Priority> "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    iget v8, v0, Lcom/htc/launcher/ApplicationInfo;->priority:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    :cond_21
    new-instance v3, Lcom/htc/launcher/AddAdapter$ListItem;

    const/16 v4, 0x192

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v3, v0, v1, v4}, Lcom/htc/launcher/AddAdapter$ListItem;-><init>(Lcom/htc/launcher/AddAdapter;Lcom/htc/launcher/ApplicationInfo;I)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1184
    .end local v18           #application:Lcom/htc/launcher/ApplicationInfo;
    .end local v25           #componentName:Landroid/content/ComponentName;
    .end local v37           #info:Landroid/content/pm/ResolveInfo;
    .restart local v51       #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_22
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v51

    iput v3, v0, Landroid/content/pm/ResolveInfo;->priority:I

    goto/16 :goto_b

    .line 1216
    .end local v12           #priority:Ljava/lang/String;
    .end local v51           #resolveInfo:Landroid/content/pm/ResolveInfo;
    .restart local v18       #application:Lcom/htc/launcher/ApplicationInfo;
    .restart local v25       #componentName:Landroid/content/ComponentName;
    .restart local v37       #info:Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v26

    .line 1217
    .local v26, ex:Landroid/content/res/Resources$NotFoundException;
    sget-object v3, Lcom/htc/launcher/AddAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v4, "AddAdapter.addEXTItems() - icon not found."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 1225
    .end local v26           #ex:Landroid/content/res/Resources$NotFoundException;
    .restart local v12       #priority:Ljava/lang/String;
    :cond_23
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    iput v3, v0, Lcom/htc/launcher/ApplicationInfo;->priority:I

    goto/16 :goto_d

    .line 1239
    .end local v12           #priority:Ljava/lang/String;
    .end local v18           #application:Lcom/htc/launcher/ApplicationInfo;
    .end local v22           #childBundle:Landroid/os/Bundle;
    .end local v23           #className:Ljava/lang/String;
    .end local v25           #componentName:Landroid/content/ComponentName;
    .end local v29           #group:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/AddAdapter$ListItem;>;"
    .end local v30           #group_id:I
    .end local v31           #group_index:I
    .end local v35           #i$:Ljava/util/Iterator;
    .end local v37           #info:Landroid/content/pm/ResolveInfo;
    .end local v39           #itemtype:Ljava/lang/String;
    .end local v47           #packageName:Ljava/lang/String;
    :cond_24
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/launcher/AddAdapter;->order:I

    .line 1242
    const/16 v34, 0x0

    :goto_e
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/launcher/AddAdapter;->mExtGroups:I

    move/from16 v0, v34

    if-ge v0, v3, :cond_0

    .line 1244
    sget-object v3, Lcom/htc/launcher/AddAdapter;->mAddEXTItems:Ljava/util/ArrayList;

    move/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    new-instance v4, Lcom/htc/launcher/AddAdapter$7;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/htc/launcher/AddAdapter$7;-><init>(Lcom/htc/launcher/AddAdapter;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1242
    add-int/lit8 v34, v34, 0x1

    goto :goto_e
.end method

.method private addFolder()V
    .locals 19

    .prologue
    .line 759
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/launcher/AddAdapter;->mTitleStrId:[I

    const/4 v3, 0x6

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/launcher/AddAdapter;->mShowTitleId:I

    .line 760
    sget-object v2, Lcom/htc/launcher/AddAdapter;->mAddFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 762
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/launcher/AddAdapter;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v2}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 764
    .local v4, res:Landroid/content/res/Resources;
    sget-object v18, Lcom/htc/launcher/AddAdapter;->mAddFolderItems:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/launcher/AddAdapter$ListItem;

    const v5, 0x7f0b001a

    const v6, 0x2080152

    const/4 v7, 0x5

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/htc/launcher/AddAdapter$ListItem;-><init>(Lcom/htc/launcher/AddAdapter;Landroid/content/res/Resources;III)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 769
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/launcher/AddAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v2, :cond_0

    .line 770
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/launcher/AddAdapter;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v2}, Lcom/htc/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/launcher/AddAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 772
    :cond_0
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 774
    .local v17, tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/AddAdapter$ListItem;>;"
    new-instance v12, Landroid/content/Intent;

    const-string v2, "android.intent.action.CREATE_LIVE_FOLDER"

    invoke-direct {v12, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 776
    .local v12, liveFolderIntent:Landroid/content/Intent;
    new-instance v14, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v14, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 777
    .local v14, pickIntent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v14, v2, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 779
    move-object v9, v14

    .line 780
    .local v9, intent:Landroid/content/Intent;
    new-instance v16, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 781
    .local v16, targetIntent:Landroid/content/Intent;
    const-string v2, "android.intent.category.DEFAULT"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 783
    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v9, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    .line 784
    .local v13, parcel:Landroid/os/Parcelable;
    instance-of v2, v13, Landroid/content/Intent;

    if-eqz v2, :cond_1

    move-object/from16 v16, v13

    .line 785
    check-cast v16, Landroid/content/Intent;

    .line 788
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 790
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/launcher/AddAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    .line 792
    .local v10, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v2, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/AddAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v2, v3}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v10, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 794
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    .line 795
    .local v11, listSize:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v11, :cond_2

    .line 796
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ResolveInfo;

    .line 797
    .local v15, resolveInfo:Landroid/content/pm/ResolveInfo;
    new-instance v2, Lcom/htc/launcher/AddAdapter$ListItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/AddAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v5, 0x193

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v15, v5}, Lcom/htc/launcher/AddAdapter$ListItem;-><init>(Lcom/htc/launcher/AddAdapter;Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;I)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 795
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 800
    .end local v15           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/launcher/AddAdapter;->mLauncher:Lcom/htc/launcher/Launcher;

    new-instance v3, Lcom/htc/launcher/AddAdapter$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v3, v0, v1}, Lcom/htc/launcher/AddAdapter$3;-><init>(Lcom/htc/launcher/AddAdapter;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lcom/htc/launcher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 805
    return-void
.end method

.method private addLiveFolder()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 809
    iget-object v10, p0, Lcom/htc/launcher/AddAdapter;->mTitleStrId:[I

    const/4 v11, 0x4

    aget v10, v10, v11

    iput v10, p0, Lcom/htc/launcher/AddAdapter;->mShowTitleId:I

    .line 810
    sget-object v10, Lcom/htc/launcher/AddAdapter;->mAddLiveFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 812
    iget-object v10, p0, Lcom/htc/launcher/AddAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v10, :cond_0

    .line 813
    iget-object v10, p0, Lcom/htc/launcher/AddAdapter;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v10}, Lcom/htc/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/launcher/AddAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 815
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 817
    .local v9, tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/AddAdapter$ListItem;>;"
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.CREATE_LIVE_FOLDER"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 819
    .local v4, liveFolderIntent:Landroid/content/Intent;
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 820
    .local v6, pickIntent:Landroid/content/Intent;
    const-string v10, "android.intent.extra.INTENT"

    invoke-virtual {v6, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 822
    move-object v1, v6

    .line 823
    .local v1, intent:Landroid/content/Intent;
    new-instance v8, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v8, v10, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 824
    .local v8, targetIntent:Landroid/content/Intent;
    const-string v10, "android.intent.category.DEFAULT"

    invoke-virtual {v8, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 826
    const-string v10, "android.intent.extra.INTENT"

    invoke-virtual {v1, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    .line 827
    .local v5, parcel:Landroid/os/Parcelable;
    instance-of v10, v5, Landroid/content/Intent;

    if-eqz v10, :cond_1

    move-object v8, v5

    .line 828
    check-cast v8, Landroid/content/Intent;

    .line 831
    :cond_1
    invoke-virtual {v8, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 833
    iget-object v10, p0, Lcom/htc/launcher/AddAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v8, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 835
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v10, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    iget-object v11, p0, Lcom/htc/launcher/AddAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v10, v11}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v2, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 837
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 838
    .local v3, listSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 839
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 840
    .local v7, resolveInfo:Landroid/content/pm/ResolveInfo;
    new-instance v10, Lcom/htc/launcher/AddAdapter$ListItem;

    iget-object v11, p0, Lcom/htc/launcher/AddAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v12, 0x193

    invoke-direct {v10, p0, v11, v7, v12}, Lcom/htc/launcher/AddAdapter$ListItem;-><init>(Lcom/htc/launcher/AddAdapter;Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 838
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 843
    .end local v7           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_2
    iget-object v10, p0, Lcom/htc/launcher/AddAdapter;->mLauncher:Lcom/htc/launcher/Launcher;

    new-instance v11, Lcom/htc/launcher/AddAdapter$4;

    invoke-direct {v11, p0, v9}, Lcom/htc/launcher/AddAdapter$4;-><init>(Lcom/htc/launcher/AddAdapter;Ljava/util/ArrayList;)V

    invoke-virtual {v10, v11}, Lcom/htc/launcher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 849
    return-void
.end method

.method private addMenuItems()V
    .locals 20

    .prologue
    .line 533
    sget-object v1, Lcom/htc/launcher/AddAdapter;->mAddMenuItems:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 534
    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/AddAdapter;->updateSummary()V

    .line 701
    :goto_0
    return-void

    .line 537
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/htc/launcher/AddAdapter;->mAddMenuItems:Ljava/util/ArrayList;

    .line 538
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/htc/launcher/AddAdapter;->maddFuncMenuItems:Ljava/util/ArrayList;

    .line 540
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/AddAdapter;->mTitleStrId:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/launcher/AddAdapter;->mShowTitleId:I

    .line 541
    sget-object v1, Lcom/htc/launcher/AddAdapter;->mAddMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 542
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/AddAdapter;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 544
    .local v3, res:Landroid/content/res/Resources;
    sget-object v9, Lcom/htc/launcher/AddAdapter;->mAddMenuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/launcher/AddAdapter$ListItem;

    const v4, 0x7f0b006c

    const/4 v5, -0x1

    const/16 v6, 0x68

    const/4 v7, -0x1

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/htc/launcher/AddAdapter$ListItem;-><init>(Lcom/htc/launcher/AddAdapter;Landroid/content/res/Resources;IIII)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    sget-object v10, Lcom/htc/launcher/AddAdapter;->mAddMenuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/launcher/AddAdapter$ListItem;

    const v4, 0x7f0b0063

    const v5, 0x7f02009c

    const/16 v6, 0x67

    const/4 v7, -0x1

    new-instance v8, Landroid/content/Intent;

    const-string v2, "com.htc.intent.ACTION_PERSONALIZE_SCENE"

    invoke-direct {v8, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "com.htc.intent.ACTION_PERSONALIZE_SCENE_CHANGED"

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/htc/launcher/AddAdapter$ListItem;-><init>(Lcom/htc/launcher/AddAdapter;Landroid/content/res/Resources;IIIILandroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    sget-object v10, Lcom/htc/launcher/AddAdapter;->mAddMenuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/launcher/AddAdapter$ListItem;

    const v4, 0x7f0b0064

    const v5, 0x7f0200a2

    const/16 v6, 0x67

    const/4 v7, -0x1

    new-instance v8, Landroid/content/Intent;

    const-string v2, "com.htc.intent.ACTION_PERSONALIZE_SKIN"

    invoke-direct {v8, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "com.htc.intent.ACTION_PERSONALIZE_SKIN_CHANGED"

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/htc/launcher/AddAdapter$ListItem;-><init>(Lcom/htc/launcher/AddAdapter;Landroid/content/res/Resources;IIIILandroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    sget-object v10, Lcom/htc/launcher/AddAdapter;->mAddMenuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/launcher/AddAdapter$ListItem;

    const v4, 0x7f0b001f

    const v5, 0x7f0200ab

    const/16 v6, 0x67

    const/4 v7, -0x1

    new-instance v8, Landroid/content/Intent;

    const-string v2, "com.htc.intent.ACTION_PERSONALIZE_WALLPAPER"

    invoke-direct {v8, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "com.htc.intent.ACTION_PERSONALIZE_WALLPAPER_CHANGED"

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/htc/launcher/AddAdapter$ListItem;-><init>(Lcom/htc/launcher/AddAdapter;Landroid/content/res/Resources;IIIILandroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isTabletDevice()Z

    move-result v1

    if-nez v1, :cond_1

    .line 559
    sget-object v10, Lcom/htc/launcher/AddAdapter;->mAddMenuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/launcher/AddAdapter$ListItem;

    const v4, 0x7f0b0020

    const v5, 0x7f020085

    const/16 v6, 0x67

    const/4 v7, -0x1

    new-instance v8, Landroid/content/Intent;

    const-string v2, "com.htc.intent.ACTION_PERSONALIZE_IDLESCREEN"

    invoke-direct {v8, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "com.htc.intent.ACTION_PERSONALIZE_IDLESCREEN_CHANGED"

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/htc/launcher/AddAdapter$ListItem;-><init>(Lcom/htc/launcher/AddAdapter;Landroid/content/res/Resources;IIIILandroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    :goto_1
    sget-object v9, Lcom/htc/launcher/AddAdapter;->mAddMenuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/launcher/AddAdapter$ListItem;

    const v4, 0x7f0b006e

    const/4 v5, -0x1

    const/16 v6, 0x68

    const/4 v7, -0x1

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/htc/launcher/AddAdapter$ListItem;-><init>(Lcom/htc/launcher/AddAdapter;Landroid/content/res/Resources;IIII)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    const/16 v19, 0x0

    .line 576
    .local v19, extTmp:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/launcher/AddAdapter;->mExtGroups:I

    if-lez v1, :cond_2

    .line 577
    :goto_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/launcher/AddAdapter;->mExtGroups:I

    move/from16 v0, v19

    if-ge v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/AddAdapter;->mExtGroup_id:[I

    aget v1, v1, v19

    const/16 v2, 0x26c

    if-gt v1, v2, :cond_2

    .line 578
    sget-object v9, Lcom/htc/launcher/AddAdapter;->mAddMenuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/launcher/AddAdapter$ListItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/launcher/AddAdapter;->mExtGroup_name:[Ljava/lang/String;

    aget-object v2, v2, v19

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/launcher/AddAdapter;->mExtGroup_icon:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v2, v19

    const/16 v6, 0x69

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/launcher/AddAdapter;->mExtGroup_id:[I

    aget v7, v2, v19

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/htc/launcher/AddAdapter$ListItem;-><init>(Lcom/htc/launcher/AddAdapter;Landroid/content/res/Resources;Ljava/lang/String;Landroid/graphics/drawable/Drawable;II)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 565
    .end local v19           #extTmp:I
    :cond_1
    sget-object v10, Lcom/htc/launcher/AddAdapter;->mAddMenuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/launcher/AddAdapter$ListItem;

    const v4, 0x7f0b0020

    const v5, 0x7f020085

    const/16 v6, 0x67

    const/4 v7, -0x1

    new-instance v8, Landroid/content/Intent;

    const-string v2, "com.htc.idlescreen.shortcut.setting"

    invoke-direct {v8, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "com.htc.intent.ACTION_PERSONALIZE_IDLESCREEN_CHANGED"

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/htc/launcher/AddAdapter$ListItem;-><init>(Lcom/htc/launcher/AddAdapter;Landroid/content/res/Resources;IIIILandroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 584
    .restart local v19       #extTmp:I
    :cond_2
    sget-object v10, Lcom/htc/launcher/AddAdapter;->mAddMenuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/launcher/AddAdapter$ListItem;

    const v4, 0x7f0b0065

    const v5, 0x7f0200ad

    const/16 v6, 0x69

    const/16 v7, 0x1f7

    new-instance v8, Landroid/content/Intent;

    const-string v2, "com.htc.intent.ACTION_PERSONALIZE_ADD_WIDGET_TO_HOME"

    invoke-direct {v8, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "com.htc.intent.ACTION_PERSONALIZE_ADD_WIDGET_TO_HOME_CHANGED"

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/htc/launcher/AddAdapter$ListItem;-><init>(Lcom/htc/launcher/AddAdapter;Landroid/content/res/Resources;IIIILandroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/launcher/AddAdapter;->mExtGroups:I

    if-lez v1, :cond_3

    .line 592
    :goto_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/launcher/AddAdapter;->mExtGroups:I

    move/from16 v0, v19

    if-ge v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/AddAdapter;->mExtGroup_id:[I

    aget v1, v1, v19

    const/16 v2, 0x2a8

    if-gt v1, v2, :cond_3

    .line 593
    sget-object v9, Lcom/htc/launcher/AddAdapter;->mAddMenuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/launcher/AddAdapter$ListItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/launcher/AddAdapter;->mExtGroup_name:[Ljava/lang/String;

    aget-object v2, v2, v19

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/launcher/AddAdapter;->mExtGroup_icon:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v2, v19

    const/16 v6, 0x69

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/launcher/AddAdapter;->mExtGroup_id:[I

    aget v7, v2, v19

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/htc/launcher/AddAdapter$ListItem;-><init>(Lcom/htc/launcher/AddAdapter;Landroid/content/res/Resources;Ljava/lang/String;Landroid/graphics/drawable/Drawable;II)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 599
    :cond_3
    sget-object v10, Lcom/htc/launcher/AddAdapter;->mAddMenuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/launcher/AddAdapter$ListItem;

    const v4, 0x7f0b0066

    const v5, 0x7f0200a0

    const/16 v6, 0x69

    const/16 v7, 0x1f5

    new-instance v8, Landroid/content/Intent;

    const-string v2, "com.htc.intent.ACTION_PERSONALIZE_ADD_APP_TO_HOME"

    invoke-direct {v8, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "com.htc.intent.ACTION_PERSONALIZE_ADD_APP_TO_HOME_CHANGED"

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/htc/launcher/AddAdapter$ListItem;-><init>(Lcom/htc/launcher/AddAdapter;Landroid/content/res/Resources;IIIILandroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/launcher/AddAdapter;->mExtGroups:I

    if-lez v1, :cond_4

    .line 608
    :goto_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/launcher/AddAdapter;->mExtGroups:I

    move/from16 v0, v19

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/AddAdapter;->mExtGroup_id:[I

    aget v1, v1, v19

    const/16 v2, 0x28a

    if-gt v1, v2, :cond_4

    .line 609
    sget-object v9, Lcom/htc/launcher/AddAdapter;->mAddMenuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/launcher/AddAdapter$ListItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/launcher/AddAdapter;->mExtGroup_name:[Ljava/lang/String;

    aget-object v2, v2, v19

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/launcher/AddAdapter;->mExtGroup_icon:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v2, v19

    const/16 v6, 0x69

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/launcher/AddAdapter;->mExtGroup_id:[I

    aget v7, v2, v19

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/htc/launcher/AddAdapter$ListItem;-><init>(Lcom/htc/launcher/AddAdapter;Landroid/content/res/Resources;Ljava/lang/String;Landroid/graphics/drawable/Drawable;II)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 615
    :cond_4
    sget-object v10, Lcom/htc/launcher/AddAdapter;->mAddMenuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/launcher/AddAdapter$ListItem;

    const v4, 0x7f0b0067

    const v5, 0x2080155

    const/16 v6, 0x69

    const/16 v7, 0x1f6

    new-instance v8, Landroid/content/Intent;

    const-string v2, "com.htc.intent.ACTION_PERSONALIZE_ADD_SHORTCUT_TO_HOME"

    invoke-direct {v8, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "com.htc.intent.ACTION_PERSONALIZE_ADD_SHORTCUT_TO_HOME_CHANGED"

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/htc/launcher/AddAdapter$ListItem;-><init>(Lcom/htc/launcher/AddAdapter;Landroid/content/res/Resources;IIIILandroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/launcher/AddAdapter;->mExtGroups:I

    if-lez v1, :cond_5

    .line 623
    :goto_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/launcher/AddAdapter;->mExtGroups:I

    move/from16 v0, v19

    if-ge v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/AddAdapter;->mExtGroup_id:[I

    aget v1, v1, v19

    const/16 v2, 0x280

    if-gt v1, v2, :cond_5

    .line 624
    sget-object v9, Lcom/htc/launcher/AddAdapter;->mAddMenuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/launcher/AddAdapter$ListItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/launcher/AddAdapter;->mExtGroup_name:[Ljava/lang/String;

    aget-object v2, v2, v19

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/launcher/AddAdapter;->mExtGroup_icon:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v2, v19

    const/16 v6, 0x69

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/launcher/AddAdapter;->mExtGroup_id:[I

    aget v7, v2, v19

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/htc/launcher/AddAdapter$ListItem;-><init>(Lcom/htc/launcher/AddAdapter;Landroid/content/res/Resources;Ljava/lang/String;Landroid/graphics/drawable/Drawable;II)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 630
    :cond_5
    sget-object v10, Lcom/htc/launcher/AddAdapter;->mAddMenuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/launcher/AddAdapter$ListItem;

    const v4, 0x7f0b0004

    const v5, 0x2080152

    const/16 v6, 0x69

    const/16 v7, 0x1fa

    new-instance v8, Landroid/content/Intent;

    const-string v2, "com.htc.intent.ACTION_PERSONALIZE_ADD_FOLDER_TO_HOME"

    invoke-direct {v8, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "com.htc.intent.ACTION_PERSONALIZE_ADD_FOLDER_TO_HOME_CHANGED"

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/htc/launcher/AddAdapter$ListItem;-><init>(Lcom/htc/launcher/AddAdapter;Landroid/content/res/Resources;IIIILandroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/launcher/AddAdapter;->mExtGroups:I

    if-lez v1, :cond_6

    .line 638
    :goto_6
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/launcher/AddAdapter;->mExtGroups:I

    move/from16 v0, v19

    if-ge v0, v1, :cond_6

    .line 639
    sget-object v9, Lcom/htc/launcher/AddAdapter;->mAddMenuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/launcher/AddAdapter$ListItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/launcher/AddAdapter;->mExtGroup_name:[Ljava/lang/String;

    aget-object v2, v2, v19

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/launcher/AddAdapter;->mExtGroup_icon:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v2, v19

    const/16 v6, 0x69

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/launcher/AddAdapter;->mExtGroup_id:[I

    aget v7, v2, v19

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/htc/launcher/AddAdapter$ListItem;-><init>(Lcom/htc/launcher/AddAdapter;Landroid/content/res/Resources;Ljava/lang/String;Landroid/graphics/drawable/Drawable;II)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 641
    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    .line 645
    :cond_6
    sget-object v9, Lcom/htc/launcher/AddAdapter;->mAddMenuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/launcher/AddAdapter$ListItem;

    const v4, 0x7f0b006d

    const/4 v5, -0x1

    const/16 v6, 0x68

    const/4 v7, -0x1

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/htc/launcher/AddAdapter$ListItem;-><init>(Lcom/htc/launcher/AddAdapter;Landroid/content/res/Resources;IIII)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 650
    .local v8, data:Landroid/content/Intent;
    new-instance v18, Landroid/os/Bundle;

    invoke-direct/range {v18 .. v18}, Landroid/os/Bundle;-><init>()V

    .line 651
    .local v18, bundle:Landroid/os/Bundle;
    const-string v1, "SDMListType"

    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 652
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 653
    const-string v1, "com.htc.sdm"

    const-string v2, "com.htc.sdm.activity.SoundSetList"

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 654
    sget-object v10, Lcom/htc/launcher/AddAdapter;->mAddMenuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/launcher/AddAdapter$ListItem;

    const v4, 0x7f0b0068

    const v5, 0x7f0200a3

    const/16 v6, 0x67

    const/4 v7, -0x1

    const-string v9, "com.htc.intent.ACTION_PERSONALIZE_SOUND_SET_CHANGED"

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/htc/launcher/AddAdapter$ListItem;-><init>(Lcom/htc/launcher/AddAdapter;Landroid/content/res/Resources;IIIILandroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isTabletDevice()Z

    move-result v1

    if-nez v1, :cond_7

    .line 659
    new-instance v8, Landroid/content/Intent;

    .end local v8           #data:Landroid/content/Intent;
    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 660
    .restart local v8       #data:Landroid/content/Intent;
    new-instance v18, Landroid/os/Bundle;

    .end local v18           #bundle:Landroid/os/Bundle;
    invoke-direct/range {v18 .. v18}, Landroid/os/Bundle;-><init>()V

    .line 661
    .restart local v18       #bundle:Landroid/os/Bundle;
    const-string v1, "SDMListType"

    const/4 v2, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 662
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 663
    const-string v1, "com.htc.sdm"

    const-string v2, "com.htc.sdm.activity.SoundSetList"

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 664
    sget-object v10, Lcom/htc/launcher/AddAdapter;->mAddMenuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/launcher/AddAdapter$ListItem;

    const v4, 0x7f0b0069

    const v5, 0x7f020092

    const/16 v6, 0x67

    const/4 v7, -0x1

    const-string v9, "com.htc.intent.ACTION_PERSONALIZE_RINGTONE_CHANGED"

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/htc/launcher/AddAdapter$ListItem;-><init>(Lcom/htc/launcher/AddAdapter;Landroid/content/res/Resources;IIIILandroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 669
    :cond_7
    new-instance v8, Landroid/content/Intent;

    .end local v8           #data:Landroid/content/Intent;
    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 670
    .restart local v8       #data:Landroid/content/Intent;
    new-instance v18, Landroid/os/Bundle;

    .end local v18           #bundle:Landroid/os/Bundle;
    invoke-direct/range {v18 .. v18}, Landroid/os/Bundle;-><init>()V

    .line 671
    .restart local v18       #bundle:Landroid/os/Bundle;
    const-string v1, "com.htc.sdm"

    const-string v2, "com.htc.sdm.activity.SDMNotificationList"

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 672
    sget-object v10, Lcom/htc/launcher/AddAdapter;->mAddMenuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/launcher/AddAdapter$ListItem;

    const v4, 0x7f0b006a

    const v5, 0x7f02008a

    const/16 v6, 0x67

    const/4 v7, -0x1

    const-string v9, "com.htc.intent.ACTION_PERSONALIZE_NOTIFICATION_SOUNDS_CHANGED"

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/htc/launcher/AddAdapter$ListItem;-><init>(Lcom/htc/launcher/AddAdapter;Landroid/content/res/Resources;IIIILandroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 676
    new-instance v8, Landroid/content/Intent;

    .end local v8           #data:Landroid/content/Intent;
    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 677
    .restart local v8       #data:Landroid/content/Intent;
    new-instance v18, Landroid/os/Bundle;

    .end local v18           #bundle:Landroid/os/Bundle;
    invoke-direct/range {v18 .. v18}, Landroid/os/Bundle;-><init>()V

    .line 678
    .restart local v18       #bundle:Landroid/os/Bundle;
    const-string v1, "SDMListType"

    const/4 v2, 0x4

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 679
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 680
    const-string v1, "com.htc.sdm"

    const-string v2, "com.htc.sdm.activity.SoundSetList"

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 681
    sget-object v10, Lcom/htc/launcher/AddAdapter;->mAddMenuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/launcher/AddAdapter$ListItem;

    const v4, 0x7f0b006b

    const v5, 0x7f020001

    const/16 v6, 0x67

    const/4 v7, -0x1

    const-string v9, "com.htc.intent.ACTION_PERSONALIZE_ALARM_CHANGED"

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/htc/launcher/AddAdapter$ListItem;-><init>(Lcom/htc/launcher/AddAdapter;Landroid/content/res/Resources;IIIILandroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/AddAdapter;->updateSummary()V

    .line 689
    sget-object v1, Lcom/htc/launcher/AddAdapter;->maddFuncMenuItems:Ljava/util/ArrayList;

    new-instance v9, Lcom/htc/launcher/AddAdapter$ListItem;

    const v12, 0x7f0b0066

    const v13, 0x2080150

    const/16 v14, 0x69

    const/16 v15, 0x1fc

    new-instance v16, Landroid/content/Intent;

    const-string v2, "com.htc.intent.ACTION_PERSONALIZE_ADD_APP_TO_HOME"

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v17, "com.htc.intent.ACTION_PERSONALIZE_ADD_APP_TO_HOME_CHANGED"

    move-object/from16 v10, p0

    move-object v11, v3

    invoke-direct/range {v9 .. v17}, Lcom/htc/launcher/AddAdapter$ListItem;-><init>(Lcom/htc/launcher/AddAdapter;Landroid/content/res/Resources;IIIILandroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 695
    sget-object v1, Lcom/htc/launcher/AddAdapter;->maddFuncMenuItems:Ljava/util/ArrayList;

    new-instance v9, Lcom/htc/launcher/AddAdapter$ListItem;

    const v12, 0x7f0b0067

    const v13, 0x2080155

    const/16 v14, 0x69

    const/16 v15, 0x1fd

    new-instance v16, Landroid/content/Intent;

    const-string v2, "com.htc.intent.ACTION_PERSONALIZE_ADD_SHORTCUT_TO_HOME"

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v17, "com.htc.intent.ACTION_PERSONALIZE_ADD_SHORTCUT_TO_HOME_CHANGED"

    move-object/from16 v10, p0

    move-object v11, v3

    invoke-direct/range {v9 .. v17}, Lcom/htc/launcher/AddAdapter$ListItem;-><init>(Lcom/htc/launcher/AddAdapter;Landroid/content/res/Resources;IIIILandroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private addProgramItems()V
    .locals 8

    .prologue
    .line 853
    iget-object v6, p0, Lcom/htc/launcher/AddAdapter;->mTitleStrId:[I

    const/4 v7, 0x5

    aget v6, v6, v7

    iput v6, p0, Lcom/htc/launcher/AddAdapter;->mShowTitleId:I

    .line 855
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 856
    .local v5, tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/AddAdapter$ListItem;>;"
    invoke-static {}, Lcom/htc/launcher/Launcher;->getModel()Lcom/htc/launcher/LauncherModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/launcher/LauncherModel;->getApplications()Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;

    move-result-object v1

    .line 858
    .local v1, appInfos:Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 859
    .local v4, temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/ApplicationInfo;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v1}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->originalSize()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 860
    invoke-virtual {v1, v2}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->originalGet(I)Lcom/htc/launcher/ApplicationInfo;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 859
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 867
    :cond_0
    sget-object v6, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->REAL_ALPHABET:Ljava/util/Comparator;

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 869
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/ApplicationInfo;

    .line 870
    .local v0, appInfo:Lcom/htc/launcher/ApplicationInfo;
    new-instance v6, Lcom/htc/launcher/AddAdapter$ListItem;

    const/16 v7, 0x192

    invoke-direct {v6, p0, v0, v7}, Lcom/htc/launcher/AddAdapter$ListItem;-><init>(Lcom/htc/launcher/AddAdapter;Lcom/htc/launcher/ApplicationInfo;I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 873
    .end local v0           #appInfo:Lcom/htc/launcher/ApplicationInfo;
    :cond_1
    sget-object v6, Lcom/htc/launcher/AddAdapter;->mAddProgramItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 874
    sget-object v6, Lcom/htc/launcher/AddAdapter;->mAddProgramItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 875
    return-void
.end method

.method private addSettingsWidget()V
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x5

    .line 705
    iget-object v10, p0, Lcom/htc/launcher/AddAdapter;->mTitleStrId:[I

    const/4 v11, 0x7

    aget v10, v10, v11

    iput v10, p0, Lcom/htc/launcher/AddAdapter;->mShowTitleId:I

    .line 708
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 709
    .local v6, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/AddAdapter$ListItem;>;"
    iget-object v10, p0, Lcom/htc/launcher/AddAdapter;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-static {v10}, Lcom/htc/launcher/ApplicationManager;->instance(Landroid/content/Context;)Lcom/htc/launcher/ApplicationManager;

    move-result-object v0

    .line 711
    .local v0, am:Lcom/htc/launcher/ApplicationManager;
    iget-object v10, p0, Lcom/htc/launcher/AddAdapter;->mLauncher:Lcom/htc/launcher/Launcher;

    iget-object v10, v10, Lcom/htc/launcher/Launcher;->mWidgetsManager:Lcom/htc/launcher/WidgetsManager;

    const/16 v11, 0xc8

    invoke-virtual {v10, v11}, Lcom/htc/launcher/WidgetsManager;->listListItems(I)[Lcom/htc/launcher/AddAdapter$ListItem;

    move-result-object v1

    .local v1, arr$:[Lcom/htc/launcher/AddAdapter$ListItem;
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v4, v1, v3

    .line 712
    .local v4, item:Lcom/htc/launcher/AddAdapter$ListItem;
    iget-object v10, v4, Lcom/htc/launcher/AddAdapter$ListItem;->widgetItem:Lcom/htc/launcher/WidgetItem;

    iget-object v8, v10, Lcom/htc/launcher/WidgetItem;->mPackageName:Ljava/lang/String;

    .line 713
    .local v8, packageName:Ljava/lang/String;
    iget-object v10, v4, Lcom/htc/launcher/AddAdapter$ListItem;->widgetItem:Lcom/htc/launcher/WidgetItem;

    iget-object v9, v10, Lcom/htc/launcher/WidgetItem;->mWidgetName:Ljava/lang/String;

    .line 714
    .local v9, widgetName:Ljava/lang/String;
    sget-boolean v10, Lcom/htc/launcher/AddAdapter;->localLOGV:Z

    if-eqz v10, :cond_0

    sget-object v10, Lcom/htc/launcher/AddAdapter;->ITEM_INFO_LOG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "HTC Widget(setting)("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v4, Lcom/htc/launcher/AddAdapter$ListItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "), "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :cond_0
    invoke-virtual {v0, v8, v9, v14}, Lcom/htc/launcher/ApplicationManager;->inHideCustomizationList(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 711
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 718
    :cond_1
    invoke-virtual {v0, v8, v9, v14}, Lcom/htc/launcher/ApplicationManager;->getCustomizationListPriority(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v10

    iput v10, v4, Lcom/htc/launcher/AddAdapter$ListItem;->priority:I

    .line 719
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 721
    .end local v4           #item:Lcom/htc/launcher/AddAdapter$ListItem;
    .end local v8           #packageName:Ljava/lang/String;
    .end local v9           #widgetName:Ljava/lang/String;
    :cond_2
    iget-object v10, p0, Lcom/htc/launcher/AddAdapter;->mFxWidgets:Ljava/util/List;

    if-eqz v10, :cond_6

    .line 722
    iget-object v10, p0, Lcom/htc/launcher/AddAdapter;->mFxWidgets:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/rosie/widget/WidgetProvider$Info;

    .line 723
    .local v4, item:Lcom/htc/android/rosie/widget/WidgetProvider$Info;
    sget-boolean v10, Lcom/htc/launcher/AddAdapter;->localLOGV:Z

    if-eqz v10, :cond_4

    sget-object v10, Lcom/htc/launcher/AddAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "category: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v4, Lcom/htc/android/rosie/widget/WidgetProvider$Info;->category:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    :cond_4
    iget-object v10, v4, Lcom/htc/android/rosie/widget/WidgetProvider$Info;->category:Ljava/lang/String;

    const-string v11, "settings"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 725
    iget-object v10, v4, Lcom/htc/android/rosie/widget/WidgetProvider$Info;->provider:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 726
    .restart local v8       #packageName:Ljava/lang/String;
    iget-object v10, v4, Lcom/htc/android/rosie/widget/WidgetProvider$Info;->provider:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 727
    .local v2, className:Ljava/lang/String;
    sget-boolean v10, Lcom/htc/launcher/AddAdapter;->localLOGV:Z

    if-eqz v10, :cond_5

    sget-object v10, Lcom/htc/launcher/AddAdapter;->ITEM_INFO_LOG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "FxWidget(setting)("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v4, Lcom/htc/android/rosie/widget/WidgetProvider$Info;->label:Ljava/lang/CharSequence;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "), "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :cond_5
    invoke-virtual {v0, v8, v2, v13}, Lcom/htc/launcher/ApplicationManager;->inHideCustomizationList(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v10

    if-nez v10, :cond_3

    .line 731
    new-instance v7, Lcom/htc/launcher/AddAdapter$ListItem;

    const/16 v10, 0x6a

    invoke-direct {v7, p0, v4, v10, v13}, Lcom/htc/launcher/AddAdapter$ListItem;-><init>(Lcom/htc/launcher/AddAdapter;Lcom/htc/android/rosie/widget/WidgetProvider$Info;II)V

    .line 732
    .local v7, listItem:Lcom/htc/launcher/AddAdapter$ListItem;
    invoke-virtual {v0, v8, v2, v13}, Lcom/htc/launcher/ApplicationManager;->getCustomizationListPriority(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v10

    iput v10, v7, Lcom/htc/launcher/AddAdapter$ListItem;->priority:I

    .line 733
    const/4 v10, 0x0

    invoke-virtual {v6, v10, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 737
    .end local v2           #className:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #item:Lcom/htc/android/rosie/widget/WidgetProvider$Info;
    .end local v7           #listItem:Lcom/htc/launcher/AddAdapter$ListItem;
    .end local v8           #packageName:Ljava/lang/String;
    :cond_6
    new-instance v10, Lcom/htc/launcher/AddAdapter$1;

    invoke-direct {v10, p0}, Lcom/htc/launcher/AddAdapter$1;-><init>(Lcom/htc/launcher/AddAdapter;)V

    invoke-static {v6, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 749
    iget-object v10, p0, Lcom/htc/launcher/AddAdapter;->mLauncher:Lcom/htc/launcher/Launcher;

    new-instance v11, Lcom/htc/launcher/AddAdapter$2;

    invoke-direct {v11, p0, v6}, Lcom/htc/launcher/AddAdapter$2;-><init>(Lcom/htc/launcher/AddAdapter;Ljava/util/ArrayList;)V

    invoke-virtual {v10, v11}, Lcom/htc/launcher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 755
    return-void
.end method

.method private addShortcutItems()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    .line 879
    iget-object v9, p0, Lcom/htc/launcher/AddAdapter;->mTitleStrId:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    iput v9, p0, Lcom/htc/launcher/AddAdapter;->mShowTitleId:I

    .line 880
    iget-object v9, p0, Lcom/htc/launcher/AddAdapter;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-static {v9}, Lcom/htc/launcher/ApplicationManager;->instance(Landroid/content/Context;)Lcom/htc/launcher/ApplicationManager;

    move-result-object v0

    .line 881
    .local v0, am:Lcom/htc/launcher/ApplicationManager;
    iget-object v9, p0, Lcom/htc/launcher/AddAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v9, :cond_0

    .line 883
    iget-object v9, p0, Lcom/htc/launcher/AddAdapter;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v9}, Lcom/htc/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/launcher/AddAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 886
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 888
    .local v8, tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/AddAdapter$ListItem;>;"
    new-instance v7, Landroid/content/Intent;

    const-string v9, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 889
    .local v7, shortcutIntent:Landroid/content/Intent;
    iget-object v9, p0, Lcom/htc/launcher/AddAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v10, 0x0

    invoke-virtual {v9, v7, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 892
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 894
    .local v4, listSize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_3

    .line 895
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 896
    .local v6, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 897
    .local v5, packageName:Ljava/lang/String;
    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 898
    .local v1, className:Ljava/lang/String;
    invoke-virtual {v0, v5, v1, v12}, Lcom/htc/launcher/ApplicationManager;->inHideCustomizationList(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 894
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 900
    :cond_2
    const-string v9, "com.android.mms"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 902
    invoke-virtual {v0, v5, v1, v12}, Lcom/htc/launcher/ApplicationManager;->getCustomizationListPriority(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    iput v9, v6, Landroid/content/pm/ResolveInfo;->priority:I

    .line 903
    new-instance v9, Lcom/htc/launcher/AddAdapter$ListItem;

    iget-object v10, p0, Lcom/htc/launcher/AddAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v11, 0x190

    invoke-direct {v9, p0, v10, v6, v11}, Lcom/htc/launcher/AddAdapter$ListItem;-><init>(Lcom/htc/launcher/AddAdapter;Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;I)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 907
    .end local v1           #className:Ljava/lang/String;
    .end local v5           #packageName:Ljava/lang/String;
    .end local v6           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_3
    new-instance v9, Lcom/htc/launcher/AddAdapter$5;

    invoke-direct {v9, p0}, Lcom/htc/launcher/AddAdapter$5;-><init>(Lcom/htc/launcher/AddAdapter;)V

    invoke-static {v8, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 918
    iget-object v9, p0, Lcom/htc/launcher/AddAdapter;->mLauncher:Lcom/htc/launcher/Launcher;

    new-instance v10, Lcom/htc/launcher/AddAdapter$6;

    invoke-direct {v10, p0, v8}, Lcom/htc/launcher/AddAdapter$6;-><init>(Lcom/htc/launcher/AddAdapter;Ljava/util/ArrayList;)V

    invoke-virtual {v9, v10}, Lcom/htc/launcher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 924
    return-void
.end method

.method public static checkIfCHT_SIM_Card(Landroid/content/Context;)Z
    .locals 5
    .parameter "launcher"

    .prologue
    const/4 v2, 0x0

    .line 1818
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1819
    .local v1, tm:Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    .line 1820
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 1821
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 1823
    .local v0, simOperator:Ljava/lang/String;
    const-string v3, "46692"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1824
    const/4 v2, 0x1

    .line 1832
    .end local v0           #simOperator:Ljava/lang/String;
    :cond_0
    return v2
.end method

.method private createView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "parent"

    .prologue
    const v11, 0x202001a

    const v10, 0x2020010

    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1714
    const/4 v3, 0x0

    .line 1715
    .local v3, v:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/htc/launcher/AddAdapter;->getItemViewType(I)I

    move-result v4

    .line 1716
    .local v4, viewType:I
    const/4 v2, 0x0

    .line 1717
    .local v2, textView:Landroid/widget/TextView;
    const/4 v0, 0x0

    .line 1718
    .local v0, imageView:Landroid/widget/ImageView;
    const/4 v1, 0x0

    .line 1719
    .local v1, rightIcon:Landroid/widget/ImageView;
    packed-switch v4, :pswitch_data_0

    .line 1774
    :goto_0
    return-object v3

    .line 1721
    :pswitch_0
    iget-object v5, p0, Lcom/htc/launcher/AddAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f03001b

    invoke-virtual {v5, v6, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 1722
    new-instance v5, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Lcom/htc/widget/HtcAbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1725
    :pswitch_1
    iget-object v5, p0, Lcom/htc/launcher/AddAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x2090073

    invoke-virtual {v5, v6, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 1726
    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #textView:Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 1727
    .restart local v2       #textView:Landroid/widget/TextView;
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1728
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 1729
    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #imageView:Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .line 1730
    .restart local v0       #imageView:Landroid/widget/ImageView;
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 1733
    :pswitch_2
    iget-object v5, p0, Lcom/htc/launcher/AddAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x2090069

    invoke-virtual {v5, v6, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 1734
    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #textView:Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 1735
    .restart local v2       #textView:Landroid/widget/TextView;
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1736
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 1737
    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #imageView:Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .line 1738
    .restart local v0       #imageView:Landroid/widget/ImageView;
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 1741
    :pswitch_3
    iget-object v5, p0, Lcom/htc/launcher/AddAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x2090069

    invoke-virtual {v5, v6, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 1742
    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #textView:Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 1743
    .restart local v2       #textView:Landroid/widget/TextView;
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1744
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 1745
    const v5, 0x2020014

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1746
    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #imageView:Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .line 1747
    .restart local v0       #imageView:Landroid/widget/ImageView;
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1748
    const v5, 0x202001b

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #rightIcon:Landroid/widget/ImageView;
    check-cast v1, Landroid/widget/ImageView;

    .line 1749
    .restart local v1       #rightIcon:Landroid/widget/ImageView;
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_0

    .line 1752
    :pswitch_4
    iget-object v5, p0, Lcom/htc/launcher/AddAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x2090069

    invoke-virtual {v5, v6, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 1753
    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #textView:Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 1754
    .restart local v2       #textView:Landroid/widget/TextView;
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1755
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 1756
    const v5, 0x2020014

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1757
    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #imageView:Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .line 1758
    .restart local v0       #imageView:Landroid/widget/ImageView;
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1759
    const v5, 0x202001b

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #rightIcon:Landroid/widget/ImageView;
    check-cast v1, Landroid/widget/ImageView;

    .line 1760
    .restart local v1       #rightIcon:Landroid/widget/ImageView;
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_0

    .line 1763
    :pswitch_5
    iget-object v5, p0, Lcom/htc/launcher/AddAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x2090069

    invoke-virtual {v5, v6, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 1764
    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #textView:Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 1765
    .restart local v2       #textView:Landroid/widget/TextView;
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1766
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 1767
    const v5, 0x2020014

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1768
    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #imageView:Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .line 1769
    .restart local v0       #imageView:Landroid/widget/ImageView;
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1770
    const v5, 0x202001b

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #rightIcon:Landroid/widget/ImageView;
    check-cast v1, Landroid/widget/ImageView;

    .line 1771
    .restart local v1       #rightIcon:Landroid/widget/ImageView;
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1719
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static getExtItemIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 9
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    .line 2143
    const-string v8, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2144
    .local v6, title:Ljava/lang/String;
    if-nez v6, :cond_0

    move-object v5, v7

    .line 2155
    :goto_0
    return-object v5

    .line 2146
    :cond_0
    sget-object v8, Lcom/htc/launcher/AddAdapter;->mAddEXTItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2147
    .local v0, group:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/AddAdapter$ListItem;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/launcher/AddAdapter$ListItem;

    .line 2148
    .local v3, item:Lcom/htc/launcher/AddAdapter$ListItem;
    iget-object v5, v3, Lcom/htc/launcher/AddAdapter$ListItem;->intent:Landroid/content/Intent;

    .line 2149
    .local v5, listItemIntent:Landroid/content/Intent;
    const-string v8, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2150
    .local v4, itemTitle:Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_0

    .end local v0           #group:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/AddAdapter$ListItem;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #item:Lcom/htc/launcher/AddAdapter$ListItem;
    .end local v4           #itemTitle:Ljava/lang/String;
    .end local v5           #listItemIntent:Landroid/content/Intent;
    :cond_3
    move-object v5, v7

    .line 2155
    goto :goto_0
.end method

.method private static getTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;
    .locals 13
    .parameter "context"
    .parameter "uri"
    .parameter "followSettingsUri"

    .prologue
    .line 2073
    const/4 v9, 0x0

    .line 2074
    .local v9, cursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2076
    .local v0, res:Landroid/content/ContentResolver;
    const/4 v12, 0x0

    .line 2078
    .local v12, title:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 2079
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    .line 2081
    .local v8, authority:Ljava/lang/String;
    const-string v1, "settings"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2082
    if-eqz p2, :cond_0

    .line 2083
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v1

    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v7

    .line 2085
    .local v7, actualUri:Landroid/net/Uri;
    const/4 v1, 0x0

    invoke-static {p0, v7, v1}, Lcom/htc/launcher/AddAdapter;->getTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v6

    .line 2086
    .local v6, actualTitle:Ljava/lang/String;
    const v1, 0x10403d6

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 2128
    .end local v6           #actualTitle:Ljava/lang/String;
    .end local v7           #actualUri:Landroid/net/Uri;
    .end local v8           #authority:Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v12, :cond_1

    .line 2129
    const v1, 0x10403d9

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2131
    if-nez v12, :cond_1

    .line 2132
    const-string v12, ""

    .line 2135
    :cond_1
    if-eqz v9, :cond_2

    .line 2136
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2137
    const/4 v9, 0x0

    :cond_2
    move-object v1, v12

    .line 2139
    :cond_3
    :goto_1
    return-object v1

    .line 2092
    .restart local v8       #authority:Ljava/lang/String;
    :cond_4
    const-string v1, "drm"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2094
    :try_start_0
    sget-object v2, Lcom/htc/launcher/AddAdapter;->DRM_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 2109
    :cond_5
    :goto_2
    if-eqz v9, :cond_9

    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    .line 2110
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2111
    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 2121
    if-eqz v9, :cond_3

    .line 2122
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2095
    :catch_0
    move-exception v10

    .line 2096
    .local v10, e:Ljava/lang/Exception;
    sget-boolean v1, Lcom/htc/launcher/AddAdapter;->localLOGV:Z

    if-eqz v1, :cond_6

    sget-object v1, Lcom/htc/launcher/AddAdapter;->LOG_TAG:Ljava/lang/String;

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

    .line 2097
    :cond_6
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 2099
    .end local v10           #e:Ljava/lang/Exception;
    :cond_7
    const-string v1, "media"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2101
    :try_start_2
    sget-object v2, Lcom/htc/launcher/AddAdapter;->MEDIA_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v9

    goto :goto_2

    .line 2102
    :catch_1
    move-exception v10

    .line 2103
    .restart local v10       #e:Ljava/lang/Exception;
    sget-boolean v1, Lcom/htc/launcher/AddAdapter;->localLOGV:Z

    if-eqz v1, :cond_8

    sget-object v1, Lcom/htc/launcher/AddAdapter;->LOG_TAG:Ljava/lang/String;

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

    .line 2104
    :cond_8
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 2114
    .end local v10           #e:Ljava/lang/Exception;
    :cond_9
    :try_start_3
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v11

    .line 2115
    .local v11, ringtone:Landroid/media/Ringtone;
    if-eqz v11, :cond_a

    .line 2116
    invoke-virtual {v11, p0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 2117
    :cond_a
    sget-object v1, Lcom/htc/launcher/AddAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v2, "We cannot get ringone name from cursor, we can only get title by RingtoneManager"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2121
    if-eqz v9, :cond_0

    .line 2122
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2121
    .end local v11           #ringtone:Landroid/media/Ringtone;
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_b

    .line 2122
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v1
.end method

.method private loadExtGroups()V
    .locals 13

    .prologue
    .line 929
    iget-object v10, p0, Lcom/htc/launcher/AddAdapter;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v10}, Lcom/htc/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/htc/launcher/WidgetPackageManager;->getModuleBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v9

    .line 930
    .local v9, moduleBundle:Landroid/os/Bundle;
    const-string v8, "ext_groups"

    .line 931
    .local v8, key:Ljava/lang/String;
    invoke-virtual {v9, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 932
    .local v1, extBundle:Landroid/os/Bundle;
    if-eqz v1, :cond_2

    .line 933
    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v10

    iput v10, p0, Lcom/htc/launcher/AddAdapter;->mExtGroups:I

    .line 934
    iget v10, p0, Lcom/htc/launcher/AddAdapter;->mExtGroups:I

    new-array v10, v10, [I

    iput-object v10, p0, Lcom/htc/launcher/AddAdapter;->mExtGroup_id:[I

    .line 935
    iget v10, p0, Lcom/htc/launcher/AddAdapter;->mExtGroups:I

    new-array v10, v10, [Ljava/lang/String;

    iput-object v10, p0, Lcom/htc/launcher/AddAdapter;->mExtGroup_name:[Ljava/lang/String;

    .line 936
    iget v10, p0, Lcom/htc/launcher/AddAdapter;->mExtGroups:I

    new-array v10, v10, [Landroid/graphics/drawable/Drawable;

    iput-object v10, p0, Lcom/htc/launcher/AddAdapter;->mExtGroup_icon:[Landroid/graphics/drawable/Drawable;

    .line 938
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    iget v10, p0, Lcom/htc/launcher/AddAdapter;->mExtGroups:I

    if-ge v6, v10, :cond_2

    .line 939
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

    .line 940
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 941
    .local v0, childBundle:Landroid/os/Bundle;
    const-string v10, "group_id"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 942
    .local v4, gId:I
    const-string v10, "group_name"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 943
    .local v5, gName:Ljava/lang/String;
    const-string v10, "group_icon"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 944
    .local v2, gIconFileName:Ljava/lang/String;
    sget-boolean v10, Lcom/htc/launcher/AddAdapter;->localLOGV:Z

    if-eqz v10, :cond_0

    .line 945
    sget-object v10, Lcom/htc/launcher/AddAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cust_AddToHome : Group_ID > "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    sget-object v10, Lcom/htc/launcher/AddAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cust_AddToHome : Group_name > "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    sget-object v10, Lcom/htc/launcher/AddAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cust_AddToHome : Group_Icon > "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    :cond_0
    iget-object v10, p0, Lcom/htc/launcher/AddAdapter;->mExtGroup_id:[I

    aput v4, v10, v6

    .line 952
    iget-object v10, p0, Lcom/htc/launcher/AddAdapter;->mExtGroup_name:[Ljava/lang/String;

    aput-object v5, v10, v6

    .line 955
    if-eqz v2, :cond_1

    .line 956
    invoke-static {v2}, Lcom/htc/launcher/WidgetPackageManager;->manipulateResourcePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 957
    .local v3, gIconFilePath:Ljava/lang/String;
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v10, p0, Lcom/htc/launcher/AddAdapter;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v10}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-direct {v7, v10, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 961
    .local v7, icon:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v10, p0, Lcom/htc/launcher/AddAdapter;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v10}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 962
    iget-object v10, p0, Lcom/htc/launcher/AddAdapter;->mExtGroup_icon:[Landroid/graphics/drawable/Drawable;

    aput-object v7, v10, v6

    .line 938
    .end local v3           #gIconFilePath:Ljava/lang/String;
    .end local v7           #icon:Landroid/graphics/drawable/BitmapDrawable;
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 964
    :cond_1
    sget-object v10, Lcom/htc/launcher/AddAdapter;->LOG_TAG:Ljava/lang/String;

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

    .line 965
    iget-object v10, p0, Lcom/htc/launcher/AddAdapter;->mExtGroup_icon:[Landroid/graphics/drawable/Drawable;

    const/4 v11, 0x0

    aput-object v11, v10, v6

    goto :goto_1

    .line 971
    .end local v0           #childBundle:Landroid/os/Bundle;
    .end local v2           #gIconFileName:Ljava/lang/String;
    .end local v4           #gId:I
    .end local v5           #gName:Ljava/lang/String;
    .end local v6           #i:I
    :cond_2
    return-void
.end method


# virtual methods
.method protected createShortcutIntent(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/content/Intent;
    .locals 22
    .parameter "url"
    .parameter "title"
    .parameter "touchIcon"
    .parameter "favicon"

    .prologue
    .line 1974
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 1975
    .local v7, i:Landroid/content/Intent;
    new-instance v12, Landroid/content/Intent;

    const-string v18, "android.intent.action.VIEW"

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1976
    .local v12, shortcutIntent:Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 1977
    .local v16, urlHash:J
    const/16 v18, 0x20

    shl-long v18, v16, v18

    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    or-long v14, v18, v20

    .line 1978
    .local v14, uniqueId:J
    const-string v18, "com.android.browser.application_id"

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1979
    const-string v18, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1980
    const-string v18, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1982
    if-eqz p3, :cond_0

    .line 1986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/AddAdapter;->mLauncher:Lcom/htc/launcher/Launcher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const/high16 v19, 0x105

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 1987
    .local v8, iconSize:I
    sget-object v18, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v18

    invoke-static {v8, v8, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1988
    .local v4, bm:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1989
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

    .line 1990
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

    .line 1993
    .local v6, dest:Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Paint;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-direct {v9, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 1994
    .local v9, paint:Landroid/graphics/Paint;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1995
    move-object/from16 v0, p3

    invoke-virtual {v5, v0, v13, v6, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1999
    new-instance v10, Landroid/graphics/Path;

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    .line 2000
    .local v10, path:Landroid/graphics/Path;
    sget-object v18, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 2001
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

    .line 2002
    .local v11, rect:Landroid/graphics/RectF;
    const/high16 v18, 0x3f80

    const/high16 v19, 0x3f80

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 2003
    const/high16 v18, 0x4100

    const/high16 v19, 0x4100

    sget-object v20, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v10, v11, v0, v1, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 2006
    new-instance v18, Landroid/graphics/PorterDuffXfermode;

    sget-object v19, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v18 .. v19}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 2007
    invoke-virtual {v5, v10, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 2009
    const-string v18, "android.intent.extra.shortcut.ICON"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2056
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

    .line 2057
    return-object v7

    .line 2011
    :cond_0
    sget-object v18, Lcom/htc/launcher/AddAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v19, "createShortcutIntent(), touchIcon should not be null"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1778
    iget-object v0, p0, Lcom/htc/launcher/AddAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    .line 1782
    invoke-virtual {p0}, Lcom/htc/launcher/AddAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 1783
    sget-object v0, Lcom/htc/launcher/AddAdapter;->LOG_TAG:Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/htc/launcher/AddAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    invoke-virtual {p0}, Lcom/htc/launcher/AddAdapter;->notifyDataSetChanged()V

    .line 1785
    iget-object v0, p0, Lcom/htc/launcher/AddAdapter;->mItems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1787
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/AddAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 1791
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .parameter "position"

    .prologue
    .line 1577
    invoke-virtual {p0, p1}, Lcom/htc/launcher/AddAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/AddAdapter$ListItem;

    .line 1578
    .local v0, item:Lcom/htc/launcher/AddAdapter$ListItem;
    iget v1, v0, Lcom/htc/launcher/AddAdapter$ListItem;->actionTag:I

    const/16 v2, 0x68

    if-eq v1, v2, :cond_0

    iget v1, v0, Lcom/htc/launcher/AddAdapter$ListItem;->actionTag:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    .line 1579
    :cond_0
    const/4 v1, 0x0

    .line 1589
    :goto_0
    return v1

    .line 1580
    :cond_1
    invoke-virtual {v0}, Lcom/htc/launcher/AddAdapter$ListItem;->isPersonalizeItem()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/htc/launcher/AddAdapter$ListItem;->isWidget()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1581
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 1582
    :cond_3
    iget v1, v0, Lcom/htc/launcher/AddAdapter$ListItem;->actionTag:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_4

    .line 1583
    const/4 v1, 0x3

    goto :goto_0

    .line 1584
    :cond_4
    invoke-virtual {p0, p1}, Lcom/htc/launcher/AddAdapter;->haseNextLevel(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1585
    const/4 v1, 0x4

    goto :goto_0

    .line 1586
    :cond_5
    iget v1, v0, Lcom/htc/launcher/AddAdapter$ListItem;->actionTag:I

    const/16 v2, 0x66

    if-ne v1, v2, :cond_6

    .line 1587
    const/4 v1, 0x5

    goto :goto_0

    .line 1589
    :cond_6
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public getTitleString()I
    .locals 1

    .prologue
    .line 1796
    iget v0, p0, Lcom/htc/launcher/AddAdapter;->mShowTitleId:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 19
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1603
    if-nez p2, :cond_0

    .line 1604
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/htc/launcher/AddAdapter;->createView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1605
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/htc/launcher/AddAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/launcher/AddAdapter$ListItem;

    .line 1606
    .local v7, item:Lcom/htc/launcher/AddAdapter$ListItem;
    invoke-virtual/range {p0 .. p1}, Lcom/htc/launcher/AddAdapter;->getItemViewType(I)I

    move-result v14

    .line 1607
    .local v14, viewType:I
    if-nez v14, :cond_3

    .line 1608
    const v15, 0x7f070046

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1609
    .local v3, folderItemLayout:Landroid/widget/TextView;
    iget-object v15, v7, Lcom/htc/launcher/AddAdapter$ListItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1610
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/launcher/AddAdapter;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v15}, Lcom/htc/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 1611
    .local v8, res:Landroid/content/res/Resources;
    if-eqz v8, :cond_1

    .line 1612
    const v15, 0x7f0a00f1

    invoke-virtual {v8, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v3, v15, v0, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1613
    :cond_1
    const/4 v15, 0x1

    invoke-virtual {v7, v15}, Lcom/htc/launcher/AddAdapter$ListItem;->setSeperator(Z)V

    .line 1619
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/launcher/AddAdapter;->mLauncher:Lcom/htc/launcher/Launcher;

    const-string v16, "activity_title_bar"

    const/high16 v17, 0x7f02

    invoke-static/range {v15 .. v17}, Lcom/htc/launcher/custom/CustomResourceUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1622
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1710
    .end local v3           #folderItemLayout:Landroid/widget/TextView;
    .end local v8           #res:Landroid/content/res/Resources;
    :cond_2
    :goto_0
    return-object p2

    .line 1623
    :cond_3
    const/4 v15, 0x1

    if-ne v14, v15, :cond_6

    .line 1624
    invoke-virtual {v7}, Lcom/htc/launcher/AddAdapter$ListItem;->isPersonalizeItem()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 1625
    const v15, 0x202001a

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 1626
    .local v5, icon:Landroid/widget/ImageView;
    const v15, 0x2020014

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 1627
    .local v10, summary:Landroid/widget/TextView;
    const v15, 0x2020010

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 1628
    .local v13, title:Landroid/widget/TextView;
    iget-object v15, v7, Lcom/htc/launcher/AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v15}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1629
    iget-object v15, v7, Lcom/htc/launcher/AddAdapter$ListItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1630
    iget-object v15, v7, Lcom/htc/launcher/AddAdapter$ListItem;->summary:Ljava/lang/String;

    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1631
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .end local v5           #icon:Landroid/widget/ImageView;
    .end local v10           #summary:Landroid/widget/TextView;
    .end local v13           #title:Landroid/widget/TextView;
    :cond_4
    move-object/from16 v4, p2

    .line 1633
    check-cast v4, Landroid/widget/FrameLayout;

    .line 1634
    .local v4, frameLayout:Landroid/widget/FrameLayout;
    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1635
    const v15, 0x2020010

    invoke-virtual {v4, v15}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 1636
    .local v12, textView:Landroid/widget/TextView;
    iget-object v15, v7, Lcom/htc/launcher/AddAdapter$ListItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1637
    const v15, 0x2020014

    invoke-virtual {v4, v15}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1638
    .local v11, text2View:Landroid/widget/TextView;
    iget v15, v7, Lcom/htc/launcher/AddAdapter$ListItem;->actionTag:I

    sparse-switch v15, :sswitch_data_0

    .line 1646
    const-string v15, "Android"

    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1650
    :goto_1
    const v15, 0x202001a

    invoke-virtual {v4, v15}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 1651
    .local v6, imageView:Landroid/widget/ImageView;
    iget-object v15, v7, Lcom/htc/launcher/AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_5

    .line 1652
    iget-object v15, v7, Lcom/htc/launcher/AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v15}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1640
    .end local v6           #imageView:Landroid/widget/ImageView;
    :sswitch_0
    const-string v15, "HTC"

    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1643
    :sswitch_1
    const-string v15, "HTC"

    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1654
    .restart local v6       #imageView:Landroid/widget/ImageView;
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/launcher/AddAdapter;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v15}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f020055

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v6, v15}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1655
    sget-boolean v15, Lcom/htc/launcher/AddAdapter;->localLOGV:Z

    if-eqz v15, :cond_2

    sget-object v15, Lcom/htc/launcher/AddAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v16, "AddAdapter(919):List items\'s icon is null"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1659
    .end local v4           #frameLayout:Landroid/widget/FrameLayout;
    .end local v6           #imageView:Landroid/widget/ImageView;
    .end local v11           #text2View:Landroid/widget/TextView;
    .end local v12           #textView:Landroid/widget/TextView;
    :cond_6
    const/4 v15, 0x3

    if-ne v14, v15, :cond_7

    .line 1660
    const v15, 0x2020010

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 1661
    .restart local v12       #textView:Landroid/widget/TextView;
    iget-object v15, v7, Lcom/htc/launcher/AddAdapter$ListItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1662
    const v15, 0x202001b

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 1663
    .local v9, rightIcon:Landroid/widget/ImageView;
    iget v15, v7, Lcom/htc/launcher/AddAdapter$ListItem;->actionTag:I

    packed-switch v15, :pswitch_data_0

    .line 1671
    :goto_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1665
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/launcher/AddAdapter;->mLauncher:Lcom/htc/launcher/Launcher;

    const-string v16, "rosie_list_item_right_btn_newapp"

    const v17, 0x7f020083

    invoke-static/range {v15 .. v17}, Lcom/htc/launcher/custom/CustomResourceUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v15

    invoke-virtual {v9, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 1668
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/launcher/AddAdapter;->mLauncher:Lcom/htc/launcher/Launcher;

    const-string v16, "common_more_selected"

    const v17, 0x7f020082

    invoke-static/range {v15 .. v17}, Lcom/htc/launcher/custom/CustomResourceUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v15

    invoke-virtual {v9, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 1672
    .end local v9           #rightIcon:Landroid/widget/ImageView;
    .end local v12           #textView:Landroid/widget/TextView;
    :cond_7
    const/4 v15, 0x4

    if-ne v14, v15, :cond_a

    .line 1673
    const v15, 0x2020010

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 1674
    .restart local v12       #textView:Landroid/widget/TextView;
    iget-object v15, v7, Lcom/htc/launcher/AddAdapter$ListItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1675
    const v15, 0x202001a

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 1676
    .restart local v6       #imageView:Landroid/widget/ImageView;
    iget-object v15, v7, Lcom/htc/launcher/AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_9

    .line 1677
    iget-object v15, v7, Lcom/htc/launcher/AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v15}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1682
    :cond_8
    :goto_3
    const v15, 0x202001b

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 1683
    .restart local v9       #rightIcon:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/launcher/AddAdapter;->mLauncher:Lcom/htc/launcher/Launcher;

    const-string v16, "common_more"

    const v17, 0x7f02003e

    invoke-static/range {v15 .. v17}, Lcom/htc/launcher/custom/CustomResourceUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v15

    invoke-virtual {v9, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1684
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1679
    .end local v9           #rightIcon:Landroid/widget/ImageView;
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/launcher/AddAdapter;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v15}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f020055

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v6, v15}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1680
    sget-boolean v15, Lcom/htc/launcher/AddAdapter;->localLOGV:Z

    if-eqz v15, :cond_8

    sget-object v15, Lcom/htc/launcher/AddAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v16, "AddAdapter(919):List items\'s icon is null"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1685
    .end local v6           #imageView:Landroid/widget/ImageView;
    .end local v12           #textView:Landroid/widget/TextView;
    :cond_a
    const/4 v15, 0x5

    if-ne v14, v15, :cond_d

    .line 1686
    const v15, 0x2020010

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 1687
    .restart local v12       #textView:Landroid/widget/TextView;
    iget-object v15, v7, Lcom/htc/launcher/AddAdapter$ListItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1688
    const v15, 0x202001a

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 1689
    .restart local v6       #imageView:Landroid/widget/ImageView;
    iget-object v15, v7, Lcom/htc/launcher/AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_c

    .line 1690
    iget-object v15, v7, Lcom/htc/launcher/AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v15}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1695
    :cond_b
    :goto_4
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1692
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/launcher/AddAdapter;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v15}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f020055

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v6, v15}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1693
    sget-boolean v15, Lcom/htc/launcher/AddAdapter;->localLOGV:Z

    if-eqz v15, :cond_b

    sget-object v15, Lcom/htc/launcher/AddAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v16, "AddAdapter(919):List items\'s icon is null"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1697
    .end local v6           #imageView:Landroid/widget/ImageView;
    .end local v12           #textView:Landroid/widget/TextView;
    :cond_d
    const v15, 0x2020010

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 1698
    .restart local v12       #textView:Landroid/widget/TextView;
    const v15, 0x202001a

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 1700
    .restart local v6       #imageView:Landroid/widget/ImageView;
    iget-object v15, v7, Lcom/htc/launcher/AddAdapter$ListItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1701
    iget-object v15, v7, Lcom/htc/launcher/AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_f

    .line 1702
    iget-object v15, v7, Lcom/htc/launcher/AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v15}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1707
    :cond_e
    :goto_5
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1704
    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/launcher/AddAdapter;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v15}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f020055

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v6, v15}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1705
    sget-boolean v15, Lcom/htc/launcher/AddAdapter;->localLOGV:Z

    if-eqz v15, :cond_e

    sget-object v15, Lcom/htc/launcher/AddAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v16, "AddAdapter(919):List items\'s icon is null"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1638
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x6a -> :sswitch_1
    .end sparse-switch

    .line 1663
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1599
    const/4 v0, 0x6

    return v0
.end method

.method public haseNextLevel(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 1569
    iget-object v0, p0, Lcom/htc/launcher/AddAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/htc/launcher/AddAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/AddAdapter$ListItem;

    iget v0, v0, Lcom/htc/launcher/AddAdapter$ListItem;->actionTag:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1570
    :cond_0
    const/4 v0, 0x0

    .line 1572
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 1837
    invoke-virtual {p0, p1}, Lcom/htc/launcher/AddAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/AddAdapter$ListItem;

    iget v0, v0, Lcom/htc/launcher/AddAdapter$ListItem;->actionTag:I

    const/16 v1, 0x68

    if-ne v0, v1, :cond_0

    .line 1838
    const/4 v0, 0x0

    .line 1839
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_0
.end method

.method public onSummaryUpdate(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    .line 1847
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1848
    .local v0, action:Ljava/lang/String;
    sget-object v3, Lcom/htc/launcher/AddAdapter;->mAddMenuItems:Ljava/util/ArrayList;

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

    check-cast v2, Lcom/htc/launcher/AddAdapter$ListItem;

    .line 1849
    .local v2, item:Lcom/htc/launcher/AddAdapter$ListItem;
    iget-object v3, v2, Lcom/htc/launcher/AddAdapter$ListItem;->summaryChangedAction:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1850
    const-string v3, "com.htc.intent.EXTRA_SUMMARY"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/launcher/AddAdapter$ListItem;->summary:Ljava/lang/String;

    .line 1851
    sget-boolean v3, Lcom/htc/launcher/AddAdapter;->localLOGV:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/htc/launcher/AddAdapter;->LOG_TAG:Ljava/lang/String;

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

    iget-object v5, v2, Lcom/htc/launcher/AddAdapter$ListItem;->summary:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    :cond_1
    invoke-virtual {p0}, Lcom/htc/launcher/AddAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1855
    .end local v2           #item:Lcom/htc/launcher/AddAdapter$ListItem;
    :cond_2
    return-void
.end method

.method public declared-synchronized resetItems()V
    .locals 6

    .prologue
    .line 423
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/htc/launcher/AddAdapter;->showCheckLog:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/htc/launcher/AddAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v4, "resetItems start"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/htc/launcher/AddAdapter;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-static {v3}, Lcom/htc/launcher/fusion/WidgetProviderInfoCollector;->getWidgetPackages(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/launcher/AddAdapter;->mFxWidgets:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 432
    :cond_1
    :goto_0
    :try_start_2
    invoke-direct {p0}, Lcom/htc/launcher/AddAdapter;->addCHTItems()V

    .line 434
    invoke-direct {p0}, Lcom/htc/launcher/AddAdapter;->addProgramItems()V

    .line 436
    invoke-direct {p0}, Lcom/htc/launcher/AddAdapter;->addShortcutItems()V

    .line 437
    invoke-direct {p0}, Lcom/htc/launcher/AddAdapter;->addCombinedGadgetItems()V

    .line 439
    invoke-direct {p0}, Lcom/htc/launcher/AddAdapter;->addSettingsWidget()V

    .line 441
    invoke-direct {p0}, Lcom/htc/launcher/AddAdapter;->addFolder()V

    .line 442
    invoke-direct {p0}, Lcom/htc/launcher/AddAdapter;->addLiveFolder()V

    .line 443
    invoke-direct {p0}, Lcom/htc/launcher/AddAdapter;->addEXTItems()V

    .line 445
    iget-object v3, p0, Lcom/htc/launcher/AddAdapter;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v3}, Lcom/htc/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 446
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "content://com.htc.launcher.personalize/combined_gadget"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 447
    .local v2, uri:Landroid/net/Uri;
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 448
    iget-boolean v3, p0, Lcom/htc/launcher/AddAdapter;->showCheckLog:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/htc/launcher/AddAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v4, "resetItems end"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 449
    :cond_2
    monitor-exit p0

    return-void

    .line 428
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v2           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 429
    .local v1, ex:Ljava/lang/Exception;
    :try_start_3
    sget-boolean v3, Lcom/htc/launcher/AddAdapter;->localLOGV:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/htc/launcher/AddAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HTC Fusion widgets error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 423
    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public setAdapter(IIZ)V
    .locals 4
    .parameter "level"
    .parameter "index"
    .parameter "isAssignFunction"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 453
    if-nez p1, :cond_2

    .line 455
    invoke-direct {p0}, Lcom/htc/launcher/AddAdapter;->addMenuItems()V

    .line 456
    if-eqz p3, :cond_1

    .line 458
    sget-object v1, Lcom/htc/launcher/AddAdapter;->maddFuncMenuItems:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/htc/launcher/AddAdapter;->mItems:Ljava/util/ArrayList;

    .line 459
    iget-object v1, p0, Lcom/htc/launcher/AddAdapter;->mTitleStrId:[I

    aget v1, v1, v3

    iput v1, p0, Lcom/htc/launcher/AddAdapter;->mShowTitleId:I

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 463
    :cond_1
    iget-object v1, p0, Lcom/htc/launcher/AddAdapter;->mTitleStrId:[I

    aget v1, v1, v2

    iput v1, p0, Lcom/htc/launcher/AddAdapter;->mShowTitleId:I

    .line 464
    sget-object v1, Lcom/htc/launcher/AddAdapter;->mAddMenuItems:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/htc/launcher/AddAdapter;->mItems:Ljava/util/ArrayList;

    goto :goto_0

    .line 467
    :cond_2
    if-lez p1, :cond_0

    .line 469
    sparse-switch p2, :sswitch_data_0

    .line 517
    const/16 v1, 0x258

    if-le p2, v1, :cond_0

    const/16 v1, 0x2bc

    if-ge p2, v1, :cond_0

    .line 518
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v1, p0, Lcom/htc/launcher/AddAdapter;->mExtGroups:I

    if-ge v0, v1, :cond_0

    .line 519
    iget-object v1, p0, Lcom/htc/launcher/AddAdapter;->mExtGroup_id:[I

    aget v1, v1, v0

    if-ne p2, v1, :cond_3

    .line 520
    iget-object v1, p0, Lcom/htc/launcher/AddAdapter;->mTitleStrId:[I

    aget v1, v1, v2

    iput v1, p0, Lcom/htc/launcher/AddAdapter;->mShowTitleId:I

    .line 522
    sget-object v1, Lcom/htc/launcher/AddAdapter;->mAddEXTItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/htc/launcher/AddAdapter;->mItems:Ljava/util/ArrayList;

    goto :goto_0

    .line 474
    .end local v0           #i:I
    :sswitch_0
    invoke-direct {p0}, Lcom/htc/launcher/AddAdapter;->addProgramItems()V

    .line 475
    iget-object v1, p0, Lcom/htc/launcher/AddAdapter;->mTitleStrId:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    iput v1, p0, Lcom/htc/launcher/AddAdapter;->mShowTitleId:I

    .line 476
    sget-object v1, Lcom/htc/launcher/AddAdapter;->mAddProgramItems:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/htc/launcher/AddAdapter;->mItems:Ljava/util/ArrayList;

    goto :goto_0

    .line 481
    :sswitch_1
    iget-object v1, p0, Lcom/htc/launcher/AddAdapter;->mTitleStrId:[I

    aget v1, v1, v3

    iput v1, p0, Lcom/htc/launcher/AddAdapter;->mShowTitleId:I

    .line 482
    sget-object v1, Lcom/htc/launcher/AddAdapter;->mAddShortcutItems:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/htc/launcher/AddAdapter;->mItems:Ljava/util/ArrayList;

    goto :goto_0

    .line 485
    :sswitch_2
    iget-object v1, p0, Lcom/htc/launcher/AddAdapter;->mTitleStrId:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    iput v1, p0, Lcom/htc/launcher/AddAdapter;->mShowTitleId:I

    .line 486
    sget-object v1, Lcom/htc/launcher/AddAdapter;->mAddCombinedGadgetItems:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/htc/launcher/AddAdapter;->mItems:Ljava/util/ArrayList;

    goto :goto_0

    .line 494
    :sswitch_3
    iget-object v1, p0, Lcom/htc/launcher/AddAdapter;->mTitleStrId:[I

    const/4 v2, 0x7

    aget v1, v1, v2

    iput v1, p0, Lcom/htc/launcher/AddAdapter;->mShowTitleId:I

    .line 495
    sget-object v1, Lcom/htc/launcher/AddAdapter;->mAddSettingsWidgetItems:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/htc/launcher/AddAdapter;->mItems:Ljava/util/ArrayList;

    goto :goto_0

    .line 504
    :sswitch_4
    iget-object v1, p0, Lcom/htc/launcher/AddAdapter;->mTitleStrId:[I

    const/4 v2, 0x6

    aget v1, v1, v2

    iput v1, p0, Lcom/htc/launcher/AddAdapter;->mShowTitleId:I

    .line 505
    sget-object v1, Lcom/htc/launcher/AddAdapter;->mAddFolderItems:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/htc/launcher/AddAdapter;->mItems:Ljava/util/ArrayList;

    goto :goto_0

    .line 509
    :sswitch_5
    iget-object v1, p0, Lcom/htc/launcher/AddAdapter;->mTitleStrId:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    iput v1, p0, Lcom/htc/launcher/AddAdapter;->mShowTitleId:I

    .line 510
    sget-object v1, Lcom/htc/launcher/AddAdapter;->mAddLiveFolderItems:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/htc/launcher/AddAdapter;->mItems:Ljava/util/ArrayList;

    goto :goto_0

    .line 513
    :sswitch_6
    iget-object v1, p0, Lcom/htc/launcher/AddAdapter;->mTitleStrId:[I

    const/16 v2, 0x8

    aget v1, v1, v2

    iput v1, p0, Lcom/htc/launcher/AddAdapter;->mShowTitleId:I

    .line 514
    sget-object v1, Lcom/htc/launcher/AddAdapter;->mAddCHTItems:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/htc/launcher/AddAdapter;->mItems:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 518
    .restart local v0       #i:I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 469
    nop

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

.method public updateSummary()V
    .locals 0

    .prologue
    .line 1861
    return-void
.end method
