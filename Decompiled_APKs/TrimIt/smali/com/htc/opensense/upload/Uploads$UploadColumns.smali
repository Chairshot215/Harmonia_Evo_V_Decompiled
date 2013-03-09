.class public Lcom/htc/opensense/upload/Uploads$UploadColumns;
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
    name = "UploadColumns"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/upload/Uploads$UploadColumns$MetaDataColumns;
    }
.end annotation


# static fields
.field public static final BATCH_ID:Ljava/lang/String; = "batch_id"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CONTROL:Ljava/lang/String; = "control"

.field public static final CURRENT_BYTES:Ljava/lang/String; = "current_bytes"

.field public static final FAILED_CONNECTIONS:Ljava/lang/String; = "fail_connections"

.field public static final INSERT_TIME:Ljava/lang/String; = "insert_time"

.field public static final LAST_MODIFICATION:Ljava/lang/String; = "lastmod"

.field public static final LIST_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/upload"

.field public static final RESP_STATUS:Ljava/lang/String; = "resp_status"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final STATUS_CHANGE_TIME:Ljava/lang/String; = "status_change_time"

.field public static final TABLE_NAME:Ljava/lang/String; = "uploads"

.field public static final TOTAL_BYTES:Ljava/lang/String; = "total_bytes"

.field public static final TYPE:Ljava/lang/String; = "vnd.android.cursor.item/upload"

.field public static final UPLOAD_PROJECTIONS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 67
    sget-object v0, Lcom/htc/opensense/upload/Uploads;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "uploads"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/upload/Uploads$UploadColumns;->CONTENT_URI:Landroid/net/Uri;

    .line 84
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "batch_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "insert_time"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "status_change_time"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "status_change_time"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "lastmod"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "total_bytes"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "current_bytes"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "resp_status"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "control"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "fail_connections"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/opensense/upload/Uploads$UploadColumns;->UPLOAD_PROJECTIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    return-void
.end method

.method public static combineInsertValues(Landroid/content/ContentValues;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 18
    .parameter "uploadValue"
    .parameter "context"
    .parameter "image"
    .parameter "title"
    .parameter "mimeType"
    .parameter "privacy"

    .prologue
    .line 156
    const-wide/16 v11, 0x0

    .line 158
    .local v11, fileLength:J
    const-string v2, "content"

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 159
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    invoke-static/range {v2 .. v8}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 162
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_4

    .line 163
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 164
    const-string v2, "_size"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 165
    .local v16, sizeIndex:I
    const-string v2, "title"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 166
    .local v17, titleIndex:I
    const-string v2, "_data"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 167
    .local v15, pathIndex:I
    const-string v2, "mime_type"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 168
    .local v13, mimeTypeIndex:I
    if-lez v16, :cond_0

    .line 169
    move/from16 v0, v16

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v11, v2

    .line 171
    :cond_0
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-lez v17, :cond_1

    .line 172
    move/from16 v0, v17

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 174
    :cond_1
    if-lez v15, :cond_2

    .line 175
    invoke-interface {v9, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 177
    .local v14, path:Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v10, file:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 178
    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    .line 181
    .end local v10           #file:Ljava/io/File;
    .end local v14           #path:Ljava/lang/String;
    :cond_2
    if-lez v13, :cond_3

    .line 182
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 185
    .end local v13           #mimeTypeIndex:I
    .end local v15           #pathIndex:I
    .end local v16           #sizeIndex:I
    .end local v17           #titleIndex:I
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 195
    .end local v9           #c:Landroid/database/Cursor;
    :cond_4
    :goto_0
    const-string v2, "medium_uri"

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v2, "title"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v2, "mime_type"

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v2, "privacy"

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v2, "total_bytes"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 200
    return-object p0

    .line 188
    :cond_5
    new-instance v10, Ljava/io/File;

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    .restart local v10       #file:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 190
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v11

    .line 191
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 192
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p3

    goto :goto_0
.end method

.method public static getInsertValues(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 6
    .parameter "context"
    .parameter "image"
    .parameter "privacy"
    .parameter "mimeType"

    .prologue
    .line 220
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 221
    .local v0, uploadValue:Landroid/content/ContentValues;
    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/htc/opensense/upload/Uploads$UploadColumns;->combineInsertValues(Landroid/content/ContentValues;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 223
    const-string v1, "status"

    const/16 v2, 0xbd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 225
    return-object v0
.end method

.method public static getInsertValues(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 6
    .parameter "context"
    .parameter "image"
    .parameter "privacy"
    .parameter "mimeType"
    .parameter "description"

    .prologue
    .line 230
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 231
    .local v0, uploadValue:Landroid/content/ContentValues;
    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/htc/opensense/upload/Uploads$UploadColumns;->combineInsertValues(Landroid/content/ContentValues;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 233
    const-string v1, "description"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v1, "status"

    const/16 v2, 0xbd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 236
    return-object v0
.end method

.method public static getInsertValues(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 6
    .parameter "context"
    .parameter "data"
    .parameter "privacy"

    .prologue
    .line 205
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 206
    .local v0, uploadValue:Landroid/content/ContentValues;
    const-string v1, "com.htc.opensense.upload.TITLE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 207
    .local v3, title:Ljava/lang/String;
    const-string v1, "com.htc.opensense.upload.URI"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 208
    .local v2, image:Landroid/net/Uri;
    const-string v1, "com.htc.opensense.upload.MIMETYPE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, mimeType:Ljava/lang/String;
    move-object v1, p0

    move-object v5, p2

    .line 209
    invoke-static/range {v0 .. v5}, Lcom/htc/opensense/upload/Uploads$UploadColumns;->combineInsertValues(Landroid/content/ContentValues;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 211
    const-string v1, "description"

    const-string v5, "com.htc.opensense.upload.DESCRIPTION"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v1, "status"

    const/16 v5, 0xbd

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 215
    return-object v0
.end method

.method public static getTableSQL()Ljava/lang/String;
    .locals 4

    .prologue
    .line 90
    const-string v0, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s INTEGER, %s INTEGER, %s INTEGER, %s INTEGER,%s INTEGER,%s INTEGER,%s INTEGER,%s TEXT,%s INTEGER DEFAULT -1,%s INTEGER, %s TEXT, %s TEXT, %s TEXT, %s TEXT, %s TEXT);"

    const/16 v1, 0x11

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "uploads"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "_id"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "batch_id"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "insert_time"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "status"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "status_change_time"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "lastmod"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "total_bytes"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "current_bytes"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "resp_status"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "control"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "fail_connections"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "medium_uri"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "mime_type"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "title"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "description"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "privacy"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
