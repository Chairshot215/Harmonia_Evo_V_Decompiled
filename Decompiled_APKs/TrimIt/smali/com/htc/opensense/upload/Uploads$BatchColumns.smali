.class public Lcom/htc/opensense/upload/Uploads$BatchColumns;
.super Ljava/lang/Object;
.source "Uploads.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/upload/Uploads;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BatchColumns"
.end annotation


# static fields
.field public static final ALBUM_ID:Ljava/lang/String; = "album_id"

.field public static final ALBUM_NAME:Ljava/lang/String; = "album_name"

.field public static final CATEGORY:Ljava/lang/String; = "category"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CREATE_ALBUM_MODE:Ljava/lang/String; = "create_album_mode"

.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final FREQUENCY:Ljava/lang/String; = "frequency"

.field public static final INSERT_TIME:Ljava/lang/String; = "insert_time"

.field public static final LIST_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/batch"

.field public static final MESSAGE_TEXT:Ljava/lang/String; = "message_text"

.field public static final POST_TO_WALL:Ljava/lang/String; = "post"

.field public static final PRIVACY:Ljava/lang/String; = "privacy"

.field public static final SERVICE_CLASS:Ljava/lang/String; = "service_class"

.field public static final SERVICE_PKG:Ljava/lang/String; = "service_pkg"

.field public static final SERVICE_TITLE:Ljava/lang/String; = "service_title"

.field public static final TABLE_NAME:Ljava/lang/String; = "batch"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final TYPE:Ljava/lang/String; = "vnd.android.cursor.item/batch"

.field public static final URI:Ljava/lang/String; = "uri"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 242
    sget-object v0, Lcom/htc/opensense/upload/Uploads;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "batch"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/upload/Uploads$BatchColumns;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBatchData(Landroid/database/Cursor;)Lcom/htc/opensense/upload/BatchData;
    .locals 4
    .parameter "c"

    .prologue
    const/4 v1, 0x1

    .line 330
    new-instance v0, Lcom/htc/opensense/upload/BatchData;

    const-string v2, "_id"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/htc/opensense/upload/BatchData;-><init>(I)V

    .line 331
    .local v0, data:Lcom/htc/opensense/upload/BatchData;
    const-string v2, "album_name"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/opensense/upload/BatchData;->albumName:Ljava/lang/String;

    .line 332
    const-string v2, "album_id"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/opensense/upload/BatchData;->aId:Ljava/lang/String;

    .line 333
    const-string v2, "title"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/opensense/upload/BatchData;->title:Ljava/lang/String;

    .line 334
    const-string v2, "description"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/opensense/upload/BatchData;->description:Ljava/lang/String;

    .line 335
    const-string v2, "privacy"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/opensense/upload/BatchData;->privacy:Ljava/lang/String;

    .line 336
    const-string v2, "create_album_mode"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/htc/opensense/upload/BatchData;->mode:I

    .line 337
    const-string v2, "insert_time"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Lcom/htc/opensense/upload/BatchData;->insertTime:J

    .line 338
    const-string v2, "post"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getShort(I)S

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    iput-boolean v1, v0, Lcom/htc/opensense/upload/BatchData;->postToWall:Z

    .line 339
    const-string v1, "message_text"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/opensense/upload/BatchData;->messageToPost:Ljava/lang/String;

    .line 340
    const-string v1, "category"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/opensense/upload/BatchData;->category:Ljava/lang/String;

    .line 341
    return-object v0

    .line 338
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getInsertValues(Lcom/htc/opensense/upload/BatchData;Landroid/content/ComponentName;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 3
    .parameter "data"
    .parameter "name"
    .parameter "serviceTitle"

    .prologue
    .line 313
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 314
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "album_name"

    iget-object v2, p0, Lcom/htc/opensense/upload/BatchData;->albumName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string v1, "album_id"

    iget-object v2, p0, Lcom/htc/opensense/upload/BatchData;->aId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v1, "service_pkg"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v1, "service_class"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v1, "service_title"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v1, "title"

    iget-object v2, p0, Lcom/htc/opensense/upload/BatchData;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v1, "description"

    iget-object v2, p0, Lcom/htc/opensense/upload/BatchData;->description:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v1, "privacy"

    iget-object v2, p0, Lcom/htc/opensense/upload/BatchData;->privacy:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v1, "create_album_mode"

    iget v2, p0, Lcom/htc/opensense/upload/BatchData;->mode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 323
    const-string v1, "post"

    iget-boolean v2, p0, Lcom/htc/opensense/upload/BatchData;->postToWall:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 324
    const-string v1, "message_text"

    iget-object v2, p0, Lcom/htc/opensense/upload/BatchData;->messageToPost:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v1, "category"

    iget-object v2, p0, Lcom/htc/opensense/upload/BatchData;->category:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    return-object v0
.end method

.method public static getTableSQL()Ljava/lang/String;
    .locals 4

    .prologue
    .line 266
    const-string v0, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s TEXT,%s TEXT,%s INTEGER,%s INTEGER,%s INTEGER DEFAULT 0,%s TEXT,%s TEXT);"

    const/16 v1, 0xf

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "batch"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "_id"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "album_name"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "album_id"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "service_pkg"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "service_class"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "title"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "description"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "service_title"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "privacy"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "create_album_mode"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "insert_time"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "post"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "message_text"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "category"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTableSQL(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "tableName"

    .prologue
    .line 288
    const-string v0, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s TEXT,%s TEXT,%s INTEGER,%s INTEGER,%s INTEGER DEFAULT 0,%s TEXT,%s TEXT,%s TEXT,%s TEXT);"

    const/16 v1, 0x11

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    const-string v3, "_id"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "album_name"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "album_id"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "service_pkg"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "service_class"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "title"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "description"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "service_title"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "privacy"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "create_album_mode"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "insert_time"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "post"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "message_text"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "category"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "frequency"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "uri"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
