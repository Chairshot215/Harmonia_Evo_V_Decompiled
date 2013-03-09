.class public Lcom/htc/opensense/upload/Uploads$UploadColumns$MetaDataColumns;
.super Ljava/lang/Object;
.source "Uploads.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/upload/Uploads$UploadColumns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MetaDataColumns"
.end annotation


# static fields
.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final MEDIUM_URI:Ljava/lang/String; = "medium_uri"

.field public static final METADATA_PROJECTIONS:[Ljava/lang/String; = null

.field public static final MIME_TYPE:Ljava/lang/String; = "mime_type"

.field public static final PRIVACY:Ljava/lang/String; = "privacy"

.field public static final TITLE:Ljava/lang/String; = "title"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "medium_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "description"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "privacy"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/opensense/upload/Uploads$UploadColumns$MetaDataColumns;->METADATA_PROJECTIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static combineInsertValues(Landroid/content/ContentValues;Lcom/htc/opensense/upload/PhotoMetaData;)Landroid/content/ContentValues;
    .locals 2

    const-string v0, "medium_uri"

    iget-object v1, p1, Lcom/htc/opensense/upload/PhotoMetaData;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mime_type"

    iget-object v1, p1, Lcom/htc/opensense/upload/PhotoMetaData;->mimeType:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "title"

    iget-object v1, p1, Lcom/htc/opensense/upload/PhotoMetaData;->title:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "description"

    iget-object v1, p1, Lcom/htc/opensense/upload/PhotoMetaData;->description:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "privacy"

    iget-object v1, p1, Lcom/htc/opensense/upload/PhotoMetaData;->privacy:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static getMetaData(Landroid/database/Cursor;)Lcom/htc/opensense/upload/PhotoMetaData;
    .locals 2

    new-instance v0, Lcom/htc/opensense/upload/PhotoMetaData;

    invoke-direct {v0}, Lcom/htc/opensense/upload/PhotoMetaData;-><init>()V

    const-string v1, "_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/htc/opensense/upload/PhotoMetaData;->id:I

    const-string v1, "medium_uri"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/opensense/upload/PhotoMetaData;->uri:Landroid/net/Uri;

    const-string v1, "mime_type"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/opensense/upload/PhotoMetaData;->mimeType:Ljava/lang/String;

    const-string v1, "title"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/opensense/upload/PhotoMetaData;->title:Ljava/lang/String;

    const-string v1, "description"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/opensense/upload/PhotoMetaData;->description:Ljava/lang/String;

    const-string v1, "privacy"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/opensense/upload/PhotoMetaData;->privacy:Ljava/lang/String;

    return-object v0
.end method
