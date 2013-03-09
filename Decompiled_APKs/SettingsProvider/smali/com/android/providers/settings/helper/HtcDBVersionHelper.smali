.class Lcom/android/providers/settings/helper/HtcDBVersionHelper;
.super Ljava/lang/Object;
.source "HtcDBVersionHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field private static final VERSION_KEY:Ljava/lang/String; = "htc_settings_provider_version"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/android/providers/settings/helper/HtcDBVersionHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/settings/helper/HtcDBVersionHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 142
    sget-object v0, Lcom/android/providers/settings/helper/HtcDBVersionHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void
.end method

.method public static insertHtcVersion(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 4
    .parameter "db"
    .parameter "version"

    .prologue
    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INSERT OR IGNORE INTO secure (name, value) VALUES(\'htc_settings_provider_version\', "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, INSERT:Ljava/lang/String;
    sget-boolean v2, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v2, :cond_0

    .line 91
    const-string v2, "----------------------------"

    invoke-static {v2}, Lcom/android/providers/settings/helper/HtcDBVersionHelper;->Log(Ljava/lang/String;)V

    .line 92
    const-string v2, "invoke insertHtcVersion(...)"

    invoke-static {v2}, Lcom/android/providers/settings/helper/HtcDBVersionHelper;->Log(Ljava/lang/String;)V

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t sql command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/providers/settings/helper/HtcDBVersionHelper;->Log(Ljava/lang/String;)V

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/providers/settings/helper/HtcDBVersionHelper;->Log(Ljava/lang/String;)V

    .line 95
    const-string v2, "----------------------------"

    invoke-static {v2}, Lcom/android/providers/settings/helper/HtcDBVersionHelper;->Log(Ljava/lang/String;)V

    .line 98
    :cond_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 100
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 107
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v1

    .line 103
    .local v1, e:Landroid/database/SQLException;
    :try_start_1
    invoke-virtual {v1}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v1           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method public static queryHtcVersion(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 6
    .parameter "db"

    .prologue
    const/4 v5, 0x0

    .line 50
    const-string v0, "SELECT value FROM secure WHERE name=\'htc_settings_provider_version\';"

    .line 52
    .local v0, QUERY:Ljava/lang/String;
    const-string v3, "SELECT value FROM secure WHERE name=\'htc_settings_provider_version\';"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 53
    .local v1, cursor:Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 55
    .local v2, version:I
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 57
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 62
    :goto_0
    sget-boolean v3, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v3, :cond_0

    .line 63
    const-string v3, "---------------------------------"

    invoke-static {v3}, Lcom/android/providers/settings/helper/HtcDBVersionHelper;->Log(Ljava/lang/String;)V

    .line 64
    const-string v3, "invoke queryHtcVersion(...)"

    invoke-static {v3}, Lcom/android/providers/settings/helper/HtcDBVersionHelper;->Log(Ljava/lang/String;)V

    .line 65
    const-string v3, "\t sql command: SELECT value FROM secure WHERE name=\'htc_settings_provider_version\';"

    invoke-static {v3}, Lcom/android/providers/settings/helper/HtcDBVersionHelper;->Log(Ljava/lang/String;)V

    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t cursor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/providers/settings/helper/HtcDBVersionHelper;->Log(Ljava/lang/String;)V

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\thtc_settings_provider_version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/providers/settings/helper/HtcDBVersionHelper;->Log(Ljava/lang/String;)V

    .line 68
    const-string v3, "---------------------------------"

    invoke-static {v3}, Lcom/android/providers/settings/helper/HtcDBVersionHelper;->Log(Ljava/lang/String;)V

    .line 73
    :cond_0
    if-eqz v1, :cond_1

    .line 74
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 76
    :cond_1
    return v2

    .line 59
    :cond_2
    invoke-static {p0, v5}, Lcom/android/providers/settings/helper/HtcDBVersionHelper;->insertHtcVersion(Landroid/database/sqlite/SQLiteDatabase;I)V

    goto :goto_0
.end method

.method public static updateHtcVersion(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 4
    .parameter "db"
    .parameter "version"

    .prologue
    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE secure SET value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE name = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "htc_settings_provider_version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\';"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, UPDATE:Ljava/lang/String;
    sget-boolean v2, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v2, :cond_0

    .line 120
    const-string v2, "----------------------------"

    invoke-static {v2}, Lcom/android/providers/settings/helper/HtcDBVersionHelper;->Log(Ljava/lang/String;)V

    .line 121
    const-string v2, "invoke updateHtcVersion(...)"

    invoke-static {v2}, Lcom/android/providers/settings/helper/HtcDBVersionHelper;->Log(Ljava/lang/String;)V

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t sql command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/providers/settings/helper/HtcDBVersionHelper;->Log(Ljava/lang/String;)V

    .line 123
    const-string v2, "----------------------------"

    invoke-static {v2}, Lcom/android/providers/settings/helper/HtcDBVersionHelper;->Log(Ljava/lang/String;)V

    .line 126
    :cond_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 128
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 135
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v1

    .line 131
    .local v1, e:Landroid/database/SQLException;
    :try_start_1
    invoke-virtual {v1}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v1           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method
