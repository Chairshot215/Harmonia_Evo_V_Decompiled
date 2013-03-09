.class public abstract Lcom/android/providers/settings/abs/HtcAbsDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "HtcAbsDatabaseHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHasCheckedHtcVersion:Z

.field private mHtcDatabaseHelper:Lcom/android/providers/settings/helper/HtcDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SettingsProvider:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/providers/settings/abs/HtcAbsDatabaseHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/settings/abs/HtcAbsDatabaseHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 1
    .parameter "context"
    .parameter "databaseName"
    .parameter "factory"
    .parameter "databaseVersion"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/settings/abs/HtcAbsDatabaseHelper;->mHasCheckedHtcVersion:Z

    .line 44
    new-instance v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper;

    invoke-direct {v0, p1}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/providers/settings/abs/HtcAbsDatabaseHelper;->mHtcDatabaseHelper:Lcom/android/providers/settings/helper/HtcDatabaseHelper;

    .line 45
    return-void
.end method

.method private static Log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 147
    sget-object v0, Lcom/android/providers/settings/abs/HtcAbsDatabaseHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-void
.end method


# virtual methods
.method public declared-synchronized getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onNoUpgrade(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 117
    sget-boolean v1, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_0

    .line 118
    const-string v1, "onNoUpgrade(...)"

    invoke-static {v1}, Lcom/android/providers/settings/abs/HtcAbsDatabaseHelper;->Log(Ljava/lang/String;)V

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t db:getPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/providers/settings/abs/HtcAbsDatabaseHelper;->Log(Ljava/lang/String;)V

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t db:getVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/providers/settings/abs/HtcAbsDatabaseHelper;->Log(Ljava/lang/String;)V

    .line 123
    :cond_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    .line 124
    .local v0, DATABASE_VERSION:I
    iget-object v1, p0, Lcom/android/providers/settings/abs/HtcAbsDatabaseHelper;->mHtcDatabaseHelper:Lcom/android/providers/settings/helper/HtcDatabaseHelper;

    invoke-virtual {v1, p1, v0, v0}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)Z

    .line 126
    return-void
.end method

.method public final onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 138
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/providers/settings/abs/HtcAbsDatabaseHelper;->mHasCheckedHtcVersion:Z

    if-eqz v0, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/settings/abs/HtcAbsDatabaseHelper;->mHasCheckedHtcVersion:Z

    .line 142
    invoke-virtual {p0, p1}, Lcom/android/providers/settings/abs/HtcAbsDatabaseHelper;->onNoUpgrade(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0
.end method

.method public onSuperPostCreate(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 2
    .parameter "db"
    .parameter "newVersion"

    .prologue
    .line 74
    sget-boolean v0, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 75
    const-string v0, "onSuperPostCreate(...)"

    invoke-static {v0}, Lcom/android/providers/settings/abs/HtcAbsDatabaseHelper;->Log(Ljava/lang/String;)V

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\t db:getPath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/settings/abs/HtcAbsDatabaseHelper;->Log(Ljava/lang/String;)V

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\t db:getVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/settings/abs/HtcAbsDatabaseHelper;->Log(Ljava/lang/String;)V

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\t newVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/settings/abs/HtcAbsDatabaseHelper;->Log(Ljava/lang/String;)V

    .line 82
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/settings/abs/HtcAbsDatabaseHelper;->mHasCheckedHtcVersion:Z

    .line 83
    iget-object v0, p0, Lcom/android/providers/settings/abs/HtcAbsDatabaseHelper;->mHtcDatabaseHelper:Lcom/android/providers/settings/helper/HtcDatabaseHelper;

    invoke-virtual {v0, p1}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 84
    return-void
.end method

.method public onSuperPostUpgrade(Landroid/database/sqlite/SQLiteDatabase;III)Z
    .locals 2
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"
    .parameter "upgradingVersion"

    .prologue
    .line 99
    sget-boolean v0, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 100
    const-string v0, "onSuperPostUpgrade(...)"

    invoke-static {v0}, Lcom/android/providers/settings/abs/HtcAbsDatabaseHelper;->Log(Ljava/lang/String;)V

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\t db:getPath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/settings/abs/HtcAbsDatabaseHelper;->Log(Ljava/lang/String;)V

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\t db:getVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/settings/abs/HtcAbsDatabaseHelper;->Log(Ljava/lang/String;)V

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\t oldVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/settings/abs/HtcAbsDatabaseHelper;->Log(Ljava/lang/String;)V

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\t newVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/settings/abs/HtcAbsDatabaseHelper;->Log(Ljava/lang/String;)V

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\t upgradingVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/settings/abs/HtcAbsDatabaseHelper;->Log(Ljava/lang/String;)V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/providers/settings/abs/HtcAbsDatabaseHelper;->mHtcDatabaseHelper:Lcom/android/providers/settings/helper/HtcDatabaseHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/providers/settings/helper/HtcDatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)Z

    move-result v0

    return v0
.end method
