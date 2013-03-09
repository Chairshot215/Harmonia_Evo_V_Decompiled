.class public Lcom/htc/sync/provider/weather/Provider;
.super Landroid/content/ContentProvider;
.source "Provider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sync/provider/weather/Provider$DbHelper;
    }
.end annotation


# static fields
.field private static final CODE_DATA:I = 0x1

.field private static final DATABASE_VERSION:I = 0x2

.field private static final LOG_FLAG:Z = false

.field private static final LOG_PREFIX:Ljava/lang/String; = "[Provider] "

.field private static final LOG_TAG:Ljava/lang/String; = "WSP"

.field private static final SEPARATE:Ljava/lang/String; = ", "

.field private static final TABLE_DATA:Ljava/lang/String; = "data"

.field private static final TABLE_DATA_COLUMN_DEFAULT:[Ljava/lang/String;

.field private static final TABLE_DATA_COLUMN_TYPES:[Ljava/lang/String;

.field private static final uriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 29
    const/16 v0, 0x3c

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "integer primary key autoincrement"

    aput-object v1, v0, v5

    const-string v1, "integer"

    aput-object v1, v0, v3

    const-string v1, "text"

    aput-object v1, v0, v6

    const-string v1, "text"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "integer"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "integer"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "integer"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "integer"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "text"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "text"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "text"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "text"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "integer"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "integer"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "integer"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "integer"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "text"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "text"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "text"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "text"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "text"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "text"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "text"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "text"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "text"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "text"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "text"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "text"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "text"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "text"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "integer"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "integer"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "text"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "text"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "text"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "text"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "text"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "text"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "text"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "text"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "text"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "text"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "text"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "text"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "text"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "text"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "text"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "text"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "text"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "text"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "text"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "text"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "text"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "text"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "text"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "text"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "text"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "text"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "text"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "text"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/sync/provider/weather/Provider;->TABLE_DATA_COLUMN_TYPES:[Ljava/lang/String;

    .line 47
    const/16 v0, 0x3c

    new-array v0, v0, [Ljava/lang/String;

    aput-object v4, v0, v5

    aput-object v4, v0, v3

    const-string v1, ""

    aput-object v1, v0, v6

    const-string v1, ""

    aput-object v1, v0, v7

    const/4 v1, 0x4

    aput-object v4, v0, v1

    const/4 v1, 0x5

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, ""

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/sync/provider/weather/Provider;->TABLE_DATA_COLUMN_DEFAULT:[Ljava/lang/String;

    .line 69
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/htc/sync/provider/weather/Provider;->uriMatcher:Landroid/content/UriMatcher;

    .line 72
    sget-object v0, Lcom/htc/sync/provider/weather/Provider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.sync.provider.weather"

    const-string v2, "data"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 73
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 205
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/htc/sync/provider/weather/Provider;->TABLE_DATA_COLUMN_TYPES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/htc/sync/provider/weather/Provider;->TABLE_DATA_COLUMN_DEFAULT:[Ljava/lang/String;

    return-object v0
.end method

.method private getTableName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 197
    sget-object v0, Lcom/htc/sync/provider/weather/Provider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 201
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 199
    :pswitch_0
    const-string v0, "data"

    goto :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 11
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v7, 0x0

    .line 117
    invoke-direct {p0, p1}, Lcom/htc/sync/provider/weather/Provider;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 119
    .local v5, table:Ljava/lang/String;
    if-nez v5, :cond_1

    .line 140
    :cond_0
    :goto_0
    return v7

    .line 123
    :cond_1
    const/4 v1, 0x0

    .line 126
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v8, p0, Lcom/htc/sync/provider/weather/Provider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 127
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 129
    move-object v0, p2

    .local v0, arr$:[Landroid/content/ContentValues;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v6, v0, v3

    .line 130
    .local v6, value:Landroid/content/ContentValues;
    const/4 v8, 0x0

    invoke-virtual {v1, v5, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 129
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 133
    .end local v6           #value:Landroid/content/ContentValues;
    :cond_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 134
    array-length v7, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 135
    .end local v0           #arr$:[Landroid/content/ContentValues;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :catch_0
    move-exception v2

    .line 136
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    const-string v8, "WSP"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[Provider] caught exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 139
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    if-eqz v1, :cond_3

    .line 140
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_3
    throw v7
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .parameter "uri"
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    const/4 v3, 0x0

    .line 78
    invoke-direct {p0, p1}, Lcom/htc/sync/provider/weather/Provider;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, table:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 89
    :goto_0
    return v3

    .line 85
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/htc/sync/provider/weather/Provider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 86
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 87
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v1

    .line 88
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "WSP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Provider] caught exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 181
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 9
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v5, 0x0

    .line 95
    invoke-direct {p0, p1}, Lcom/htc/sync/provider/weather/Provider;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 97
    .local v4, table:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-object v5

    .line 102
    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/htc/sync/provider/weather/Provider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 103
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 105
    .local v2, id:J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_0

    .line 106
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 108
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #id:J
    :catch_0
    move-exception v1

    .line 109
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "WSP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Provider] caught exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCreate()Z
    .locals 4

    .prologue
    .line 187
    :try_start_0
    new-instance v1, Lcom/htc/sync/provider/weather/Provider$DbHelper;

    invoke-virtual {p0}, Lcom/htc/sync/provider/weather/Provider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/sync/provider/weather/Provider$DbHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/sync/provider/weather/Provider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    const/4 v1, 0x1

    .line 191
    :goto_0
    return v1

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WSP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Provider] caught exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    const/4 v1, 0x0

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
    const/4 v9, 0x0

    .line 147
    invoke-direct {p0, p1}, Lcom/htc/sync/provider/weather/Provider;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, table:Ljava/lang/String;
    if-nez v1, :cond_0

    move-object v2, v9

    .line 158
    :goto_0
    return-object v2

    .line 154
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/sync/provider/weather/Provider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 155
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 156
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v8

    .line 157
    .local v8, e:Ljava/lang/Exception;
    const-string v2, "WSP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Provider] caught exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v9

    .line 158
    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v3, 0x0

    .line 164
    invoke-direct {p0, p1}, Lcom/htc/sync/provider/weather/Provider;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, table:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 175
    :goto_0
    return v3

    .line 171
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/htc/sync/provider/weather/Provider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 172
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 173
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v1

    .line 174
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "WSP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Provider] caught exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
