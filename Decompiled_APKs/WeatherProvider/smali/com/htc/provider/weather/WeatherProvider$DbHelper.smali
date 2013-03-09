.class Lcom/htc/provider/weather/WeatherProvider$DbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "WeatherProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/provider/weather/WeatherProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DbHelper"
.end annotation


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 1
    .parameter "context"
    .parameter "name"
    .parameter "factory"
    .parameter "version"

    .prologue
    .line 331
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 328
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/provider/weather/WeatherProvider$DbHelper;->context:Landroid/content/Context;

    .line 332
    iput-object p1, p0, Lcom/htc/provider/weather/WeatherProvider$DbHelper;->context:Landroid/content/Context;

    .line 333
    return-void
.end method

.method private initData(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 523
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9
    .parameter "db"

    .prologue
    .line 342
    const/4 v5, 0x0

    .line 344
    .local v5, sql:Ljava/lang/String;
    const/4 v6, 0x2

    :try_start_0
    new-array v0, v6, [I

    fill-array-data v0, :array_0

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget v1, v0, v3

    .line 345
    .local v1, code:I
    #calls: Lcom/htc/provider/weather/WeatherProvider;->generateCreateTableSql(I)Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/provider/weather/WeatherProvider;->access$000(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 346
    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 344
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 351
    .end local v1           #code:I
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/provider/weather/WeatherProvider$DbHelper;->initData(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    .end local v0           #arr$:[I
    .end local v3           #i$:I
    .end local v4           #len$:I
    :goto_1
    return-void

    .line 353
    :catch_0
    move-exception v2

    .line 354
    .local v2, e:Landroid/database/SQLException;
    const-string v6, "Provider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[WeatherProvider] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 344
    nop

    :array_0
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 361
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 364
    const-string v0, "update location set code = \'EUR|UK|UK124|LONDON\' where code = \'EUR|UK|UK001|LONDON\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 367
    const-string v0, "update location set type = \'1\' where code <> \'\' and type = \'2\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 370
    const-string v0, "delete from location where type = \'2\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 372
    add-int/lit8 p2, p2, 0x1

    .line 375
    :cond_0
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 376
    return-void
.end method
