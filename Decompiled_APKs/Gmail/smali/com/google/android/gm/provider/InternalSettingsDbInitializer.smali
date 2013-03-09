.class Lcom/google/android/gm/provider/InternalSettingsDbInitializer;
.super Lcom/google/android/gm/provider/DatabaseInitializer;
.source "InternalSettingsDbInitializer.java"


# direct methods
.method constructor <init>(Lcom/google/android/gm/provider/MailEngine;)V
    .locals 1
    .parameter "engine"

    .prologue
    .line 13
    iget-object v0, p1, Lcom/google/android/gm/provider/MailEngine;->mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/provider/DatabaseInitializer;-><init>(Lcom/google/android/gm/provider/MailEngine;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 14
    return-void
.end method


# virtual methods
.method public bootstrapDatabase()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 18
    const-string v0, "Gmail"

    const-string v1, "Bootstrapping db:%s Current version is %d"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gm/provider/InternalSettingsDbInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/gm/provider/InternalSettingsDbInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 20
    iget-object v0, p0, Lcom/google/android/gm/provider/InternalSettingsDbInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS internal_sync_settings"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/google/android/gm/provider/InternalSettingsDbInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE internal_sync_settings (_id INTEGER PRIMARY KEY,name TEXT,value TEXT,UNIQUE (name))"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/google/android/gm/provider/InternalSettingsDbInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 27
    return-void
.end method

.method public upgradeDbTo2()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/gm/provider/InternalSettingsDbInitializer;->mEngine:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->sendUpgradeSyncWindowIntent()V

    .line 37
    return-void
.end method
