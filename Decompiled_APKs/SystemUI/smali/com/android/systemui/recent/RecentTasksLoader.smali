.class public Lcom/android/systemui/recent/RecentTasksLoader;
.super Ljava/lang/Object;
.source "RecentTasksLoader.java"


# static fields
.field static final DEBUG:Z = false

.field private static final DISPLAY_TASKS:I = 0x8

.field private static final MAX_TASKS:I = 0xa

.field static final TAG:Ljava/lang/String; = "RecentTasksLoader"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultThumbnailBackground:Landroid/graphics/Bitmap;

.field private final mHandler:Landroid/os/Handler;

.field private mIconDpi:I

.field private mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

.field private mThumbnailLoader:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 12

    const/16 v11, 0xa0

    const/16 v10, 0x140

    const/16 v8, 0xf0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v9, 0x7f07

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v3, v9, Landroid/util/DisplayMetrics;->densityDpi:I

    if-eqz v5, :cond_4

    const/16 v9, 0x78

    if-ne v3, v9, :cond_1

    iput v11, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mIconDpi:I

    :cond_0
    :goto_0
    if-eqz v5, :cond_5

    :goto_1
    iput v8, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mIconDpi:I

    const v8, 0x7f0a0041

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const v8, 0x7f0a0040

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v8, 0x7f020251

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v4, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mDefaultThumbnailBackground:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Canvas;

    iget-object v8, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mDefaultThumbnailBackground:Landroid/graphics/Bitmap;

    invoke-direct {v1, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v8, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mContext:Landroid/content/Context;

    const-string v9, "activity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    iput-object v8, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mHandler:Landroid/os/Handler;

    return-void

    :cond_1
    if-ne v3, v11, :cond_2

    iput v8, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mIconDpi:I

    goto :goto_0

    :cond_2
    if-ne v3, v8, :cond_3

    iput v10, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mIconDpi:I

    goto :goto_0

    :cond_3
    if-ne v3, v10, :cond_0

    iput v10, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mIconDpi:I

    goto :goto_0

    :cond_4
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v9, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mIconDpi:I

    goto :goto_0

    :cond_5
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->densityDpi:I

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/systemui/recent/RecentTasksLoader;)Lcom/android/systemui/recent/RecentsPanelView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recent/RecentTasksLoader;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getFullResIcon(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 4

    :try_start_0
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_0

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/recent/RecentTasksLoader;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_1
    return-object v3

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentTasksLoader;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1
.end method

.method private loadThumbnailsInBackground(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/TaskDescription;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentTasksLoader;->loadThumbnail(Lcom/android/systemui/recent/TaskDescription;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    new-instance v0, Lcom/android/systemui/recent/RecentTasksLoader$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/recent/RecentTasksLoader$1;-><init>(Lcom/android/systemui/recent/RecentTasksLoader;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method


# virtual methods
.method public cancelLoadingThumbnails()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method createTaskDescription(IILandroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroid/content/pm/ActivityInfo;)Lcom/android/systemui/recent/TaskDescription;
    .locals 13

    new-instance v10, Landroid/content/Intent;

    move-object/from16 v0, p3

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    if-eqz p4, :cond_0

    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    if-nez p6, :cond_1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v11, v3}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object p6

    :cond_1
    invoke-virtual {v10}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const v3, -0x200001

    and-int/2addr v2, v3

    const/high16 v3, 0x1000

    or-int/2addr v2, v3

    invoke-virtual {v10, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v11, v10, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v9, v11}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v4, v11}, Lcom/android/systemui/recent/RecentTasksLoader;->getFullResIcon(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v12, :cond_3

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    if-eqz v8, :cond_3

    new-instance v1, Lcom/android/systemui/recent/TaskDescription;

    iget-object v6, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move v2, p1

    move v3, p2

    move-object/from16 v5, p3

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/recent/TaskDescription;-><init>(IILandroid/content/pm/ResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v12}, Lcom/android/systemui/recent/TaskDescription;->setLabel(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v8}, Lcom/android/systemui/recent/TaskDescription;->setIcon(Landroid/graphics/drawable/Drawable;)V

    if-eqz p6, :cond_2

    move-object/from16 v0, p6

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p6

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    :cond_2
    :goto_0
    return-object v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDefaultThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mDefaultThumbnailBackground:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10d

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recent/RecentTasksLoader;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    :try_start_0
    iget v1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mIconDpi:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentTasksLoader;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method getRecentTasks()Ljava/util/ArrayList;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/RecentTasksLoader;->cancelLoadingThumbnails()V

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/RecentTasksLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/RecentTasksLoader;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager;

    const/16 v1, 0xa

    const/4 v2, 0x2

    invoke-virtual {v8, v1, v2}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v16

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v14, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v13

    const/4 v9, 0x1

    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x1

    const/4 v11, 0x0

    :goto_0
    if-ge v10, v13, :cond_1

    const/16 v1, 0xa

    if-ge v11, v1, :cond_1

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v2, v15, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    iget v3, v15, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    iget-object v4, v15, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    iget-object v5, v15, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    iget-object v6, v15, Landroid/app/ActivityManager$RecentTaskInfo;->description:Ljava/lang/CharSequence;

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/recent/RecentTasksLoader;->createTaskDescription(IILandroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroid/content/pm/ActivityInfo;)Lcom/android/systemui/recent/TaskDescription;

    move-result-object v12

    if-eqz v12, :cond_0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/RecentTasksLoader;->loadThumbnailsInBackground(Ljava/util/ArrayList;)V

    return-object v18
.end method

.method loadThumbnail(Lcom/android/systemui/recent/TaskDescription;)V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iget v2, p1, Lcom/android/systemui/recent/TaskDescription;->persistentTaskId:I

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getTaskThumbnails(I)Landroid/app/ActivityManager$TaskThumbnails;

    move-result-object v1

    monitor-enter p1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v2, v1, Landroid/app/ActivityManager$TaskThumbnails;->mainThumbnail:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/app/ActivityManager$TaskThumbnails;->mainThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2}, Lcom/android/systemui/recent/TaskDescription;->setThumbnail(Landroid/graphics/Bitmap;)V

    :goto_0
    monitor-exit p1

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mDefaultThumbnailBackground:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2}, Lcom/android/systemui/recent/TaskDescription;->setThumbnail(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setRecentsPanel(Lcom/android/systemui/recent/RecentsPanelView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    return-void
.end method
