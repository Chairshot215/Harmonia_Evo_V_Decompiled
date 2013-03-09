.class public Lcom/android/providers/contacts/VoicemailStatusTable;
.super Ljava/lang/Object;
.source "VoicemailStatusTable.java"

# interfaces
.implements Lcom/android/providers/contacts/VoicemailTable$Delegate;


# static fields
.field private static final sStatusProjectionMap:Lcom/android/providers/contacts/ProjectionMap;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private final mDelegateHelper:Lcom/android/providers/contacts/VoicemailTable$DelegateHelper;

.field private final mTableName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/android/providers/contacts/ProjectionMap$Builder;

    invoke-direct {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;-><init>()V

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "configuration_state"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data_channel_state"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "notification_channel_state"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "settings_uri"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "source_package"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "voicemail_access_uri"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/VoicemailStatusTable;->sStatusProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/database/sqlite/SQLiteOpenHelper;Lcom/android/providers/contacts/VoicemailTable$DelegateHelper;)V
    .locals 0
    .parameter "tableName"
    .parameter "context"
    .parameter "dbHelper"
    .parameter "delegateHelper"

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/providers/contacts/VoicemailStatusTable;->mTableName:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/android/providers/contacts/VoicemailStatusTable;->mContext:Landroid/content/Context;

    .line 56
    iput-object p3, p0, Lcom/android/providers/contacts/VoicemailStatusTable;->mDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 57
    iput-object p4, p0, Lcom/android/providers/contacts/VoicemailStatusTable;->mDelegateHelper:Lcom/android/providers/contacts/VoicemailTable$DelegateHelper;

    .line 58
    return-void
.end method

.method private getDatabaseModifier(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/providers/contacts/DatabaseModifier;
    .locals 3
    .parameter "db"

    .prologue
    .line 123
    new-instance v0, Lcom/android/providers/contacts/DbModifierWithNotification;

    iget-object v1, p0, Lcom/android/providers/contacts/VoicemailStatusTable;->mTableName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/providers/contacts/VoicemailStatusTable;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/android/providers/contacts/DbModifierWithNotification;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public delete(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .parameter "uriData"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 76
    iget-object v2, p0, Lcom/android/providers/contacts/VoicemailStatusTable;->mDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 77
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getWhereClause()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/android/providers/contacts/util/DbQueryUtils;->concatenateClauses([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, combinedClause:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/providers/contacts/VoicemailStatusTable;->getDatabaseModifier(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/providers/contacts/DatabaseModifier;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/contacts/VoicemailStatusTable;->mTableName:Ljava/lang/String;

    invoke-interface {v2, v3, v0, p3}, Lcom/android/providers/contacts/DatabaseModifier;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public getType(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)Ljava/lang/String;
    .locals 1
    .parameter "uriData"

    .prologue
    .line 110
    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const-string v0, "vnd.android.cursor.item/voicemail.source.status"

    .line 113
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "vnd.android.cursor.dir/voicemail.source.status"

    goto :goto_0
.end method

.method public insert(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7
    .parameter "uriData"
    .parameter "values"

    .prologue
    const/4 v2, 0x0

    .line 62
    iget-object v5, p0, Lcom/android/providers/contacts/VoicemailStatusTable;->mDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 63
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 64
    .local v0, copiedValues:Landroid/content/ContentValues;
    iget-object v5, p0, Lcom/android/providers/contacts/VoicemailStatusTable;->mDelegateHelper:Lcom/android/providers/contacts/VoicemailTable$DelegateHelper;

    invoke-interface {v5, p1, v0}, Lcom/android/providers/contacts/VoicemailTable$DelegateHelper;->checkAndAddSourcePackageIntoValues(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Landroid/content/ContentValues;)V

    .line 65
    invoke-direct {p0, v1}, Lcom/android/providers/contacts/VoicemailStatusTable;->getDatabaseModifier(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/providers/contacts/DatabaseModifier;

    move-result-object v5

    iget-object v6, p0, Lcom/android/providers/contacts/VoicemailStatusTable;->mTableName:Ljava/lang/String;

    invoke-interface {v5, v6, v2, v0}, Lcom/android/providers/contacts/DatabaseModifier;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 66
    .local v3, rowId:J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_0

    .line 67
    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 70
    :cond_0
    return-object v2
.end method

.method public openFile(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .parameter "uriData"
    .parameter "mode"

    .prologue
    .line 119
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "File operation is not supported for status table"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public query(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "uriData"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 85
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 86
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    iget-object v2, p0, Lcom/android/providers/contacts/VoicemailStatusTable;->mTableName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 87
    sget-object v2, Lcom/android/providers/contacts/VoicemailStatusTable;->sStatusProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 88
    invoke-virtual {v0, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setStrict(Z)V

    .line 90
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p3, v2, v4

    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getWhereClause()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    invoke-static {v2}, Lcom/android/providers/contacts/util/DbQueryUtils;->concatenateClauses([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, combinedClause:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/providers/contacts/VoicemailStatusTable;->mDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    move-object v2, p2

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    .line 92
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 93
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 94
    iget-object v2, p0, Lcom/android/providers/contacts/VoicemailStatusTable;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Landroid/provider/VoicemailContract$Status;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v8, v2, v4}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 96
    :cond_0
    return-object v8
.end method

.method public update(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .parameter "uriData"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 102
    iget-object v2, p0, Lcom/android/providers/contacts/VoicemailStatusTable;->mDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 103
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getWhereClause()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/android/providers/contacts/util/DbQueryUtils;->concatenateClauses([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, combinedClause:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/providers/contacts/VoicemailStatusTable;->getDatabaseModifier(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/providers/contacts/DatabaseModifier;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/contacts/VoicemailStatusTable;->mTableName:Ljava/lang/String;

    invoke-interface {v2, v3, p2, v0, p4}, Lcom/android/providers/contacts/DatabaseModifier;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method
