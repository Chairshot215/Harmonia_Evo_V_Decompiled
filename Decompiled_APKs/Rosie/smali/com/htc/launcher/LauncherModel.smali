.class public Lcom/htc/launcher/LauncherModel;
.super Ljava/lang/Object;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/launcher/LauncherModel$addOrMoveItemInDatabaseRunner;,
        Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;,
        Lcom/htc/launcher/LauncherModel$ApplicationsLoader;
    }
.end annotation


# static fields
.field private static final APPLICATION_NOT_RESPONDING_TIMEOUT:J = 0x1388L

.field private static final DEBUG:Z = false

.field static final DEBUG_LOADERS:Z = true

.field private static final DEFAULT_APPLICATIONS_NUMBER:I = 0x2a

.field public static final FOLDER_MAXIMUM_COUNT:I = 0x10

.field private static final INITIAL_ICON_CACHE_CAPACITY:I = 0x32

.field static final LOG_TAG:Ljava/lang/String; = "HomeLoaders"

.field public static final SORT_BY_LAUNCH_COUNT_DESC:I = 0x67

.field public static final SORT_BY_NAME:I = 0x64

.field public static final SORT_BY_OPERATOR_TAB:I = 0x68

.field public static final SORT_BY_TIME_NEW_TO_OLD:I = 0x65

.field public static final SORT_BY_TIME_OLD_TO_NEW:I = 0x66

.field private static final UI_NOTIFICATION_RATE:I = 0x4

.field private static final lockRun:Ljava/lang/Object;

.field private static m_nCellCountX:I

.field private static m_nCellCountY:I

.field private static sUsConfiguration:Landroid/content/res/Configuration;

.field private static sUsageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sUsageStatsService:Lcom/htc/app/HtcUsageStats;


# instance fields
.field private final appLoaderLock:Ljava/lang/Object;

.field private dataSetChangedNotifier:Ljava/lang/Runnable;

.field private final mAppInfoCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/htc/launcher/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field mApplications:Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;

.field private mApplicationsAdapter:Lcom/htc/launcher/ApplicationsAdapter;

.field private mApplicationsLoaded:Z

.field private mApplicationsLoader:Lcom/htc/launcher/LauncherModel$ApplicationsLoader;

.field private mButtonBarItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDesktopAppWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/LauncherAppWidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDesktopItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDesktopItemsLoaded:Z

.field private mDesktopItemsLoader:Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;

.field private mDesktopLoaderThread:Ljava/lang/Thread;

.field private mFolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/htc/launcher/FolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private skipOutputAllDeskItems:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/launcher/LauncherModel;->lockRun:Ljava/lang/Object;

    .line 1803
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    sput-object v0, Lcom/htc/launcher/LauncherModel;->sUsConfiguration:Landroid/content/res/Configuration;

    .line 1805
    sget-object v0, Lcom/htc/launcher/LauncherModel;->sUsConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 1806
    sget-object v0, Lcom/htc/launcher/LauncherModel;->sUsConfiguration:Landroid/content/res/Configuration;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iput-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1807
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/launcher/LauncherModel;->skipOutputAllDeskItems:Z

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/LauncherModel;->appLoaderLock:Ljava/lang/Object;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/htc/launcher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    .line 345
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/launcher/LauncherModel;->dataSetChangedNotifier:Ljava/lang/Runnable;

    .line 1848
    return-void
.end method

.method static synthetic access$000(Lcom/htc/launcher/LauncherModel;)Lcom/htc/launcher/ApplicationsAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/launcher/LauncherModel;->mApplicationsAdapter:Lcom/htc/launcher/ApplicationsAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/launcher/LauncherModel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/launcher/LauncherModel;->appLoaderLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/launcher/LauncherModel;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/launcher/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/htc/launcher/LauncherModel;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/htc/launcher/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/launcher/LauncherModel;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/launcher/LauncherModel;->mDesktopAppWidgets:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/htc/launcher/LauncherModel;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/htc/launcher/LauncherModel;->mDesktopAppWidgets:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/htc/launcher/LauncherModel;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/launcher/LauncherModel;->mFolders:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/htc/launcher/LauncherModel;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/htc/launcher/LauncherModel;->mFolders:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/htc/launcher/LauncherModel;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/launcher/LauncherModel;->mButtonBarItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/htc/launcher/LauncherModel;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/htc/launcher/LauncherModel;->mButtonBarItems:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1400(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/database/Cursor;Lcom/htc/launcher/Launcher;II)Lcom/htc/launcher/ApplicationInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 68
    invoke-static/range {p0 .. p5}, Lcom/htc/launcher/LauncherModel;->getApplicationInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/database/Cursor;Lcom/htc/launcher/Launcher;II)Lcom/htc/launcher/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/launcher/LauncherModel;Landroid/database/Cursor;Lcom/htc/launcher/Launcher;IIII)Lcom/htc/launcher/ApplicationInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 68
    invoke-direct/range {p0 .. p6}, Lcom/htc/launcher/LauncherModel;->getApplicationInfoShortcut(Landroid/database/Cursor;Lcom/htc/launcher/Launcher;IIII)Lcom/htc/launcher/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/launcher/LauncherModel;Landroid/content/Context;Ljava/util/HashMap;J)Lcom/htc/launcher/FolderInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/launcher/LauncherModel;->findOrMakeUserFolder(Landroid/content/Context;Ljava/util/HashMap;J)Lcom/htc/launcher/FolderInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/launcher/LauncherModel;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/launcher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/launcher/LauncherModel;Landroid/content/pm/PackageManager;Ljava/util/HashMap;Landroid/content/pm/ResolveInfo;Lcom/htc/launcher/Launcher;)Lcom/htc/launcher/ApplicationInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/launcher/LauncherModel;->makeAndCacheApplicationInfo(Landroid/content/pm/PackageManager;Ljava/util/HashMap;Landroid/content/pm/ResolveInfo;Lcom/htc/launcher/Launcher;)Lcom/htc/launcher/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/launcher/LauncherModel;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/htc/launcher/LauncherModel;->getDataSetChangeNotified()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/launcher/LauncherModel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/htc/launcher/LauncherModel;->mApplicationsLoaded:Z

    return p1
.end method

.method static synthetic access$700()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/htc/launcher/LauncherModel;->lockRun:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/launcher/LauncherModel;Lcom/htc/launcher/Launcher;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/htc/launcher/LauncherModel;->startApplicationsLoader(Lcom/htc/launcher/Launcher;)V

    return-void
.end method

.method static synthetic access$902(Lcom/htc/launcher/LauncherModel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/htc/launcher/LauncherModel;->mDesktopItemsLoaded:Z

    return p1
.end method

.method private addEnabledAndUpdateActivities(Ljava/util/List;Lcom/htc/launcher/Launcher;)Z
    .locals 11
    .parameter
    .parameter "launcher"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Lcom/htc/launcher/Launcher;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 364
    .local p1, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 365
    .local v6, toAdd:Ljava/util/List;,"Ljava/util/List<Lcom/htc/launcher/ApplicationInfo;>;"
    invoke-static {p2}, Lcom/htc/launcher/ApplicationManager;->instance(Landroid/content/Context;)Lcom/htc/launcher/ApplicationManager;

    move-result-object v0

    .line 367
    .local v0, am:Lcom/htc/launcher/ApplicationManager;
    const/4 v2, 0x0

    .line 369
    .local v2, changed:Z
    iget-object v8, p0, Lcom/htc/launcher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    monitor-enter v8

    .line 370
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 371
    .local v4, info:Landroid/content/pm/ResolveInfo;
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const/4 v10, 0x1

    invoke-virtual {v0, v7, v9, v10}, Lcom/htc/launcher/ApplicationManager;->inHideCustomizationList(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 378
    invoke-virtual {p0}, Lcom/htc/launcher/LauncherModel;->getApplications()Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;

    move-result-object v7

    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v10, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v7, v9, v10}, Lcom/htc/launcher/LauncherModel;->findIntent(Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/launcher/ApplicationInfo;

    move-result-object v1

    .line 382
    .local v1, applicationInfo:Lcom/htc/launcher/ApplicationInfo;
    if-nez v1, :cond_1

    .line 383
    invoke-virtual {p2}, Lcom/htc/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v9, p0, Lcom/htc/launcher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    invoke-direct {p0, v7, v9, v4, p2}, Lcom/htc/launcher/LauncherModel;->makeAndCacheApplicationInfo(Landroid/content/pm/PackageManager;Ljava/util/HashMap;Landroid/content/pm/ResolveInfo;Lcom/htc/launcher/Launcher;)Lcom/htc/launcher/ApplicationInfo;

    move-result-object v1

    .line 386
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    const/4 v2, 0x1

    goto :goto_0

    .line 389
    :cond_1
    invoke-virtual {p2}, Lcom/htc/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-direct {p0, v7, v4, v1}, Lcom/htc/launcher/LauncherModel;->updateAndCacheApplicationInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/htc/launcher/ApplicationInfo;)Z

    move-result v5

    .line 391
    .local v5, tmp:Z
    or-int/2addr v2, v5

    goto :goto_0

    .line 394
    .end local v1           #applicationInfo:Lcom/htc/launcher/ApplicationInfo;
    .end local v4           #info:Landroid/content/pm/ResolveInfo;
    .end local v5           #tmp:Z
    :cond_2
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    if-eqz v2, :cond_3

    .line 397
    invoke-virtual {p0}, Lcom/htc/launcher/LauncherModel;->getApplications()Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->addAll(Ljava/util/Collection;)Z

    .line 399
    iget-object v7, p2, Lcom/htc/launcher/Launcher;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/htc/launcher/LauncherModel;->getDataSetChangeNotified()Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 400
    invoke-direct {p0}, Lcom/htc/launcher/LauncherModel;->getDataSetChangeNotified()Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {p2, v7}, Lcom/htc/launcher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 403
    :cond_3
    return v2

    .line 394
    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7
.end method

.method public static addItemToDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;JIIIZ)J
    .locals 8
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "notify"

    .prologue
    .line 1971
    if-nez p1, :cond_0

    .line 1972
    const-string v4, "LauncherModel"

    const-string v5, "addItemToDatabase() item is null"

    invoke-static {v4, v5}, Lcom/htc/launcher/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1973
    const-wide/16 v4, -0x1

    .line 2011
    :goto_0
    return-wide v4

    .line 1976
    :cond_0
    iput-wide p2, p1, Lcom/htc/launcher/ItemInfo;->container:J

    .line 1977
    iput p4, p1, Lcom/htc/launcher/ItemInfo;->screen:I

    .line 1978
    iput p5, p1, Lcom/htc/launcher/ItemInfo;->cellX:I

    .line 1979
    iput p6, p1, Lcom/htc/launcher/ItemInfo;->cellY:I

    .line 1981
    const-string v4, "LauncherModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[EDIT_DEBUG] LauncherModel.addItemToDatabase() item:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1983
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1984
    .local v3, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1986
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {p1, v3}, Lcom/htc/launcher/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 1988
    if-ltz p5, :cond_1

    if-ltz p6, :cond_1

    .line 1989
    invoke-static {p0}, Lcom/htc/launcher/Launcher;->onSceneModified(Landroid/content/Context;)V

    .line 1990
    sget-object v4, Lcom/htc/launcher/Launcher;->sRefLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/Launcher;

    .line 1991
    .local v1, launcher:Lcom/htc/launcher/Launcher;
    if-eqz v1, :cond_1

    .line 1994
    const/4 v4, 0x1

    const-wide/16 v5, 0x320

    invoke-virtual {v1, v4, v5, v6}, Lcom/htc/launcher/Launcher;->startCreateScenePreviewThread(ZJ)V

    .line 1995
    const-wide/16 v4, 0xfa0

    invoke-virtual {v1, v4, v5}, Lcom/htc/launcher/Launcher;->forceCreateScenePreviewDelay(J)V

    .line 1999
    .end local v1           #launcher:Lcom/htc/launcher/Launcher;
    :cond_1
    if-eqz p7, :cond_3

    sget-object v4, Lcom/htc/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    :goto_1
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 2002
    .local v2, result:Landroid/net/Uri;
    if-eqz v2, :cond_4

    .line 2003
    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, p1, Lcom/htc/launcher/ItemInfo;->id:J

    .line 2005
    iget-wide v4, p1, Lcom/htc/launcher/ItemInfo;->container:J

    const-wide/16 v6, -0x65

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 2006
    invoke-static {p0}, Lcom/htc/launcher/LauncherModel;->broadcastLauncherBarChanged(Landroid/content/Context;)V

    .line 2008
    :cond_2
    iget-wide v4, p1, Lcom/htc/launcher/ItemInfo;->id:J

    goto :goto_0

    .line 1999
    .end local v2           #result:Landroid/net/Uri;
    :cond_3
    sget-object v4, Lcom/htc/launcher/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    goto :goto_1

    .line 2011
    .restart local v2       #result:Landroid/net/Uri;
    :cond_4
    const-wide/16 v4, -0x1

    goto :goto_0
.end method

.method public static addOrMoveItemInDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;JIII)V
    .locals 8
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 1884
    new-instance v0, Lcom/htc/launcher/LauncherModel$addOrMoveItemInDatabaseRunner;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/htc/launcher/LauncherModel$addOrMoveItemInDatabaseRunner;-><init>(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;JIII)V

    .line 1885
    .local v0, work:Lcom/htc/launcher/LauncherModel$addOrMoveItemInDatabaseRunner;
    invoke-virtual {v0}, Lcom/htc/launcher/LauncherModel$addOrMoveItemInDatabaseRunner;->run()V

    .line 1886
    return-void
.end method

.method static adjustItemOrigId(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "workspaceId"

    .prologue
    const/4 v3, 0x0

    .line 2361
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2362
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "workspace_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2363
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "_adjust_insaved_item_orig_id"

    invoke-static {v2}, Lcom/htc/launcher/LauncherSettings;->getSpecialAction(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2366
    return-void
.end method

.method static backupAllItems(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 2571
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "_backup_all_items"

    invoke-static {v1}, Lcom/htc/launcher/LauncherSettings;->getSpecialAction(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2574
    return-void
.end method

.method public static broadcastLauncherBarChanged(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 2790
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.launcher.intent.LAUNCHER_BAR_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2791
    .local v0, launcherBarChangedIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2792
    return-void
.end method

.method static cleanFoldersInDatabase(Landroid/content/Context;)V
    .locals 42
    .parameter "context"

    .prologue
    .line 2092
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2093
    .local v2, cr:Landroid/content/ContentResolver;
    const/16 v20, 0x0

    .line 2096
    .local v20, folders:Landroid/database/Cursor;
    :try_start_0
    sget-object v3, Lcom/htc/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    .line 2097
    .local v3, contentUri:Landroid/net/Uri;
    const-string v37, "_id"

    .line 2098
    .local v37, strColId:Ljava/lang/String;
    const-string v39, "screen"

    .line 2099
    .local v39, strColScreen:Ljava/lang/String;
    const-string v36, "container"

    .line 2100
    .local v36, strColContainer:Ljava/lang/String;
    const-string v34, "cellX"

    .line 2101
    .local v34, strColCellX:Ljava/lang/String;
    const-string v35, "cellY"

    .line 2102
    .local v35, strColCellY:Ljava/lang/String;
    const-string v38, "intent"

    .line 2105
    .local v38, strColIntent:Ljava/lang/String;
    const/4 v5, 0x5

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "screen"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "container"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "cellX"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "cellY"

    aput-object v6, v4, v5

    .line 2106
    .local v4, projection:[Ljava/lang/String;
    const-string v5, "itemType = 2"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 2109
    if-eqz v20, :cond_9

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2111
    const/4 v5, 0x1

    new-array v12, v5, [Ljava/lang/String;

    .line 2112
    .local v12, strProjection1:[Ljava/lang/String;
    const/4 v5, 0x2

    new-array v7, v5, [Ljava/lang/String;

    .line 2113
    .local v7, strProjection2:[Ljava/lang/String;
    const/4 v5, 0x1

    new-array v14, v5, [Ljava/lang/String;

    .line 2114
    .local v14, strSelection1:[Ljava/lang/String;
    const/4 v5, 0x2

    new-array v9, v5, [Ljava/lang/String;

    .line 2116
    .local v9, strSelection2:[Ljava/lang/String;
    const-string v5, "_id"

    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    .line 2117
    .local v25, nFolderIndexId:I
    const-string v5, "screen"

    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 2118
    .local v26, nFolderIndexScreen:I
    const-string v5, "container"

    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 2119
    .local v24, nFolderIndexContainer:I
    const-string v5, "cellX"

    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 2120
    .local v22, nFolderIndexCellX:I
    const-string v5, "cellY"

    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 2124
    .local v23, nFolderIndexCellY:I
    :cond_0
    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v40

    .line 2128
    .local v40, strFolderId:Ljava/lang/String;
    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v7, v5

    .line 2129
    const/4 v5, 0x1

    const-string v6, "intent"

    aput-object v6, v7, v5

    .line 2130
    const/4 v5, 0x0

    aput-object v40, v9, v5

    .line 2131
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v5

    .line 2132
    const-string v8, "container = ? AND itemType = ?"

    const-string v10, "intent ASC"

    move-object v5, v2

    move-object v6, v3

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 2135
    .local v19, folderContents:Landroid/database/Cursor;
    if-eqz v19, :cond_4

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2137
    const-string v5, "_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v30

    .line 2138
    .local v30, nItemIndexId:I
    const-string v5, "intent"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    .line 2140
    .local v31, nItemIndexIntent:I
    move-object/from16 v0, v19

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v16

    .line 2142
    .local v16, componentName:Landroid/content/ComponentName;
    :cond_1
    :goto_0
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2144
    move-object/from16 v0, v19

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    .line 2146
    .local v17, componentNameNext:Landroid/content/ComponentName;
    invoke-virtual/range {v16 .. v17}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v5

    if-nez v5, :cond_3

    .line 2147
    move-object/from16 v0, v19

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 2149
    .local v29, nItemIdNext:I
    const/4 v5, 0x0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v14, v5

    .line 2150
    const-string v5, "_id = ?"

    invoke-virtual {v2, v3, v5, v14}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v32

    .line 2151
    .local v32, nResult:I
    const/4 v5, 0x1

    move/from16 v0, v32

    if-lt v0, v5, :cond_1

    .line 2152
    const-string v5, "HomeLoaders"

    const-string v6, "cleanFoldersInDatabase => Successfully deleted duplicate item(%d), component name: %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v10, 0x1

    aput-object v17, v8, v10

    invoke-static {v5, v6, v8}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2222
    .end local v3           #contentUri:Landroid/net/Uri;
    .end local v4           #projection:[Ljava/lang/String;
    .end local v7           #strProjection2:[Ljava/lang/String;
    .end local v9           #strSelection2:[Ljava/lang/String;
    .end local v12           #strProjection1:[Ljava/lang/String;
    .end local v14           #strSelection1:[Ljava/lang/String;
    .end local v16           #componentName:Landroid/content/ComponentName;
    .end local v17           #componentNameNext:Landroid/content/ComponentName;
    .end local v19           #folderContents:Landroid/database/Cursor;
    .end local v22           #nFolderIndexCellX:I
    .end local v23           #nFolderIndexCellY:I
    .end local v24           #nFolderIndexContainer:I
    .end local v25           #nFolderIndexId:I
    .end local v26           #nFolderIndexScreen:I
    .end local v29           #nItemIdNext:I
    .end local v30           #nItemIndexId:I
    .end local v31           #nItemIndexIntent:I
    .end local v32           #nResult:I
    .end local v34           #strColCellX:Ljava/lang/String;
    .end local v35           #strColCellY:Ljava/lang/String;
    .end local v36           #strColContainer:Ljava/lang/String;
    .end local v37           #strColId:Ljava/lang/String;
    .end local v38           #strColIntent:Ljava/lang/String;
    .end local v39           #strColScreen:Ljava/lang/String;
    .end local v40           #strFolderId:Ljava/lang/String;
    :catch_0
    move-exception v18

    .line 2223
    .local v18, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v5, "HomeLoaders"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2227
    if-eqz v20, :cond_2

    .line 2228
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 2231
    .end local v18           #ex:Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-void

    .line 2160
    .restart local v3       #contentUri:Landroid/net/Uri;
    .restart local v4       #projection:[Ljava/lang/String;
    .restart local v7       #strProjection2:[Ljava/lang/String;
    .restart local v9       #strSelection2:[Ljava/lang/String;
    .restart local v12       #strProjection1:[Ljava/lang/String;
    .restart local v14       #strSelection1:[Ljava/lang/String;
    .restart local v16       #componentName:Landroid/content/ComponentName;
    .restart local v17       #componentNameNext:Landroid/content/ComponentName;
    .restart local v19       #folderContents:Landroid/database/Cursor;
    .restart local v22       #nFolderIndexCellX:I
    .restart local v23       #nFolderIndexCellY:I
    .restart local v24       #nFolderIndexContainer:I
    .restart local v25       #nFolderIndexId:I
    .restart local v26       #nFolderIndexScreen:I
    .restart local v30       #nItemIndexId:I
    .restart local v31       #nItemIndexIntent:I
    .restart local v34       #strColCellX:Ljava/lang/String;
    .restart local v35       #strColCellY:Ljava/lang/String;
    .restart local v36       #strColContainer:Ljava/lang/String;
    .restart local v37       #strColId:Ljava/lang/String;
    .restart local v38       #strColIntent:Ljava/lang/String;
    .restart local v39       #strColScreen:Ljava/lang/String;
    .restart local v40       #strFolderId:Ljava/lang/String;
    :cond_3
    move-object/from16 v16, v17

    goto :goto_0

    .line 2165
    .end local v16           #componentName:Landroid/content/ComponentName;
    .end local v17           #componentNameNext:Landroid/content/ComponentName;
    .end local v30           #nItemIndexId:I
    .end local v31           #nItemIndexIntent:I
    :cond_4
    if-eqz v19, :cond_5

    .line 2166
    :try_start_2
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 2171
    :cond_5
    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v12, v5

    .line 2172
    const/4 v5, 0x0

    aput-object v40, v14, v5

    .line 2173
    const-string v13, "container = ?"

    const-string v15, "_id DESC"

    move-object v10, v2

    move-object v11, v3

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v33

    .line 2175
    .local v33, remainingfolderContents:Landroid/database/Cursor;
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->getCount()I

    move-result v27

    .line 2177
    .local v27, nItemCount:I
    const/16 v5, 0x10

    move/from16 v0, v27

    if-le v0, v5, :cond_b

    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2179
    const-string v5, "_id"

    move-object/from16 v0, v33

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v30

    .line 2181
    .restart local v30       #nItemIndexId:I
    add-int/lit8 v21, v27, -0x10

    .local v21, i:I
    :goto_2
    if-lez v21, :cond_7

    .line 2182
    move-object/from16 v0, v33

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 2184
    .local v28, nItemId:I
    const/4 v5, 0x0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v14, v5

    .line 2185
    const-string v5, "_id = ?"

    invoke-virtual {v2, v3, v5, v14}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v32

    .line 2186
    .restart local v32       #nResult:I
    const/4 v5, 0x1

    move/from16 v0, v32

    if-lt v0, v5, :cond_6

    .line 2187
    const-string v5, "HomeLoaders"

    const-string v6, "cleanFoldersInDatabase => Deleted excess folder item(%d)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v10

    invoke-static {v5, v6, v8}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2190
    :cond_6
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_a

    .line 2215
    .end local v21           #i:I
    .end local v28           #nItemId:I
    .end local v30           #nItemIndexId:I
    .end local v32           #nResult:I
    :cond_7
    :goto_3
    if-eqz v33, :cond_8

    .line 2216
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V

    .line 2219
    :cond_8
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v5

    if-nez v5, :cond_0

    .line 2227
    .end local v7           #strProjection2:[Ljava/lang/String;
    .end local v9           #strSelection2:[Ljava/lang/String;
    .end local v12           #strProjection1:[Ljava/lang/String;
    .end local v14           #strSelection1:[Ljava/lang/String;
    .end local v19           #folderContents:Landroid/database/Cursor;
    .end local v22           #nFolderIndexCellX:I
    .end local v23           #nFolderIndexCellY:I
    .end local v24           #nFolderIndexContainer:I
    .end local v25           #nFolderIndexId:I
    .end local v26           #nFolderIndexScreen:I
    .end local v27           #nItemCount:I
    .end local v33           #remainingfolderContents:Landroid/database/Cursor;
    .end local v40           #strFolderId:Ljava/lang/String;
    :cond_9
    if-eqz v20, :cond_2

    .line 2228
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2181
    .restart local v7       #strProjection2:[Ljava/lang/String;
    .restart local v9       #strSelection2:[Ljava/lang/String;
    .restart local v12       #strProjection1:[Ljava/lang/String;
    .restart local v14       #strSelection1:[Ljava/lang/String;
    .restart local v19       #folderContents:Landroid/database/Cursor;
    .restart local v21       #i:I
    .restart local v22       #nFolderIndexCellX:I
    .restart local v23       #nFolderIndexCellY:I
    .restart local v24       #nFolderIndexContainer:I
    .restart local v25       #nFolderIndexId:I
    .restart local v26       #nFolderIndexScreen:I
    .restart local v27       #nItemCount:I
    .restart local v28       #nItemId:I
    .restart local v30       #nItemIndexId:I
    .restart local v32       #nResult:I
    .restart local v33       #remainingfolderContents:Landroid/database/Cursor;
    .restart local v40       #strFolderId:Ljava/lang/String;
    :cond_a
    add-int/lit8 v21, v21, -0x1

    goto :goto_2

    .line 2198
    .end local v21           #i:I
    .end local v28           #nItemId:I
    .end local v30           #nItemIndexId:I
    .end local v32           #nResult:I
    :cond_b
    const/4 v5, 0x1

    move/from16 v0, v27

    if-gt v0, v5, :cond_7

    .line 2200
    const/4 v5, 0x0

    :try_start_3
    aput-object v40, v14, v5

    .line 2201
    const-string v5, "_id = ?"

    invoke-virtual {v2, v3, v5, v14}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2203
    const/4 v5, 0x1

    move/from16 v0, v27

    if-ne v0, v5, :cond_7

    .line 2205
    new-instance v41, Landroid/content/ContentValues;

    invoke-direct/range {v41 .. v41}, Landroid/content/ContentValues;-><init>()V

    .line 2206
    .local v41, values:Landroid/content/ContentValues;
    const-string v5, "container"

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2207
    const-string v5, "screen"

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2208
    const-string v5, "cellX"

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2209
    const-string v5, "cellY"

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2210
    const/4 v5, 0x0

    aput-object v40, v14, v5

    .line 2211
    const-string v5, "container = ?"

    move-object/from16 v0, v41

    invoke-virtual {v2, v3, v0, v5, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3

    .line 2227
    .end local v3           #contentUri:Landroid/net/Uri;
    .end local v4           #projection:[Ljava/lang/String;
    .end local v7           #strProjection2:[Ljava/lang/String;
    .end local v9           #strSelection2:[Ljava/lang/String;
    .end local v12           #strProjection1:[Ljava/lang/String;
    .end local v14           #strSelection1:[Ljava/lang/String;
    .end local v19           #folderContents:Landroid/database/Cursor;
    .end local v22           #nFolderIndexCellX:I
    .end local v23           #nFolderIndexCellY:I
    .end local v24           #nFolderIndexContainer:I
    .end local v25           #nFolderIndexId:I
    .end local v26           #nFolderIndexScreen:I
    .end local v27           #nItemCount:I
    .end local v33           #remainingfolderContents:Landroid/database/Cursor;
    .end local v34           #strColCellX:Ljava/lang/String;
    .end local v35           #strColCellY:Ljava/lang/String;
    .end local v36           #strColContainer:Ljava/lang/String;
    .end local v37           #strColId:Ljava/lang/String;
    .end local v38           #strColIntent:Ljava/lang/String;
    .end local v39           #strColScreen:Ljava/lang/String;
    .end local v40           #strFolderId:Ljava/lang/String;
    .end local v41           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v5

    if-eqz v20, :cond_c

    .line 2228
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v5
.end method

.method static deleteAllItemsFromDatabase(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 2341
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2344
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "HomeLoaders"

    const-string v2, "deleteAllItemsFromDatabase"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2346
    sget-object v1, Lcom/htc/launcher/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2347
    return-void
.end method

.method static deleteAllItemsFromDatabase(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "workspaceId"

    .prologue
    .line 2331
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2334
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "HomeLoaders"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteAllItemsFromDatabase ws="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2336
    sget-object v1, Lcom/htc/launcher/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "workspace_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2338
    return-void
.end method

.method static deleteItemFromDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;)V
    .locals 7
    .parameter "context"
    .parameter "item"

    .prologue
    const/4 v6, 0x0

    .line 2051
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2053
    .local v0, cr:Landroid/content/ContentResolver;
    if-nez p1, :cond_1

    .line 2071
    :cond_0
    :goto_0
    return-void

    .line 2058
    :cond_1
    const-string v2, "HomeLoaders"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteItemFromDatabase item="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/htc/launcher/ItemInfo;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    iget-wide v2, p1, Lcom/htc/launcher/ItemInfo;->id:J

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/htc/launcher/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 2064
    .local v1, deleted_Row:I
    invoke-static {p0, p1}, Lcom/htc/launcher/LauncherModel;->sendItemRemoved(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;)V

    .line 2068
    if-lez v1, :cond_0

    iget-wide v2, p1, Lcom/htc/launcher/ItemInfo;->container:J

    const-wide/16 v4, -0x3e5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iget-wide v2, p1, Lcom/htc/launcher/ItemInfo;->container:J

    const-wide/16 v4, -0x65

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 2069
    :cond_2
    invoke-static {p0}, Lcom/htc/launcher/LauncherModel;->broadcastLauncherBarChanged(Landroid/content/Context;)V

    goto :goto_0
.end method

.method static deleteLiveFoldersFromDatabase(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 2351
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2354
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "HomeLoaders"

    const-string v2, "deleteLiveFoldersFromDatabase"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2356
    sget-object v1, Lcom/htc/launcher/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    const-string v2, "itemType=3"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2358
    return-void
.end method

.method static deleteScene(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "sceneId"

    .prologue
    const/4 v4, 0x0

    .line 2234
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2237
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "HomeLoaders"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete scene id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2239
    sget-object v1, Lcom/htc/launcher/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "workspace_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2242
    sget-object v1, Lcom/htc/launcher/LauncherSettings$ScenePagesInfo;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2245
    return-void
.end method

.method static deleteUserFolderContentsFromDatabase(Landroid/content/Context;Lcom/htc/launcher/FolderInfo;)V
    .locals 9
    .parameter "context"
    .parameter "info"

    .prologue
    const/4 v8, 0x0

    .line 2251
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2254
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v4, "HomeLoaders"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteUserFolderContentsFromDatabase folder="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p1, Lcom/htc/launcher/ItemInfo;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2257
    iget-wide v4, p1, Lcom/htc/launcher/ItemInfo;->id:J

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/htc/launcher/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 2258
    .local v3, nDeletedFolderInfoRow:I
    if-lez v3, :cond_1

    iget-wide v4, p1, Lcom/htc/launcher/ItemInfo;->container:J

    const-wide/16 v6, -0x3e5

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    iget-wide v4, p1, Lcom/htc/launcher/ItemInfo;->container:J

    const-wide/16 v6, -0x65

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 2260
    :cond_0
    invoke-static {p0}, Lcom/htc/launcher/LauncherModel;->broadcastLauncherBarChanged(Landroid/content/Context;)V

    .line 2263
    :cond_1
    sget-object v4, Lcom/htc/launcher/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "container="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p1, Lcom/htc/launcher/ItemInfo;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2268
    iget-object v4, p1, Lcom/htc/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/launcher/ApplicationInfo;

    .line 2269
    .local v2, item:Lcom/htc/launcher/ApplicationInfo;
    invoke-static {p0, v2}, Lcom/htc/launcher/LauncherModel;->sendItemRemoved(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;)V

    goto :goto_0

    .line 2272
    .end local v2           #item:Lcom/htc/launcher/ApplicationInfo;
    :cond_2
    return-void
.end method

.method static duplicateAllItems(Landroid/content/Context;II)V
    .locals 30
    .parameter "context"
    .parameter "fromWorkspaceId"
    .parameter "toWorkspaceId"

    .prologue
    .line 2375
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2379
    .local v2, contentResolver:Landroid/content/ContentResolver;
    const-string v3, "HomeLoaders"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteAllItems for duplicationAllItems ws="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2381
    sget-object v3, Lcom/htc/launcher/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "workspace_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2384
    sget-object v3, Lcom/htc/launcher/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "workspace_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2388
    .local v9, c:Landroid/database/Cursor;
    const-string v3, "_id"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 2389
    .local v18, idIndex:I
    const-string v3, "intent"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 2390
    .local v19, intentIndex:I
    const-string v3, "title"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 2391
    .local v27, titleIndex:I
    const-string v3, "iconType"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 2392
    .local v17, iconTypeIndex:I
    const-string v3, "icon"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 2393
    .local v14, iconIndex:I
    const-string v3, "iconPackage"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 2394
    .local v15, iconPackageIndex:I
    const-string v3, "iconResource"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 2395
    .local v16, iconResourceIndex:I
    const-string v3, "container"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 2396
    .local v12, containerIndex:I
    const-string v3, "itemType"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 2397
    .local v21, itemTypeIndex:I
    const-string v3, "appWidgetId"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 2398
    .local v8, appWidgetIdIndex:I
    const-string v3, "screen"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 2399
    .local v24, screenIndex:I
    const-string v3, "cellX"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 2400
    .local v10, cellXIndex:I
    const-string v3, "cellY"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 2401
    .local v11, cellYIndex:I
    const-string v3, "props"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 2402
    .local v23, propsIndex:I
    const-string v3, "spanX"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    .line 2403
    .local v25, spanXIndex:I
    const-string v3, "spanY"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 2404
    .local v26, spanYIndex:I
    const-string v3, "uri"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    .line 2405
    .local v28, uriIndex:I
    const-string v3, "displayMode"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 2406
    .local v13, displayModeIndex:I
    const-string v3, "isShortcut"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 2408
    .local v20, isShortcutIndex:I
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 2410
    .local v22, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2411
    new-instance v29, Landroid/content/ContentValues;

    invoke-direct/range {v29 .. v29}, Landroid/content/ContentValues;-><init>()V

    .line 2412
    .local v29, values:Landroid/content/ContentValues;
    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2414
    const-string v3, "orig_id"

    move/from16 v0, v18

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2415
    const-string v3, "title"

    move/from16 v0, v27

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2416
    const-string v3, "intent"

    move/from16 v0, v19

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2417
    const-string v3, "container"

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2418
    const-string v3, "screen"

    move/from16 v0, v24

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2419
    const-string v3, "cellX"

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "displayMode"

    invoke-interface {v9, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2420
    const-string v3, "cellY"

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2421
    const-string v3, "spanX"

    move/from16 v0, v25

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2422
    const-string v3, "spanY"

    move/from16 v0, v26

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2423
    const-string v3, "itemType"

    move/from16 v0, v21

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2424
    const-string v3, "appWidgetId"

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2425
    const-string v3, "isShortcut"

    move/from16 v0, v20

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2426
    const-string v3, "iconType"

    move/from16 v0, v17

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2427
    const-string v3, "iconPackage"

    invoke-interface {v9, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2428
    const-string v3, "iconResource"

    move/from16 v0, v16

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2429
    const-string v3, "icon"

    invoke-interface {v9, v14}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2430
    const-string v3, "props"

    move/from16 v0, v23

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2431
    const-string v3, "uri"

    move/from16 v0, v28

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2432
    const-string v3, "displayMode"

    invoke-interface {v9, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2433
    const-string v3, "workspace_id"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 2435
    .end local v29           #values:Landroid/content/ContentValues;
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2437
    sget-object v4, Lcom/htc/launcher/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/content/ContentValues;

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/ContentValues;

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 2439
    return-void
.end method

.method private static findActivitiesForPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .parameter "packageManager"
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 324
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    const/4 v8, 0x0

    invoke-direct {v5, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 325
    .local v5, mainIntent:Landroid/content/Intent;
    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 328
    .local v1, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .local v6, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_1

    .line 332
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 333
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 334
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 335
    .local v4, info:Landroid/content/pm/ResolveInfo;
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 336
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 337
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 342
    .end local v0           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v4           #info:Landroid/content/pm/ResolveInfo;
    :cond_1
    return-object v6
.end method

.method private findIntent(Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/launcher/ApplicationInfo;
    .locals 8
    .parameter "list"
    .parameter "packageName"
    .parameter "name"

    .prologue
    .line 437
    invoke-virtual {p1}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->originalSize()I

    move-result v2

    .line 439
    .local v2, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 440
    :try_start_0
    invoke-virtual {p1, v4}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->originalGet(I)Lcom/htc/launcher/ApplicationInfo;

    move-result-object v0

    .line 441
    .local v0, applicationInfo:Lcom/htc/launcher/ApplicationInfo;
    iget-object v5, v0, Lcom/htc/launcher/FxShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 442
    .local v1, component:Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .line 452
    .end local v0           #applicationInfo:Lcom/htc/launcher/ApplicationInfo;
    .end local v1           #component:Landroid/content/ComponentName;
    :goto_1
    return-object v0

    .line 439
    .restart local v0       #applicationInfo:Lcom/htc/launcher/ApplicationInfo;
    .restart local v1       #component:Landroid/content/ComponentName;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 447
    .end local v0           #applicationInfo:Lcom/htc/launcher/ApplicationInfo;
    .end local v1           #component:Landroid/content/ComponentName;
    :catch_0
    move-exception v3

    .line 448
    .local v3, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v5, "HomeLoaders"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LauncherModel.findIntent: count="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " pkgName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " clsName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Lcom/htc/launcher/TFC;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 452
    .end local v3           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static findIntent(Ljava/util/List;Landroid/content/ComponentName;)Z
    .locals 5
    .parameter
    .parameter "component"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 456
    .local p0, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 457
    .local v1, className:Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 458
    .local v3, info:Landroid/content/pm/ResolveInfo;
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 459
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 460
    const/4 v4, 0x1

    .line 463
    .end local v0           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v3           #info:Landroid/content/pm/ResolveInfo;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private findOrMakeUserFolder(Landroid/content/Context;Ljava/util/HashMap;J)Lcom/htc/launcher/FolderInfo;
    .locals 2
    .parameter "context"
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/htc/launcher/FolderInfo;",
            ">;J)",
            "Lcom/htc/launcher/FolderInfo;"
        }
    .end annotation

    .prologue
    .line 1324
    .local p2, folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/launcher/FolderInfo;>;"
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/FolderInfo;

    .line 1325
    .local v0, folderInfo:Lcom/htc/launcher/FolderInfo;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/launcher/FolderInfo;

    if-nez v1, :cond_1

    .line 1327
    :cond_0
    new-instance v0, Lcom/htc/launcher/FolderInfo;

    .end local v0           #folderInfo:Lcom/htc/launcher/FolderInfo;
    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/htc/launcher/FolderInfo;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 1328
    .restart local v0       #folderInfo:Lcom/htc/launcher/FolderInfo;
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1330
    :cond_1
    return-object v0
.end method

.method private getAppInfoCache()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/htc/launcher/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    const/4 v1, 0x0

    .line 110
    .local v1, cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/htc/launcher/ApplicationInfo;>;"
    iget-object v3, p0, Lcom/htc/launcher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    monitor-enter v3

    .line 111
    :try_start_0
    iget-object v2, p0, Lcom/htc/launcher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/HashMap;

    move-object v1, v0

    .line 112
    monitor-exit v3

    .line 113
    return-object v1

    .line 112
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static getAppWidgetCount(Landroid/content/Context;I)I
    .locals 7
    .parameter "context"
    .parameter "appWidgetId"

    .prologue
    .line 2577
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2579
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 2581
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/htc/launcher/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appWidgetId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2584
    if-eqz v6, :cond_1

    .line 2585
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 2590
    if-eqz v6, :cond_0

    .line 2591
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return v1

    .line 2587
    :cond_1
    const/4 v1, 0x0

    .line 2590
    if-eqz v6, :cond_0

    .line 2591
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2590
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 2591
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method public static getApplication(Lcom/htc/launcher/config/FavoriteData;Landroid/content/Context;)Lcom/htc/launcher/ApplicationInfo;
    .locals 8
    .parameter "favdata"
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 740
    iget-object v5, p0, Lcom/htc/launcher/config/FavoriteData;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/launcher/config/FavoriteData;->className:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 774
    :cond_0
    :goto_0
    return-object v3

    .line 745
    :cond_1
    new-instance v1, Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/htc/launcher/config/FavoriteData;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/launcher/config/FavoriteData;->className:Ljava/lang/String;

    invoke-direct {v1, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    .local v1, component:Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 747
    .local v4, packageManager:Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 749
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 754
    :goto_1
    if-eqz v0, :cond_0

    .line 755
    new-instance v3, Lcom/htc/launcher/ApplicationInfo;

    invoke-direct {v3}, Lcom/htc/launcher/ApplicationInfo;-><init>()V

    .line 757
    .local v3, itemInfo:Lcom/htc/launcher/ApplicationInfo;
    invoke-virtual {v0, v4}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v3, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 758
    iget-object v5, v3, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    if-nez v5, :cond_2

    .line 759
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v5, v3, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 762
    :cond_2
    const/high16 v5, 0x1020

    invoke-virtual {v3, v1, v5}, Lcom/htc/launcher/ApplicationInfo;->setActivity(Landroid/content/ComponentName;I)V

    .line 764
    invoke-static {v4, v0}, Lcom/htc/launcher/ResourceUtil;->getApplicationIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v3, Lcom/htc/launcher/FxShortcutInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 765
    iget v5, p0, Lcom/htc/launcher/config/FavoriteData;->container:I

    int-to-long v5, v5

    iput-wide v5, v3, Lcom/htc/launcher/ItemInfo;->container:J

    .line 766
    iget v5, p0, Lcom/htc/launcher/config/FavoriteData;->x:I

    iput v5, v3, Lcom/htc/launcher/ItemInfo;->cellX:I

    .line 767
    iget v5, p0, Lcom/htc/launcher/config/FavoriteData;->y:I

    iput v5, v3, Lcom/htc/launcher/ItemInfo;->cellY:I

    .line 768
    iget v5, p0, Lcom/htc/launcher/config/FavoriteData;->screen:I

    iput v5, v3, Lcom/htc/launcher/ItemInfo;->screen:I

    .line 769
    iget v5, p0, Lcom/htc/launcher/config/FavoriteData;->workspaceId:I

    iput v5, v3, Lcom/htc/launcher/ItemInfo;->workspaceId:I

    goto :goto_0

    .line 750
    .end local v3           #itemInfo:Lcom/htc/launcher/ApplicationInfo;
    :catch_0
    move-exception v2

    .line 751
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "HomeLoaders"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t find ActivityInfo for selected application : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static getApplicationInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Lcom/htc/launcher/ApplicationInfo;
    .locals 5
    .parameter "manager"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 1633
    invoke-virtual {p0, p1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 1635
    .local v2, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-nez v2, :cond_0

    .line 1636
    const/4 v1, 0x0

    .line 1649
    :goto_0
    return-object v1

    .line 1639
    :cond_0
    new-instance v1, Lcom/htc/launcher/ApplicationInfo;

    invoke-direct {v1}, Lcom/htc/launcher/ApplicationInfo;-><init>()V

    .line 1640
    .local v1, info:Lcom/htc/launcher/ApplicationInfo;
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1641
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    invoke-static {p0, v0}, Lcom/htc/launcher/ResourceUtil;->getApplicationIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v1, Lcom/htc/launcher/FxShortcutInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 1642
    iget-object v3, v1, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 1643
    :cond_1
    invoke-virtual {v0, p0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v1, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1645
    :cond_2
    iget-object v3, v1, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    if-nez v3, :cond_3

    .line 1646
    const-string v3, ""

    iput-object v3, v1, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1648
    :cond_3
    iput v4, v1, Lcom/htc/launcher/ItemInfo;->itemType:I

    goto :goto_0
.end method

.method private static getApplicationInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/database/Cursor;Lcom/htc/launcher/Launcher;II)Lcom/htc/launcher/ApplicationInfo;
    .locals 10
    .parameter "manager"
    .parameter "intent"
    .parameter "c"
    .parameter "launcher"
    .parameter "iconTypeIndex"
    .parameter "iconIndex"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1593
    invoke-virtual {p0, p1, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 1595
    .local v5, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-nez v5, :cond_0

    .line 1596
    const/4 v4, 0x0

    .line 1625
    :goto_0
    return-object v4

    .line 1599
    :cond_0
    new-instance v4, Lcom/htc/launcher/ApplicationInfo;

    invoke-direct {v4}, Lcom/htc/launcher/ApplicationInfo;-><init>()V

    .line 1600
    .local v4, info:Lcom/htc/launcher/ApplicationInfo;
    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1603
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    invoke-interface {p2, p4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1604
    .local v3, iconType:I
    if-ne v3, v9, :cond_4

    .line 1605
    invoke-interface {p2, p5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 1606
    .local v2, data:[B
    array-length v6, v2

    invoke-static {v2, v8, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1607
    .local v1, bitmap:Landroid/graphics/Bitmap;
    new-instance v6, Lcom/htc/launcher/FastBitmapDrawable;

    invoke-static {v1, p3}, Lcom/htc/launcher/Utilities;->createBitmapThumbnail(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/htc/launcher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v6, v4, Lcom/htc/launcher/FxShortcutInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 1609
    iput-boolean v9, v4, Lcom/htc/launcher/FxShortcutInfo;->filtered:Z

    .line 1610
    iput-boolean v9, v4, Lcom/htc/launcher/FxShortcutInfo;->customIcon:Z

    .line 1618
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #data:[B
    :goto_1
    iget-object v6, v4, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    if-eqz v6, :cond_1

    iget-object v6, v4, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 1619
    :cond_1
    invoke-virtual {v0, p0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v4, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1621
    :cond_2
    iget-object v6, v4, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    if-nez v6, :cond_3

    .line 1622
    const-string v6, ""

    iput-object v6, v4, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1624
    :cond_3
    iput v8, v4, Lcom/htc/launcher/ItemInfo;->itemType:I

    goto :goto_0

    .line 1612
    :cond_4
    invoke-static {p0, v0}, Lcom/htc/launcher/ResourceUtil;->getApplicationIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v4, Lcom/htc/launcher/FxShortcutInfo;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method private getApplicationInfoShortcut(Landroid/database/Cursor;Lcom/htc/launcher/Launcher;IIII)Lcom/htc/launcher/ApplicationInfo;
    .locals 16
    .parameter "c"
    .parameter "launcher"
    .parameter "iconTypeIndex"
    .parameter "iconPackageIndex"
    .parameter "iconResourceIndex"
    .parameter "iconIndex"

    .prologue
    .line 1658
    new-instance v8, Lcom/htc/launcher/ApplicationInfo;

    invoke-direct {v8}, Lcom/htc/launcher/ApplicationInfo;-><init>()V

    .line 1659
    .local v8, info:Lcom/htc/launcher/ApplicationInfo;
    const/4 v14, 0x1

    iput v14, v8, Lcom/htc/launcher/ItemInfo;->itemType:I

    .line 1661
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1662
    .local v7, iconType:I
    packed-switch v7, :pswitch_data_0

    .line 1718
    invoke-virtual/range {p2 .. p2}, Lcom/htc/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iput-object v14, v8, Lcom/htc/launcher/FxShortcutInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 1719
    const/4 v14, 0x0

    iput-boolean v14, v8, Lcom/htc/launcher/FxShortcutInfo;->customIcon:Z

    .line 1722
    :goto_0
    return-object v8

    .line 1664
    :pswitch_0
    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1665
    .local v12, strPackageName:Ljava/lang/String;
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1666
    .local v13, strResourceName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/htc/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 1667
    .local v10, packageManager:Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    .line 1670
    .local v4, drawableIcon:Landroid/graphics/drawable/Drawable;
    if-eqz v12, :cond_0

    if-nez v13, :cond_2

    .line 1671
    :cond_0
    :try_start_0
    new-instance v14, Ljava/lang/Exception;

    invoke-direct {v14}, Ljava/lang/Exception;-><init>()V

    throw v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1680
    :catch_0
    move-exception v5

    .line 1682
    .local v5, e:Ljava/lang/Exception;
    if-eqz v13, :cond_3

    .line 1683
    invoke-virtual/range {p2 .. p2}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-static {v14, v13}, Lcom/htc/launcher/LauncherModel;->getNonScaledBitmapDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    .line 1697
    .end local v5           #e:Ljava/lang/Exception;
    :cond_1
    :goto_1
    if-nez v4, :cond_4

    .line 1698
    invoke-virtual {v10}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iput-object v14, v8, Lcom/htc/launcher/FxShortcutInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 1704
    :goto_2
    new-instance v14, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v14}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    iput-object v14, v8, Lcom/htc/launcher/FxShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 1705
    iget-object v14, v8, Lcom/htc/launcher/FxShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object v12, v14, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 1706
    iget-object v14, v8, Lcom/htc/launcher/FxShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object v13, v14, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 1707
    const/4 v14, 0x0

    iput-boolean v14, v8, Lcom/htc/launcher/FxShortcutInfo;->customIcon:Z

    goto :goto_0

    .line 1674
    :cond_2
    :try_start_1
    invoke-virtual {v10, v12}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v11

    .line 1675
    .local v11, resFromPackage:Landroid/content/res/Resources;
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v11, v13, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 1678
    .local v9, nResId:I
    invoke-virtual {v11, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_1

    .line 1686
    .end local v9           #nResId:I
    .end local v11           #resFromPackage:Landroid/content/res/Resources;
    .restart local v5       #e:Ljava/lang/Exception;
    :cond_3
    if-eqz v12, :cond_1

    .line 1688
    :try_start_2
    invoke-virtual {v10, v12}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v4

    goto :goto_1

    .line 1690
    :catch_1
    move-exception v6

    .line 1691
    .local v6, ex:Ljava/lang/Exception;
    const-string v14, "HomeLoaders"

    const-string v15, "getApplicationInfoShortcut() -- get icon from PackageName is null"

    invoke-static {v14, v15}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1701
    .end local v5           #e:Ljava/lang/Exception;
    .end local v6           #ex:Ljava/lang/Exception;
    :cond_4
    iput-object v4, v8, Lcom/htc/launcher/FxShortcutInfo;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 1710
    .end local v4           #drawableIcon:Landroid/graphics/drawable/Drawable;
    .end local v10           #packageManager:Landroid/content/pm/PackageManager;
    .end local v12           #strPackageName:Ljava/lang/String;
    .end local v13           #strResourceName:Ljava/lang/String;
    :pswitch_1
    move-object/from16 v0, p1

    move/from16 v1, p6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 1711
    .local v3, data:[B
    const/4 v14, 0x0

    array-length v15, v3

    invoke-static {v3, v14, v15}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1712
    .local v2, bitmap:Landroid/graphics/Bitmap;
    new-instance v14, Lcom/htc/launcher/FastBitmapDrawable;

    move-object/from16 v0, p2

    invoke-static {v2, v0}, Lcom/htc/launcher/Utilities;->createBitmapThumbnail(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/htc/launcher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v14, v8, Lcom/htc/launcher/FxShortcutInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 1714
    const/4 v14, 0x1

    iput-boolean v14, v8, Lcom/htc/launcher/FxShortcutInfo;->filtered:Z

    .line 1715
    const/4 v14, 0x1

    iput-boolean v14, v8, Lcom/htc/launcher/FxShortcutInfo;->customIcon:Z

    goto/16 :goto_0

    .line 1662
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static getCellCountX()I
    .locals 1

    .prologue
    .line 2762
    sget v0, Lcom/htc/launcher/LauncherModel;->m_nCellCountX:I

    return v0
.end method

.method static getCellCountY()I
    .locals 1

    .prologue
    .line 2767
    sget v0, Lcom/htc/launcher/LauncherModel;->m_nCellCountY:I

    return v0
.end method

.method public static getCustomAppId(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 8
    .parameter "info"
    .parameter "pm"

    .prologue
    .line 1810
    const/4 v1, 0x0

    .line 1813
    .local v1, id:Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v3, v6, Landroid/content/pm/ActivityInfo;->labelRes:I

    .line 1814
    .local v3, labelRes:I
    if-nez v3, :cond_0

    .line 1815
    iget-object v6, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v6, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 1818
    :cond_0
    if-eqz v3, :cond_2

    .line 1819
    iget-object v6, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v5

    .line 1820
    .local v5, res:Landroid/content/res/Resources;
    new-instance v4, Landroid/content/res/Configuration;

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 1821
    .local v4, origConf:Landroid/content/res/Configuration;
    sget-object v6, Lcom/htc/launcher/LauncherModel;->sUsConfiguration:Landroid/content/res/Configuration;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1822
    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1823
    .local v2, label:Ljava/lang/CharSequence;
    if-eqz v2, :cond_1

    .line 1824
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1827
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1835
    .end local v2           #label:Ljava/lang/CharSequence;
    .end local v3           #labelRes:I
    .end local v4           #origConf:Landroid/content/res/Configuration;
    .end local v5           #res:Landroid/content/res/Resources;
    :cond_2
    :goto_0
    if-nez v1, :cond_3

    .line 1836
    iget-object v6, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v6, :cond_4

    .line 1837
    iget-object v6, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1844
    :cond_3
    :goto_1
    return-object v1

    .line 1830
    :catch_0
    move-exception v0

    .line 1831
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "HomeLoaders"

    const-string v7, "load label failed"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1840
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    iget-object v6, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_1
.end method

.method private declared-synchronized getDataSetChangeNotified()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 348
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/launcher/LauncherModel;->dataSetChangedNotifier:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 349
    new-instance v0, Lcom/htc/launcher/LauncherModel$1;

    invoke-direct {v0, p0}, Lcom/htc/launcher/LauncherModel$1;-><init>(Lcom/htc/launcher/LauncherModel;)V

    iput-object v0, p0, Lcom/htc/launcher/LauncherModel;->dataSetChangedNotifier:Ljava/lang/Runnable;

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/LauncherModel;->dataSetChangedNotifier:Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 348
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getFolder(Landroid/content/Context;Lcom/htc/launcher/config/FavoriteData;)Lcom/htc/launcher/FolderInfo;
    .locals 3
    .parameter "context"
    .parameter "favdata"

    .prologue
    .line 726
    new-instance v0, Lcom/htc/launcher/FolderInfo;

    iget-object v1, p1, Lcom/htc/launcher/config/FavoriteData;->title:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/htc/launcher/FolderInfo;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 728
    .local v0, itemInfo:Lcom/htc/launcher/FolderInfo;
    const-wide/16 v1, -0x64

    iput-wide v1, v0, Lcom/htc/launcher/ItemInfo;->container:J

    .line 729
    iget v1, p1, Lcom/htc/launcher/config/FavoriteData;->x:I

    iput v1, v0, Lcom/htc/launcher/ItemInfo;->cellX:I

    .line 730
    iget v1, p1, Lcom/htc/launcher/config/FavoriteData;->y:I

    iput v1, v0, Lcom/htc/launcher/ItemInfo;->cellY:I

    .line 731
    iget v1, p1, Lcom/htc/launcher/config/FavoriteData;->screen:I

    iput v1, v0, Lcom/htc/launcher/ItemInfo;->screen:I

    .line 732
    iget v1, p1, Lcom/htc/launcher/config/FavoriteData;->workspaceId:I

    iput v1, v0, Lcom/htc/launcher/ItemInfo;->workspaceId:I

    .line 734
    return-object v0
.end method

.method private static getHtcSearchWidgetId(Landroid/content/Context;)I
    .locals 8
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 2620
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2622
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "content://com.htc.launcher.settings/widget_item_types"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2626
    .local v1, CONTENT_URI:Landroid/net/Uri;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "widget_name"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "_id"

    aput-object v5, v2, v3

    const-string v3, "widget_name=\'htcsearchwidgets.MyWidgetItem\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2629
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 2630
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2631
    const-string v2, "_id"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 2632
    .local v7, htcSearchWidgetId:I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2639
    .end local v7           #htcSearchWidgetId:I
    :goto_0
    return v7

    .line 2638
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2639
    const/high16 v7, -0x8000

    goto :goto_0
.end method

.method static getLabel(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 2
    .parameter "manager"
    .parameter "activityInfo"

    .prologue
    .line 829
    invoke-virtual {p1, p0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 830
    .local v0, label:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 831
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 832
    if-nez v0, :cond_0

    .line 833
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 836
    :cond_0
    return-object v0
.end method

.method private static getLaunchCount(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "packageName"
    .parameter "customizeAppId"

    .prologue
    .line 1771
    sget-object v1, Lcom/htc/launcher/LauncherModel;->sUsageMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Lcom/htc/launcher/LauncherModel;->getUsageMapId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1772
    .local v0, launchCount:Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 1775
    const-string v1, "com.htc.android.htcsetupwizard"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Setup"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1776
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 1780
    :goto_0
    return v1

    .line 1778
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 1780
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getNextHostWidgetManagerId(Landroid/content/Context;)I
    .locals 9
    .parameter "context"

    .prologue
    .line 2738
    const/high16 v8, 0x100

    .line 2740
    .local v8, result:I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2741
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/htc/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "appWidgetId"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "appWidgetId DESC LIMIT 1"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 2743
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 2745
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2746
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    .line 2747
    add-int/lit8 v8, v8, 0x1

    .line 2750
    :cond_0
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2757
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_1
    :goto_0
    return v8

    .line 2750
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v6       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2754
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v6           #c:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 2755
    .local v7, e:Landroid/database/SQLException;
    const-string v1, "HomeLoaders"

    const-string v2, "getNextHostWidgetManagerId:"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static getNonScaledBitmapDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3
    .parameter "res"
    .parameter "filename"

    .prologue
    .line 716
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 717
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 718
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 719
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 720
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v2
.end method

.method static getShortcut(Lcom/htc/launcher/config/FavoriteData;Landroid/content/Context;)Lcom/htc/launcher/ApplicationInfo;
    .locals 8
    .parameter "favdata"
    .parameter "launcher"

    .prologue
    const/4 v5, 0x0

    .line 662
    iget-object v4, p0, Lcom/htc/launcher/config/FavoriteData;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/launcher/config/FavoriteData;->className:Ljava/lang/String;

    if-nez v4, :cond_1

    :cond_0
    move-object v0, v5

    .line 712
    :goto_0
    return-object v0

    .line 666
    :cond_1
    new-instance v0, Lcom/htc/launcher/ApplicationInfo;

    invoke-direct {v0}, Lcom/htc/launcher/ApplicationInfo;-><init>()V

    .line 668
    .local v0, info:Lcom/htc/launcher/ApplicationInfo;
    iget v4, p0, Lcom/htc/launcher/config/FavoriteData;->workspaceId:I

    iput v4, v0, Lcom/htc/launcher/ItemInfo;->workspaceId:I

    .line 669
    iget v4, p0, Lcom/htc/launcher/config/FavoriteData;->x:I

    iput v4, v0, Lcom/htc/launcher/ItemInfo;->cellX:I

    .line 670
    iget v4, p0, Lcom/htc/launcher/config/FavoriteData;->y:I

    iput v4, v0, Lcom/htc/launcher/ItemInfo;->cellY:I

    .line 671
    iget v4, p0, Lcom/htc/launcher/config/FavoriteData;->screen:I

    iput v4, v0, Lcom/htc/launcher/ItemInfo;->screen:I

    .line 672
    iget-object v4, p0, Lcom/htc/launcher/config/FavoriteData;->title:Ljava/lang/String;

    iput-object v4, v0, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 673
    const-wide/16 v6, 0x1

    iput-wide v6, v0, Lcom/htc/launcher/ItemInfo;->container:J

    .line 674
    iget v4, p0, Lcom/htc/launcher/config/FavoriteData;->removable:I

    if-nez v4, :cond_3

    const/4 v4, 0x0

    :goto_1
    iput-boolean v4, v0, Lcom/htc/launcher/ItemInfo;->removable:Z

    .line 677
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 678
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.CUSTOMIZE_SHORTCUT"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 679
    iget-object v4, p0, Lcom/htc/launcher/config/FavoriteData;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/launcher/config/FavoriteData;->className:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 682
    iget-object v4, p0, Lcom/htc/launcher/config/FavoriteData;->url:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 683
    iget-object v4, p0, Lcom/htc/launcher/config/FavoriteData;->url:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 684
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 685
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 688
    .end local v3           #uri:Landroid/net/Uri;
    :cond_2
    iput-object v1, v0, Lcom/htc/launcher/FxShortcutInfo;->intent:Landroid/content/Intent;

    .line 691
    iget-object v4, p0, Lcom/htc/launcher/config/FavoriteData;->icon:Ljava/lang/String;

    if-nez v4, :cond_5

    .line 692
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/htc/launcher/LauncherModel;->getApplicationInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Lcom/htc/launcher/ApplicationInfo;

    move-result-object v2

    .line 693
    .local v2, tempinfo:Lcom/htc/launcher/ApplicationInfo;
    if-eqz v2, :cond_4

    .line 694
    iget-object v4, v2, Lcom/htc/launcher/FxShortcutInfo;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v4, v0, Lcom/htc/launcher/FxShortcutInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 702
    :goto_2
    iput-object v5, v0, Lcom/htc/launcher/ItemInfo;->iconname:Ljava/lang/String;

    goto :goto_0

    .line 674
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #tempinfo:Lcom/htc/launcher/ApplicationInfo;
    :cond_3
    const/4 v4, 0x1

    goto :goto_1

    .line 697
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v2       #tempinfo:Lcom/htc/launcher/ApplicationInfo;
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v6, "ic_def_app_icon.png"

    invoke-static {v6}, Lcom/htc/launcher/WidgetPackageManager;->manipulateResourcePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/htc/launcher/LauncherModel;->getNonScaledBitmapDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    iput-object v4, v0, Lcom/htc/launcher/FxShortcutInfo;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 705
    .end local v2           #tempinfo:Lcom/htc/launcher/ApplicationInfo;
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/launcher/config/FavoriteData;->icon:Ljava/lang/String;

    invoke-static {v5}, Lcom/htc/launcher/WidgetPackageManager;->manipulateResourcePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/launcher/LauncherModel;->getNonScaledBitmapDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    iput-object v4, v0, Lcom/htc/launcher/FxShortcutInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 709
    iget-object v4, p0, Lcom/htc/launcher/config/FavoriteData;->icon:Ljava/lang/String;

    invoke-static {v4}, Lcom/htc/launcher/WidgetPackageManager;->manipulateResourcePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/htc/launcher/ItemInfo;->iconname:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private static getUsageMapId(Lcom/android/internal/os/HtcIfAppUsageStats;)Ljava/lang/String;
    .locals 2
    .parameter "usageStats"

    .prologue
    .line 1747
    invoke-interface {p0}, Lcom/android/internal/os/HtcIfAppUsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/internal/os/HtcIfAppUsageStats;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/LauncherModel;->getUsageMapId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getUsageMapId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "packageName"
    .parameter "customizeAppId"

    .prologue
    .line 1742
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getWorkspaceLayoutCellCountX()I
    .locals 1

    .prologue
    .line 2781
    sget v0, Lcom/htc/launcher/LauncherModel;->m_nCellCountX:I

    return v0
.end method

.method static getWorkspaceLayoutCellCountY()I
    .locals 1

    .prologue
    .line 2785
    sget v0, Lcom/htc/launcher/LauncherModel;->m_nCellCountY:I

    return v0
.end method

.method public static initAddItemToDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;JIIIZ)V
    .locals 3
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "notify"

    .prologue
    .line 2019
    iput-wide p2, p1, Lcom/htc/launcher/ItemInfo;->container:J

    .line 2020
    iput p4, p1, Lcom/htc/launcher/ItemInfo;->screen:I

    .line 2021
    iput p5, p1, Lcom/htc/launcher/ItemInfo;->cellX:I

    .line 2022
    iput p6, p1, Lcom/htc/launcher/ItemInfo;->cellY:I

    .line 2024
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2025
    .local v1, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2027
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {p1, v1}, Lcom/htc/launcher/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 2029
    if-eqz p7, :cond_0

    sget-object v2, Lcom/htc/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2031
    return-void

    .line 2029
    :cond_0
    sget-object v2, Lcom/htc/launcher/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    goto :goto_0
.end method

.method private static isDownloadedApp(Landroid/content/pm/ResolveInfo;)Z
    .locals 3
    .parameter "rInfo"

    .prologue
    const/4 v1, 0x1

    .line 636
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 638
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1

    .line 645
    :cond_0
    :goto_0
    return v1

    .line 641
    :cond_1
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_0

    .line 645
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private makeAndCacheApplicationInfo(Landroid/content/pm/PackageManager;Ljava/util/HashMap;Landroid/content/pm/ResolveInfo;Lcom/htc/launcher/Launcher;)Lcom/htc/launcher/ApplicationInfo;
    .locals 9
    .parameter "manager"
    .parameter
    .parameter "info"
    .parameter "launcher"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/htc/launcher/ApplicationInfo;",
            ">;",
            "Landroid/content/pm/ResolveInfo;",
            "Lcom/htc/launcher/Launcher;",
            ")",
            "Lcom/htc/launcher/ApplicationInfo;"
        }
    .end annotation

    .prologue
    .line 490
    .local p2, appInfoCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/htc/launcher/ApplicationInfo;>;"
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    .local v4, componentName:Landroid/content/ComponentName;
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/launcher/ApplicationInfo;

    .line 495
    .local v2, application:Lcom/htc/launcher/ApplicationInfo;
    if-nez v2, :cond_0

    .line 496
    new-instance v2, Lcom/htc/launcher/ApplicationInfo;

    .end local v2           #application:Lcom/htc/launcher/ApplicationInfo;
    invoke-direct {v2}, Lcom/htc/launcher/ApplicationInfo;-><init>()V

    .line 497
    .restart local v2       #application:Lcom/htc/launcher/ApplicationInfo;
    const-wide/16 v5, -0x1

    iput-wide v5, v2, Lcom/htc/launcher/ItemInfo;->container:J

    .line 499
    invoke-static {p1, p3, v2}, Lcom/htc/launcher/LauncherModel;->updateApplicationInfoTitleAndIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/htc/launcher/ApplicationInfo;)V

    .line 501
    const/high16 v5, 0x1020

    invoke-virtual {v2, v4, v5}, Lcom/htc/launcher/ApplicationInfo;->setActivity(Landroid/content/ComponentName;I)V

    .line 504
    iget-object v5, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 505
    .local v0, activityScrouceDir:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 506
    .local v3, applicationSource:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "/system/app/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 507
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    iput-wide v5, v2, Lcom/htc/launcher/FxShortcutInfo;->lastModifiedTime:J

    .line 512
    :goto_0
    invoke-static {p3}, Lcom/htc/launcher/LauncherModel;->isDownloadedApp(Landroid/content/pm/ResolveInfo;)Z

    move-result v5

    iput-boolean v5, v2, Lcom/htc/launcher/FxShortcutInfo;->isDownloaded:Z

    .line 513
    new-instance v5, Ljava/lang/String;

    iget-object v6, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v5, v2, Lcom/htc/launcher/FxShortcutInfo;->packageName:Ljava/lang/String;

    .line 514
    invoke-static {p3, p1}, Lcom/htc/launcher/LauncherModel;->getCustomAppId(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/htc/launcher/FxShortcutInfo;->customizeAppId:Ljava/lang/String;

    .line 515
    iget-object v5, v2, Lcom/htc/launcher/FxShortcutInfo;->packageName:Ljava/lang/String;

    iget-object v6, v2, Lcom/htc/launcher/FxShortcutInfo;->customizeAppId:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/htc/launcher/LauncherModel;->getLaunchCount(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/htc/launcher/FxShortcutInfo;->launchCount:I

    .line 518
    const-string v5, "VivoWCTGBS_246"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LauncherModel.makeAndCacheApplicationInfo: title="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " pkg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " priority="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/htc/launcher/FxShortcutInfo;->priority:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " modified="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v2, Lcom/htc/launcher/FxShortcutInfo;->lastModifiedTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/launcher/TFC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    invoke-virtual {p2, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    .end local v0           #activityScrouceDir:Ljava/lang/String;
    .end local v3           #applicationSource:Ljava/io/File;
    :cond_0
    invoke-static {p4}, Lcom/htc/launcher/ApplicationManager;->instance(Landroid/content/Context;)Lcom/htc/launcher/ApplicationManager;

    move-result-object v1

    .line 523
    .local v1, am:Lcom/htc/launcher/ApplicationManager;
    iget-object v5, v2, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    check-cast v5, Ljava/lang/String;

    invoke-static {v5, p4}, Lcom/htc/launcher/AllAppsGridView;->translateAppTitle(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 524
    iget-object v5, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {v1, v5, v6, v7}, Lcom/htc/launcher/ApplicationManager;->getCustomizationListPriority(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    iput v5, v2, Lcom/htc/launcher/FxShortcutInfo;->priority:I

    .line 525
    return-object v2

    .line 509
    .end local v1           #am:Lcom/htc/launcher/ApplicationManager;
    .restart local v0       #activityScrouceDir:Ljava/lang/String;
    .restart local v3       #applicationSource:Ljava/io/File;
    :cond_1
    const-wide/16 v5, 0x0

    iput-wide v5, v2, Lcom/htc/launcher/FxShortcutInfo;->lastModifiedTime:J

    goto/16 :goto_0
.end method

.method static moveItemInDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;JIII)V
    .locals 11
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 1895
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 1944
    :cond_0
    :goto_0
    return-void

    .line 1908
    :cond_1
    iget-wide v1, p1, Lcom/htc/launcher/ItemInfo;->container:J

    .line 1910
    .local v1, container_BeforeUpdate:J
    iput-wide p2, p1, Lcom/htc/launcher/ItemInfo;->container:J

    .line 1911
    iput p4, p1, Lcom/htc/launcher/ItemInfo;->screen:I

    .line 1912
    move/from16 v0, p5

    iput v0, p1, Lcom/htc/launcher/ItemInfo;->cellX:I

    .line 1913
    move/from16 v0, p6

    iput v0, p1, Lcom/htc/launcher/ItemInfo;->cellY:I

    .line 1915
    const-string v7, "LauncherModel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[EDIT_DEBUG] LauncherModel.moveItemInDatabase() - item:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1918
    :try_start_0
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1919
    .local v6, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1921
    .local v3, cr:Landroid/content/ContentResolver;
    if-eqz v6, :cond_3

    if-eqz v3, :cond_3

    .line 1922
    const-string v7, "LauncherModel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[EDIT_DEBUG] LauncherModel.moveItemInDatabase() Container("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p1, Lcom/htc/launcher/ItemInfo;->container:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") - ok"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1923
    const-string v7, "container"

    iget-wide v8, p1, Lcom/htc/launcher/ItemInfo;->container:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1924
    const-string v7, "cellX"

    iget v8, p1, Lcom/htc/launcher/ItemInfo;->cellX:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1925
    const-string v7, "cellY"

    iget v8, p1, Lcom/htc/launcher/ItemInfo;->cellY:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1926
    const-string v7, "screen"

    iget v8, p1, Lcom/htc/launcher/ItemInfo;->screen:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1927
    const-string v7, "workspace_id"

    iget v8, p1, Lcom/htc/launcher/ItemInfo;->workspaceId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1929
    iget-wide v7, p1, Lcom/htc/launcher/ItemInfo;->id:J

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/htc/launcher/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v6, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 1931
    .local v5, updated_Row:I
    invoke-static {p0}, Lcom/htc/launcher/Launcher;->onSceneModified(Landroid/content/Context;)V

    .line 1934
    if-lez v5, :cond_3

    const-wide/16 v7, -0x3e5

    cmp-long v7, v1, v7

    if-eqz v7, :cond_2

    const-wide/16 v7, -0x65

    cmp-long v7, p2, v7

    if-nez v7, :cond_3

    .line 1936
    :cond_2
    invoke-static {p0}, Lcom/htc/launcher/LauncherModel;->broadcastLauncherBarChanged(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1943
    .end local v3           #cr:Landroid/content/ContentResolver;
    .end local v5           #updated_Row:I
    .end local v6           #values:Landroid/content/ContentValues;
    :cond_3
    :goto_1
    const-string v7, "LauncherModel"

    const-string v8, "[EDIT_DEBUG] LauncherModel.moveItemInDatabase() - exit"

    invoke-static {v7, v8}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1940
    :catch_0
    move-exception v4

    .line 1941
    .local v4, e:Landroid/database/SQLException;
    const-string v7, "HomeLoaders"

    const-string v8, "moveItemInDatabase failed, disk full?"

    invoke-static {v7, v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static refreshUsageStatCache(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 1753
    :try_start_0
    sget-object v7, Lcom/htc/launcher/LauncherModel;->sUsageStatsService:Lcom/htc/app/HtcUsageStats;

    if-nez v7, :cond_0

    .line 1754
    new-instance v7, Lcom/htc/app/HtcUsageStats;

    invoke-direct {v7, p0}, Lcom/htc/app/HtcUsageStats;-><init>(Landroid/content/Context;)V

    sput-object v7, Lcom/htc/launcher/LauncherModel;->sUsageStatsService:Lcom/htc/app/HtcUsageStats;

    .line 1757
    :cond_0
    sget-object v7, Lcom/htc/launcher/LauncherModel;->sUsageStatsService:Lcom/htc/app/HtcUsageStats;

    invoke-virtual {v7}, Lcom/htc/app/HtcUsageStats;->getAllHtcIfAppUsageStats()[Lcom/android/internal/os/HtcIfAppUsageStats;

    move-result-object v6

    .line 1758
    .local v6, stats:[Lcom/android/internal/os/HtcIfAppUsageStats;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v7, Lcom/htc/launcher/LauncherModel;->sUsageMap:Ljava/util/HashMap;

    .line 1759
    move-object v0, v6

    .local v0, arr$:[Lcom/android/internal/os/HtcIfAppUsageStats;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .line 1760
    .local v5, s:Lcom/android/internal/os/HtcIfAppUsageStats;
    invoke-static {v5}, Lcom/htc/launcher/LauncherModel;->getUsageMapId(Lcom/android/internal/os/HtcIfAppUsageStats;)Ljava/lang/String;

    move-result-object v4

    .line 1761
    .local v4, mapId:Ljava/lang/String;
    sget-object v7, Lcom/htc/launcher/LauncherModel;->sUsageMap:Ljava/util/HashMap;

    invoke-interface {v5}, Lcom/android/internal/os/HtcIfAppUsageStats;->getLaunchCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1759
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1764
    .end local v0           #arr$:[Lcom/android/internal/os/HtcIfAppUsageStats;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #mapId:Ljava/lang/String;
    .end local v5           #s:Lcom/android/internal/os/HtcIfAppUsageStats;
    .end local v6           #stats:[Lcom/android/internal/os/HtcIfAppUsageStats;
    :catch_0
    move-exception v1

    .line 1765
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "HomeLoaders"

    const-string v8, "UsageStatsService.getAllPkgUsageStats failed"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1768
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method private removeDisabledActivities(Ljava/lang/String;Ljava/util/List;Lcom/htc/launcher/Launcher;)Z
    .locals 8
    .parameter "packageName"
    .parameter
    .parameter "launcher"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Lcom/htc/launcher/Launcher;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 409
    .local p2, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 411
    .local v4, toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/ApplicationInfo;>;"
    iget-object v6, p0, Lcom/htc/launcher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    monitor-enter v6

    .line 412
    :try_start_0
    iget-object v5, p0, Lcom/htc/launcher/LauncherModel;->mApplications:Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;

    invoke-virtual {v5}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->originalSize()I

    move-result v2

    .line 413
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 414
    iget-object v5, p0, Lcom/htc/launcher/LauncherModel;->mApplications:Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;

    invoke-virtual {v5, v3}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->originalGet(I)Lcom/htc/launcher/ApplicationInfo;

    move-result-object v0

    .line 416
    .local v0, applicationInfo:Lcom/htc/launcher/ApplicationInfo;
    iget-object v5, v0, Lcom/htc/launcher/FxShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 417
    .local v1, component:Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p2, v1}, Lcom/htc/launcher/LauncherModel;->findIntent(Ljava/util/List;Landroid/content/ComponentName;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 418
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    iget-object v5, p0, Lcom/htc/launcher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    iget-object v7, v0, Lcom/htc/launcher/FxShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 422
    .end local v0           #applicationInfo:Lcom/htc/launcher/ApplicationInfo;
    .end local v1           #component:Landroid/content/ComponentName;
    :cond_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 425
    iget-object v5, p0, Lcom/htc/launcher/LauncherModel;->mApplications:Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;

    invoke-virtual {v5, v4}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->remove(Ljava/util/ArrayList;)Z

    .line 427
    iget-object v5, p3, Lcom/htc/launcher/Launcher;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/htc/launcher/LauncherModel;->getDataSetChangeNotified()Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 428
    invoke-direct {p0}, Lcom/htc/launcher/LauncherModel;->getDataSetChangeNotified()Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {p3, v5}, Lcom/htc/launcher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 431
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    const/4 v5, 0x1

    :goto_1
    return v5

    .line 422
    .end local v2           #count:I
    .end local v3           #i:I
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 431
    .restart local v2       #count:I
    .restart local v3       #i:I
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method static resizeItemInDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;IIII)V
    .locals 6
    .parameter "context"
    .parameter "item"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 2279
    iput p4, p1, Lcom/htc/launcher/ItemInfo;->spanX:I

    .line 2280
    iput p5, p1, Lcom/htc/launcher/ItemInfo;->spanY:I

    .line 2281
    iput p2, p1, Lcom/htc/launcher/ItemInfo;->cellX:I

    .line 2282
    iput p3, p1, Lcom/htc/launcher/ItemInfo;->cellY:I

    .line 2284
    iget-wide v3, p1, Lcom/htc/launcher/ItemInfo;->id:J

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/htc/launcher/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v1

    .line 2285
    .local v1, uri:Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2286
    .local v2, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2288
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "container"

    iget-wide v4, p1, Lcom/htc/launcher/ItemInfo;->container:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2289
    const-string v3, "spanX"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2290
    const-string v3, "spanY"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2291
    const-string v3, "cellX"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2292
    const-string v3, "cellY"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2294
    sget-object v3, Lcom/htc/launcher/Launcher;->sWorker:Landroid/os/Handler;

    new-instance v4, Lcom/htc/launcher/LauncherModel$2;

    invoke-direct {v4, v0, v1, v2}, Lcom/htc/launcher/LauncherModel$2;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2300
    return-void
.end method

.method static restoreNonDefaultFavorites(Landroid/content/Context;)V
    .locals 41
    .parameter "context"

    .prologue
    .line 2442
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2443
    .local v2, contentResolver:Landroid/content/ContentResolver;
    const-string v4, "content://com.htc.launcher.settings/favorites_backup"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2447
    .local v3, CONTENT_URI:Landroid/net/Uri;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 2451
    .local v13, c:Landroid/database/Cursor;
    const-string v4, "_id"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 2452
    .local v26, idIndex:I
    const-string v4, "intent"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 2453
    .local v27, intentIndex:I
    const-string v4, "title"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v37

    .line 2454
    .local v37, titleIndex:I
    const-string v4, "iconType"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    .line 2455
    .local v25, iconTypeIndex:I
    const-string v4, "icon"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 2456
    .local v21, iconIndex:I
    const-string v4, "iconPackage"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 2457
    .local v23, iconPackageIndex:I
    const-string v4, "iconResource"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 2458
    .local v24, iconResourceIndex:I
    const-string v4, "container"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 2459
    .local v16, containerIndex:I
    const-string v4, "itemType"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v30

    .line 2460
    .local v30, itemTypeIndex:I
    const-string v4, "appWidgetId"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 2461
    .local v9, appWidgetIdIndex:I
    const-string v4, "screen"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v33

    .line 2462
    .local v33, screenIndex:I
    const-string v4, "cellX"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 2463
    .local v14, cellXIndex:I
    const-string v4, "cellY"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 2464
    .local v15, cellYIndex:I
    const-string v4, "props"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v32

    .line 2465
    .local v32, propsIndex:I
    const-string v4, "spanX"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v35

    .line 2466
    .local v35, spanXIndex:I
    const-string v4, "spanY"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v36

    .line 2467
    .local v36, spanYIndex:I
    const-string v4, "uri"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v38

    .line 2468
    .local v38, uriIndex:I
    const-string v4, "workspace_id"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v40

    .line 2469
    .local v40, workspaceId:I
    const-string v4, "displayMode"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 2470
    .local v17, displayModeIndex:I
    const-string v4, "isShortcut"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    .line 2472
    .local v28, isShortcutIndex:I
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 2474
    .local v31, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/16 v18, 0x0

    .line 2475
    .local v18, hasRosieSearchWidget:Z
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 2476
    .local v12, bindTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2479
    .local v10, bindSources:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static/range {p0 .. p0}, Lcom/htc/launcher/LauncherModel;->getHtcSearchWidgetId(Landroid/content/Context;)I

    move-result v19

    .line 2481
    .local v19, htcSearchWidgetId:I
    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2482
    new-instance v39, Landroid/content/ContentValues;

    invoke-direct/range {v39 .. v39}, Landroid/content/ContentValues;-><init>()V

    .line 2483
    .local v39, values:Landroid/content/ContentValues;
    move-object/from16 v0, v31

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2487
    move/from16 v0, v30

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 2489
    .local v29, itemType:Ljava/lang/String;
    const-string v4, "1001"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2494
    :cond_0
    sget-object v4, Lcom/htc/launcher/Launcher;->sDefaultAppWidgetHost:Lcom/htc/launcher/LauncherAppWidgetHost;

    invoke-virtual {v4}, Lcom/htc/launcher/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v8

    .line 2496
    .local v8, appWidgetId:I
    const-string v4, "itemType"

    const-string v5, "4"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2498
    const-string v4, "appWidgetId"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2499
    const-string v4, "orig_id"

    move/from16 v0, v26

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2500
    const-string v4, "spanX"

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2501
    const-string v4, "spanY"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2504
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.google.android.googlequicksearchbox"

    const-string v6, "com.google.android.googlequicksearchbox.SearchWidgetProvider"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2507
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2508
    const/16 v18, 0x1

    .line 2518
    .end local v8           #appWidgetId:I
    :goto_1
    const-string v4, "title"

    move/from16 v0, v37

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2521
    move/from16 v0, v23

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 2522
    .local v22, iconPackage:Ljava/lang/String;
    if-eqz v22, :cond_2

    const-string v4, "com.sprint.zone"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2523
    const-string v4, "intent"

    const-string v5, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component=com.sprint.dsa/.PageMain;end"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2525
    const-string v4, "iconPackage"

    const-string v5, "com.sprint.dsa"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2532
    :goto_2
    const-string v4, "container"

    move/from16 v0, v16

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2533
    const-string v4, "screen"

    move/from16 v0, v33

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2534
    const-string v4, "cellX"

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2535
    const-string v4, "displayMode"

    move/from16 v0, v17

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2536
    const-string v4, "cellY"

    invoke-interface {v13, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2537
    const-string v4, "isShortcut"

    move/from16 v0, v28

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2538
    const-string v4, "iconType"

    move/from16 v0, v25

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2540
    const-string v4, "iconResource"

    move/from16 v0, v24

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2541
    const-string v4, "icon"

    move/from16 v0, v21

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2542
    const-string v4, "props"

    move/from16 v0, v32

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2543
    const-string v4, "uri"

    move/from16 v0, v38

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2544
    const-string v4, "displayMode"

    move/from16 v0, v17

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2545
    const-string v4, "workspace_id"

    move/from16 v0, v40

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 2510
    .end local v22           #iconPackage:Ljava/lang/String;
    :cond_1
    const-string v4, "itemType"

    move-object/from16 v0, v39

    move-object/from16 v1, v29

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2511
    const-string v4, "appWidgetId"

    invoke-interface {v13, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2512
    const-string v4, "orig_id"

    move/from16 v0, v26

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2513
    const-string v4, "spanX"

    move/from16 v0, v35

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2514
    const-string v4, "spanY"

    move/from16 v0, v36

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2527
    .restart local v22       #iconPackage:Ljava/lang/String;
    :cond_2
    const-string v4, "intent"

    move/from16 v0, v27

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2528
    const-string v4, "iconPackage"

    move/from16 v0, v23

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2547
    .end local v22           #iconPackage:Ljava/lang/String;
    .end local v29           #itemType:Ljava/lang/String;
    .end local v39           #values:Landroid/content/ContentValues;
    :cond_3
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 2549
    sget-object v5, Lcom/htc/launcher/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    const/4 v4, 0x0

    new-array v4, v4, [Landroid/content/ContentValues;

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/content/ContentValues;

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 2554
    const-string v4, "_restore_widget_workspaces"

    invoke-static {v4}, Lcom/htc/launcher/LauncherSettings;->getSpecialAction(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2559
    if-eqz v18, :cond_5

    .line 2560
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v34

    .line 2562
    .local v34, size:I
    move/from16 v0, v34

    new-array v11, v0, [I

    .line 2563
    .local v11, bindSourcesArray:[I
    const/16 v20, 0x0

    .local v20, i:I
    :goto_3
    move/from16 v0, v20

    move/from16 v1, v34

    if-ge v0, v1, :cond_4

    .line 2564
    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v11, v20

    .line 2563
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 2566
    :cond_4
    move-object/from16 v0, p0

    invoke-static {v0, v11, v12}, Lcom/htc/launcher/WidgetPackageManager;->launchAppWidgetBinder(Landroid/content/Context;[ILjava/util/ArrayList;)V

    .line 2568
    .end local v11           #bindSourcesArray:[I
    .end local v20           #i:I
    .end local v34           #size:I
    :cond_5
    return-void
.end method

.method static sendItemAdded(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;)V
    .locals 4
    .parameter "context"
    .parameter "item"

    .prologue
    .line 2305
    instance-of v1, p1, Lcom/htc/launcher/ApplicationInfo;

    if-eqz v1, :cond_1

    .line 2307
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.launcher.action.ACTION_ITEM_ADDED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2308
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "favorite_item_id"

    iget-wide v2, p1, Lcom/htc/launcher/ItemInfo;->id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-object v1, p1

    .line 2309
    check-cast v1, Lcom/htc/launcher/ApplicationInfo;

    iget-object v1, v1, Lcom/htc/launcher/FxShortcutInfo;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 2310
    const-string v1, "favorite_intent"

    check-cast p1, Lcom/htc/launcher/ApplicationInfo;

    .end local p1
    iget-object v2, p1, Lcom/htc/launcher/FxShortcutInfo;->intent:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2313
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2315
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method static sendItemRemoved(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;)V
    .locals 4
    .parameter "context"
    .parameter "item"

    .prologue
    .line 2318
    instance-of v1, p1, Lcom/htc/launcher/ApplicationInfo;

    if-eqz v1, :cond_1

    .line 2320
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.launcher.action.ACTION_ITEM_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2321
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "favorite_item_id"

    iget-wide v2, p1, Lcom/htc/launcher/ItemInfo;->id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-object v1, p1

    .line 2322
    check-cast v1, Lcom/htc/launcher/ApplicationInfo;

    iget-object v1, v1, Lcom/htc/launcher/FxShortcutInfo;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 2323
    const-string v1, "favorite_intent"

    check-cast p1, Lcom/htc/launcher/ApplicationInfo;

    .end local p1
    iget-object v2, p1, Lcom/htc/launcher/FxShortcutInfo;->intent:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2326
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2328
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method static shortcutExists(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 9
    .parameter "context"
    .parameter "title"
    .parameter "intent"

    .prologue
    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 1951
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1952
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/htc/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "title"

    aput-object v3, v2, v5

    const-string v3, "intent"

    aput-object v3, v2, v8

    const-string v3, "title=? and intent=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    invoke-virtual {p2, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1955
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 1957
    .local v7, result:Z
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 1959
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1961
    return v7

    .line 1959
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private declared-synchronized startApplicationsLoader(Lcom/htc/launcher/Launcher;)V
    .locals 3
    .parameter "launcher"

    .prologue
    .line 211
    monitor-enter p0

    :try_start_0
    const-string v1, "HomeLoaders"

    const-string v2, "  --> starting applications loader"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-direct {p0}, Lcom/htc/launcher/LauncherModel;->stopAndWaitForApplicationsLoader()V

    .line 216
    new-instance v1, Lcom/htc/launcher/LauncherModel$ApplicationsLoader;

    invoke-direct {v1, p0, p1}, Lcom/htc/launcher/LauncherModel$ApplicationsLoader;-><init>(Lcom/htc/launcher/LauncherModel;Lcom/htc/launcher/Launcher;)V

    iput-object v1, p0, Lcom/htc/launcher/LauncherModel;->mApplicationsLoader:Lcom/htc/launcher/LauncherModel$ApplicationsLoader;

    .line 218
    sget-object v0, Lcom/htc/launcher/Launcher;->sWorker:Landroid/os/Handler;

    .line 219
    .local v0, handler:Landroid/os/Handler;
    iget-object v1, p0, Lcom/htc/launcher/LauncherModel;->mApplicationsLoader:Lcom/htc/launcher/LauncherModel$ApplicationsLoader;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    monitor-exit p0

    return-void

    .line 211
    .end local v0           #handler:Landroid/os/Handler;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized stopAndWaitForApplicationsLoader()V
    .locals 4

    .prologue
    .line 188
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/launcher/LauncherModel;->mApplicationsLoader:Lcom/htc/launcher/LauncherModel$ApplicationsLoader;

    if-eqz v0, :cond_1

    .line 189
    iget-object v1, p0, Lcom/htc/launcher/LauncherModel;->appLoaderLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 190
    :try_start_1
    iget-object v0, p0, Lcom/htc/launcher/LauncherModel;->mApplicationsLoader:Lcom/htc/launcher/LauncherModel$ApplicationsLoader;

    invoke-virtual {v0}, Lcom/htc/launcher/LauncherModel$ApplicationsLoader;->isRunning()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    :try_start_2
    iget-object v0, p0, Lcom/htc/launcher/LauncherModel;->mApplicationsLoader:Lcom/htc/launcher/LauncherModel$ApplicationsLoader;

    invoke-virtual {v0}, Lcom/htc/launcher/LauncherModel$ApplicationsLoader;->stop()V

    .line 197
    const-string v0, "HomeLoaders"

    const-string v2, "  --> wait for applications loader"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/htc/launcher/LauncherModel;->appLoaderLock:Ljava/lang/Object;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 205
    :cond_0
    :goto_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 207
    :cond_1
    monitor-exit p0

    return-void

    .line 205
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 188
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 200
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private unbindAppDrawables(Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;)V
    .locals 5
    .parameter "applications"

    .prologue
    .line 1379
    if-eqz p1, :cond_1

    .line 1380
    invoke-virtual {p1}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->originalSize()I

    move-result v0

    .line 1381
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1382
    invoke-virtual {p1, v1}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->originalGet(I)Lcom/htc/launcher/ApplicationInfo;

    move-result-object v2

    .line 1383
    .local v2, item:Lcom/htc/launcher/ApplicationInfo;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/htc/launcher/FxShortcutInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 1384
    iget-object v3, v2, Lcom/htc/launcher/FxShortcutInfo;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1381
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1388
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #item:Lcom/htc/launcher/ApplicationInfo;
    :cond_1
    return-void
.end method

.method private unbindAppWidgetHostViews(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1394
    .local p1, appWidgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/LauncherAppWidgetInfo;>;"
    if-eqz p1, :cond_0

    .line 1395
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1396
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1397
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/launcher/LauncherAppWidgetInfo;

    .line 1398
    .local v2, launcherInfo:Lcom/htc/launcher/LauncherAppWidgetInfo;
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/htc/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 1396
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1401
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #launcherInfo:Lcom/htc/launcher/LauncherAppWidgetInfo;
    :cond_0
    return-void
.end method

.method private unbindCachedIconDrawables()V
    .locals 5

    .prologue
    .line 1409
    invoke-direct {p0}, Lcom/htc/launcher/LauncherModel;->getAppInfoCache()Ljava/util/HashMap;

    move-result-object v1

    .line 1410
    .local v1, appInfoCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/htc/launcher/ApplicationInfo;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/ApplicationInfo;

    .line 1411
    .local v0, appInfo:Lcom/htc/launcher/ApplicationInfo;
    iget-object v3, v0, Lcom/htc/launcher/FxShortcutInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 1412
    iget-object v3, v0, Lcom/htc/launcher/FxShortcutInfo;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0

    .line 1415
    .end local v0           #appInfo:Lcom/htc/launcher/ApplicationInfo;
    :cond_1
    return-void
.end method

.method private unbindDrawables(Ljava/util/ArrayList;)V
    .locals 5
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
    .line 1356
    .local p1, desktopItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/ItemInfo;>;"
    if-eqz p1, :cond_1

    .line 1357
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1358
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1359
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/launcher/ItemInfo;

    .line 1360
    .local v3, item:Lcom/htc/launcher/ItemInfo;
    iget v4, v3, Lcom/htc/launcher/ItemInfo;->itemType:I

    packed-switch v4, :pswitch_data_0

    .line 1358
    .end local v3           #item:Lcom/htc/launcher/ItemInfo;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1363
    .restart local v3       #item:Lcom/htc/launcher/ItemInfo;
    :pswitch_0
    check-cast v3, Lcom/htc/launcher/ApplicationInfo;

    .end local v3           #item:Lcom/htc/launcher/ItemInfo;
    iget-object v2, v3, Lcom/htc/launcher/FxShortcutInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 1364
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 1365
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_1

    .line 1371
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void

    .line 1360
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateAndCacheApplicationInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/htc/launcher/ApplicationInfo;)Z
    .locals 4
    .parameter "packageManager"
    .parameter "info"
    .parameter "applicationInfo"

    .prologue
    .line 285
    iget-object v2, p0, Lcom/htc/launcher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 287
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/htc/launcher/LauncherModel;->updateApplicationInfoTitleAndIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/htc/launcher/ApplicationInfo;)V

    .line 289
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    .local v0, componentName:Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/htc/launcher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    monitor-exit v2

    .line 293
    const/4 v1, 0x1

    return v1

    .line 292
    .end local v0           #componentName:Landroid/content/ComponentName;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static updateApplicationInfoTitleAndIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/htc/launcher/ApplicationInfo;)V
    .locals 3
    .parameter "manager"
    .parameter "info"
    .parameter "application"

    .prologue
    .line 531
    invoke-virtual {p1, p0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p2, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 532
    iget-object v1, p2, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    .line 533
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v1, p2, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 537
    :cond_0
    :try_start_0
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-static {p0, v1}, Lcom/htc/launcher/ResourceUtil;->getApplicationIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p2, Lcom/htc/launcher/FxShortcutInfo;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p2, Lcom/htc/launcher/FxShortcutInfo;->filtered:Z

    .line 543
    invoke-static {p1}, Lcom/htc/launcher/LauncherModel;->isDownloadedApp(Landroid/content/pm/ResolveInfo;)Z

    move-result v1

    iput-boolean v1, p2, Lcom/htc/launcher/FxShortcutInfo;->isDownloaded:Z

    .line 544
    new-instance v1, Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, p2, Lcom/htc/launcher/FxShortcutInfo;->packageName:Ljava/lang/String;

    .line 545
    invoke-static {p1, p0}, Lcom/htc/launcher/LauncherModel;->getCustomAppId(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/htc/launcher/FxShortcutInfo;->customizeAppId:Ljava/lang/String;

    .line 546
    iget-object v1, p2, Lcom/htc/launcher/FxShortcutInfo;->packageName:Ljava/lang/String;

    iget-object v2, p2, Lcom/htc/launcher/FxShortcutInfo;->customizeAppId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/htc/launcher/LauncherModel;->getLaunchCount(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p2, Lcom/htc/launcher/FxShortcutInfo;->launchCount:I

    .line 547
    return-void

    .line 538
    :catch_0
    move-exception v0

    .line 539
    .local v0, ex:Landroid/content/res/Resources$NotFoundException;
    const-string v1, "HomeLoaders"

    const-string v2, "LauncherModel.updateApplicationInfoTitleAndIcon() - icon not found."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static updateItemInDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;)V
    .locals 6
    .parameter "context"
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    .line 2037
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2038
    .local v1, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2040
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {p1, v1}, Lcom/htc/launcher/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 2042
    iget-wide v2, p1, Lcom/htc/launcher/ItemInfo;->id:J

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/htc/launcher/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2043
    return-void
.end method

.method static updateScreenId(Landroid/content/Context;I[I)V
    .locals 8
    .parameter "context"
    .parameter "workspace_id"
    .parameter "mappingTable"

    .prologue
    .line 2599
    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2600
    .local v4, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2602
    .local v0, cr:Landroid/content/ContentResolver;
    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    .line 2603
    const-string v5, "workspace_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2605
    array-length v5, p2

    new-array v1, v5, [B

    .line 2606
    .local v1, data:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, p2

    if-ge v3, v5, :cond_0

    .line 2607
    aget v5, p2, v3

    int-to-byte v6, v3

    aput-byte v6, v1, v5

    .line 2606
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2609
    :cond_0
    const-string v5, "screen"

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2610
    const-string v5, "_update_screen_id"

    invoke-static {v5}, Lcom/htc/launcher/LauncherSettings;->getSpecialAction(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v4, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2611
    invoke-static {p0}, Lcom/htc/launcher/Launcher;->onSceneModified(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2617
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #data:[B
    .end local v3           #i:I
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_1
    :goto_1
    return-void

    .line 2614
    :catch_0
    move-exception v2

    .line 2615
    .local v2, e:Landroid/database/SQLException;
    const-string v5, "HomeLoaders"

    const-string v6, "updateScreenId failed, disk full?"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method static updateShortcutLabels(Landroid/content/ContentResolver;Landroid/content/pm/PackageManager;)V
    .locals 2
    .parameter "resolver"
    .parameter "manager"

    .prologue
    const/4 v1, 0x0

    .line 823
    const-string v0, "_update_shortcut_labels"

    invoke-static {v0}, Lcom/htc/launcher/LauncherSettings;->getSpecialAction(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 826
    return-void
.end method

.method static updateWorkspaceLayoutCells(II)V
    .locals 0
    .parameter "nShortAxisCellCount"
    .parameter "nLongAxisCellCount"

    .prologue
    .line 2776
    sput p0, Lcom/htc/launcher/LauncherModel;->m_nCellCountX:I

    .line 2777
    sput p1, Lcom/htc/launcher/LauncherModel;->m_nCellCountY:I

    .line 2778
    return-void
.end method


# virtual methods
.method declared-synchronized abortLoaders()V
    .locals 1

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/launcher/LauncherModel;->mApplicationsLoader:Lcom/htc/launcher/LauncherModel$ApplicationsLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/launcher/LauncherModel;->mApplicationsLoader:Lcom/htc/launcher/LauncherModel$ApplicationsLoader;

    invoke-virtual {v0}, Lcom/htc/launcher/LauncherModel$ApplicationsLoader;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/htc/launcher/LauncherModel;->mApplicationsLoader:Lcom/htc/launcher/LauncherModel$ApplicationsLoader;

    invoke-virtual {v0}, Lcom/htc/launcher/LauncherModel$ApplicationsLoader;->stop()V

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/launcher/LauncherModel;->mApplicationsLoaded:Z

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/LauncherModel;->mDesktopItemsLoader:Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/launcher/LauncherModel;->mDesktopItemsLoader:Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;

    invoke-virtual {v0}, Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/htc/launcher/LauncherModel;->mDesktopItemsLoader:Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;

    invoke-virtual {v0}, Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;->stop()V

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/launcher/LauncherModel;->mDesktopItemsLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :cond_1
    monitor-exit p0

    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addButtonBarItem(Lcom/htc/launcher/ItemInfo;)V
    .locals 6
    .parameter "info"

    .prologue
    .line 1565
    iget-object v2, p0, Lcom/htc/launcher/LauncherModel;->mButtonBarItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/ItemInfo;

    .line 1566
    .local v1, itemInfo:Lcom/htc/launcher/ItemInfo;
    iget-wide v2, v1, Lcom/htc/launcher/ItemInfo;->id:J

    iget-wide v4, p1, Lcom/htc/launcher/ItemInfo;->id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 1571
    .end local v1           #itemInfo:Lcom/htc/launcher/ItemInfo;
    :goto_0
    return-void

    .line 1570
    :cond_1
    iget-object v2, p0, Lcom/htc/launcher/LauncherModel;->mButtonBarItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method addDesktopAppWidget(Lcom/htc/launcher/LauncherAppWidgetInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 1534
    iget-object v0, p0, Lcom/htc/launcher/LauncherModel;->mDesktopAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1535
    invoke-virtual {p0}, Lcom/htc/launcher/LauncherModel;->outputAllDeskItems()V

    .line 1536
    return-void
.end method

.method addDesktopItem(Lcom/htc/launcher/ItemInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    .line 1489
    iget-object v1, p0, Lcom/htc/launcher/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1491
    :try_start_0
    const-string v0, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ITEM - ADD Info["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/launcher/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    iget-object v0, p0, Lcom/htc/launcher/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1493
    invoke-virtual {p0}, Lcom/htc/launcher/LauncherModel;->outputAllDeskItems()V

    .line 1494
    monitor-exit v1

    .line 1495
    return-void

    .line 1494
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method addFolder(Lcom/htc/launcher/FolderInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/htc/launcher/LauncherModel;->mFolders:Ljava/util/HashMap;

    iget-wide v1, p1, Lcom/htc/launcher/ItemInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1312
    return-void
.end method

.method declared-synchronized addPackage(Lcom/htc/launcher/Launcher;Ljava/lang/String;)V
    .locals 9
    .parameter "launcher"
    .parameter "packageName"

    .prologue
    .line 223
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/htc/launcher/LauncherModel;->mApplicationsLoader:Lcom/htc/launcher/LauncherModel$ApplicationsLoader;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/htc/launcher/LauncherModel;->mApplicationsLoader:Lcom/htc/launcher/LauncherModel$ApplicationsLoader;

    invoke-virtual {v7}, Lcom/htc/launcher/LauncherModel$ApplicationsLoader;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 224
    invoke-direct {p0, p1}, Lcom/htc/launcher/LauncherModel;->startApplicationsLoader(Lcom/htc/launcher/Launcher;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 249
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 228
    :cond_1
    if-eqz p2, :cond_0

    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 229
    invoke-virtual {p1}, Lcom/htc/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 230
    .local v5, packageManager:Landroid/content/pm/PackageManager;
    invoke-static {v5, p2}, Lcom/htc/launcher/LauncherModel;->findActivitiesForPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 231
    .local v4, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .local v6, toAdd:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/ApplicationInfo;>;"
    iget-object v8, p0, Lcom/htc/launcher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 234
    :try_start_2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 235
    .local v2, info:Landroid/content/pm/ResolveInfo;
    iget-object v7, p0, Lcom/htc/launcher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    invoke-direct {p0, v5, v7, v2, p1}, Lcom/htc/launcher/LauncherModel;->makeAndCacheApplicationInfo(Landroid/content/pm/PackageManager;Ljava/util/HashMap;Landroid/content/pm/ResolveInfo;Lcom/htc/launcher/Launcher;)Lcom/htc/launcher/ApplicationInfo;

    move-result-object v0

    .line 237
    .local v0, application:Lcom/htc/launcher/ApplicationInfo;
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 239
    .end local v0           #application:Lcom/htc/launcher/ApplicationInfo;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #info:Landroid/content/pm/ResolveInfo;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 223
    .end local v4           #matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5           #packageManager:Landroid/content/pm/PackageManager;
    .end local v6           #toAdd:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/ApplicationInfo;>;"
    :catchall_1
    move-exception v7

    monitor-exit p0

    throw v7

    .line 239
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v4       #matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v5       #packageManager:Landroid/content/pm/PackageManager;
    .restart local v6       #toAdd:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/ApplicationInfo;>;"
    :cond_2
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 241
    :try_start_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eqz v7, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/htc/launcher/LauncherModel;->getApplications()Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;

    move-result-object v3

    .line 243
    .local v3, list:Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;
    invoke-virtual {v3, v6}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->addAll(Ljava/util/Collection;)Z

    .line 245
    iget-object v7, p1, Lcom/htc/launcher/Launcher;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/htc/launcher/LauncherModel;->getDataSetChangeNotified()Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 246
    invoke-direct {p0}, Lcom/htc/launcher/LauncherModel;->getDataSetChangeNotified()Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/htc/launcher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0
.end method

.method declared-synchronized dropApplicationCache()V
    .locals 2

    .prologue
    .line 134
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/launcher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 135
    :try_start_1
    iget-object v0, p0, Lcom/htc/launcher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 136
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    monitor-exit p0

    return-void

    .line 136
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 134
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method findFolderById(J)Lcom/htc/launcher/FolderInfo;
    .locals 2
    .parameter "id"

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/htc/launcher/LauncherModel;->mFolders:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/FolderInfo;

    return-object v0
.end method

.method getApplicationInfoIcon(Landroid/content/pm/PackageManager;Lcom/htc/launcher/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "manager"
    .parameter "info"

    .prologue
    .line 467
    iget-object v3, p2, Lcom/htc/launcher/FxShortcutInfo;->intent:Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 468
    .local v2, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-nez v2, :cond_0

    .line 469
    const/4 v3, 0x0

    .line 484
    :goto_0
    return-object v3

    .line 472
    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    .local v1, componentName:Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/htc/launcher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    monitor-enter v4

    .line 477
    :try_start_0
    iget-object v3, p0, Lcom/htc/launcher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/ApplicationInfo;

    .line 478
    .local v0, application:Lcom/htc/launcher/ApplicationInfo;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    if-nez v0, :cond_1

    .line 481
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-static {p1, v3}, Lcom/htc/launcher/ResourceUtil;->getApplicationIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    .line 478
    .end local v0           #application:Lcom/htc/launcher/ApplicationInfo;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 484
    .restart local v0       #application:Lcom/htc/launcher/ApplicationInfo;
    :cond_1
    iget-object v3, v0, Lcom/htc/launcher/FxShortcutInfo;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public getApplications()Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;
    .locals 1

    .prologue
    .line 1421
    iget-object v0, p0, Lcom/htc/launcher/LauncherModel;->mApplications:Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;

    return-object v0
.end method

.method getApplicationsAdapter()Lcom/htc/launcher/ApplicationsAdapter;
    .locals 1

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/htc/launcher/LauncherModel;->mApplicationsAdapter:Lcom/htc/launcher/ApplicationsAdapter;

    return-object v0
.end method

.method public getButtonBarItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1449
    iget-object v0, p0, Lcom/htc/launcher/LauncherModel;->mButtonBarItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getButtonBarOccupied()[Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1456
    const/4 v5, 0x3

    new-array v2, v5, [Z

    .line 1457
    .local v2, buttonBarOccupied:[Z
    const/4 v4, 0x0

    .local v4, j:I
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_0

    .line 1458
    aput-boolean v7, v2, v4

    .line 1457
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1461
    :cond_0
    invoke-virtual {p0}, Lcom/htc/launcher/LauncherModel;->getButtonBarItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 1463
    .local v1, buttonBarItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/ItemInfo;>;"
    if-nez v1, :cond_2

    .line 1481
    :cond_1
    return-object v2

    .line 1467
    :cond_2
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 1468
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/ApplicationInfo;

    .line 1469
    .local v0, app:Lcom/htc/launcher/ApplicationInfo;
    iget v5, v0, Lcom/htc/launcher/ItemInfo;->cellX:I

    packed-switch v5, :pswitch_data_0

    .line 1467
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1471
    :pswitch_0
    aput-boolean v6, v2, v7

    goto :goto_2

    .line 1474
    :pswitch_1
    aput-boolean v6, v2, v6

    goto :goto_2

    .line 1477
    :pswitch_2
    const/4 v5, 0x2

    aput-boolean v6, v2, v5

    goto :goto_2

    .line 1469
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method getDesktopAppWidgets()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/LauncherAppWidgetInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1442
    iget-object v0, p0, Lcom/htc/launcher/LauncherModel;->mDesktopAppWidgets:Ljava/util/ArrayList;

    return-object v0
.end method

.method getDesktopItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1435
    iget-object v0, p0, Lcom/htc/launcher/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method isDesktopLoaded()Z
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcom/htc/launcher/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/launcher/LauncherModel;->mDesktopItemsLoaded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized loadApplications(ZLcom/htc/launcher/Launcher;Z)Z
    .locals 3
    .parameter "isLaunching"
    .parameter "launcher"
    .parameter "localeChanged"

    .prologue
    const/4 v0, 0x0

    .line 150
    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Lcom/htc/launcher/LauncherModel;->refreshUsageStatCache(Landroid/content/Context;)V

    .line 152
    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/htc/launcher/LauncherModel;->mApplicationsLoaded:Z

    if-eqz v1, :cond_0

    if-nez p3, :cond_0

    .line 156
    new-instance v1, Lcom/htc/launcher/ApplicationsAdapter;

    iget-object v2, p0, Lcom/htc/launcher/LauncherModel;->mApplications:Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;

    invoke-direct {v1, p2, v2}, Lcom/htc/launcher/ApplicationsAdapter;-><init>(Landroid/content/Context;Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;)V

    iput-object v1, p0, Lcom/htc/launcher/LauncherModel;->mApplicationsAdapter:Lcom/htc/launcher/ApplicationsAdapter;

    .line 158
    const-string v1, "HomeLoaders"

    const-string v2, "  --> applications loaded, return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :goto_0
    monitor-exit p0

    return v0

    .line 163
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/htc/launcher/LauncherModel;->stopAndWaitForApplicationsLoader()V

    .line 165
    if-eqz p3, :cond_1

    .line 166
    invoke-virtual {p0}, Lcom/htc/launcher/LauncherModel;->dropApplicationCache()V

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/htc/launcher/LauncherModel;->mApplicationsAdapter:Lcom/htc/launcher/ApplicationsAdapter;

    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    if-eqz p3, :cond_3

    .line 170
    :cond_2
    new-instance v1, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;

    invoke-direct {v1}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;-><init>()V

    iput-object v1, p0, Lcom/htc/launcher/LauncherModel;->mApplications:Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;

    .line 174
    new-instance v1, Lcom/htc/launcher/ApplicationsAdapter;

    iget-object v2, p0, Lcom/htc/launcher/LauncherModel;->mApplications:Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;

    invoke-direct {v1, p2, v2}, Lcom/htc/launcher/ApplicationsAdapter;-><init>(Landroid/content/Context;Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;)V

    iput-object v1, p0, Lcom/htc/launcher/LauncherModel;->mApplicationsAdapter:Lcom/htc/launcher/ApplicationsAdapter;

    .line 177
    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/launcher/LauncherModel;->mApplicationsLoaded:Z

    .line 179
    if-nez p1, :cond_4

    .line 180
    invoke-direct {p0, p2}, Lcom/htc/launcher/LauncherModel;->startApplicationsLoader(Lcom/htc/launcher/Launcher;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 184
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method loadUserItems(ZLcom/htc/launcher/Launcher;ZZ)V
    .locals 3
    .parameter "isLaunching"
    .parameter "launcher"
    .parameter "localeChanged"
    .parameter "loadApplications"

    .prologue
    .line 784
    const-string v0, "HomeLoaders"

    const-string v1, "loading user items"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/htc/launcher/LauncherModel;->isDesktopLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 789
    const-string v0, "HomeLoaders"

    const-string v1, "  --> items loaded, return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    if-eqz p4, :cond_0

    .line 792
    invoke-direct {p0, p2}, Lcom/htc/launcher/LauncherModel;->startApplicationsLoader(Lcom/htc/launcher/Launcher;)V

    .line 795
    :cond_0
    invoke-virtual {p2}, Lcom/htc/launcher/Launcher;->onDesktopItemsLoaded()V

    .line 820
    :goto_0
    return-void

    .line 799
    :cond_1
    iget-object v0, p0, Lcom/htc/launcher/LauncherModel;->mDesktopItemsLoader:Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/launcher/LauncherModel;->mDesktopItemsLoader:Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;

    invoke-virtual {v0}, Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 801
    const-string v0, "HomeLoaders"

    const-string v1, "  --> stopping workspace loader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    iget-object v0, p0, Lcom/htc/launcher/LauncherModel;->mDesktopItemsLoader:Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;

    invoke-virtual {v0}, Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;->stop()V

    .line 810
    iget-object v0, p0, Lcom/htc/launcher/LauncherModel;->mDesktopItemsLoader:Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;

    #getter for: Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;->mLoadApplications:Z
    invoke-static {v0}, Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;->access$600(Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;)Z

    move-result p4

    .line 814
    :cond_2
    const-string v0, "HomeLoaders"

    const-string v1, "  --> starting workspace loader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/launcher/LauncherModel;->mDesktopItemsLoaded:Z

    .line 817
    new-instance v0, Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;-><init>(Lcom/htc/launcher/LauncherModel;Lcom/htc/launcher/Launcher;ZZ)V

    iput-object v0, p0, Lcom/htc/launcher/LauncherModel;->mDesktopItemsLoader:Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;

    .line 818
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/htc/launcher/LauncherModel;->mDesktopItemsLoader:Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;

    const-string v2, "Desktop Items Loader"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/launcher/LauncherModel;->mDesktopLoaderThread:Ljava/lang/Thread;

    .line 819
    iget-object v0, p0, Lcom/htc/launcher/LauncherModel;->mDesktopLoaderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method outputAllDeskItems()V
    .locals 2

    .prologue
    .line 2662
    iget-boolean v1, p0, Lcom/htc/launcher/LauncherModel;->skipOutputAllDeskItems:Z

    if-eqz v1, :cond_0

    .line 2663
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/launcher/LauncherModel;->skipOutputAllDeskItems:Z

    .line 2735
    :goto_0
    return-void

    .line 2667
    :cond_0
    new-instance v0, Lcom/htc/launcher/LauncherModel$3;

    invoke-direct {v0, p0}, Lcom/htc/launcher/LauncherModel$3;-><init>(Lcom/htc/launcher/LauncherModel;)V

    .line 2734
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method outputLayoutMove(Lcom/htc/launcher/ItemInfo;Ljava/lang/String;)V
    .locals 4
    .parameter "info"
    .parameter "method"

    .prologue
    .line 2646
    const/4 v1, 0x6

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "item_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/htc/launcher/ItemInfo;->getItemName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "item_package"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p1}, Lcom/htc/launcher/ItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "move_method"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p2, v0, v1

    .line 2651
    .local v0, data:[Ljava/lang/String;
    const-string v1, "com.htc.launcher"

    const-string v2, "layout_move"

    invoke-static {v1, v2, v0}, Lcom/htc/launcher/Logger;->u(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2653
    const-string v1, "HomeLoaders"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTC user profiling item_name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/launcher/ItemInfo;->getItemName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " item_package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/launcher/ItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " move_method : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2659
    return-void
.end method

.method declared-synchronized refreshUsageStats(Landroid/content/Context;Z)V
    .locals 5
    .parameter "context"
    .parameter "refreshCache"

    .prologue
    .line 1784
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/htc/launcher/LauncherModel;->mApplicationsLoader:Lcom/htc/launcher/LauncherModel$ApplicationsLoader;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/launcher/LauncherModel;->mApplicationsLoader:Lcom/htc/launcher/LauncherModel$ApplicationsLoader;

    invoke-virtual {v2}, Lcom/htc/launcher/LauncherModel$ApplicationsLoader;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1785
    const-string v2, "HomeLoaders"

    const-string v3, "refreshUsageStats when ApplicationsLoader running"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1801
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1789
    :cond_1
    if-nez p2, :cond_2

    :try_start_1
    sget-object v2, Lcom/htc/launcher/LauncherModel;->sUsageMap:Ljava/util/HashMap;

    if-nez v2, :cond_3

    .line 1790
    :cond_2
    invoke-static {p1}, Lcom/htc/launcher/LauncherModel;->refreshUsageStatCache(Landroid/content/Context;)V

    .line 1793
    :cond_3
    iget-object v2, p0, Lcom/htc/launcher/LauncherModel;->mApplications:Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;

    if-eqz v2, :cond_0

    .line 1794
    iget-object v3, p0, Lcom/htc/launcher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1795
    :try_start_2
    iget-object v2, p0, Lcom/htc/launcher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/ApplicationInfo;

    .line 1796
    .local v0, app:Lcom/htc/launcher/ApplicationInfo;
    iget-object v2, v0, Lcom/htc/launcher/FxShortcutInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/htc/launcher/FxShortcutInfo;->customizeAppId:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/htc/launcher/LauncherModel;->getLaunchCount(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/htc/launcher/FxShortcutInfo;->launchCount:I

    goto :goto_1

    .line 1799
    .end local v0           #app:Lcom/htc/launcher/ApplicationInfo;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1784
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1799
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_4
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public removeButtonBarItem(Lcom/htc/launcher/ItemInfo;)V
    .locals 6
    .parameter "info"

    .prologue
    .line 1579
    iget-object v2, p0, Lcom/htc/launcher/LauncherModel;->mButtonBarItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/ItemInfo;

    .line 1580
    .local v1, itemInfo:Lcom/htc/launcher/ItemInfo;
    iget-wide v2, v1, Lcom/htc/launcher/ItemInfo;->id:J

    iget-wide v4, p1, Lcom/htc/launcher/ItemInfo;->id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 1581
    iget-object v2, p0, Lcom/htc/launcher/LauncherModel;->mButtonBarItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1585
    .end local v1           #itemInfo:Lcom/htc/launcher/ItemInfo;
    :cond_1
    return-void
.end method

.method removeButtonItem(Lcom/htc/launcher/ItemInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 1526
    iget-object v0, p0, Lcom/htc/launcher/LauncherModel;->mButtonBarItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1527
    invoke-virtual {p0}, Lcom/htc/launcher/LauncherModel;->outputAllDeskItems()V

    .line 1528
    return-void
.end method

.method removeDesktopAppWidget(Lcom/htc/launcher/LauncherAppWidgetInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    .line 1542
    iget-object v2, p0, Lcom/htc/launcher/LauncherModel;->mDesktopAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1543
    iget-object v2, p0, Lcom/htc/launcher/LauncherModel;->mDesktopAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1545
    iget-object v2, p0, Lcom/htc/launcher/LauncherModel;->mDesktopAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/LauncherAppWidgetInfo;

    .line 1547
    .local v1, item:Lcom/htc/launcher/ItemInfo;
    iget v2, p1, Lcom/htc/launcher/ItemInfo;->screen:I

    iget v3, v1, Lcom/htc/launcher/ItemInfo;->screen:I

    if-ne v2, v3, :cond_0

    iget v2, p1, Lcom/htc/launcher/ItemInfo;->cellX:I

    iget v3, v1, Lcom/htc/launcher/ItemInfo;->cellX:I

    if-ne v2, v3, :cond_0

    iget v2, p1, Lcom/htc/launcher/ItemInfo;->cellY:I

    iget v3, v1, Lcom/htc/launcher/ItemInfo;->cellY:I

    if-ne v2, v3, :cond_0

    iget v2, p1, Lcom/htc/launcher/ItemInfo;->spanX:I

    iget v3, v1, Lcom/htc/launcher/ItemInfo;->spanX:I

    if-ne v2, v3, :cond_0

    iget v2, p1, Lcom/htc/launcher/ItemInfo;->spanY:I

    iget v3, v1, Lcom/htc/launcher/ItemInfo;->spanY:I

    if-ne v2, v3, :cond_0

    .line 1552
    iget-object v2, p0, Lcom/htc/launcher/LauncherModel;->mDesktopAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1557
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Lcom/htc/launcher/ItemInfo;
    :cond_1
    return-void
.end method

.method removeDesktopItem(Lcom/htc/launcher/ItemInfo;)V
    .locals 5
    .parameter "info"

    .prologue
    .line 1505
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/launcher/LauncherModel;->skipOutputAllDeskItems:Z

    .line 1506
    iget-object v3, p0, Lcom/htc/launcher/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1507
    :try_start_0
    iget-object v2, p0, Lcom/htc/launcher/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1509
    iget-object v2, p0, Lcom/htc/launcher/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/ItemInfo;

    .line 1511
    .local v1, item:Lcom/htc/launcher/ItemInfo;
    iget v2, p1, Lcom/htc/launcher/ItemInfo;->screen:I

    iget v4, v1, Lcom/htc/launcher/ItemInfo;->screen:I

    if-ne v2, v4, :cond_0

    iget v2, p1, Lcom/htc/launcher/ItemInfo;->cellX:I

    iget v4, v1, Lcom/htc/launcher/ItemInfo;->cellX:I

    if-ne v2, v4, :cond_0

    iget v2, p1, Lcom/htc/launcher/ItemInfo;->cellY:I

    iget v4, v1, Lcom/htc/launcher/ItemInfo;->cellY:I

    if-ne v2, v4, :cond_0

    iget v2, p1, Lcom/htc/launcher/ItemInfo;->spanX:I

    iget v4, v1, Lcom/htc/launcher/ItemInfo;->spanX:I

    if-ne v2, v4, :cond_0

    iget v2, p1, Lcom/htc/launcher/ItemInfo;->spanY:I

    iget v4, v1, Lcom/htc/launcher/ItemInfo;->spanY:I

    if-ne v2, v4, :cond_0

    .line 1516
    iget-object v2, p0, Lcom/htc/launcher/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1521
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Lcom/htc/launcher/ItemInfo;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/launcher/LauncherModel;->outputAllDeskItems()V

    .line 1522
    monitor-exit v3

    .line 1523
    return-void

    .line 1522
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method removeFolder(Lcom/htc/launcher/FolderInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/htc/launcher/LauncherModel;->mFolders:Ljava/util/HashMap;

    iget-wide v1, p1, Lcom/htc/launcher/ItemInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1316
    return-void
.end method

.method declared-synchronized removePackage(Lcom/htc/launcher/Launcher;Ljava/lang/String;)V
    .locals 9
    .parameter "launcher"
    .parameter "packageName"

    .prologue
    .line 252
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/htc/launcher/LauncherModel;->mApplicationsLoader:Lcom/htc/launcher/LauncherModel$ApplicationsLoader;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/htc/launcher/LauncherModel;->mApplicationsLoader:Lcom/htc/launcher/LauncherModel$ApplicationsLoader;

    invoke-virtual {v6}, Lcom/htc/launcher/LauncherModel$ApplicationsLoader;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 253
    invoke-virtual {p0}, Lcom/htc/launcher/LauncherModel;->dropApplicationCache()V

    .line 254
    invoke-direct {p0, p1}, Lcom/htc/launcher/LauncherModel;->startApplicationsLoader(Lcom/htc/launcher/Launcher;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 258
    :cond_1
    if-eqz p2, :cond_0

    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 259
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v5, toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/ApplicationInfo;>;"
    invoke-virtual {p0}, Lcom/htc/launcher/LauncherModel;->getApplications()Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;

    move-result-object v4

    .line 261
    .local v4, list:Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;
    invoke-virtual {v4}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->originalSize()I

    move-result v2

    .line 262
    .local v2, count:I
    iget-object v7, p0, Lcom/htc/launcher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 264
    :try_start_2
    invoke-virtual {v4, v3}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->originalGet(I)Lcom/htc/launcher/ApplicationInfo;

    move-result-object v0

    .line 266
    .local v0, applicationInfo:Lcom/htc/launcher/ApplicationInfo;
    iget-object v6, v0, Lcom/htc/launcher/FxShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 267
    .local v1, component:Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 268
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    iget-object v6, p0, Lcom/htc/launcher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    iget-object v8, v0, Lcom/htc/launcher/FxShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 272
    .end local v0           #applicationInfo:Lcom/htc/launcher/ApplicationInfo;
    .end local v1           #component:Landroid/content/ComponentName;
    :cond_3
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 274
    :try_start_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 275
    invoke-virtual {v4, v5}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->remove(Ljava/util/ArrayList;)Z

    .line 277
    iget-object v6, p1, Lcom/htc/launcher/Launcher;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/htc/launcher/LauncherModel;->getDataSetChangeNotified()Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 278
    invoke-direct {p0}, Lcom/htc/launcher/LauncherModel;->getDataSetChangeNotified()Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/htc/launcher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 252
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v4           #list:Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;
    .end local v5           #toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/ApplicationInfo;>;"
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 272
    .restart local v2       #count:I
    .restart local v3       #i:I
    .restart local v4       #list:Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;
    .restart local v5       #toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/ApplicationInfo;>;"
    :catchall_1
    move-exception v6

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method removeUserFolder(Lcom/htc/launcher/FolderInfo;)V
    .locals 3
    .parameter "userFolderInfo"

    .prologue
    .line 1738
    iget-object v0, p0, Lcom/htc/launcher/LauncherModel;->mFolders:Ljava/util/HashMap;

    iget-wide v1, p1, Lcom/htc/launcher/ItemInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1739
    return-void
.end method

.method removeUserFolderItem(Lcom/htc/launcher/FolderInfo;Lcom/htc/launcher/ItemInfo;)V
    .locals 1
    .parameter "folder"
    .parameter "info"

    .prologue
    .line 1730
    iget-object v0, p1, Lcom/htc/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1731
    return-void
.end method

.method declared-synchronized syncPackage(Lcom/htc/launcher/Launcher;Ljava/lang/String;)Z
    .locals 5
    .parameter "launcher"
    .parameter "packageName"

    .prologue
    .line 297
    monitor-enter p0

    const/4 v2, 0x0

    .line 298
    .local v2, ret:Z
    :try_start_0
    iget-object v4, p0, Lcom/htc/launcher/LauncherModel;->mApplicationsLoader:Lcom/htc/launcher/LauncherModel$ApplicationsLoader;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/launcher/LauncherModel;->mApplicationsLoader:Lcom/htc/launcher/LauncherModel$ApplicationsLoader;

    invoke-virtual {v4}, Lcom/htc/launcher/LauncherModel$ApplicationsLoader;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 299
    invoke-direct {p0, p1}, Lcom/htc/launcher/LauncherModel;->startApplicationsLoader(Lcom/htc/launcher/Launcher;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v2

    .line 317
    .end local v2           #ret:Z
    .local v3, ret:I
    :goto_0
    monitor-exit p0

    return v3

    .line 301
    .end local v3           #ret:I
    .restart local v2       #ret:Z
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/htc/launcher/LauncherModel;->mApplicationsAdapter:Lcom/htc/launcher/ApplicationsAdapter;

    if-nez v4, :cond_1

    move v3, v2

    .line 302
    .restart local v3       #ret:I
    goto :goto_0

    .line 305
    .end local v3           #ret:I
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 306
    invoke-virtual {p1}, Lcom/htc/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 307
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    invoke-static {v1, p2}, Lcom/htc/launcher/LauncherModel;->findActivitiesForPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 311
    .local v0, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {p0, p2, v0, p1}, Lcom/htc/launcher/LauncherModel;->removeDisabledActivities(Ljava/lang/String;Ljava/util/List;Lcom/htc/launcher/Launcher;)Z

    move-result v2

    .line 315
    invoke-direct {p0, v0, p1}, Lcom/htc/launcher/LauncherModel;->addEnabledAndUpdateActivities(Ljava/util/List;Lcom/htc/launcher/Launcher;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0           #matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v1           #packageManager:Landroid/content/pm/PackageManager;
    :cond_2
    move v3, v2

    .line 317
    .restart local v3       #ret:I
    goto :goto_0

    .line 297
    .end local v3           #ret:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method unbind()V
    .locals 2

    .prologue
    .line 1339
    invoke-direct {p0}, Lcom/htc/launcher/LauncherModel;->stopAndWaitForApplicationsLoader()V

    .line 1340
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/launcher/LauncherModel;->mApplicationsAdapter:Lcom/htc/launcher/ApplicationsAdapter;

    .line 1341
    iget-object v0, p0, Lcom/htc/launcher/LauncherModel;->mApplications:Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;

    invoke-direct {p0, v0}, Lcom/htc/launcher/LauncherModel;->unbindAppDrawables(Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;)V

    .line 1342
    iget-object v0, p0, Lcom/htc/launcher/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1343
    iget-object v1, p0, Lcom/htc/launcher/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1344
    :try_start_0
    iget-object v0, p0, Lcom/htc/launcher/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/htc/launcher/LauncherModel;->unbindDrawables(Ljava/util/ArrayList;)V

    .line 1345
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1347
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/LauncherModel;->mDesktopAppWidgets:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/htc/launcher/LauncherModel;->unbindAppWidgetHostViews(Ljava/util/ArrayList;)V

    .line 1348
    invoke-direct {p0}, Lcom/htc/launcher/LauncherModel;->unbindCachedIconDrawables()V

    .line 1349
    return-void

    .line 1345
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
