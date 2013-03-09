.class Lcom/google/android/gsf/settings/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# instance fields
.field private mAssistedGpsSettingNeedsUpdate:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 44
    const-string v0, "googlesettings.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 45
    iput-object p1, p0, Lcom/google/android/gsf/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method

.method private insertDefaultPartnerSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .parameter "db"

    .prologue
    .line 75
    const-string v3, "INSERT OR IGNORE INTO partner(name,value) VALUES(?,?);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 78
    .local v2, stmt:Landroid/database/sqlite/SQLiteStatement;
    iget-object v3, p0, Lcom/google/android/gsf/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 80
    .local v1, r:Landroid/content/res/Resources;
    const-string v3, "client_id"

    const v4, 0x7f080001

    invoke-direct {p0, v2, v3, v4}, Lcom/google/android/gsf/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 83
    iget-object v3, p0, Lcom/google/android/gsf/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "logging_id2"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, id2:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 85
    const-string v3, "logging_id2"

    invoke-direct {p0, v2, v3, v0}, Lcom/google/android/gsf/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    :cond_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 89
    return-void
.end method

.method private loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "stmt"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 92
    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 93
    const/4 v0, 0x2

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 94
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 95
    return-void
.end method

.method private loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    .locals 1
    .parameter "stmt"
    .parameter "key"
    .parameter "resid"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/gsf/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gsf/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    return-void
.end method


# virtual methods
.method final assistedGpsSettingNeedsUpdate()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/google/android/gsf/settings/DatabaseHelper;->mAssistedGpsSettingNeedsUpdate:Z

    return v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 54
    const-string v0, "CREATE TABLE partner (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT UNIQUE ON CONFLICT REPLACE,value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 59
    const-string v0, "CREATE INDEX partnerIndex1 ON partner (name);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 61
    invoke-direct {p0, p1}, Lcom/google/android/gsf/settings/DatabaseHelper;->insertDefaultPartnerSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 62
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4
    .parameter "db"
    .parameter "oldVersion"
    .parameter "currentVersion"

    .prologue
    const/4 v3, 0x1

    .line 66
    const-string v0, "GoogleSettingsProvider.DatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading settings database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    if-ne p2, v3, :cond_0

    .line 70
    iput-boolean v3, p0, Lcom/google/android/gsf/settings/DatabaseHelper;->mAssistedGpsSettingNeedsUpdate:Z

    .line 72
    :cond_0
    return-void
.end method
