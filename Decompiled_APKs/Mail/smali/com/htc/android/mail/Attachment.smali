.class public Lcom/htc/android/mail/Attachment;
.super Ljava/lang/Object;
.source "Attachment.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/Attachment$States;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static final FILE_DRM_DCF:I = 0x4

.field public static final FILE_DRM_FL:I = 0x3

.field public static final FILE_NOSUPPORT:I = 0x1

.field public static final FILE_SUPPORT:I = 0x0

.field public static final FILE_VCALENDAR:I = 0x5

.field public static final FILE_VCARD:I = 0x2

.field public static final FILE_ZIP:I = 0x6

.field public static final NOSAVE_ATTACH_THUMB:Z = false

.field public static final SAVE_ATTACH_THUMB:Z = true

.field private static final TAG:Ljava/lang/String; = "Attachment"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public BtnView:Landroid/view/View;

.field public attachMimeType:Ljava/lang/String;

.field public attachName:Ljava/lang/String;

.field public attachOrgUri:Ljava/lang/String;

.field public attachPath:Ljava/lang/String;

.field public attachSize:J

.field public attachStates:Lcom/htc/android/mail/Attachment$States;

.field public attachType:I

.field public attachUUID:Ljava/lang/String;

.field public attachmentIconBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field public cid:Ljava/lang/String;

.field public contenttype:I

.field public dispSize:J

.field public encode:Ljava/lang/String;

.field public filereference:Ljava/lang/String;

.field public flags:I

.field public fromServer:Z

.field public globalAttach:Z

.field public icon:Landroid/view/View;

.field public id:J

.field public index:Ljava/lang/String;

.field public localMail:I

.field public meetingInfo:Ljava/lang/String;

.field public meetingMailBody:Ljava/lang/String;

.field public messageId:Ljava/lang/String;

.field public request:Lcom/htc/android/mail/Request;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/Attachment;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    sget v0, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_MIXED:I

    iput v0, p0, Lcom/htc/android/mail/Attachment;->contenttype:I

    .line 76
    iput v1, p0, Lcom/htc/android/mail/Attachment;->flags:I

    .line 77
    iput v1, p0, Lcom/htc/android/mail/Attachment;->localMail:I

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-static {p0, p1}, Lcom/htc/android/mail/Attachment;->searchForExistingThumbFile(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/htc/android/mail/Attachment;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 35
    invoke-static {p0, p1, p2, p3}, Lcom/htc/android/mail/Attachment;->getAttachThumbFilePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/android/mail/Attachment;Landroid/content/Context;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/android/mail/Attachment;->generateAttachThumb(Landroid/content/Context;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/android/mail/Attachment;Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;Lcom/htc/android/mail/MailRequestHandler;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/android/mail/Attachment;->setAttachmentIndicator(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;Lcom/htc/android/mail/MailRequestHandler;)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/android/mail/Attachment;Landroid/content/Context;Landroid/graphics/BitmapFactory$Options;Ljava/lang/String;Lcom/htc/android/mail/MailRequestHandler;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/android/mail/Attachment;->setAttachmentIndicator(Landroid/content/Context;Landroid/graphics/BitmapFactory$Options;Ljava/lang/String;Lcom/htc/android/mail/MailRequestHandler;)V

    return-void
.end method

.method public static deleteAttachThumb(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 18
    .parameter "context"
    .parameter "c"

    .prologue
    .line 97
    :try_start_0
    const-string v15, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 98
    .local v12, partIdIndex:I
    const-string v15, "_message"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 99
    .local v8, messageIdIndex:I
    const-string v15, "_mimetype"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 100
    .local v10, mimeTypeIndex:I
    const-string v15, "_filename"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 101
    .local v5, fileNameIndex:I
    const-string v15, "_filepath"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 104
    .local v6, filePath:I
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 105
    .local v13, path:Ljava/lang/String;
    if-nez v13, :cond_1

    .line 128
    .end local v5           #fileNameIndex:I
    .end local v6           #filePath:I
    .end local v8           #messageIdIndex:I
    .end local v10           #mimeTypeIndex:I
    .end local v12           #partIdIndex:I
    .end local v13           #path:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 109
    .restart local v5       #fileNameIndex:I
    .restart local v6       #filePath:I
    .restart local v8       #messageIdIndex:I
    .restart local v10       #mimeTypeIndex:I
    .restart local v12       #partIdIndex:I
    .restart local v13       #path:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 110
    .local v9, mimeType:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 112
    .local v4, fileName:Ljava/lang/String;
    invoke-static {v9, v4}, Lcom/htc/android/mail/Attachment;->partIsMedia(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 113
    sget-boolean v15, Lcom/htc/android/mail/Attachment;->DEBUG:Z

    if-eqz v15, :cond_2

    const-string v15, "Attachment"

    const-string v16, "deleteAttachThumb(Context context, Cursor c)"

    invoke-static/range {v15 .. v16}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_2
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 115
    .local v11, partId:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 116
    .local v7, messageId:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "attachthumb_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".png"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, attachThumbFileName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 119
    .local v2, attachThumbPath:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    invoke-static {v1, v0}, Lcom/htc/android/mail/Attachment;->searchForExistingThumbFile(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 120
    sget-boolean v15, Lcom/htc/android/mail/Attachment;->DEBUG:Z

    if-eqz v15, :cond_3

    const-string v15, "Attachment"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "found delete attachthumb path:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_3
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .local v14, thumbFile:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 125
    .end local v1           #attachThumbFileName:Ljava/lang/String;
    .end local v2           #attachThumbPath:Ljava/lang/String;
    .end local v4           #fileName:Ljava/lang/String;
    .end local v5           #fileNameIndex:I
    .end local v6           #filePath:I
    .end local v7           #messageId:Ljava/lang/String;
    .end local v8           #messageIdIndex:I
    .end local v9           #mimeType:Ljava/lang/String;
    .end local v10           #mimeTypeIndex:I
    .end local v11           #partId:Ljava/lang/String;
    .end local v12           #partIdIndex:I
    .end local v13           #path:Ljava/lang/String;
    .end local v14           #thumbFile:Ljava/io/File;
    :catch_0
    move-exception v3

    .line 126
    .local v3, e:Ljava/lang/SecurityException;
    sget-boolean v15, Lcom/htc/android/mail/Attachment;->DEBUG:Z

    if-eqz v15, :cond_0

    const-string v15, "Attachment"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Attachment.deleteAttachThumb(Context context, Cursor c) SecurityException: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v3}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private generateAttachThumb(Landroid/content/Context;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/drawable/BitmapDrawable;
    .locals 11
    .parameter "context"
    .parameter "imgOptions"
    .parameter "attachIconid"

    .prologue
    const/4 v10, 0x1

    .line 238
    const/4 v7, 0x0

    .line 239
    .local v7, resultBmpd:Landroid/graphics/drawable/BitmapDrawable;
    const/4 v1, 0x0

    .line 241
    .local v1, bmp:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x2080197

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 242
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 243
    .local v6, rect:Landroid/graphics/Rect;
    invoke-virtual {v2, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 245
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    iget v9, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v9

    iget v9, v6, Landroid/graphics/Rect;->bottom:I

    add-int v0, v8, v9

    .line 247
    .local v0, attachThumbIconSize:I
    iget-object v8, p0, Lcom/htc/android/mail/Attachment;->attachPath:Ljava/lang/String;

    if-nez v8, :cond_0

    const/4 v8, 0x0

    .line 269
    :goto_0
    return-object v8

    .line 248
    :cond_0
    const v8, 0x208082d

    if-ne p3, v8, :cond_3

    .line 249
    iget-object v8, p0, Lcom/htc/android/mail/Attachment;->attachPath:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v8, v0, v9, p2}, Lcom/htc/opensense/album/util/ImageUtils;->loadSquareBitmap(Ljava/lang/String;IZLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 265
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 266
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    .end local v7           #resultBmpd:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v7, v8, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v7       #resultBmpd:Landroid/graphics/drawable/BitmapDrawable;
    :cond_2
    move-object v8, v7

    .line 269
    goto :goto_0

    .line 250
    :cond_3
    const v8, 0x2080203

    if-ne p3, v8, :cond_1

    .line 252
    :try_start_0
    new-instance v5, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v5}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 253
    .local v5, mmr:Landroid/media/MediaMetadataRetriever;
    iget-object v8, p0, Lcom/htc/android/mail/Attachment;->attachPath:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 254
    const/16 v8, 0xc

    invoke-virtual {v5, v8}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    .line 256
    .local v4, mimeType:Ljava/lang/String;
    if-eqz v4, :cond_4

    const-string v8, "video/mp4-3d"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-ne v8, v10, :cond_4

    .line 257
    const-wide/16 v8, -0x1

    invoke-virtual {v5, v8, v9}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {p0, v8, v0}, Lcom/htc/android/mail/Attachment;->resizeFor3D(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    .line 259
    :cond_4
    iget-object v8, p0, Lcom/htc/android/mail/Attachment;->attachPath:Ljava/lang/String;

    const/4 v9, 0x1

    invoke-static {v8, v0, v9, p2}, Lcom/htc/opensense/album/util/ImageUtils;->loadSquareBitmap(Ljava/lang/String;IZLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_1

    .line 261
    .end local v4           #mimeType:Ljava/lang/String;
    .end local v5           #mmr:Landroid/media/MediaMetadataRetriever;
    :catch_0
    move-exception v3

    .line 262
    .local v3, e:Ljava/lang/Exception;
    const-string v8, "Attachment"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error retrieving thumbnail.>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static getAttachThumbFilePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "tokenFolder"
    .parameter "fileName"
    .parameter "storagePriority"

    .prologue
    .line 342
    if-nez p1, :cond_0

    .line 343
    const-string p1, "mail/attachthumb"

    .line 348
    :goto_0
    const/4 v0, 0x1

    invoke-static {p0, p3, p1, p2, v0}, Lcom/htc/android/mail/util/StorageControl;->getFileStoragePath(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 345
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mail/attachthumb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private static partIsMedia(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "mimeType"
    .parameter "fileName"

    .prologue
    const/4 v3, 0x0

    .line 139
    if-eqz p1, :cond_2

    .line 140
    const-string v4, "/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 141
    .local v1, location:I
    const/4 v2, 0x0

    .line 142
    .local v2, type:Ljava/lang/String;
    if-lez v1, :cond_0

    .line 143
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 145
    :cond_0
    invoke-static {p1}, Lcom/htc/android/mail/util/AttachmentIconMap;->getFileIconResource(Ljava/lang/String;)I

    move-result v0

    .line 147
    .local v0, fileIconResource:I
    const-string v4, "image"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "video"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const v4, 0x208082d

    if-eq v0, v4, :cond_1

    const v4, 0x2080203

    if-ne v0, v4, :cond_2

    .line 150
    :cond_1
    const/4 v3, 0x1

    .line 153
    .end local v0           #fileIconResource:I
    .end local v1           #location:I
    .end local v2           #type:Ljava/lang/String;
    :cond_2
    return v3
.end method

.method private returnAttachIconBmpDrawable(Landroid/content/Context;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3
    .parameter "context"
    .parameter "option"
    .parameter "attachIconid"

    .prologue
    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p3, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 166
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 167
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 170
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private returnAttachIconBmpDrawable(Landroid/content/Context;Landroid/graphics/BitmapFactory$Options;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3
    .parameter "context"
    .parameter "option"
    .parameter "filepath"

    .prologue
    .line 183
    invoke-static {p3, p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 184
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 185
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 188
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static searchForExistingThumbFile(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "fileName"
    .parameter "context"

    .prologue
    .line 310
    const/4 v1, 0x0

    .line 311
    .local v1, resultFilePath:Ljava/lang/String;
    const/4 v3, 0x0

    .line 320
    .local v3, tmpFilePath:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, storagePriority:I
    :goto_0
    const/4 v4, 0x3

    if-ge v2, v4, :cond_2

    .line 321
    const/4 v4, 0x0

    invoke-static {p1, v4, p0, v2}, Lcom/htc/android/mail/Attachment;->getAttachThumbFilePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 322
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 324
    .local v0, fTemp:Ljava/io/File;
    sget-boolean v4, Lcom/htc/android/mail/Attachment;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "Attachment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "storagePriority:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 327
    sget-boolean v4, Lcom/htc/android/mail/Attachment;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "Attachment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "returnFileExist: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " exists already!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :cond_1
    move-object v1, v3

    .line 332
    .end local v0           #fTemp:Ljava/io/File;
    :cond_2
    if-nez v1, :cond_3

    .line 333
    sget-boolean v4, Lcom/htc/android/mail/Attachment;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "Attachment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "such file do not exist:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :cond_3
    return-object v1

    .line 320
    .restart local v0       #fTemp:Ljava/io/File;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private setAttachmentIndicator(Landroid/content/Context;Landroid/graphics/BitmapFactory$Options;Ljava/lang/String;Lcom/htc/android/mail/MailRequestHandler;)V
    .locals 1
    .parameter "context"
    .parameter "imgOptions"
    .parameter "attachmentPath"
    .parameter "requestHandler"

    .prologue
    .line 204
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/android/mail/Attachment;->returnAttachIconBmpDrawable(Landroid/content/Context;Landroid/graphics/BitmapFactory$Options;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/Attachment;->attachmentIconBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 206
    iget-object v0, p0, Lcom/htc/android/mail/Attachment;->BtnView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 208
    iget-object v0, p0, Lcom/htc/android/mail/Attachment;->BtnView:Landroid/view/View;

    invoke-virtual {p4, v0}, Lcom/htc/android/mail/MailRequestHandler;->setAttachmentIndicatorIcon(Landroid/view/View;)V

    .line 209
    return-void
.end method

.method private setAttachmentIndicator(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;Lcom/htc/android/mail/MailRequestHandler;)V
    .locals 1
    .parameter "context"
    .parameter "bmpd"
    .parameter "requestHandler"

    .prologue
    .line 221
    iput-object p2, p0, Lcom/htc/android/mail/Attachment;->attachmentIconBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 222
    iget-object v0, p0, Lcom/htc/android/mail/Attachment;->BtnView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 224
    iget-object v0, p0, Lcom/htc/android/mail/Attachment;->BtnView:Landroid/view/View;

    invoke-virtual {p3, v0}, Lcom/htc/android/mail/MailRequestHandler;->setAttachmentIndicatorIcon(Landroid/view/View;)V

    .line 225
    return-void
.end method


# virtual methods
.method public resizeFor3D(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "source"
    .parameter "thumbIconSize"

    .prologue
    .line 273
    if-nez p1, :cond_0

    .line 274
    const/4 v3, 0x0

    .line 295
    :goto_0
    return-object v3

    .line 277
    :cond_0
    const/4 v3, 0x0

    .line 285
    .local v3, output:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/2addr v5, p2

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/2addr v6, p2

    int-to-float v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 286
    .local v4, ratio:F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 287
    .local v2, newWidth:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 288
    .local v1, newHeight:I
    invoke-static {p1, v2, v1}, Lcom/htc/opensense/album/util/ImageUtils;->resize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 289
    invoke-static {p1, p2}, Lcom/htc/opensense/album/util/ImageUtils;->cropVideo(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 294
    .end local v1           #newHeight:I
    .end local v2           #newWidth:I
    .end local v4           #ratio:F
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "Attachment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error retrieving thumbnail.>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setAttachIndicatorIcon(Landroid/content/Context;Ljava/lang/ref/WeakReference;Ljava/lang/Boolean;)V
    .locals 9
    .parameter "context"
    .parameter
    .parameter "saveThumbFlag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .prologue
    .line 369
    .local p2, weakRequestHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    iget-object v0, p0, Lcom/htc/android/mail/Attachment;->attachName:Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/android/mail/util/AttachmentIconMap;->getFileIconResource(Ljava/lang/String;)I

    move-result v3

    .line 370
    .local v3, attachIconid:I
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 371
    .local v6, imgOptions:Landroid/graphics/BitmapFactory$Options;
    const/4 v0, 0x1

    iput-boolean v0, v6, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 374
    iget-object v0, p0, Lcom/htc/android/mail/Attachment;->BtnView:Landroid/view/View;

    const v1, 0x7f09000f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/widget/QuickContactBadge;

    .line 375
    .local v7, attBtn:Lcom/htc/widget/QuickContactBadge;
    invoke-virtual {v7, v3}, Lcom/htc/widget/QuickContactBadge;->setBackgroundResource(I)V

    .line 377
    invoke-static {}, Lcom/htc/android/mail/MailListTab$BackGroundHandler;->getInstance()Landroid/os/Handler;

    move-result-object v8

    new-instance v0, Lcom/htc/android/mail/Attachment$1;

    move-object v1, p0

    move-object v2, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/mail/Attachment$1;-><init>(Lcom/htc/android/mail/Attachment;Ljava/lang/ref/WeakReference;ILjava/lang/Boolean;Landroid/content/Context;Landroid/graphics/BitmapFactory$Options;)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 433
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/htc/android/mail/Attachment;->attachName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/Attachment;->attachPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
