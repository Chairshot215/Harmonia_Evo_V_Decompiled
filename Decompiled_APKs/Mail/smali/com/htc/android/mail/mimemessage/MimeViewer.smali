.class public Lcom/htc/android/mail/mimemessage/MimeViewer;
.super Landroid/app/Activity;
.source "MimeViewer.java"


# static fields
.field public static final RESULT_FOR_DELETE_TMP_MAIL:I = 0x1

.field public static final RESULT_FOR_NOT_DELETE_TMP_MAIL:I = 0x2

.field private static final SHOW_WAIT_DIALOG:I = 0x64

.field private static final START_PARSE_MESSAGE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "MimeViewer"


# instance fields
.field private mDialogListener:Landroid/content/DialogInterface$OnKeyListener;

.field mHandler:Landroid/os/Handler;

.field private mMessageIndex:I

.field private mMessageUri:Landroid/net/Uri;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    iput-object v0, p0, Lcom/htc/android/mail/mimemessage/MimeViewer;->mUri:Landroid/net/Uri;

    .line 58
    iput-object v0, p0, Lcom/htc/android/mail/mimemessage/MimeViewer;->mMessageUri:Landroid/net/Uri;

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/mail/mimemessage/MimeViewer;->mMessageIndex:I

    .line 115
    new-instance v0, Lcom/htc/android/mail/mimemessage/MimeViewer$2;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/mimemessage/MimeViewer$2;-><init>(Lcom/htc/android/mail/mimemessage/MimeViewer;)V

    iput-object v0, p0, Lcom/htc/android/mail/mimemessage/MimeViewer;->mHandler:Landroid/os/Handler;

    .line 416
    new-instance v0, Lcom/htc/android/mail/mimemessage/MimeViewer$3;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/mimemessage/MimeViewer$3;-><init>(Lcom/htc/android/mail/mimemessage/MimeViewer;)V

    iput-object v0, p0, Lcom/htc/android/mail/mimemessage/MimeViewer;->mDialogListener:Landroid/content/DialogInterface$OnKeyListener;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/mail/mimemessage/MimeViewer;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/android/mail/mimemessage/MimeViewer;->mMessageUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/android/mail/mimemessage/MimeViewer;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/htc/android/mail/mimemessage/MimeViewer;->mMessageUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/android/mail/mimemessage/MimeViewer;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/android/mail/mimemessage/MimeViewer;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/android/mail/mimemessage/MimeViewer;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/htc/android/mail/mimemessage/MimeViewer;->mUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/android/mail/mimemessage/MimeViewer;Lcom/htc/android/mail/mimemessage/MimeMessage;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/htc/android/mail/mimemessage/MimeViewer;->insertToProvider(Lcom/htc/android/mail/mimemessage/MimeMessage;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private insertToProvider(Lcom/htc/android/mail/mimemessage/MimeMessage;)Landroid/net/Uri;
    .locals 11
    .parameter "message"

    .prologue
    const/4 v7, 0x0

    .line 385
    if-nez p1, :cond_1

    move-object v5, v7

    .line 412
    :cond_0
    :goto_0
    return-object v5

    .line 387
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 391
    .local v3, mailOperation:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :try_start_0
    invoke-direct {p0, p1, v3}, Lcom/htc/android/mail/mimemessage/MimeViewer;->processMessage(Lcom/htc/android/mail/mimemessage/MimeMessage;Ljava/util/ArrayList;)V

    .line 393
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 394
    .local v6, viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/mimemessage/Part;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 395
    .local v0, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/mimemessage/Part;>;"
    invoke-static {p1, v6, v0}, Lcom/htc/android/mail/mimemessage/MimeUtility;->collectParts(Lcom/htc/android/mail/mimemessage/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 397
    invoke-direct {p0, p1, v3, v6}, Lcom/htc/android/mail/mimemessage/MimeViewer;->processBody(Lcom/htc/android/mail/mimemessage/MimeMessage;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 399
    invoke-direct {p0, p1, v3, v0}, Lcom/htc/android/mail/mimemessage/MimeViewer;->processAttachment(Lcom/htc/android/mail/mimemessage/MimeMessage;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 400
    const/4 v5, 0x0

    .line 402
    .local v5, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/htc/android/mail/mimemessage/MimeViewer;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "mail"

    invoke-virtual {v8, v9, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v4

    .line 403
    .local v4, results:[Landroid/content/ContentProviderResult;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v8, v4

    if-ge v2, v8, :cond_0

    .line 404
    if-nez v2, :cond_2

    .line 405
    aget-object v8, v4, v2

    iget-object v5, v8, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    .line 407
    :cond_2
    sget-boolean v8, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v8, :cond_3

    const-string v8, "MimeViewer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Insert result:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v4, v2

    iget-object v10, v10, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v4, v2

    iget-object v10, v10, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 410
    .end local v0           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/mimemessage/Part;>;"
    .end local v2           #i:I
    .end local v4           #results:[Landroid/content/ContentProviderResult;
    .end local v5           #uri:Landroid/net/Uri;
    .end local v6           #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/mimemessage/Part;>;"
    :catch_0
    move-exception v1

    .line 411
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v5, v7

    .line 412
    goto :goto_0
.end method

.method private processAttachment(Lcom/htc/android/mail/mimemessage/MimeMessage;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 33
    .parameter "message"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/mimemessage/MimeMessage;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/mimemessage/Part;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/android/mail/mimemessage/MessagingException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 293
    .local p2, mailOperation:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local p3, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/mimemessage/Part;>;"
    const/16 v17, 0x0

    .line 294
    .local v17, mixAttNum:I
    const/16 v22, 0x0

    .line 295
    .local v22, relatedAttNum:I
    const-wide/16 v8, 0x0

    .line 297
    .local v8, copySize:J
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/htc/android/mail/mimemessage/Part;

    .line 298
    .local v20, part:Lcom/htc/android/mail/mimemessage/Part;
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 300
    .local v21, partCV:Landroid/content/ContentValues;
    invoke-interface/range {v20 .. v20}, Lcom/htc/android/mail/mimemessage/Part;->getContentType()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/htc/android/mail/mimemessage/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 301
    .local v7, contentType:Ljava/lang/String;
    const-string v28, "name"

    move-object/from16 v0, v28

    invoke-static {v7, v0}, Lcom/htc/android/mail/mimemessage/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 302
    .local v18, name:Ljava/lang/String;
    if-nez v18, :cond_0

    .line 303
    invoke-interface/range {v20 .. v20}, Lcom/htc/android/mail/mimemessage/Part;->getContentType()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/htc/android/mail/mimemessage/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 304
    .local v6, contentDisposition:Ljava/lang/String;
    const-string v28, "filename"

    move-object/from16 v0, v28

    invoke-static {v6, v0}, Lcom/htc/android/mail/mimemessage/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 308
    .end local v6           #contentDisposition:Ljava/lang/String;
    :cond_0
    const-wide/16 v24, 0x0

    .line 309
    .local v24, size:J
    const/4 v11, 0x0

    .line 310
    .local v11, dispositionType:Ljava/lang/String;
    invoke-interface/range {v20 .. v20}, Lcom/htc/android/mail/mimemessage/Part;->getDisposition()Ljava/lang/String;

    move-result-object v10

    .line 311
    .local v10, disposition:Ljava/lang/String;
    if-eqz v10, :cond_2

    .line 312
    const-string v28, "size"

    move-object/from16 v0, v28

    invoke-static {v10, v0}, Lcom/htc/android/mail/mimemessage/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 313
    .local v23, s:Ljava/lang/String;
    if-eqz v23, :cond_1

    .line 314
    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    .line 316
    :cond_1
    const/16 v28, 0x0

    move-object/from16 v0, v28

    invoke-static {v10, v0}, Lcom/htc/android/mail/mimemessage/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 317
    .local v26, type:Ljava/lang/String;
    if-eqz v26, :cond_2

    .line 318
    move-object/from16 v11, v26

    .line 322
    .end local v23           #s:Ljava/lang/String;
    .end local v26           #type:Ljava/lang/String;
    :cond_2
    invoke-interface/range {v20 .. v20}, Lcom/htc/android/mail/mimemessage/Part;->getBody()Lcom/htc/android/mail/mimemessage/Body;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lcom/htc/android/mail/mimemessage/Body;->getInputStream()Ljava/io/InputStream;

    move-result-object v16

    .line 324
    .local v16, in:Ljava/io/InputStream;
    const-string v28, "_filename"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-interface/range {v20 .. v20}, Lcom/htc/android/mail/mimemessage/Part;->getContentId()Ljava/lang/String;

    move-result-object v28

    if-nez v28, :cond_4

    const/4 v5, 0x0

    .line 327
    .local v5, cid:Ljava/lang/String;
    :goto_1
    sget v3, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_MIXED:I

    .line 328
    .local v3, attachmentContentType:I
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_3

    .line 329
    sget v3, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_RELATED:I

    .line 330
    if-eqz v11, :cond_3

    sget-object v28, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v28

    const-string v29, "attachment"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_3

    .line 331
    sget v3, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_MIXED:I

    .line 334
    :cond_3
    const/4 v13, 0x0

    .line 336
    .local v13, filePath:Ljava/lang/String;
    sget v28, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_MIXED:I

    move/from16 v0, v28

    if-ne v3, v0, :cond_5

    .line 337
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/mimemessage/MimeViewer;->getApplicationContext()Landroid/content/Context;

    move-result-object v28

    const/16 v29, 0x2

    const-string v30, ".Mail"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "-"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static/range {v18 .. v18}, Lcom/htc/android/mail/MailCommon;->eraseInvalidChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    sget v32, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_MIXED:I

    invoke-static/range {v28 .. v32}, Lcom/htc/android/mail/util/StorageControl;->getAttachmentFilePath(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 339
    add-int/lit8 v17, v17, 0x1

    .line 347
    :goto_2
    :try_start_0
    new-instance v19, Ljava/io/FileOutputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 348
    .local v19, out:Ljava/io/FileOutputStream;
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v28

    move/from16 v0, v28

    int-to-long v8, v0

    .line 349
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    .line 350
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    const-string v28, "_mimetype"

    invoke-interface/range {v20 .. v20}, Lcom/htc/android/mail/mimemessage/Part;->getMimeType()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v28, "_text"

    const-string v29, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v28, "_cid"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string v28, "_contenttype"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 360
    const-string v28, "_account"

    const-wide v29, 0x7ffffffffffffffeL

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 361
    const-string v28, "_flags"

    const/16 v29, 0x0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 362
    const-string v28, "_filepath"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string v28, "_filesize"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 364
    const/4 v4, 0x0

    .line 365
    .local v4, builder:Landroid/content/ContentProviderOperation$Builder;
    sget-object v28, Lcom/htc/android/mail/MailProvider;->sPartsURI:Landroid/net/Uri;

    invoke-static/range {v28 .. v28}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 366
    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 367
    const-string v28, "_message"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/mimemessage/MimeViewer;->mMessageIndex:I

    move/from16 v29, v0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 368
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v28

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 325
    .end local v3           #attachmentContentType:I
    .end local v4           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v5           #cid:Ljava/lang/String;
    .end local v13           #filePath:Ljava/lang/String;
    .end local v19           #out:Ljava/io/FileOutputStream;
    :cond_4
    invoke-interface/range {v20 .. v20}, Lcom/htc/android/mail/mimemessage/Part;->getContentId()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    const-string v29, "<"

    const-string v30, ""

    invoke-virtual/range {v28 .. v30}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v28

    const-string v29, ">"

    const-string v30, ""

    invoke-virtual/range {v28 .. v30}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 341
    .restart local v3       #attachmentContentType:I
    .restart local v5       #cid:Ljava/lang/String;
    .restart local v13       #filePath:Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/mimemessage/MimeViewer;->getApplicationContext()Landroid/content/Context;

    move-result-object v28

    const/16 v29, 0x2

    const-string v30, ".Mail"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "-"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static/range {v18 .. v18}, Lcom/htc/android/mail/MailCommon;->eraseInvalidChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    sget v32, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_RELATED:I

    invoke-static/range {v28 .. v32}, Lcom/htc/android/mail/util/StorageControl;->getAttachmentFilePath(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 343
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_2

    .line 351
    :catch_0
    move-exception v12

    .line 352
    .local v12, e:Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 353
    throw v12

    .line 371
    .end local v3           #attachmentContentType:I
    .end local v5           #cid:Ljava/lang/String;
    .end local v7           #contentType:Ljava/lang/String;
    .end local v10           #disposition:Ljava/lang/String;
    .end local v11           #dispositionType:Ljava/lang/String;
    .end local v12           #e:Ljava/lang/Exception;
    .end local v13           #filePath:Ljava/lang/String;
    .end local v16           #in:Ljava/io/InputStream;
    .end local v18           #name:Ljava/lang/String;
    .end local v20           #part:Lcom/htc/android/mail/mimemessage/Part;
    .end local v21           #partCV:Landroid/content/ContentValues;
    .end local v24           #size:J
    :cond_6
    if-lez v17, :cond_7

    .line 372
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 373
    .local v14, flagCV:Landroid/content/ContentValues;
    const-string v28, "_incAttachment"

    const/16 v29, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 374
    const-string v27, "_id = ?"

    .line 375
    .local v27, where:Ljava/lang/String;
    const/4 v4, 0x0

    .line 376
    .restart local v4       #builder:Landroid/content/ContentProviderOperation$Builder;
    sget-object v28, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    invoke-static/range {v28 .. v28}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 377
    invoke-virtual {v4, v14}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 378
    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 379
    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/mimemessage/MimeViewer;->mMessageIndex:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 380
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v28

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    .end local v4           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v14           #flagCV:Landroid/content/ContentValues;
    .end local v27           #where:Ljava/lang/String;
    :cond_7
    return-void
.end method

.method private processBody(Lcom/htc/android/mail/mimemessage/MimeMessage;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 11
    .parameter "message"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/mimemessage/MimeMessage;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/mimemessage/Part;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/android/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .local p2, mailOperation:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local p3, viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/mimemessage/Part;>;"
    const-wide/32 v9, 0xc8000

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    .local v0, Htmlbody:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .local v1, Textbody:Ljava/lang/StringBuilder;
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/android/mail/mimemessage/Part;

    .line 245
    .local v5, viewable:Lcom/htc/android/mail/mimemessage/Part;
    invoke-interface {v5}, Lcom/htc/android/mail/mimemessage/Part;->getMimeType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "text/html"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 246
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    int-to-long v6, v6

    cmp-long v6, v6, v9

    if-lez v6, :cond_2

    .line 247
    sget-boolean v6, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v6, :cond_1

    const-string v6, "MimeViewer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Due to Htmlbdoy is large. stop get the content."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .end local v5           #viewable:Lcom/htc/android/mail/mimemessage/Part;
    :cond_1
    :goto_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 264
    .local v2, bodyCV:Landroid/content/ContentValues;
    const-string v6, "_filename"

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v6, "_cid"

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v6, "_contenttype"

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v6, "_account"

    const-wide v7, 0x7ffffffffffffffeL

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 268
    const-string v6, "_flags"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 269
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_7

    .line 270
    const-string v6, "_mimetype"

    const-string v7, "text/html"

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v6, "_text"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const/4 v3, 0x0

    .line 273
    .local v3, builder:Landroid/content/ContentProviderOperation$Builder;
    sget-object v6, Lcom/htc/android/mail/MailProvider;->sPartsURI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 274
    invoke-virtual {v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 275
    const-string v6, "_message"

    iget v7, p0, Lcom/htc/android/mail/mimemessage/MimeViewer;->mMessageIndex:I

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 276
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    .end local v3           #builder:Landroid/content/ContentProviderOperation$Builder;
    :goto_2
    return-void

    .line 250
    .end local v2           #bodyCV:Landroid/content/ContentValues;
    .restart local v5       #viewable:Lcom/htc/android/mail/mimemessage/Part;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    int-to-long v6, v6

    sub-long v6, v9, v6

    invoke-static {v5, v6, v7}, Lcom/htc/android/mail/mimemessage/MimeUtility;->getTextFromPart(Lcom/htc/android/mail/mimemessage/Part;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    sget-boolean v6, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "MimeViewer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Html:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 252
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_6

    :cond_4
    invoke-interface {v5}, Lcom/htc/android/mail/mimemessage/Part;->getMimeType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "text/plain"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 253
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    int-to-long v6, v6

    cmp-long v6, v6, v9

    if-lez v6, :cond_5

    .line 254
    sget-boolean v6, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v6, :cond_1

    const-string v6, "MimeViewer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Due to Textbody is large. stop get the content."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 257
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    int-to-long v6, v6

    sub-long v6, v9, v6

    invoke-static {v5, v6, v7}, Lcom/htc/android/mail/mimemessage/MimeUtility;->getTextFromPart(Lcom/htc/android/mail/mimemessage/Part;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    sget-boolean v6, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "MimeViewer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Plain:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 260
    :cond_6
    sget-boolean v6, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "MimeViewer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown body:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5}, Lcom/htc/android/mail/mimemessage/Part;->getMimeType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5}, Lcom/htc/android/mail/mimemessage/Part;->getContentType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 277
    .end local v5           #viewable:Lcom/htc/android/mail/mimemessage/Part;
    .restart local v2       #bodyCV:Landroid/content/ContentValues;
    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_8

    .line 278
    const-string v6, "_mimetype"

    const-string v7, "text/plain"

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v6, "_text"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const/4 v3, 0x0

    .line 281
    .restart local v3       #builder:Landroid/content/ContentProviderOperation$Builder;
    sget-object v6, Lcom/htc/android/mail/MailProvider;->sPartsURI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 282
    invoke-virtual {v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 283
    const-string v6, "_message"

    iget v7, p0, Lcom/htc/android/mail/mimemessage/MimeViewer;->mMessageIndex:I

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 284
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 286
    .end local v3           #builder:Landroid/content/ContentProviderOperation$Builder;
    :cond_8
    const-string v6, "MimeViewer"

    const-string v7, "no body inserted"

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private processMessage(Lcom/htc/android/mail/mimemessage/MimeMessage;Ljava/util/ArrayList;)V
    .locals 20
    .parameter "message"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/mimemessage/MimeMessage;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/android/mail/mimemessage/MessagingException;
        }
    .end annotation

    .prologue
    .line 189
    .local p2, mailOperation:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 191
    .local v11, cv:Landroid/content/ContentValues;
    const-string v6, "From"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/htc/android/mail/mimemessage/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/android/mail/mimemessage/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/android/mail/Headers$Rfc2047;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, from:Ljava/lang/String;
    const-string v6, "To"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/htc/android/mail/mimemessage/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/android/mail/mimemessage/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/android/mail/Headers$Rfc2047;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 193
    .local v3, to:Ljava/lang/String;
    const-string v6, "Cc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/htc/android/mail/mimemessage/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/android/mail/mimemessage/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/android/mail/Headers$Rfc2047;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 194
    .local v5, cc:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/htc/android/mail/mimemessage/MimeMessage;->getSubject()Ljava/lang/String;

    move-result-object v4

    .line 195
    .local v4, subject:Ljava/lang/String;
    sget-boolean v6, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "MimeViewer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v18, ","

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v18, ","

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v18, ","

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v18, ","

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v18, "Date"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/mimemessage/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_0
    const/4 v6, 0x1

    new-array v8, v6, [J

    .line 198
    .local v8, nResult:[J
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v8}, Lcom/htc/android/mail/BaseStone;->getGroupID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[J)Ljava/lang/String;

    move-result-object v14

    .line 199
    .local v14, group:Ljava/lang/String;
    const/4 v6, 0x0

    aget-wide v16, v8, v6

    .line 200
    .local v16, psuedoGroupId:J
    const-string v6, "utf-8"

    const-string v7, "utf-8"

    invoke-static {v2, v6, v7}, Lcom/htc/android/mail/Headers;->parseFromAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v9

    .line 202
    .local v9, addrMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "_account"

    const-wide v18, 0x7ffffffffffffffeL

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v11, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 203
    const-string v7, "_from"

    if-nez v9, :cond_3

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v11, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v7, "_fromEmail"

    if-nez v9, :cond_4

    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v11, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v6, "_to"

    invoke-virtual {v11, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v6, "_cc"

    invoke-virtual {v11, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v6, "_subject"

    invoke-virtual {v11, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v6, "_subjtype"

    const-string v7, ""

    invoke-virtual {v11, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v6, "_importance"

    const-string v7, "Importance"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/htc/android/mail/mimemessage/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/android/mail/MailCommon;->getImportanceValue(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v11, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 210
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    .line 211
    .local v12, date:J
    const-string v6, "Date"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/htc/android/mail/mimemessage/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 212
    const-string v6, "Date"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/htc/android/mail/mimemessage/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/android/mail/DateParser;->parse(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    .line 214
    :cond_1
    const-string v6, "_date"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v11, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 215
    const-string v6, "_internaldate"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v11, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 216
    const-string v6, "_uid"

    const v7, 0x7fffffff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v11, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 217
    const-string v6, "_readtotalsize"

    const/16 v7, 0x64

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v11, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 218
    const-string v6, "_downloadtotalsize"

    const/16 v7, 0x64

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v11, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 219
    const-string v6, "_messagesize"

    const/16 v7, 0x64

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v11, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 220
    const-string v6, "_readsize"

    const/16 v7, 0x64

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v11, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 221
    const-string v6, "_flags"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v11, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 222
    const-string v6, "Message-ID"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/htc/android/mail/mimemessage/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 223
    .local v15, mid:Ljava/lang/String;
    if-eqz v15, :cond_2

    .line 224
    const-string v6, "_messageid"

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v18, "<"

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v18, ">"

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_2
    const-string v6, "_group"

    invoke-virtual {v11, v6, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v6, "_groupPseudo"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v11, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 228
    const-string v6, "_mailboxId"

    const v7, 0x7fffff37

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v11, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 229
    const-string v6, "_local"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v11, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 231
    const/4 v10, 0x0

    .line 232
    .local v10, builder:Landroid/content/ContentProviderOperation$Builder;
    sget-object v6, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 233
    invoke-virtual {v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 234
    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/android/mail/mimemessage/MimeViewer;->mMessageIndex:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/htc/android/mail/mimemessage/MimeViewer;->mMessageIndex:I

    .line 236
    return-void

    .line 203
    .end local v10           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v12           #date:J
    .end local v15           #mid:Ljava/lang/String;
    :cond_3
    const-string v6, "from"

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto/16 :goto_0

    .line 204
    :cond_4
    const-string v6, "fromEmail"

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto/16 :goto_1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 429
    packed-switch p1, :pswitch_data_0

    .line 433
    :goto_0
    return-void

    .line 431
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/android/mail/mimemessage/MimeViewer;->finish()V

    goto :goto_0

    .line 429
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    const/16 v2, 0x64

    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/mimemessage/MimeViewer;->requestWindowFeature(I)Z

    .line 66
    invoke-virtual {p0}, Lcom/htc/android/mail/mimemessage/MimeViewer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/mimemessage/MimeViewer;->mUri:Landroid/net/Uri;

    .line 68
    iget-object v0, p0, Lcom/htc/android/mail/mimemessage/MimeViewer;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/htc/android/mail/mimemessage/MimeViewer;->finish()V

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/android/mail/mimemessage/MimeViewer;->showDialog(I)V

    .line 75
    iget-object v0, p0, Lcom/htc/android/mail/mimemessage/MimeViewer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/android/mail/mimemessage/MimeViewer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    .line 102
    packed-switch p1, :pswitch_data_0

    .line 112
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 104
    :pswitch_0
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 105
    .local v0, dialog:Lcom/htc/app/HtcProgressDialog;
    const v1, 0x7f0b0061

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/mimemessage/MimeViewer;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 106
    const v1, 0x7f0b01fe

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/mimemessage/MimeViewer;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 107
    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 108
    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 109
    iget-object v1, p0, Lcom/htc/android/mail/mimemessage/MimeViewer;->mDialogListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method protected final onDestroy()V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 80
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/mail/mimemessage/MimeViewer$1;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/mimemessage/MimeViewer$1;-><init>(Lcom/htc/android/mail/mimemessage/MimeViewer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 98
    return-void
.end method
