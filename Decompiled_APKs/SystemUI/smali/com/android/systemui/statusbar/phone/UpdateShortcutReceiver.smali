.class public Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UpdateShortcutReceiver.java"


# static fields
.field private static final DBG_FORCE_EMPTY_LIST:Z = false

.field private static final DISPLAY_TASKS:I = 0x8

.field static final LOG_TAG:Ljava/lang/String; = "UpdateShortcutReceiver"

.field private static final MAX_RECENT_TASKS:I = 0x10

.field private static final MAX_TASKS:I = 0xa

.field private static UpdateHandler:Landroid/os/Handler;

.field private static bNew:Z

.field private static iteminfo:[Lcom/android/systemui/statusbar/phone/ItemInfo;

.field private static final localLOGV:Z

.field private static mIndex:I

.field private static mLock:Ljava/lang/Object;

.field private static shortcut:[Lcom/android/systemui/statusbar/phone/ItemInfo;


# instance fields
.field private mContext:Landroid/content/Context;

.field private tasknumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/android/systemui/statusbar/phone/ItemInfo;

    sput-object v0, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->iteminfo:[Lcom/android/systemui/statusbar/phone/ItemInfo;

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/android/systemui/statusbar/phone/ItemInfo;

    sput-object v0, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->shortcut:[Lcom/android/systemui/statusbar/phone/ItemInfo;

    sput v1, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->mIndex:I

    sput-boolean v1, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->bNew:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->UpdateHandler:Landroid/os/Handler;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->tasknumber:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;Landroid/content/Context;Landroid/os/Parcelable;Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->updateShortcut(Landroid/content/Context;Landroid/os/Parcelable;Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static compressBitmap(Landroid/graphics/Bitmap;)[B
    .locals 8

    const/4 v5, 0x0

    if-eqz p0, :cond_0

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int/2addr v6, v7

    mul-int/lit8 v3, v6, 0x4

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :try_start_0
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v0, v6, v7, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v4

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :cond_0
    :goto_0
    return-object v5

    :catch_0
    move-exception v1

    const-string v6, "UpdateShortcutReceiver"

    const-string v7, "Could not write icon"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setUpdateHandler(Landroid/os/Handler;)V
    .locals 2

    sget-object v1, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->UpdateHandler:Landroid/os/Handler;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateShortcut(Landroid/content/Context;Landroid/os/Parcelable;Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v10, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->mLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    move-object v0, p2

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v7, v0

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    sget v1, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->mIndex:I

    if-nez v1, :cond_2

    sget-object v11, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->shortcut:[Lcom/android/systemui/statusbar/phone/ItemInfo;

    sget v12, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->mIndex:I

    new-instance v1, Lcom/android/systemui/statusbar/phone/ItemInfo;

    const/4 v6, 0x0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/ItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;)V

    aput-object v1, v11, v12

    sget v1, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->mIndex:I

    :cond_0
    :goto_0
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v2, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    sget-object v1, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->UpdateHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->UpdateHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :cond_2
    const/4 v1, 0x1

    :try_start_3
    sput-boolean v1, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->bNew:Z

    const/4 v9, 0x0

    :goto_1
    sget v1, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->mIndex:I

    if-ge v9, v1, :cond_3

    sget-object v1, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->shortcut:[Lcom/android/systemui/statusbar/phone/ItemInfo;

    aget-object v1, v1, v9

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->shortcut:[Lcom/android/systemui/statusbar/phone/ItemInfo;

    aget-object v1, v1, v9

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ItemInfo;->getPkgname()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->shortcut:[Lcom/android/systemui/statusbar/phone/ItemInfo;

    aget-object v1, v1, v9

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ItemInfo;->getWhere()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->bNew:Z

    :cond_3
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->bNew:Z

    if-eqz v1, :cond_5

    sget v1, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->mIndex:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    sget-object v11, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->shortcut:[Lcom/android/systemui/statusbar/phone/ItemInfo;

    sget v12, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->mIndex:I

    new-instance v1, Lcom/android/systemui/statusbar/phone/ItemInfo;

    const/4 v6, 0x0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/ItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;)V

    aput-object v1, v11, v12

    sget v1, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->mIndex:I

    goto :goto_0

    :catchall_0
    move-exception v1

    :goto_2
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_5
    const/16 v1, 0x10

    if-ge v9, v1, :cond_0

    :try_start_4
    sget-object v1, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->shortcut:[Lcom/android/systemui/statusbar/phone/ItemInfo;

    aget-object v1, v1, v9

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/phone/ItemInfo;->setIcon(Landroid/graphics/drawable/Drawable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    :catchall_2
    move-exception v1

    move-object v5, v8

    goto :goto_2
.end method


# virtual methods
.method public getRecentItem(I)Lcom/android/systemui/statusbar/phone/ItemInfo;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->iteminfo:[Lcom/android/systemui/statusbar/phone/ItemInfo;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getRecentTask()V
    .locals 24

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->tasknumber:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager;

    const/16 v1, 0xa

    const/4 v2, 0x2

    invoke-virtual {v8, v1, v2}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v17

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v11

    const/4 v9, 0x0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v15

    const/4 v10, 0x1

    const/4 v12, 0x1

    :goto_0
    if-ge v12, v15, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->tasknumber:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_4

    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/ActivityManager$RecentTaskInfo;

    new-instance v6, Landroid/content/Intent;

    iget-object v1, v13, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-direct {v6, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v1, v13, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    iget-object v1, v13, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v6, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_0
    if-eqz v11, :cond_2

    iget-object v1, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x200001

    and-int/2addr v1, v2

    const/high16 v2, 0x1000

    or-int/2addr v1, v2

    invoke-virtual {v6, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v18

    if-eqz v18, :cond_1

    move-object/from16 v0, v18

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    if-eqz v5, :cond_1

    sget-object v1, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->iteminfo:[Lcom/android/systemui/statusbar/phone/ItemInfo;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->tasknumber:I

    aget-object v1, v1, v2

    if-nez v1, :cond_3

    sget-object v22, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->iteminfo:[Lcom/android/systemui/statusbar/phone/ItemInfo;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->tasknumber:I

    move/from16 v23, v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/ItemInfo;

    iget-object v2, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/ItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;)V

    aput-object v1, v22, v23

    :goto_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->tasknumber:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->tasknumber:I

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->iteminfo:[Lcom/android/systemui/statusbar/phone/ItemInfo;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->tasknumber:I

    aget-object v1, v1, v2

    iget-object v2, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ItemInfo;->setPKGname(Ljava/lang/String;)V

    sget-object v1, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->iteminfo:[Lcom/android/systemui/statusbar/phone/ItemInfo;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->tasknumber:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/ItemInfo;->setWhere(Ljava/lang/String;)V

    sget-object v1, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->iteminfo:[Lcom/android/systemui/statusbar/phone/ItemInfo;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->tasknumber:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/phone/ItemInfo;->setTitle(Ljava/lang/String;)V

    sget-object v1, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->iteminfo:[Lcom/android/systemui/statusbar/phone/ItemInfo;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->tasknumber:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/phone/ItemInfo;->setIcon(Landroid/graphics/drawable/Drawable;)V

    sget-object v1, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->iteminfo:[Lcom/android/systemui/statusbar/phone/ItemInfo;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->tasknumber:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/phone/ItemInfo;->setIntent(Landroid/content/Intent;)V

    goto :goto_2

    :cond_4
    const/4 v12, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->tasknumber:I

    if-ge v12, v1, :cond_7

    sget-object v1, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->iteminfo:[Lcom/android/systemui/statusbar/phone/ItemInfo;

    aget-object v1, v1, v12

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->iteminfo:[Lcom/android/systemui/statusbar/phone/ItemInfo;

    aget-object v1, v1, v12

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ItemInfo;->getPkgname()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_6
    sget v1, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->mIndex:I

    if-nez v1, :cond_8

    :cond_7
    return-void

    :cond_8
    const/4 v14, 0x0

    :goto_4
    sget v1, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->mIndex:I

    if-ge v14, v1, :cond_5

    sget-object v1, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->shortcut:[Lcom/android/systemui/statusbar/phone/ItemInfo;

    aget-object v1, v1, v14

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ItemInfo;->getPkgname()Ljava/lang/String;

    move-result-object v20

    sget-object v1, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->shortcut:[Lcom/android/systemui/statusbar/phone/ItemInfo;

    aget-object v1, v1, v14

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ItemInfo;->getWhere()Ljava/lang/String;

    move-result-object v21

    sget-object v1, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->shortcut:[Lcom/android/systemui/statusbar/phone/ItemInfo;

    aget-object v1, v1, v14

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ItemInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    if-nez v20, :cond_a

    :cond_9
    :goto_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_a
    sget-object v1, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->iteminfo:[Lcom/android/systemui/statusbar/phone/ItemInfo;

    aget-object v1, v1, v12

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ItemInfo;->getPkgname()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->iteminfo:[Lcom/android/systemui/statusbar/phone/ItemInfo;

    aget-object v1, v1, v12

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ItemInfo;->getWhere()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    if-eqz v21, :cond_9

    sget-object v1, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->iteminfo:[Lcom/android/systemui/statusbar/phone/ItemInfo;

    aget-object v1, v1, v12

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ItemInfo;->getWhere()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->iteminfo:[Lcom/android/systemui/statusbar/phone/ItemInfo;

    aget-object v1, v1, v12

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ItemInfo;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5
.end method

.method public getTaskNumber()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->tasknumber:I

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver$1;-><init>(Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;Landroid/content/Intent;Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
