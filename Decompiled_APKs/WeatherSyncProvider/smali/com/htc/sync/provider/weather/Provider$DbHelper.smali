.class Lcom/htc/sync/provider/weather/Provider$DbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sync/provider/weather/Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DbHelper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 208
    const-string v0, "weathersync.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 209
    return-void
.end method

.method private generateCreateTableSql(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "table"

    .prologue
    .line 224
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v5, ""

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 226
    .local v3, sql:Ljava/lang/StringBuffer;
    const-string v5, "data"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->values()[Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    move-result-object v5

    array-length v5, v5

    invoke-static {}, Lcom/htc/sync/provider/weather/Provider;->access$000()[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-ne v5, v6, :cond_3

    .line 227
    invoke-static {}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->values()[Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    move-result-object v0

    .line 228
    .local v0, columns:[Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;
    array-length v4, v0

    .line 229
    .local v4, totalColumns:I
    add-int/lit8 v2, v4, -0x1

    .line 231
    .local v2, lastColumnIndex:I
    const-string v5, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 233
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 234
    aget-object v5, v0, v1

    invoke-virtual {v5}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-static {}, Lcom/htc/sync/provider/weather/Provider;->access$000()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 235
    invoke-static {}, Lcom/htc/sync/provider/weather/Provider;->access$100()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v1

    if-eqz v5, :cond_0

    .line 236
    const-string v5, " DEFAULT \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-static {}, Lcom/htc/sync/provider/weather/Provider;->access$100()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 238
    :cond_0
    if-eq v1, v2, :cond_1

    .line 239
    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 233
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 243
    :cond_2
    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 246
    .end local v0           #columns:[Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;
    .end local v1           #i:I
    .end local v2           #lastColumnIndex:I
    .end local v4           #totalColumns:I
    :cond_3
    const-string v5, "WSP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WSPPUtility.TABLE_DATA_COLUMNS.values().length="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->values()[Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    move-result-object v7

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const-string v5, "WSP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TABLE_DATA_COLUMN_TYPES.length="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/htc/sync/provider/weather/Provider;->access$000()[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 213
    const-string v0, "data"

    invoke-direct {p0, v0}, Lcom/htc/sync/provider/weather/Provider$DbHelper;->generateCreateTableSql(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 218
    const-string v0, "WSP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Provider] Upgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destroy all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const-string v0, "DROP TABLE IF EXISTS data"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0, p1}, Lcom/htc/sync/provider/weather/Provider$DbHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 221
    return-void
.end method
