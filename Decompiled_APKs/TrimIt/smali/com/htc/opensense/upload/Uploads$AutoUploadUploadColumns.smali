.class public Lcom/htc/opensense/upload/Uploads$AutoUploadUploadColumns;
.super Lcom/htc/opensense/upload/Uploads$BatchColumns;
.source "Uploads.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/upload/Uploads;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoUploadUploadColumns"
.end annotation


# static fields
.field public static final CATEGORY_AUTO:Ljava/lang/String; = "auto"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final TABLE_NAME:Ljava/lang/String; = "auto_upload_uploads"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 414
    sget-object v0, Lcom/htc/opensense/upload/Uploads;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "auto_upload_uploads"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/upload/Uploads$AutoUploadUploadColumns;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 411
    invoke-direct {p0}, Lcom/htc/opensense/upload/Uploads$BatchColumns;-><init>()V

    return-void
.end method

.method public static getBatchData(Landroid/database/Cursor;)Lcom/htc/opensense/upload/BatchData;
    .locals 2
    .parameter "c"

    .prologue
    .line 431
    invoke-static {p0}, Lcom/htc/opensense/upload/Uploads$BatchColumns;->getBatchData(Landroid/database/Cursor;)Lcom/htc/opensense/upload/BatchData;

    move-result-object v0

    .line 432
    .local v0, data:Lcom/htc/opensense/upload/BatchData;
    const-string v1, "frequency"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/opensense/upload/BatchData;->frequency:Ljava/lang/String;

    .line 433
    const-string v1, "uri"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/opensense/upload/BatchData;->uri:Ljava/lang/String;

    .line 435
    return-object v0
.end method

.method public static getInsertValues(Lcom/htc/opensense/upload/BatchData;Landroid/content/ComponentName;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 3
    .parameter "data"
    .parameter "name"
    .parameter "serviceTitle"

    .prologue
    .line 423
    invoke-static {p0, p1, p2}, Lcom/htc/opensense/upload/Uploads$BatchColumns;->getInsertValues(Lcom/htc/opensense/upload/BatchData;Landroid/content/ComponentName;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 424
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "frequency"

    iget-object v2, p0, Lcom/htc/opensense/upload/BatchData;->frequency:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const-string v1, "uri"

    iget-object v2, p0, Lcom/htc/opensense/upload/BatchData;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    return-object v0
.end method

.method public static getTableSQL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 418
    const-string v0, "auto_upload_uploads"

    invoke-static {v0}, Lcom/htc/opensense/upload/Uploads$BatchColumns;->getTableSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
