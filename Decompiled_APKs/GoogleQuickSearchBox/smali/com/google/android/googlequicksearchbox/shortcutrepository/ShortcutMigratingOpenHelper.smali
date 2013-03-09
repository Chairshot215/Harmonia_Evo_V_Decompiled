.class public Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutMigratingOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ShortcutMigratingOpenHelper.java"


# instance fields
.field private final mDatabaseFile:Ljava/io/File;

.field private final mSources:Lcom/google/android/googlequicksearchbox/Sources;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/Sources;)V
    .locals 3
    .parameter "context"
    .parameter "sources"

    .prologue
    .line 46
    const-string v0, "qsb-log.db"

    const/4 v1, 0x0

    const/16 v2, 0x23

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 47
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutMigratingOpenHelper;->mSources:Lcom/google/android/googlequicksearchbox/Sources;

    .line 48
    const-string v0, "qsb-log.db"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutMigratingOpenHelper;->mDatabaseFile:Ljava/io/File;

    .line 49
    return-void
.end method


# virtual methods
.method public migrateClickLogData(Lcom/google/android/googlequicksearchbox/clicklog/BucketingClickLog;)V
    .locals 6
    .parameter "clickLog"

    .prologue
    .line 66
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutMigratingOpenHelper;->mDatabaseFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 85
    :goto_0
    return-void

    .line 71
    :cond_0
    :try_start_0
    new-instance v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutMigrator;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutMigratingOpenHelper;->mSources:Lcom/google/android/googlequicksearchbox/Sources;

    invoke-direct {v1, p1, v2}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutMigrator;-><init>(Lcom/google/android/googlequicksearchbox/clicklog/BucketingClickLog;Lcom/google/android/googlequicksearchbox/Sources;)V

    .line 72
    .local v1, migrator:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutMigrator;
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutMigratingOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutMigrator;->migrateClickLogData(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutMigratingOpenHelper;->close()V

    .line 78
    :try_start_1
    const-string v2, "QSB.ShortcutMigratingOpenHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleting old shortcuts DB "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutMigratingOpenHelper;->mDatabaseFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutMigratingOpenHelper;->mDatabaseFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "QSB.ShortcutMigratingOpenHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error deleting shortcuts DB "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutMigratingOpenHelper;->mDatabaseFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 75
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #migrator:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutMigrator;
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutMigratingOpenHelper;->close()V

    .line 78
    :try_start_2
    const-string v3, "QSB.ShortcutMigratingOpenHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleting old shortcuts DB "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutMigratingOpenHelper;->mDatabaseFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutMigratingOpenHelper;->mDatabaseFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 82
    :goto_1
    throw v2

    .line 80
    :catch_1
    move-exception v0

    .line 81
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "QSB.ShortcutMigratingOpenHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error deleting shortcuts DB "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutMigratingOpenHelper;->mDatabaseFile:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 54
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "No shortcuts DB"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 59
    const/16 v0, 0x1e

    if-ge p2, v0, :cond_0

    .line 61
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shortcuts DB too old: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    return-void
.end method
