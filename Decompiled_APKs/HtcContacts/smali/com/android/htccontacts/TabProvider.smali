.class public Lcom/android/htccontacts/TabProvider;
.super Lcom/htc/content/CarouselProvider;
.source "TabProvider.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.android.htccontacts.TabProvider"

.field private static final PREFS_FILE_VERSION:Ljava/lang/String; = "tab_prefs"

.field private static final PREFS_VERSION:Ljava/lang/String; = "TAB_VERSION"

.field public static final TAB_VERSION:I = 0xa

.field private static sHasEnsure:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/htccontacts/TabProvider;->sHasEnsure:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/htc/content/CarouselProvider;-><init>()V

    .line 22
    const-string v0, "com.android.htccontacts.TabProvider"

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/TabProvider;->setupCarousel(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method private ensureUpgrade()V
    .locals 12

    .prologue
    const/16 v11, 0xa

    const/4 v10, 0x0

    .line 38
    sget-boolean v8, Lcom/android/htccontacts/TabProvider;->sHasEnsure:Z

    if-eqz v8, :cond_0

    .line 75
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/TabProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 42
    .local v0, context:Landroid/content/Context;
    const-string v8, "tab_prefs"

    const/4 v9, 0x4

    invoke-virtual {v0, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 43
    .local v6, prefs:Landroid/content/SharedPreferences;
    const-string v8, "TAB_VERSION"

    invoke-interface {v6, v8, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 45
    .local v7, version:I
    if-eqz v7, :cond_1

    if-ge v7, v11, :cond_3

    .line 48
    :cond_1
    new-instance v5, Ljava/io/File;

    const-string v8, "/data/data/com.android.htccontacts/databases/carousel.db"

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    .local v5, file:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    .line 50
    .local v4, exists:Z
    const/4 v5, 0x0

    .line 51
    if-eqz v4, :cond_2

    .line 52
    const/4 v1, 0x0

    .line 54
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v8, "carousel.db"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, v8, v9, v10}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 55
    const-string v8, "tasks"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v1, v8, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 62
    :goto_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 69
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_2
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 70
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    const-string v8, "TAB_VERSION"

    invoke-interface {v3, v8, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 71
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 74
    .end local v3           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v4           #exists:Z
    .end local v5           #file:Ljava/io/File;
    :cond_3
    const/4 v8, 0x1

    sput-boolean v8, Lcom/android/htccontacts/TabProvider;->sHasEnsure:Z

    goto :goto_0

    .line 57
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4       #exists:Z
    .restart local v5       #file:Ljava/io/File;
    :catch_0
    move-exception v2

    .line 58
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    const-string v8, "TabProvider"

    const-string v9, ""

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_1

    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 62
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 61
    :cond_4
    throw v8
.end method


# virtual methods
.method public onCreate()Z
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/htccontacts/TabProvider;->ensureUpgrade()V

    .line 29
    invoke-super {p0}, Lcom/htc/content/CarouselProvider;->onCreate()Z

    move-result v0

    .line 33
    .local v0, result:Z
    return v0
.end method
