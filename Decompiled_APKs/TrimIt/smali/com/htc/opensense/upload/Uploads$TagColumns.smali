.class public Lcom/htc/opensense/upload/Uploads$TagColumns;
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
    name = "TagColumns"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DATA_ID:Ljava/lang/String; = "dataId"

.field public static final LIST_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/tags"

.field public static final TABLE_NAME:Ljava/lang/String; = "tags"

.field public static final TAG_HPH:Ljava/lang/String; = "tag_hInph"

.field public static final TAG_USER:Ljava/lang/String; = "tag_user"

.field public static final TAG_WPW:Ljava/lang/String; = "tag_wInpw"

.field public static final TAG_XPW:Ljava/lang/String; = "tag_xInpw"

.field public static final TAG_YPH:Ljava/lang/String; = "tag_yInph"

.field public static final TYPE:Ljava/lang/String; = "vnd.android.cursor.item/tags"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 348
    sget-object v0, Lcom/htc/opensense/upload/Uploads;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "tags"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/upload/Uploads$TagColumns;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInsertValues(Landroid/os/Bundle;)Landroid/content/ContentValues;
    .locals 3
    .parameter "data"

    .prologue
    .line 398
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 399
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "tag_user"

    const-string v2, "com.htc.opensense.upload.USER_ID"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const-string v1, "tag_xInpw"

    const-string v2, "com.htc.opensense.upload.TAG_X_CENTER_IN_WIDTH_PERCENT"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 402
    const-string v1, "tag_yInph"

    const-string v2, "com.htc.opensense.upload.TAG_Y_CENTER_IN_HEIGHT_PERCENT"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 404
    const-string v1, "tag_wInpw"

    const-string v2, "com.htc.opensense.upload.TAG_W_IN_WIDTH_PERCENT"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 405
    const-string v1, "tag_hInph"

    const-string v2, "com.htc.opensense.upload.TAG_H_IN_HEIGHT_PERCENT"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 407
    return-object v0
.end method

.method public static getInsertValues(Lcom/htc/opensense/social/data/FaceTag;)Landroid/content/ContentValues;
    .locals 3
    .parameter "data"

    .prologue
    .line 387
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 388
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "tag_user"

    iget-object v2, p0, Lcom/htc/opensense/social/data/FaceTag;->tagged_uid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const-string v1, "tag_xInpw"

    iget v2, p0, Lcom/htc/opensense/social/data/FaceTag;->center_x:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 390
    const-string v1, "tag_yInph"

    iget v2, p0, Lcom/htc/opensense/social/data/FaceTag;->center_y:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 391
    const-string v1, "tag_wInpw"

    iget v2, p0, Lcom/htc/opensense/social/data/FaceTag;->width:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 392
    const-string v1, "tag_hInph"

    iget v2, p0, Lcom/htc/opensense/social/data/FaceTag;->height:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 394
    return-object v0
.end method

.method public static getTableSQL()Ljava/lang/String;
    .locals 4

    .prologue
    .line 363
    const-string v0, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT,%s INTEGER,%s INTEGER,%s INTEGER,%s INTEGER,%s INTEGER);"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "tags"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "_id"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "tag_user"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "tag_xInpw"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "tag_yInph"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "tag_wInpw"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "tag_hInph"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "dataId"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTag(Landroid/database/Cursor;)Lcom/htc/opensense/social/data/FaceTag;
    .locals 3
    .parameter "c"

    .prologue
    const v2, 0x3c23d70a

    .line 376
    new-instance v0, Lcom/htc/opensense/social/data/FaceTag;

    invoke-direct {v0}, Lcom/htc/opensense/social/data/FaceTag;-><init>()V

    .line 377
    .local v0, data:Lcom/htc/opensense/social/data/FaceTag;
    const-string v1, "_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/opensense/social/data/FaceTag;->id:Ljava/lang/String;

    .line 378
    const-string v1, "tag_user"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/opensense/social/data/FaceTag;->tagged_uid:Ljava/lang/String;

    .line 379
    const-string v1, "tag_xInpw"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/htc/opensense/social/data/FaceTag;->center_x:F

    .line 380
    const-string v1, "tag_yInph"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/htc/opensense/social/data/FaceTag;->center_y:F

    .line 381
    const-string v1, "tag_wInpw"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/htc/opensense/social/data/FaceTag;->width:F

    .line 382
    const-string v1, "tag_hInph"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/htc/opensense/social/data/FaceTag;->height:F

    .line 383
    return-object v0
.end method
