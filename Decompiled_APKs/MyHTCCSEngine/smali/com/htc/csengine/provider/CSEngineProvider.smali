.class public Lcom/htc/csengine/provider/CSEngineProvider;
.super Landroid/content/ContentProvider;
.source "CSEngineProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/csengine/provider/CSEngineProvider$csengineDatabaseHelper;
    }
.end annotation


# static fields
.field public static final AUTHKEY_COLUMN:I = 0x9

.field public static final AUTHTTL_COLUMN:I = 0x10

.field public static final CMS_COLUMN:I = 0x4

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CS_ACCT_TYPE:Ljava/lang/String; = "com.htc.cs"

.field public static final CS_AUTHORITY:Ljava/lang/String; = "com.htc.csengine.csprovider"

.field private static final CS_DATABASE_NAME:Ljava/lang/String; = "csengine.db"

.field private static final CS_DATABASE_VERSION:I = 0x6

.field private static final CS_TABLE:Ljava/lang/String; = "csengine"

.field public static final DATE_COLUMN:I = 0x1

.field public static final DEVICEID_COLUMN:I = 0xe

.field public static final EMAIL_COLUMN:I = 0xd

.field private static final ENGINE:I = 0x1

.field private static final ENGINE_ID:I = 0x2

.field public static final HASHPW_COLUMN:I = 0xf

.field public static final IMC_COLUMN:I = 0x3

.field public static final KEY_AUTHKEY:Ljava/lang/String; = "authkey"

.field public static final KEY_AUTHTTL:Ljava/lang/String; = "authttl"

.field public static final KEY_CMS:Ljava/lang/String; = "cms"

.field public static final KEY_DATE:Ljava/lang/String; = "date"

.field public static final KEY_DEVICEID:Ljava/lang/String; = "handsetDeviceId"

.field public static final KEY_EMAIL:Ljava/lang/String; = "email"

.field public static final KEY_HASHPW:Ljava/lang/String; = "hashpw"

.field public static final KEY_ID:Ljava/lang/String; = "_id"

.field public static final KEY_IMC:Ljava/lang/String; = "imc"

.field public static final KEY_PERSONALIZETTL:Ljava/lang/String; = "personalizettl"

.field public static final KEY_PERSONALIZEURL:Ljava/lang/String; = "personalize"

.field public static final KEY_SERVICE:Ljava/lang/String; = "service"

.field public static final KEY_SETUPURI:Ljava/lang/String; = "setup"

.field public static final KEY_STATUS:Ljava/lang/String; = "status"

.field public static final KEY_STORETTL:Ljava/lang/String; = "storettl"

.field public static final KEY_STOREURL:Ljava/lang/String; = "store"

.field public static final KEY_TTL:Ljava/lang/String; = "ttl"

.field public static final PERSONALIZETTL_COLUMN:I = 0xc

.field public static final PERSONALIZE_COLUMN:I = 0x7

.field public static final SERVICE_COLUMN:I = 0x2

.field public static final SETUP_COLUMN:I = 0x8

.field public static final STATUS_COLUMN:I = 0x5

.field public static final STORETTL_COLUMN:I = 0xb

.field public static final STORE_COLUMN:I = 0x6

.field private static final TAG:Ljava/lang/String; = "csEngineProvider"

.field public static final TTL_COLUMN:I = 0xa

.field private static final uriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private csengineDB:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 25
    const-string v0, "content://com.htc.csengine.csprovider/csengine"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/csengine/provider/CSEngineProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 121
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/htc/csengine/provider/CSEngineProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 122
    sget-object v0, Lcom/htc/csengine/provider/CSEngineProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.csengine.csprovider"

    const-string v2, "csengine"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 123
    sget-object v0, Lcom/htc/csengine/provider/CSEngineProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.csengine.csprovider"

    const-string v2, "csengine/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 124
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 76
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 187
    sget-object v2, Lcom/htc/csengine/provider/CSEngineProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 197
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 189
    :pswitch_0
    iget-object v2, p0, Lcom/htc/csengine/provider/CSEngineProvider;->csengineDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "csengine"

    invoke-virtual {v2, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 199
    .local v0, count:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/csengine/provider/CSEngineProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 200
    return v0

    .line 192
    .end local v0           #count:I
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 193
    .local v1, segment:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/csengine/provider/CSEngineProvider;->csengineDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "csengine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND ("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v6, 0x29

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 195
    .restart local v0       #count:I
    goto :goto_0

    .line 193
    .end local v0           #count:I
    :cond_0
    const-string v2, ""

    goto :goto_1

    .line 187
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    .line 205
    sget-object v0, Lcom/htc/csengine/provider/CSEngineProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 211
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/vnd.htc.csengine"

    .line 209
    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "vnd.android.cursor.item/vnd.htc.csengine"

    goto :goto_0

    .line 205
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6
    .parameter "_uri"
    .parameter "values"

    .prologue
    .line 218
    iget-object v3, p0, Lcom/htc/csengine/provider/CSEngineProvider;->csengineDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "csengine"

    const-string v5, "csengine"

    invoke-virtual {v3, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 220
    .local v0, rowID:J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_0

    .line 221
    sget-object v3, Lcom/htc/csengine/provider/CSEngineProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 222
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/htc/csengine/provider/CSEngineProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 223
    return-object v2

    .line 225
    .end local v2           #uri:Landroid/net/Uri;
    :cond_0
    new-instance v3, Landroid/database/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to inset row into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onCreate()Z
    .locals 5

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/htc/csengine/provider/CSEngineProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 130
    .local v0, context:Landroid/content/Context;
    new-instance v1, Lcom/htc/csengine/provider/CSEngineProvider$csengineDatabaseHelper;

    const-string v2, "csengine.db"

    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/htc/csengine/provider/CSEngineProvider$csengineDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 131
    .local v1, dbHelper:Lcom/htc/csengine/provider/CSEngineProvider$csengineDatabaseHelper;
    invoke-virtual {v1}, Lcom/htc/csengine/provider/CSEngineProvider$csengineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/csengine/provider/CSEngineProvider;->csengineDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 133
    iget-object v2, p0, Lcom/htc/csengine/provider/CSEngineProvider;->csengineDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v5, 0x0

    .line 140
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 142
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "csengine"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 144
    sget-object v1, Lcom/htc/csengine/provider/CSEngineProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 152
    :goto_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    const-string v9, "date"

    .line 157
    .local v9, orderBy:Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/htc/csengine/provider/CSEngineProvider;->csengineDB:Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 158
    .local v8, c:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/htc/csengine/provider/CSEngineProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v8, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 159
    return-object v8

    .line 146
    .end local v8           #c:Landroid/database/Cursor;
    .end local v9           #orderBy:Ljava/lang/String;
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 155
    :cond_0
    move-object v9, p5

    .restart local v9       #orderBy:Ljava/lang/String;
    goto :goto_1

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 167
    sget-object v2, Lcom/htc/csengine/provider/CSEngineProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 177
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 169
    :pswitch_0
    iget-object v2, p0, Lcom/htc/csengine/provider/CSEngineProvider;->csengineDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "csengine"

    invoke-virtual {v2, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 179
    .local v0, count:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/csengine/provider/CSEngineProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 180
    return v0

    .line 172
    .end local v0           #count:I
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 173
    .local v1, segment:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/csengine/provider/CSEngineProvider;->csengineDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "csengine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND ("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v6, 0x29

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, p2, v2, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 175
    .restart local v0       #count:I
    goto :goto_0

    .line 173
    .end local v0           #count:I
    :cond_0
    const-string v2, ""

    goto :goto_1

    .line 167
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
