.class public Lcom/htc/provider/weather/WeatherProvider;
.super Landroid/content/ContentProvider;
.source "WeatherProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/provider/weather/WeatherProvider$DbHelper;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "weather.db"

.field private static final DB_VERSION:I = 0x2

.field private static final LOCATION_CODE:I = 0x5

.field private static LOCATION_COLUMN_TYPE:[Ljava/lang/String; = null

.field private static final LOCATION_LIST_CODE:I = 0x1

.field private static final LOCATION_LIST_LANG:I = 0x2

.field private static final LOCATION_LIST_TABLE_NAME:Ljava/lang/String; = "locationlist"

.field private static final LOCATION_LIST_WITH_LIMIT_CODE:I = 0x3

.field private static final LOCATION_TABLE_NAME:Ljava/lang/String; = "location"

.field private static final LOG_FLAG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "Provider"

.field private static final PREFIX:Ljava/lang/String; = "[WeatherProvider] "

.field private static final SETTING_CODE:I = 0x4

.field private static SETTING_COLUMN_TYPE:[Ljava/lang/String; = null

.field private static final SETTING_TABLE_NAME:Ljava/lang/String; = "setting"

.field private static final URL_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private helper:Lcom/htc/provider/weather/WeatherProviderLocationListHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 44
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "integer primary key autoincrement"

    aput-object v1, v0, v2

    const-string v1, "text"

    aput-object v1, v0, v3

    const-string v1, "text"

    aput-object v1, v0, v4

    const-string v1, "text"

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/provider/weather/WeatherProvider;->SETTING_COLUMN_TYPE:[Ljava/lang/String;

    .line 50
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "integer primary key autoincrement"

    aput-object v1, v0, v2

    const-string v1, "text"

    aput-object v1, v0, v3

    const-string v1, "integer"

    aput-object v1, v0, v4

    const-string v1, "text"

    aput-object v1, v0, v5

    const-string v1, "text"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "text"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "text"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "text"

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

    sput-object v0, Lcom/htc/provider/weather/WeatherProvider;->LOCATION_COLUMN_TYPE:[Ljava/lang/String;

    .line 55
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/htc/provider/weather/WeatherProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    .line 58
    sget-object v0, Lcom/htc/provider/weather/WeatherProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.htc.provider.weather"

    const-string v2, "locationlist"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 59
    sget-object v0, Lcom/htc/provider/weather/WeatherProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.htc.provider.weather"

    const-string v2, "locationlist/lang/*"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 60
    sget-object v0, Lcom/htc/provider/weather/WeatherProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.htc.provider.weather"

    const-string v2, "locationlist/#"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 61
    sget-object v0, Lcom/htc/provider/weather/WeatherProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.htc.provider.weather"

    const-string v2, "setting"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    sget-object v0, Lcom/htc/provider/weather/WeatherProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.htc.provider.weather"

    const-string v2, "location"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/provider/weather/WeatherProvider;->helper:Lcom/htc/provider/weather/WeatherProviderLocationListHelper;

    .line 327
    return-void
.end method

.method static synthetic access$000(I)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-static {p0}, Lcom/htc/provider/weather/WeatherProvider;->generateCreateTableSql(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static generateCreateTableSql(I)Ljava/lang/String;
    .locals 10
    .parameter "code"

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 281
    const-string v5, ""

    .line 282
    .local v5, sql:Ljava/lang/String;
    const-string v4, ", "

    .line 284
    .local v4, separate:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 316
    const-string v7, "Provider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[WeatherProvider] undefined code for generate sql to create table: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_0
    :goto_0
    return-object v6

    .line 286
    :pswitch_0
    invoke-static {}, Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;->values()[Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;

    move-result-object v7

    array-length v7, v7

    sget-object v8, Lcom/htc/provider/weather/WeatherProvider;->SETTING_COLUMN_TYPE:[Ljava/lang/String;

    array-length v8, v8

    if-ne v7, v8, :cond_0

    .line 292
    invoke-static {}, Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;->values()[Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;

    move-result-object v0

    .local v0, arr$:[Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 293
    .local v1, column:Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/htc/provider/weather/WeatherProvider;->SETTING_COLUMN_TYPE:[Ljava/lang/String;

    invoke-virtual {v1}, Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;->ordinal()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 292
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 295
    .end local v1           #column:Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 296
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v5, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 298
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CREATE TABLE IF NOT EXISTS setting ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v0           #arr$:[Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;
    :goto_2
    move-object v6, v5

    .line 320
    goto :goto_0

    .line 301
    .end local v2           #i$:I
    .end local v3           #len$:I
    :pswitch_1
    invoke-static {}, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->values()[Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;

    move-result-object v7

    array-length v7, v7

    sget-object v8, Lcom/htc/provider/weather/WeatherProvider;->LOCATION_COLUMN_TYPE:[Ljava/lang/String;

    array-length v8, v8

    if-ne v7, v8, :cond_0

    .line 307
    invoke-static {}, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->values()[Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;

    move-result-object v0

    .local v0, arr$:[Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_3
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 308
    .local v1, column:Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/htc/provider/weather/WeatherProvider;->LOCATION_COLUMN_TYPE:[Ljava/lang/String;

    invoke-virtual {v1}, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->ordinal()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 307
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 310
    .end local v1           #column:Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;
    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 311
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v5, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 313
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CREATE TABLE IF NOT EXISTS location ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 314
    goto :goto_2

    .line 284
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 9
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v5, 0x0

    .line 159
    sget-object v6, Lcom/htc/provider/weather/WeatherProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 160
    .local v1, code:I
    packed-switch v1, :pswitch_data_0

    .line 192
    const-string v6, "Provider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[WeatherProvider] no match uri to bulk insert data: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :goto_0
    return v5

    .line 164
    :pswitch_0
    const-string v6, "Provider"

    const-string v7, "[WeatherProvider] location list is read only, it can\'t be inserted."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 168
    :pswitch_1
    iget-object v5, p0, Lcom/htc/provider/weather/WeatherProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 170
    move-object v0, p2

    .local v0, arr$:[Landroid/content/ContentValues;
    :try_start_0
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 171
    .local v4, value:Landroid/content/ContentValues;
    iget-object v5, p0, Lcom/htc/provider/weather/WeatherProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "setting"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 170
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 173
    .end local v4           #value:Landroid/content/ContentValues;
    :cond_0
    iget-object v5, p0, Lcom/htc/provider/weather/WeatherProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    iget-object v5, p0, Lcom/htc/provider/weather/WeatherProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 177
    array-length v5, p2

    goto :goto_0

    .line 175
    .end local v2           #i$:I
    .end local v3           #len$:I
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/htc/provider/weather/WeatherProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 180
    .end local v0           #arr$:[Landroid/content/ContentValues;
    :pswitch_2
    iget-object v5, p0, Lcom/htc/provider/weather/WeatherProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 182
    move-object v0, p2

    .restart local v0       #arr$:[Landroid/content/ContentValues;
    :try_start_1
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_2
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 183
    .restart local v4       #value:Landroid/content/ContentValues;
    iget-object v5, p0, Lcom/htc/provider/weather/WeatherProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "location"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 182
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 185
    .end local v4           #value:Landroid/content/ContentValues;
    :cond_1
    iget-object v5, p0, Lcom/htc/provider/weather/WeatherProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 187
    iget-object v5, p0, Lcom/htc/provider/weather/WeatherProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 189
    array-length v5, p2

    goto :goto_0

    .line 187
    .end local v2           #i$:I
    .end local v3           #len$:I
    :catchall_1
    move-exception v5

    iget-object v6, p0, Lcom/htc/provider/weather/WeatherProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "uri"
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    const/4 v2, 0x0

    .line 92
    sget-object v3, Lcom/htc/provider/weather/WeatherProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 94
    .local v0, code:I
    packed-switch v0, :pswitch_data_0

    .line 105
    :try_start_0
    const-string v3, "Provider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[WeatherProvider] no match uri to delete data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :goto_0
    return v2

    .line 98
    :pswitch_0
    const-string v3, "Provider"

    const-string v4, "[WeatherProvider] location list is read only, it can\'t be deleted."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "Provider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[WeatherProvider] caught exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 101
    .end local v1           #e:Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v3, p0, Lcom/htc/provider/weather/WeatherProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "setting"

    invoke-virtual {v3, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 103
    :pswitch_2
    iget-object v3, p0, Lcom/htc/provider/weather/WeatherProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "location"

    invoke-virtual {v3, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto :goto_0

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 116
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 10
    .parameter "uri"
    .parameter "values"

    .prologue
    const-wide/16 v8, -0x1

    const/4 v4, 0x0

    .line 121
    const-wide/16 v2, -0x1

    .line 122
    .local v2, id:J
    sget-object v5, Lcom/htc/provider/weather/WeatherProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 126
    .local v0, code:I
    packed-switch v0, :pswitch_data_0

    .line 147
    :try_start_0
    const-string v5, "Provider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[WeatherProvider] no match uri to insert data: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    :goto_0
    return-object v4

    .line 130
    :pswitch_0
    const-string v5, "Provider"

    const-string v6, "[WeatherProvider] location list is read only, it can\'t be inserted."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v1

    .line 151
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "Provider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[WeatherProvider] caught exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 138
    .end local v1           #e:Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v5, p0, Lcom/htc/provider/weather/WeatherProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "setting"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    cmp-long v5, v5, v8

    if-lez v5, :cond_0

    sget-object v5, Lcom/htc/consts/WeatherConsts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setting/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_0

    .line 145
    :pswitch_2
    iget-object v5, p0, Lcom/htc/provider/weather/WeatherProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "location"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    cmp-long v5, v5, v8

    if-lez v5, :cond_0

    sget-object v5, Lcom/htc/consts/WeatherConsts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "location/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 6

    .prologue
    .line 71
    :try_start_0
    new-instance v2, Lcom/htc/provider/weather/WeatherProviderLocationListHelper;

    invoke-virtual {p0}, Lcom/htc/provider/weather/WeatherProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/provider/weather/WeatherProviderLocationListHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/provider/weather/WeatherProvider;->helper:Lcom/htc/provider/weather/WeatherProviderLocationListHelper;

    .line 74
    new-instance v0, Lcom/htc/provider/weather/WeatherProvider$DbHelper;

    invoke-virtual {p0}, Lcom/htc/provider/weather/WeatherProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "weather.db"

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/htc/provider/weather/WeatherProvider$DbHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 75
    .local v0, dbHelper:Lcom/htc/provider/weather/WeatherProvider$DbHelper;
    invoke-virtual {v0}, Lcom/htc/provider/weather/WeatherProvider$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/provider/weather/WeatherProvider;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v0           #dbHelper:Lcom/htc/provider/weather/WeatherProvider$DbHelper;
    :goto_0
    iget-object v2, p0, Lcom/htc/provider/weather/WeatherProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/provider/weather/WeatherProvider;->helper:Lcom/htc/provider/weather/WeatherProviderLocationListHelper;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 76
    :catch_0
    move-exception v1

    .line 77
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "Provider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[WeatherProvider] caught exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 80
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 204
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x7e

    if-ne v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v2, 0x1d

    if-ne v1, v2, :cond_0

    .line 205
    const-string v1, " \'"

    const-string v2, " \'%"

    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 212
    :cond_0
    :try_start_0
    sget-object v1, Lcom/htc/provider/weather/WeatherProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 214
    .local v9, code:I
    packed-switch v9, :pswitch_data_0

    .line 241
    const/4 v1, 0x0

    .line 245
    .end local v9           #code:I
    :goto_0
    return-object v1

    .line 216
    .restart local v9       #code:I
    :pswitch_0
    iget-object v1, p0, Lcom/htc/provider/weather/WeatherProvider;->helper:Lcom/htc/provider/weather/WeatherProviderLocationListHelper;

    invoke-virtual {v1}, Lcom/htc/provider/weather/WeatherProviderLocationListHelper;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 217
    .local v0, langDb:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_1

    .line 218
    const-string v1, "locationlist"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    .line 220
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 222
    .end local v0           #langDb:Landroid/database/sqlite/SQLiteDatabase;
    :pswitch_1
    iget-object v1, p0, Lcom/htc/provider/weather/WeatherProvider;->helper:Lcom/htc/provider/weather/WeatherProviderLocationListHelper;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/provider/weather/WeatherProviderLocationListHelper;->getDb(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 223
    .restart local v0       #langDb:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_2

    .line 224
    const-string v1, "locationlist"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    .line 226
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 228
    .end local v0           #langDb:Landroid/database/sqlite/SQLiteDatabase;
    :pswitch_2
    iget-object v1, p0, Lcom/htc/provider/weather/WeatherProvider;->helper:Lcom/htc/provider/weather/WeatherProviderLocationListHelper;

    invoke-virtual {v1}, Lcom/htc/provider/weather/WeatherProviderLocationListHelper;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 229
    .restart local v0       #langDb:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_3

    .line 230
    const-string v1, "locationlist"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    .line 232
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 234
    .end local v0           #langDb:Landroid/database/sqlite/SQLiteDatabase;
    :pswitch_3
    iget-object v1, p0, Lcom/htc/provider/weather/WeatherProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "setting"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    .line 236
    :pswitch_4
    iget-object v1, p0, Lcom/htc/provider/weather/WeatherProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "location"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 243
    .end local v9           #code:I
    :catch_0
    move-exception v10

    .line 244
    .local v10, e:Ljava/lang/Exception;
    const-string v1, "Provider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WeatherProvider] caught exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "uri"
    .parameter "values"
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    const/4 v2, 0x0

    .line 255
    sget-object v3, Lcom/htc/provider/weather/WeatherProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 257
    .local v0, code:I
    packed-switch v0, :pswitch_data_0

    .line 268
    :try_start_0
    const-string v3, "Provider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[WeatherProvider] no match uri to update data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :goto_0
    return v2

    .line 261
    :pswitch_0
    const-string v3, "Provider"

    const-string v4, "[WeatherProvider] location list is read only, it can\'t be updated."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 271
    :catch_0
    move-exception v1

    .line 272
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "Provider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[WeatherProvider] caught exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 264
    .end local v1           #e:Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v3, p0, Lcom/htc/provider/weather/WeatherProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "setting"

    invoke-virtual {v3, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 266
    :pswitch_2
    iget-object v3, p0, Lcom/htc/provider/weather/WeatherProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "location"

    invoke-virtual {v3, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto :goto_0

    .line 257
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
