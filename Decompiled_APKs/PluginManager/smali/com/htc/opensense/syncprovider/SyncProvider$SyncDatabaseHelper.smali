.class public final Lcom/htc/opensense/syncprovider/SyncProvider$SyncDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SyncProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/syncprovider/SyncProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncDatabaseHelper"
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "sync.db"

.field private static final DATABASE_VERSION:I = 0x8

.field private static sDatabaseHelper:Lcom/htc/opensense/syncprovider/SyncProvider$SyncDatabaseHelper;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 69
    const-string v0, "sync.db"

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 70
    return-void
.end method

.method public static declared-synchronized getDatabaseHelper(Landroid/content/Context;)Lcom/htc/opensense/syncprovider/SyncProvider$SyncDatabaseHelper;
    .locals 2
    .parameter "context"

    .prologue
    .line 56
    const-class v1, Lcom/htc/opensense/syncprovider/SyncProvider$SyncDatabaseHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/opensense/syncprovider/SyncProvider$SyncDatabaseHelper;->sDatabaseHelper:Lcom/htc/opensense/syncprovider/SyncProvider$SyncDatabaseHelper;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/htc/opensense/syncprovider/SyncProvider$SyncDatabaseHelper;

    invoke-direct {v0, p0}, Lcom/htc/opensense/syncprovider/SyncProvider$SyncDatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/opensense/syncprovider/SyncProvider$SyncDatabaseHelper;->sDatabaseHelper:Lcom/htc/opensense/syncprovider/SyncProvider$SyncDatabaseHelper;

    .line 59
    :cond_0
    sget-object v0, Lcom/htc/opensense/syncprovider/SyncProvider$SyncDatabaseHelper;->sDatabaseHelper:Lcom/htc/opensense/syncprovider/SyncProvider$SyncDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 74
    invoke-static {}, Lcom/htc/opensense/syncprovider/SyncProvider$SyncParms;->getTableSQL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/htc/opensense/syncprovider/SyncProvider$EXTRAS;->getTableSQL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 76
    const-string v0, "SyncProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/opensense/syncprovider/SyncProvider$SyncParms;->getTableSQL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 6
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 81
    const-string v3, "SyncProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onUpgrade, oldVersion = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", newVersion = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v3, 0x7

    if-ne p2, v3, :cond_0

    const/16 v3, 0x8

    if-ne p3, v3, :cond_0

    .line 89
    const-string v2, "ALTER TABLE "

    .line 90
    .local v2, prefixALTER:Ljava/lang/String;
    const-string v1, " ADD "

    .line 91
    .local v1, prefixADD:Ljava/lang/String;
    const-string v3, "ALTER TABLE sync_settings ADD account_name Text"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 92
    const-string v3, "ALTER TABLE sync_settings ADD update_intent_action Text"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 100
    .end local v1           #prefixADD:Ljava/lang/String;
    .end local v2           #prefixALTER:Ljava/lang/String;
    :goto_0
    return-void

    .line 95
    :cond_0
    const-string v0, "DROP TABLE IF EXISTS "

    .line 96
    .local v0, prefix:Ljava/lang/String;
    const-string v3, "DROP TABLE IF EXISTS sync_settings"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 97
    const-string v3, "DROP TABLE IF EXISTS extras"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0, p1}, Lcom/htc/opensense/syncprovider/SyncProvider$SyncDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0
.end method
