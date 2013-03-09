.class public Lcom/htc/provider/settings/NotificationFlashLightProvider;
.super Landroid/content/ContentProvider;
.source "NotificationFlashLightProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/provider/settings/NotificationFlashLightProvider$DbHelper;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "NotificationFlashLight.db"

.field private static final LOG_FLAG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "Provider"

.field private static final PREFIX:Ljava/lang/String; = "[NotificationFlashLight] "

.field private static final URL_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private mBackupManager:Landroid/app/backup/BackupManager;

.field mOpenHelper:Lcom/htc/provider/settings/NotificationFlashLightProvider$DbHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 36
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/htc/provider/settings/NotificationFlashLightProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    .line 39
    sget-object v0, Lcom/htc/provider/settings/NotificationFlashLightProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.htc.provider.settings"

    const-string v2, "nfl"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 180
    return-void
.end method

.method static synthetic access$000(I)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    invoke-static {p0}, Lcom/htc/provider/settings/NotificationFlashLightProvider;->generateCreateTableSql(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static generateCreateTableSql(I)Ljava/lang/String;
    .locals 10
    .parameter "code"

    .prologue
    const/4 v6, 0x0

    .line 143
    const-string v5, ""

    .line 144
    .local v5, sql:Ljava/lang/String;
    const-string v4, ", "

    .line 146
    .local v4, separate:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 169
    const-string v7, "Provider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[NotificationFlashLight] undefined code for generate sql to create table: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_0
    :goto_0
    return-object v6

    .line 148
    :pswitch_0
    invoke-static {}, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->values()[Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;

    move-result-object v7

    array-length v7, v7

    sget-object v8, Lcom/htc/consts/NotificationFlashLightConsts;->COLUMN_TYPE:[Ljava/lang/String;

    array-length v8, v8

    if-ne v7, v8, :cond_0

    .line 157
    invoke-static {}, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->values()[Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;

    move-result-object v0

    .local v0, arr$:[Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 158
    .local v1, column:Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/htc/consts/NotificationFlashLightConsts;->COLUMN_TYPE:[Ljava/lang/String;

    invoke-virtual {v1}, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->ordinal()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 157
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 161
    .end local v1           #column:Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 162
    const/4 v6, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 164
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CREATE TABLE IF NOT EXISTS nfl ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .line 173
    goto :goto_0

    .line 146
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "uri"
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    const/4 v4, 0x0

    .line 63
    sget-object v3, Lcom/htc/provider/settings/NotificationFlashLightProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 64
    .local v0, code:I
    packed-switch v0, :pswitch_data_0

    .line 72
    const-string v3, "Provider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[NotificationFlashLight] no match uri to delete data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 66
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/provider/settings/NotificationFlashLightProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 67
    iget-object v3, p0, Lcom/htc/provider/settings/NotificationFlashLightProvider;->mOpenHelper:Lcom/htc/provider/settings/NotificationFlashLightProvider$DbHelper;

    invoke-virtual {v3}, Lcom/htc/provider/settings/NotificationFlashLightProvider$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 68
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "nfl"

    invoke-virtual {v1, v3, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 69
    .local v2, nDelete:I
    iget-object v3, p0, Lcom/htc/provider/settings/NotificationFlashLightProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v3}, Landroid/app/backup/BackupManager;->dataChanged()V

    goto :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 9
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v4, 0x0

    .line 84
    const-wide/16 v2, -0x1

    .line 85
    .local v2, id:J
    sget-object v5, Lcom/htc/provider/settings/NotificationFlashLightProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 86
    .local v0, code:I
    packed-switch v0, :pswitch_data_0

    .line 96
    const-string v5, "Provider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[NotificationFlashLight] no match uri to insert data: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :goto_0
    return-object v4

    .line 89
    :pswitch_0
    iget-object v5, p0, Lcom/htc/provider/settings/NotificationFlashLightProvider;->mOpenHelper:Lcom/htc/provider/settings/NotificationFlashLightProvider$DbHelper;

    invoke-virtual {v5}, Lcom/htc/provider/settings/NotificationFlashLightProvider$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 90
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v5, "nfl"

    invoke-virtual {v1, v5, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    sget-object v5, Lcom/htc/consts/NotificationFlashLightConsts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nfl/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 92
    .local v4, uriInsert:Landroid/net/Uri;
    :cond_0
    iget-object v5, p0, Lcom/htc/provider/settings/NotificationFlashLightProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v5}, Landroid/app/backup/BackupManager;->dataChanged()V

    goto :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 47
    new-instance v0, Lcom/htc/provider/settings/NotificationFlashLightProvider$DbHelper;

    invoke-virtual {p0}, Lcom/htc/provider/settings/NotificationFlashLightProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "NotificationFlashLight.db"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/provider/settings/NotificationFlashLightProvider$DbHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/htc/provider/settings/NotificationFlashLightProvider;->mOpenHelper:Lcom/htc/provider/settings/NotificationFlashLightProvider$DbHelper;

    .line 49
    new-instance v0, Landroid/app/backup/BackupManager;

    invoke-virtual {p0}, Lcom/htc/provider/settings/NotificationFlashLightProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/provider/settings/NotificationFlashLightProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    .line 51
    return v4
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v2, 0x0

    .line 104
    sget-object v1, Lcom/htc/provider/settings/NotificationFlashLightProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    .line 105
    .local v8, code:I
    packed-switch v8, :pswitch_data_0

    .line 114
    :goto_0
    return-object v2

    .line 107
    :pswitch_0
    iget-object v1, p0, Lcom/htc/provider/settings/NotificationFlashLightProvider;->mOpenHelper:Lcom/htc/provider/settings/NotificationFlashLightProvider$DbHelper;

    invoke-virtual {v1}, Lcom/htc/provider/settings/NotificationFlashLightProvider$DbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 108
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "nfl"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_0

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "uri"
    .parameter "values"
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    const/4 v4, 0x0

    .line 124
    sget-object v3, Lcom/htc/provider/settings/NotificationFlashLightProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 125
    .local v0, code:I
    packed-switch v0, :pswitch_data_0

    .line 134
    const-string v3, "Provider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[NotificationFlashLight] no match uri to update data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 127
    :pswitch_0
    iget-object v3, p0, Lcom/htc/provider/settings/NotificationFlashLightProvider;->mOpenHelper:Lcom/htc/provider/settings/NotificationFlashLightProvider$DbHelper;

    invoke-virtual {v3}, Lcom/htc/provider/settings/NotificationFlashLightProvider$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 128
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "nfl"

    invoke-virtual {v1, v3, v4, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 129
    .local v2, nDelete:I
    invoke-virtual {p0}, Lcom/htc/provider/settings/NotificationFlashLightProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 130
    iget-object v3, p0, Lcom/htc/provider/settings/NotificationFlashLightProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v3}, Landroid/app/backup/BackupManager;->dataChanged()V

    goto :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
