.class public Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutMigrator;
.super Ljava/lang/Object;
.source "ShortcutMigrator.java"


# instance fields
.field private final mDestination:Lcom/google/android/googlequicksearchbox/clicklog/BucketingClickLog;

.field private final mSources:Lcom/google/android/googlequicksearchbox/Sources;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/clicklog/BucketingClickLog;Lcom/google/android/googlequicksearchbox/Sources;)V
    .locals 0
    .parameter "migrateTo"
    .parameter "sources"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutMigrator;->mDestination:Lcom/google/android/googlequicksearchbox/clicklog/BucketingClickLog;

    .line 42
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutMigrator;->mSources:Lcom/google/android/googlequicksearchbox/Sources;

    .line 43
    return-void
.end method


# virtual methods
.method public migrateClickLogData(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13
    .parameter "shortcutRepoDbSource"

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 47
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->hit_time:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->source:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v4

    .line 50
    .local v2, columns:[Ljava/lang/String;
    const-string v1, "clicklog"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-static/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 54
    .local v8, clickLogQuery:Ljava/lang/String;
    const/4 v9, 0x0

    .line 56
    .local v9, cursor:Landroid/database/Cursor;
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 57
    if-eqz v9, :cond_2

    .line 58
    :cond_0
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 60
    .local v10, hitTime:J
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 61
    .local v12, sourceName:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutMigrator;->mSources:Lcom/google/android/googlequicksearchbox/Sources;

    invoke-interface {v0, v12}, Lcom/google/android/googlequicksearchbox/Sources;->getSourceIfExists(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Source;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutMigrator;->mDestination:Lcom/google/android/googlequicksearchbox/clicklog/BucketingClickLog;

    invoke-virtual {v0, v12, v10, v11}, Lcom/google/android/googlequicksearchbox/clicklog/BucketingClickLog;->reportClickAtTime(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    .end local v10           #hitTime:J
    .end local v12           #sourceName:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 72
    if-eqz v9, :cond_1

    .line 73
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 76
    :cond_1
    :goto_1
    return-void

    .line 72
    :cond_2
    if-eqz v9, :cond_1

    .line 73
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 72
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_3

    .line 73
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method
