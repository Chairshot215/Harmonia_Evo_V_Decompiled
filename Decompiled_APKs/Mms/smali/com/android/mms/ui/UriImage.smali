.class public Lcom/android/mms/ui/UriImage;
.super Ljava/lang/Object;
.source "UriImage.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final LOCAL_LOGV:Z = true

.field private static final TAG:Ljava/lang/String; = "UriImage"


# instance fields
.field private mCID:Ljava/lang/String;

.field private mContentType:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mHeight:I

.field private mPartName:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field public mSize:I

.field private mSrc:Ljava/lang/String;

.field private final mUri:Landroid/net/Uri;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .parameter "context"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 21
    .parameter "context"
    .parameter "uri"
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    .line 55
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/UriImage;->mCID:Ljava/lang/String;

    .line 63
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/mms/ui/UriImage;->mSize:I

    .line 103
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 104
    :cond_0
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string v3, "UriImage() uri is null."

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 106
    :cond_1
    const-string v2, "UriImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UriImage uri= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mimeType= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    if-eqz p3, :cond_2

    .line 108
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    .line 110
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v20

    .line 111
    .local v20, scheme:Ljava/lang/String;
    if-eqz v20, :cond_4

    const-string v2, "file"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 112
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/UriImage;->mContext:Landroid/content/Context;

    .line 113
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/UriImage;->mUri:Landroid/net/Uri;

    .line 114
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    .line 115
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    .line 117
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->getAttachmentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    .line 118
    invoke-static/range {p2 .. p2}, Lcom/android/mms/model/ImageModel;->isMmsUri(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/UriImage;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/mms/ui/MessageUtils;->getCID(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/UriImage;->mCID:Ljava/lang/String;

    .line 122
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/UriImage;->decodeBoundsInfo()V

    .line 236
    :goto_0
    return-void

    .line 124
    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/UriImage;->mContext:Landroid/content/Context;

    .line 125
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/UriImage;->mUri:Landroid/net/Uri;

    .line 127
    const/4 v9, 0x0

    .line 130
    .local v9, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    invoke-static/range {v2 .. v8}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 136
    :goto_1
    if-nez v9, :cond_5

    .line 137
    new-instance v2, Lcom/google/android/mms/MmsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Query on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " returns null result."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 132
    :catch_0
    move-exception v12

    .line 133
    .local v12, e:Ljava/lang/SecurityException;
    invoke-virtual {v12}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_1

    .line 141
    .end local v12           #e:Ljava/lang/SecurityException;
    :cond_5
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_7

    .line 142
    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 143
    new-instance v2, Lcom/google/android/mms/MmsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Query on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " returns 0 or multiple rows."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 148
    :cond_7
    :try_start_1
    const-string v14, ""

    .line 149
    .local v14, filePath:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/android/mms/model/ImageModel;->isMmsUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 150
    const-string v2, "_data"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    if-nez v2, :cond_8

    .line 152
    const-string v2, "ct"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    .line 155
    :cond_8
    const/16 v2, 0x2f

    invoke-virtual {v14, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v14, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/UriImage;->mPartName:Ljava/lang/String;

    .line 168
    :cond_9
    :goto_2
    const-string v2, "UriImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---------mContentType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/16 v2, 0x2f

    invoke-virtual {v14, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v18

    .line 172
    .local v18, pos:I
    add-int/lit8 v2, v18, 0x1

    invoke-virtual {v14, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    .line 176
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportUsingCID()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 177
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->getAttachmentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    .line 179
    invoke-static/range {p2 .. p2}, Lcom/android/mms/model/ImageModel;->isMmsUri(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 180
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/UriImage;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/mms/ui/MessageUtils;->getCID(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/UriImage;->mCID:Ljava/lang/String;

    .line 231
    :cond_a
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/UriImage;->decodeBoundsInfo()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 158
    .end local v18           #pos:I
    :cond_b
    :try_start_2
    const-string v2, "_display_name"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 159
    .local v11, displayNameColumnId:I
    if-ltz v11, :cond_c

    .line 160
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 161
    :cond_c
    const-string v2, "_data"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 162
    .local v13, fileNameColumnId:I
    if-ltz v13, :cond_d

    .line 163
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 164
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    if-nez v2, :cond_9

    .line 165
    const-string v2, "mime_type"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 233
    .end local v11           #displayNameColumnId:I
    .end local v13           #fileNameColumnId:I
    .end local v14           #filePath:Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2

    .line 192
    .restart local v14       #filePath:Ljava/lang/String;
    .restart local v18       #pos:I
    :cond_e
    :try_start_3
    const-string v2, "cid"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/UriImage;->mCID:Ljava/lang/String;

    .line 194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/UriImage;->mCID:Ljava/lang/String;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/UriImage;->mCID:Ljava/lang/String;

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/UriImage;->mCID:Ljava/lang/String;

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/UriImage;->mCID:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_a

    .line 195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/UriImage;->mCID:Ljava/lang/String;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/UriImage;->mCID:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/UriImage;->mCID:Ljava/lang/String;

    .line 198
    const-string v2, "name"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 200
    .local v16, name:Ljava/lang/String;
    const/4 v15, 0x1

    .line 201
    .local v15, isNeedExtension:Z
    if-eqz v16, :cond_f

    const-string v2, "."

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/UriImage;->mCID:Ljava/lang/String;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_f

    .line 203
    const-string v2, "."

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    .line 204
    .local v17, name_extension:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/UriImage;->mCID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/UriImage;->mCID:Ljava/lang/String;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 205
    .local v10, cid_extension:Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    const/4 v15, 0x1

    .line 208
    .end local v10           #cid_extension:Ljava/lang/String;
    .end local v17           #name_extension:Ljava/lang/String;
    :cond_f
    :goto_4
    if-eqz v15, :cond_10

    if-eqz v16, :cond_10

    const-string v2, "."

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_10

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/UriImage;->mCID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/UriImage;->mCID:Ljava/lang/String;

    .line 211
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/UriImage;->mCID:Ljava/lang/String;

    const-string v3, "cid:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/UriImage;->mCID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/UriImage;->mCID:Ljava/lang/String;

    goto/16 :goto_3

    .line 205
    .restart local v10       #cid_extension:Ljava/lang/String;
    .restart local v17       #name_extension:Ljava/lang/String;
    :cond_11
    const/4 v15, 0x0

    goto :goto_4

    .line 217
    .end local v10           #cid_extension:Ljava/lang/String;
    .end local v15           #isNeedExtension:Z
    .end local v16           #name:Ljava/lang/String;
    .end local v17           #name_extension:Ljava/lang/String;
    :cond_12
    invoke-static/range {p2 .. p2}, Lcom/android/mms/model/ImageModel;->isMmsUri(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_a

    if-ltz v18, :cond_a

    .line 218
    const/4 v2, 0x0

    move/from16 v0, v18

    invoke-virtual {v14, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 219
    .local v19, preFilePath:Ljava/lang/String;
    const/16 v2, 0x2f

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v18

    .line 220
    if-ltz v18, :cond_a

    add-int/lit8 v2, v18, 0x1

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v18, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3
.end method

.method public static countSampleValue(IIII)I
    .locals 1
    .parameter "originalWidth"
    .parameter "originalHeight"
    .parameter "newWidth"
    .parameter "newHeight"

    .prologue
    .line 366
    const/4 v0, 0x1

    .line 370
    .local v0, sample:I
    :goto_0
    if-lt p0, p2, :cond_1

    if-lt p1, p3, :cond_1

    if-ne p0, p2, :cond_0

    if-eq p1, p3, :cond_1

    .line 372
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    .line 373
    shr-int/lit8 p0, p0, 0x1

    .line 374
    shr-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 378
    :cond_1
    return v0
.end method

.method private decodeBoundsInfo()V
    .locals 10

    .prologue
    .line 240
    const/4 v5, 0x0

    .line 242
    .local v5, input:Ljava/io/InputStream;
    :try_start_0
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 243
    .local v6, opt:Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 244
    const/4 v1, 0x0

    .line 247
    .local v1, bmp:Landroid/graphics/Bitmap;
    iget-object v7, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 249
    new-instance v4, Ljava/io/FileInputStream;

    iget-object v7, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 251
    .local v4, fs:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    long-to-int v7, v7

    iput v7, p0, Lcom/android/mms/ui/UriImage;->mSize:I

    .line 252
    const/4 v7, 0x0

    invoke-static {v4, v7, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 253
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 277
    .end local v4           #fs:Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    :try_start_2
    iget v7, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v7, p0, Lcom/android/mms/ui/UriImage;->mWidth:I

    .line 278
    iget v7, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v7, p0, Lcom/android/mms/ui/UriImage;->mHeight:I

    .line 280
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 288
    :cond_1
    if-eqz v5, :cond_2

    .line 290
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 297
    .end local v1           #bmp:Landroid/graphics/Bitmap;
    .end local v6           #opt:Landroid/graphics/BitmapFactory$Options;
    :cond_2
    :goto_1
    return-void

    .line 254
    .restart local v1       #bmp:Landroid/graphics/Bitmap;
    .restart local v4       #fs:Ljava/io/FileInputStream;
    .restart local v6       #opt:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v2

    .line 255
    .local v2, e:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 282
    .end local v1           #bmp:Landroid/graphics/Bitmap;
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #fs:Ljava/io/FileInputStream;
    .end local v6           #opt:Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v2

    .line 284
    .local v2, e:Ljava/io/FileNotFoundException;
    :try_start_5
    const-string v7, "UriImage"

    const-string v8, "IOException caught while opening stream"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 288
    if-eqz v5, :cond_2

    .line 290
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 291
    :catch_2
    move-exception v2

    .line 293
    .local v2, e:Ljava/io/IOException;
    const-string v7, "UriImage"

    const-string v8, "IOException caught while closing stream"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 260
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #bmp:Landroid/graphics/Bitmap;
    .restart local v6       #opt:Landroid/graphics/BitmapFactory$Options;
    :cond_3
    :try_start_7
    iget-object v7, p0, Lcom/android/mms/ui/UriImage;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 261
    const/4 v7, 0x0

    invoke-static {v5, v7, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 263
    const/4 v3, 0x0

    .line 264
    .local v3, f:Ljava/io/FileInputStream;
    instance-of v7, v5, Ljava/io/FileInputStream;

    if-eqz v7, :cond_4

    .line 265
    move-object v0, v5

    check-cast v0, Ljava/io/FileInputStream;

    move-object v3, v0

    .line 266
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    long-to-int v7, v7

    iput v7, p0, Lcom/android/mms/ui/UriImage;->mSize:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_0

    .line 285
    .end local v1           #bmp:Landroid/graphics/Bitmap;
    .end local v3           #f:Ljava/io/FileInputStream;
    .end local v6           #opt:Landroid/graphics/BitmapFactory$Options;
    :catch_3
    move-exception v2

    .line 286
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_8
    const-string v7, "UriImage"

    const-string v8, "IOException caught while reading stream"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 288
    if-eqz v5, :cond_2

    .line 290
    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_1

    .line 291
    :catch_4
    move-exception v2

    .line 293
    const-string v7, "UriImage"

    const-string v8, "IOException caught while closing stream"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 268
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #bmp:Landroid/graphics/Bitmap;
    .restart local v3       #f:Ljava/io/FileInputStream;
    .restart local v6       #opt:Landroid/graphics/BitmapFactory$Options;
    :cond_4
    :try_start_a
    throw v3

    .line 269
    :goto_2
    const/4 v7, -0x1

    throw v5

    move-result v8

    if-eq v7, v8, :cond_0

    .line 270
    throw p0

    add-int/lit8 v7, v7, 0x1

    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_2

    .line 288
    .end local v1           #bmp:Landroid/graphics/Bitmap;
    .end local v3           #f:Ljava/io/FileInputStream;
    .end local v6           #opt:Landroid/graphics/BitmapFactory$Options;
    :catchall_0
    move-exception v7

    if-eqz v5, :cond_5

    .line 290
    :try_start_b
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 294
    :cond_5
    :goto_3
    throw v7

    .line 291
    .restart local v1       #bmp:Landroid/graphics/Bitmap;
    .restart local v6       #opt:Landroid/graphics/BitmapFactory$Options;
    :catch_5
    move-exception v2

    .line 293
    .restart local v2       #e:Ljava/io/IOException;
    const-string v7, "UriImage"

    const-string v8, "IOException caught while closing stream"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 291
    .end local v1           #bmp:Landroid/graphics/Bitmap;
    .end local v2           #e:Ljava/io/IOException;
    .end local v6           #opt:Landroid/graphics/BitmapFactory$Options;
    :catch_6
    move-exception v2

    .line 293
    .restart local v2       #e:Ljava/io/IOException;
    const-string v8, "UriImage"

    const-string v9, "IOException caught while closing stream"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private getResizedImageData(II)[B
    .locals 23
    .parameter "widthLimit"
    .parameter "heightLimit"

    .prologue
    .line 382
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mms/ui/UriImage;->mWidth:I

    .line 383
    .local v13, outWidth:I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/mms/ui/UriImage;->mHeight:I

    .line 386
    .local v12, outHeight:I
    const-string v20, "UriImage"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "mWidth="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/UriImage;->mWidth:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " mHeight="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/UriImage;->mHeight:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/UriImage;->mWidth:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/UriImage;->mHeight:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    .line 393
    move/from16 v19, p1

    .line 394
    .local v19, temp:I
    move/from16 p1, p2

    .line 395
    move/from16 p2, v19

    .line 399
    .end local v19           #temp:I
    :cond_0
    const/16 v17, 0x1

    .line 411
    .local v17, s:I
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v13, v12, v0, v1}, Lcom/android/mms/ui/UriImage;->countSampleValue(IIII)I

    move-result v17

    .line 416
    const-string v20, "UriImage"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "outWidth="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    div-int v22, v13, v17

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " outHeight="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    div-int v22, v12, v17

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    if-ltz v13, :cond_1

    if-ltz v12, :cond_1

    if-gez v17, :cond_3

    .line 422
    :cond_1
    const/16 v20, 0x0

    .line 502
    :cond_2
    :goto_0
    return-object v20

    .line 426
    :cond_3
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 427
    .local v9, options:Landroid/graphics/BitmapFactory$Options;
    const/16 v20, 0x1

    move/from16 v0, v20

    iput-boolean v0, v9, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 428
    move/from16 v0, v17

    iput v0, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 430
    const/4 v8, 0x0

    .line 431
    .local v8, input:Ljava/io/InputStream;
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 433
    .local v10, os:Ljava/io/ByteArrayOutputStream;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getImageCompressQuality()I

    move-result v14

    .line 436
    .local v14, quality:I
    const/4 v5, 0x0

    .line 438
    .local v5, b:Landroid/graphics/Bitmap;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v5

    .line 445
    :goto_1
    if-nez v5, :cond_6

    .line 446
    const/16 v20, 0x0

    .line 490
    if-eqz v8, :cond_4

    .line 492
    :try_start_1
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 497
    :cond_4
    :goto_2
    if-eqz v10, :cond_2

    .line 499
    :try_start_2
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 500
    :catch_0
    move-exception v7

    .line 501
    .local v7, e:Ljava/io/IOException;
    const-string v21, "UriImage"

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 441
    .end local v7           #e:Ljava/io/IOException;
    :cond_5
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->mUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v8

    .line 442
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-static {v8, v0, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v5

    goto :goto_1

    .line 493
    :catch_1
    move-exception v7

    .line 494
    .restart local v7       #e:Ljava/io/IOException;
    const-string v21, "UriImage"

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 449
    .end local v7           #e:Ljava/io/IOException;
    :cond_6
    const/16 v20, 0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-le v0, v1, :cond_8

    .line 450
    :goto_3
    :try_start_4
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/UriImage;->mWidth:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/UriImage;->mHeight:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 451
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 452
    .local v11, os2:Ljava/io/ByteArrayOutputStream;
    sget-object v20, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v0, v20

    invoke-virtual {v5, v0, v14, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 453
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 455
    .local v6, buf:[B
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 457
    :cond_7
    const/16 v20, 0x0

    array-length v0, v6

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v6, v0, v1, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 458
    goto :goto_3

    .line 462
    .end local v6           #buf:[B
    .end local v11           #os2:Ljava/io/ByteArrayOutputStream;
    :cond_8
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v4, v0

    .line 463
    .local v4, afterSameplWidth:F
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v3, v0

    .line 464
    .local v3, afterSameplHeight:F
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v16, v0

    .line 465
    .local v16, resizeWidth:F
    move/from16 v0, p2

    int-to-float v15, v0

    .line 468
    .local v15, resizeHeight:F
    cmpg-float v20, v4, v16

    if-ltz v20, :cond_9

    cmpg-float v20, v3, v15

    if-gez v20, :cond_a

    .line 470
    :cond_9
    div-float v20, v4, v16

    div-float v21, v3, v15

    cmpl-float v20, v20, v21

    if-lez v20, :cond_c

    .line 471
    mul-float v20, v3, v16

    div-float v15, v20, v4

    .line 475
    :goto_4
    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v20, v0

    float-to-int v0, v15

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v5, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 477
    .local v18, t:Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 478
    move-object/from16 v5, v18

    .line 481
    .end local v18           #t:Landroid/graphics/Bitmap;
    :cond_a
    sget-object v20, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v0, v20

    invoke-virtual {v5, v0, v14, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 483
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 485
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v20

    .line 490
    if-eqz v8, :cond_b

    .line 492
    :try_start_5
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 497
    :cond_b
    :goto_5
    if-eqz v10, :cond_2

    .line 499
    :try_start_6
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 500
    :catch_2
    move-exception v7

    .line 501
    .restart local v7       #e:Ljava/io/IOException;
    const-string v21, "UriImage"

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 473
    .end local v7           #e:Ljava/io/IOException;
    :cond_c
    mul-float v20, v4, v15

    div-float v16, v20, v3

    goto :goto_4

    .line 493
    :catch_3
    move-exception v7

    .line 494
    .restart local v7       #e:Ljava/io/IOException;
    const-string v21, "UriImage"

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 486
    .end local v3           #afterSameplHeight:F
    .end local v4           #afterSameplWidth:F
    .end local v7           #e:Ljava/io/IOException;
    .end local v15           #resizeHeight:F
    .end local v16           #resizeWidth:F
    :catch_4
    move-exception v7

    .line 487
    .local v7, e:Ljava/io/FileNotFoundException;
    :try_start_7
    const-string v20, "UriImage"

    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 488
    const/16 v20, 0x0

    .line 490
    if-eqz v8, :cond_d

    .line 492
    :try_start_8
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 497
    .end local v7           #e:Ljava/io/FileNotFoundException;
    :cond_d
    :goto_6
    if-eqz v10, :cond_2

    .line 499
    :try_start_9
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_0

    .line 500
    :catch_5
    move-exception v7

    .line 501
    .local v7, e:Ljava/io/IOException;
    const-string v21, "UriImage"

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 493
    .local v7, e:Ljava/io/FileNotFoundException;
    :catch_6
    move-exception v7

    .line 494
    .local v7, e:Ljava/io/IOException;
    const-string v21, "UriImage"

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 490
    .end local v7           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v20

    if-eqz v8, :cond_e

    .line 492
    :try_start_a
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 497
    :cond_e
    :goto_7
    if-eqz v10, :cond_f

    .line 499
    :try_start_b
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 502
    :cond_f
    :goto_8
    throw v20

    .line 493
    :catch_7
    move-exception v7

    .line 494
    .restart local v7       #e:Ljava/io/IOException;
    const-string v21, "UriImage"

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 500
    .end local v7           #e:Ljava/io/IOException;
    :catch_8
    move-exception v7

    .line 501
    .restart local v7       #e:Ljava/io/IOException;
    const-string v21, "UriImage"

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method


# virtual methods
.method public getCID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportUsingCID()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/mms/ui/UriImage;->mCID:Ljava/lang/String;

    .line 323
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Lcom/android/mms/ui/UriImage;->mHeight:I

    return v0
.end method

.method public getPartName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/mms/ui/UriImage;->mPartName:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getResizedImageAsPart(II)Lcom/google/android/mms/pdu/PduPart;
    .locals 8
    .parameter "widthLimit"
    .parameter "heightLimit"

    .prologue
    .line 336
    new-instance v4, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v4}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 338
    .local v4, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/UriImage;->getResizedImageData(II)[B

    move-result-object v2

    .line 339
    .local v2, data:[B
    if-nez v2, :cond_0

    .line 341
    const-string v6, "UriImage"

    const-string v7, "Resize image failed."

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const/4 v4, 0x0

    .line 362
    .end local v4           #part:Lcom/google/android/mms/pdu/PduPart;
    :goto_0
    return-object v4

    .line 346
    .restart local v4       #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_0
    invoke-virtual {v4, v2}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 347
    invoke-virtual {p0}, Lcom/android/mms/ui/UriImage;->getContentType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 348
    invoke-virtual {p0}, Lcom/android/mms/ui/UriImage;->getSrc()Ljava/lang/String;

    move-result-object v5

    .line 349
    .local v5, src:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 355
    invoke-virtual {p0}, Lcom/android/mms/ui/UriImage;->getCID()Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, cid:Ljava/lang/String;
    const-string v6, "."

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 357
    .local v3, dotIndex:I
    if-ltz v3, :cond_1

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 358
    .local v1, contentId:Ljava/lang/String;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 360
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    goto :goto_0

    .end local v1           #contentId:Ljava/lang/String;
    :cond_1
    move-object v1, v0

    .line 357
    goto :goto_1
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 328
    iget v0, p0, Lcom/android/mms/ui/UriImage;->mWidth:I

    return v0
.end method
