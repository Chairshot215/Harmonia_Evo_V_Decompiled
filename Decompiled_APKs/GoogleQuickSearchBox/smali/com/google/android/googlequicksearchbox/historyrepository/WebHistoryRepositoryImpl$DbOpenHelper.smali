.class final Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$DbOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "WebHistoryRepositoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DbOpenHelper"
.end annotation


# static fields
.field private static final INSERT_TIME_IDX:Ljava/lang/String;


# instance fields
.field private final mConfig:Lcom/google/android/googlequicksearchbox/Config;

.field private mPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;->INSERT_TIME:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_index"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$DbOpenHelper;->INSERT_TIME_IDX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILcom/google/android/googlequicksearchbox/Config;)V
    .locals 1
    .parameter "context"
    .parameter "name"
    .parameter "version"
    .parameter "config"

    .prologue
    .line 395
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 396
    iput-object p4, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$DbOpenHelper;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    .line 397
    return-void
.end method

.method private dropTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "dbase"

    .prologue
    .line 439
    const-string v0, "DROP TRIGGER IF EXISTS history_insert_trigger"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP INDEX IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$DbOpenHelper;->INSERT_TIME_IDX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 441
    const-string v0, "DROP TABLE IF EXISTS history"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 442
    return-void
.end method


# virtual methods
.method deleteDatabase()V
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$DbOpenHelper;->mPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$DbOpenHelper;->close()V

    .line 405
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$DbOpenHelper;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 407
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "dbase"

    .prologue
    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE history ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;->QUERY_LOWER:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT NOT NULL PRIMARY KEY, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;->QUERY:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT NOT NULL,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;->INSERT_TIME:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TRIGGER history_insert_trigger AFTER INSERT ON history BEGIN DELETE FROM HISTORY WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;->INSERT_TIME:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "NEW."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;->INSERT_TIME:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$DbOpenHelper;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Config;->getMaxLocalHistoryAgeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; END"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE INDEX "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$DbOpenHelper;->INSERT_TIME_IDX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ON "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "history"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (insert_time DESC)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 436
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "dbase"

    .prologue
    .line 411
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 412
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$DbOpenHelper;->mPath:Ljava/lang/String;

    .line 413
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "dbase"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 448
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$DbOpenHelper;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 449
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$DbOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 450
    return-void
.end method
