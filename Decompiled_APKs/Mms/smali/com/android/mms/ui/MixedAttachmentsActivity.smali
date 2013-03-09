.class public Lcom/android/mms/ui/MixedAttachmentsActivity;
.super Landroid/app/Activity;
.source "MixedAttachmentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MixedAttachmentsActivity$onListItemClick;
    }
.end annotation


# static fields
.field private static MENU_SAVE:I = 0x0

.field private static MENU_VIEW:I = 0x0

.field public static REQUEST_CODE_IMPORT_VCARD:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MixedAttachmentsActivity"

.field public static VCALENDAR_REQUEST_CODE:I

.field public static sCurrentActivity:Landroid/app/Activity;


# instance fields
.field mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/mms/model/MediaModel;",
            ">;"
        }
    .end annotation
.end field

.field mMedia:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/MediaModel;",
            ">;"
        }
    .end annotation
.end field

.field mMsgId:I

.field private mSaveParts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/mms/pdu/PduPart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 70
    sput v1, Lcom/android/mms/ui/MixedAttachmentsActivity;->MENU_VIEW:I

    .line 71
    sput v2, Lcom/android/mms/ui/MixedAttachmentsActivity;->MENU_SAVE:I

    .line 77
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/MixedAttachmentsActivity;->sCurrentActivity:Landroid/app/Activity;

    .line 78
    sput v1, Lcom/android/mms/ui/MixedAttachmentsActivity;->VCALENDAR_REQUEST_CODE:I

    .line 79
    sput v2, Lcom/android/mms/ui/MixedAttachmentsActivity;->REQUEST_CODE_IMPORT_VCARD:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MixedAttachmentsActivity;->mSaveParts:Ljava/util/ArrayList;

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/MixedAttachmentsActivity;->mMsgId:I

    .line 190
    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MixedAttachmentsActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/mms/ui/MixedAttachmentsActivity;->mSaveParts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MixedAttachmentsActivity;Lcom/google/android/mms/pdu/PduPart;Lcom/android/mms/model/MediaModel;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MixedAttachmentsActivity;->createMenu(Lcom/google/android/mms/pdu/PduPart;Lcom/android/mms/model/MediaModel;)V

    return-void
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/android/mms/ui/MixedAttachmentsActivity;->MENU_VIEW:I

    return v0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/android/mms/ui/MixedAttachmentsActivity;->MENU_SAVE:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MixedAttachmentsActivity;Lcom/google/android/mms/pdu/PduPart;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/StorageFullException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MixedAttachmentsActivity;->copyPart(Lcom/google/android/mms/pdu/PduPart;Z)V

    return-void
.end method

.method private copyPart(Lcom/google/android/mms/pdu/PduPart;Z)V
    .locals 21
    .parameter "part"
    .parameter "isTextType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/StorageFullException;
        }
    .end annotation

    .prologue
    .line 506
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v17

    .line 507
    .local v17, uri:Landroid/net/Uri;
    const/4 v13, 0x0

    .line 508
    .local v13, input:Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 510
    .local v10, fout:Ljava/io/FileOutputStream;
    const/4 v9, 0x0

    .line 513
    .local v9, fin:Ljava/io/FileInputStream;
    if-nez p2, :cond_0

    .line 514
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MixedAttachmentsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v13

    .line 515
    :cond_0
    instance-of v0, v13, Ljava/io/FileInputStream;

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 517
    move-object v0, v13

    check-cast v0, Ljava/io/FileInputStream;

    move-object v9, v0

    .line 535
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/android/mms/ui/MessageUtils;->getPartFileName(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;

    move-result-object v8

    .line 539
    .local v8, fileName:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->getAvailableDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 543
    .local v4, dir:Ljava/lang/String;
    const-string v18, "."

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .local v12, index:I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v12, v0, :cond_9

    .line 544
    new-instance v16, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 545
    .local v16, type:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 552
    .end local v16           #type:Ljava/lang/String;
    .local v6, extension:Ljava/lang/String;
    :goto_0
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v6}, Lcom/android/mms/ui/MixedAttachmentsActivity;->getUniqueDestination(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 555
    .local v7, file:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v14

    .line 556
    .local v14, parentFile:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_2

    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    move-result v18

    if-nez v18, :cond_2

    .line 557
    const-string v18, "MixedAttachmentsActivity"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[MMS] copyPart: mkdirs for "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " failed!"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_2
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9

    .line 563
    .end local v10           #fout:Ljava/io/FileOutputStream;
    .local v11, fout:Ljava/io/FileOutputStream;
    if-eqz v9, :cond_a

    .line 566
    const/16 v18, 0x1f40

    :try_start_1
    move/from16 v0, v18

    new-array v3, v0, [B

    .line 567
    .local v3, buffer:[B
    :goto_1
    invoke-virtual {v9, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v15

    .local v15, size:I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v15, v0, :cond_b

    .line 568
    invoke-virtual {v11, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 580
    .end local v3           #buffer:[B
    .end local v15           #size:I
    :catch_0
    move-exception v5

    move-object v10, v11

    .line 582
    .end local v4           #dir:Ljava/lang/String;
    .end local v6           #extension:Ljava/lang/String;
    .end local v7           #file:Ljava/io/File;
    .end local v8           #fileName:Ljava/lang/String;
    .end local v11           #fout:Ljava/io/FileOutputStream;
    .end local v12           #index:I
    .end local v14           #parentFile:Ljava/io/File;
    .local v5, e:Ljava/io/IOException;
    .restart local v10       #fout:Ljava/io/FileOutputStream;
    :goto_2
    :try_start_2
    const-string v18, "MixedAttachmentsActivity"

    const-string v19, "IOException caught while opening or reading stream"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 583
    const v18, 0x7f090148

    const v19, 0x7f090150

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MixedAttachmentsActivity;->displayDialog(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 585
    if-eqz v13, :cond_4

    .line 588
    if-eqz v9, :cond_3

    .line 589
    :try_start_3
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 591
    :cond_3
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 597
    :cond_4
    :goto_3
    if-eqz v10, :cond_5

    .line 599
    :try_start_4
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 606
    .end local v5           #e:Ljava/io/IOException;
    :cond_5
    :goto_4
    return-void

    .line 519
    :cond_6
    if-nez p2, :cond_1

    .line 585
    if-eqz v13, :cond_8

    .line 588
    if-eqz v9, :cond_7

    .line 589
    :try_start_5
    throw v9

    .line 591
    :cond_7
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 597
    :cond_8
    :goto_5
    if-eqz v10, :cond_5

    .line 599
    :try_start_6
    throw v10
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_4

    .line 600
    :catch_1
    move-exception v5

    .line 602
    .restart local v5       #e:Ljava/io/IOException;
    const-string v18, "MixedAttachmentsActivity"

    const-string v19, "IOException caught while closing stream"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 592
    .end local v5           #e:Ljava/io/IOException;
    :catch_2
    move-exception v5

    .line 594
    .restart local v5       #e:Ljava/io/IOException;
    const-string v18, "MixedAttachmentsActivity"

    const-string v19, "IOException caught while closing stream"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 547
    .end local v5           #e:Ljava/io/IOException;
    .restart local v4       #dir:Ljava/lang/String;
    .restart local v8       #fileName:Ljava/lang/String;
    .restart local v12       #index:I
    :cond_9
    add-int/lit8 v18, v12, 0x1

    :try_start_7
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 548
    .restart local v6       #extension:Ljava/lang/String;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v8, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9

    move-result-object v8

    goto/16 :goto_0

    .line 570
    .end local v10           #fout:Ljava/io/FileOutputStream;
    .restart local v7       #file:Ljava/io/File;
    .restart local v11       #fout:Ljava/io/FileOutputStream;
    .restart local v14       #parentFile:Ljava/io/File;
    :cond_a
    if-eqz p2, :cond_b

    .line 571
    :try_start_8
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 576
    :cond_b
    new-instance v18, Landroid/content/Intent;

    const-string v19, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MixedAttachmentsActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 578
    const v18, 0x7f090148

    const v19, 0x7f09014d

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MixedAttachmentsActivity;->displayDialog(II)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 585
    if-eqz v13, :cond_d

    .line 588
    if-eqz v9, :cond_c

    .line 589
    :try_start_9
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 591
    :cond_c
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 597
    :cond_d
    :goto_6
    if-eqz v11, :cond_11

    .line 599
    :try_start_a
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    move-object v10, v11

    .line 603
    .end local v11           #fout:Ljava/io/FileOutputStream;
    .restart local v10       #fout:Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .line 592
    .end local v10           #fout:Ljava/io/FileOutputStream;
    .restart local v11       #fout:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v5

    .line 594
    .restart local v5       #e:Ljava/io/IOException;
    const-string v18, "MixedAttachmentsActivity"

    const-string v19, "IOException caught while closing stream"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 600
    .end local v5           #e:Ljava/io/IOException;
    :catch_4
    move-exception v5

    .line 602
    .restart local v5       #e:Ljava/io/IOException;
    const-string v18, "MixedAttachmentsActivity"

    const-string v19, "IOException caught while closing stream"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v10, v11

    .line 603
    .end local v11           #fout:Ljava/io/FileOutputStream;
    .restart local v10       #fout:Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .line 592
    .end local v4           #dir:Ljava/lang/String;
    .end local v6           #extension:Ljava/lang/String;
    .end local v7           #file:Ljava/io/File;
    .end local v8           #fileName:Ljava/lang/String;
    .end local v12           #index:I
    .end local v14           #parentFile:Ljava/io/File;
    :catch_5
    move-exception v5

    .line 594
    const-string v18, "MixedAttachmentsActivity"

    const-string v19, "IOException caught while closing stream"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 600
    :catch_6
    move-exception v5

    .line 602
    const-string v18, "MixedAttachmentsActivity"

    const-string v19, "IOException caught while closing stream"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 585
    .end local v5           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v18

    :goto_7
    if-eqz v13, :cond_f

    .line 588
    if-eqz v9, :cond_e

    .line 589
    :try_start_b
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 591
    :cond_e
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 597
    :cond_f
    :goto_8
    if-eqz v10, :cond_10

    .line 599
    :try_start_c
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 603
    :cond_10
    :goto_9
    throw v18

    .line 592
    :catch_7
    move-exception v5

    .line 594
    .restart local v5       #e:Ljava/io/IOException;
    const-string v19, "MixedAttachmentsActivity"

    const-string v20, "IOException caught while closing stream"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 600
    .end local v5           #e:Ljava/io/IOException;
    :catch_8
    move-exception v5

    .line 602
    .restart local v5       #e:Ljava/io/IOException;
    const-string v19, "MixedAttachmentsActivity"

    const-string v20, "IOException caught while closing stream"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 585
    .end local v5           #e:Ljava/io/IOException;
    .end local v10           #fout:Ljava/io/FileOutputStream;
    .restart local v4       #dir:Ljava/lang/String;
    .restart local v6       #extension:Ljava/lang/String;
    .restart local v7       #file:Ljava/io/File;
    .restart local v8       #fileName:Ljava/lang/String;
    .restart local v11       #fout:Ljava/io/FileOutputStream;
    .restart local v12       #index:I
    .restart local v14       #parentFile:Ljava/io/File;
    :catchall_1
    move-exception v18

    move-object v10, v11

    .end local v11           #fout:Ljava/io/FileOutputStream;
    .restart local v10       #fout:Ljava/io/FileOutputStream;
    goto :goto_7

    .line 580
    .end local v4           #dir:Ljava/lang/String;
    .end local v6           #extension:Ljava/lang/String;
    .end local v7           #file:Ljava/io/File;
    .end local v8           #fileName:Ljava/lang/String;
    .end local v12           #index:I
    .end local v14           #parentFile:Ljava/io/File;
    :catch_9
    move-exception v5

    goto/16 :goto_2

    .end local v10           #fout:Ljava/io/FileOutputStream;
    .restart local v4       #dir:Ljava/lang/String;
    .restart local v6       #extension:Ljava/lang/String;
    .restart local v7       #file:Ljava/io/File;
    .restart local v8       #fileName:Ljava/lang/String;
    .restart local v11       #fout:Ljava/io/FileOutputStream;
    .restart local v12       #index:I
    .restart local v14       #parentFile:Ljava/io/File;
    :cond_11
    move-object v10, v11

    .end local v11           #fout:Ljava/io/FileOutputStream;
    .restart local v10       #fout:Ljava/io/FileOutputStream;
    goto/16 :goto_4
.end method

.method private createMenu(Lcom/google/android/mms/pdu/PduPart;Lcom/android/mms/model/MediaModel;)V
    .locals 10
    .parameter "body"
    .parameter "media"

    .prologue
    const/4 v9, 0x0

    .line 393
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 395
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v7, 0x7f090110

    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 396
    new-instance v7, Lcom/android/mms/ui/MixedAttachmentsActivity$5;

    invoke-direct {v7, p0}, Lcom/android/mms/ui/MixedAttachmentsActivity$5;-><init>(Lcom/android/mms/ui/MixedAttachmentsActivity;)V

    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 404
    const/16 v7, 0x8a

    invoke-static {v7}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 405
    invoke-virtual {p0}, Lcom/android/mms/ui/MixedAttachmentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f06001c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v6

    .line 410
    .local v6, t:[Ljava/lang/CharSequence;
    :goto_0
    const/4 v5, 0x0

    .local v5, s:I
    const/4 v2, 0x0

    .line 411
    .local v2, idx:I
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->isUnsupportedMedia()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 413
    :cond_0
    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    new-array v4, v7, [Ljava/lang/CharSequence;

    .line 414
    .local v4, items:[Ljava/lang/CharSequence;
    const/4 v5, 0x1

    .line 415
    const/4 v7, -0x1

    sput v7, Lcom/android/mms/ui/MixedAttachmentsActivity;->MENU_VIEW:I

    .line 416
    sput v9, Lcom/android/mms/ui/MixedAttachmentsActivity;->MENU_SAVE:I

    .line 422
    :goto_1
    move v1, v5

    .local v1, i:I
    :goto_2
    array-length v7, v6

    if-ge v1, v7, :cond_3

    .line 423
    add-int/lit8 v3, v2, 0x1

    .end local v2           #idx:I
    .local v3, idx:I
    aget-object v7, v6, v1

    aput-object v7, v4, v2

    .line 422
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    .end local v3           #idx:I
    .restart local v2       #idx:I
    goto :goto_2

    .line 407
    .end local v1           #i:I
    .end local v2           #idx:I
    .end local v4           #items:[Ljava/lang/CharSequence;
    .end local v5           #s:I
    .end local v6           #t:[Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MixedAttachmentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f06001b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v6

    .restart local v6       #t:[Ljava/lang/CharSequence;
    goto :goto_0

    .line 418
    .restart local v2       #idx:I
    .restart local v5       #s:I
    :cond_2
    array-length v7, v6

    new-array v4, v7, [Ljava/lang/CharSequence;

    .line 419
    .restart local v4       #items:[Ljava/lang/CharSequence;
    sput v9, Lcom/android/mms/ui/MixedAttachmentsActivity;->MENU_VIEW:I

    .line 420
    const/4 v7, 0x1

    sput v7, Lcom/android/mms/ui/MixedAttachmentsActivity;->MENU_SAVE:I

    goto :goto_1

    .line 425
    .restart local v1       #i:I
    :cond_3
    new-instance v7, Lcom/android/mms/ui/MixedAttachmentsActivity$6;

    invoke-direct {v7, p0, p2, p1}, Lcom/android/mms/ui/MixedAttachmentsActivity$6;-><init>(Lcom/android/mms/ui/MixedAttachmentsActivity;Lcom/android/mms/model/MediaModel;Lcom/google/android/mms/pdu/PduPart;)V

    invoke-virtual {v0, v4, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 503
    return-void
.end method

.method private getUniqueDestination(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .parameter "base"
    .parameter "extension"

    .prologue
    .line 609
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 611
    .local v0, file:Ljava/io/File;
    const/4 v1, 0x2

    .local v1, i:I
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 612
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 611
    .restart local v0       #file:Ljava/io/File;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 614
    :cond_0
    return-object v0
.end method

.method private init()V
    .locals 15

    .prologue
    .line 94
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MixedAttachmentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    invoke-static {p0, v12}, Lcom/android/mms/msg/body/MixedMessageBody;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/msg/body/MixedMessageBody;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 101
    .local v8, msg:Lcom/android/mms/msg/body/MixedMessageBody;
    sput-object p0, Lcom/android/mms/ui/MixedAttachmentsActivity;->sCurrentActivity:Landroid/app/Activity;

    .line 102
    invoke-virtual {p0}, Lcom/android/mms/ui/MixedAttachmentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, p0, Lcom/android/mms/ui/MixedAttachmentsActivity;->mMsgId:I

    .line 105
    invoke-virtual {v8}, Lcom/android/mms/msg/body/MixedMessageBody;->getMediaList()Ljava/util/ArrayList;

    move-result-object v6

    .line 106
    .local v6, mMediaArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v5, mMedia:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/model/MediaModel;

    .line 108
    .local v7, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v7}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v12

    if-nez v12, :cond_1

    invoke-virtual {v7}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v12

    if-nez v12, :cond_1

    invoke-virtual {v7}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v12

    if-nez v12, :cond_1

    invoke-virtual {v7}, Lcom/android/mms/model/MediaModel;->isVCard()Z

    move-result v12

    if-nez v12, :cond_1

    invoke-virtual {v7}, Lcom/android/mms/model/MediaModel;->isVCalendar()Z

    move-result v12

    if-nez v12, :cond_1

    invoke-virtual {v7}, Lcom/android/mms/model/MediaModel;->isUnsupportedMedia()Z

    move-result v12

    if-nez v12, :cond_1

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportTextAttachment()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v7}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 111
    :cond_1
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #mMedia:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    .end local v6           #mMediaArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    .end local v7           #media:Lcom/android/mms/model/MediaModel;
    .end local v8           #msg:Lcom/android/mms/msg/body/MixedMessageBody;
    :catch_0
    move-exception v2

    .line 96
    .local v2, e:Lcom/google/android/mms/MmsException;
    const v12, 0x7f09011e

    const/4 v13, 0x0

    invoke-static {p0, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 97
    invoke-virtual {p0}, Lcom/android/mms/ui/MixedAttachmentsActivity;->finish()V

    .line 153
    .end local v2           #e:Lcom/google/android/mms/MmsException;
    :cond_2
    :goto_1
    return-void

    .line 114
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v5       #mMedia:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    .restart local v6       #mMediaArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    .restart local v8       #msg:Lcom/android/mms/msg/body/MixedMessageBody;
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-eqz v12, :cond_2

    .line 120
    :try_start_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MixedAttachmentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    invoke-static {p0, v12}, Lcom/android/mms/model/SlideshowModel;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 126
    .local v0, body:Lcom/google/android/mms/pdu/PduBody;
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v10

    .line 127
    .local v10, partNum:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v10, :cond_7

    .line 128
    invoke-virtual {v0, v3}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v9

    .line 129
    .local v9, part:Lcom/google/android/mms/pdu/PduPart;
    new-instance v11, Ljava/lang/String;

    invoke-virtual {v9}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([B)V

    .line 131
    .local v11, type:Ljava/lang/String;
    invoke-static {v11}, Lcom/google/android/mms/ContentType;->isSupportedType(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-static {v11}, Lcom/google/android/mms/ContentType;->isSupportedAudioType(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    invoke-static {v11}, Lcom/google/android/mms/ContentType;->isSupportedImageType(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    invoke-static {v11}, Lcom/google/android/mms/ContentType;->isSupportedVideoType(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    invoke-static {v11}, Lcom/google/android/mms/ContentType;->isTextType(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    const-string v12, "text/plain"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportTextAttachment()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-static {v11}, Lcom/google/android/mms/ContentType;->isTextType(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 137
    :cond_5
    iget-object v12, p0, Lcom/android/mms/ui/MixedAttachmentsActivity;->mSaveParts:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 121
    .end local v0           #body:Lcom/google/android/mms/pdu/PduBody;
    .end local v3           #i:I
    .end local v9           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v10           #partNum:I
    .end local v11           #type:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 122
    .restart local v2       #e:Lcom/google/android/mms/MmsException;
    const-string v12, "MixedAttachmentsActivity"

    invoke-virtual {v2}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 142
    .end local v2           #e:Lcom/google/android/mms/MmsException;
    .restart local v0       #body:Lcom/google/android/mms/pdu/PduBody;
    .restart local v3       #i:I
    .restart local v10       #partNum:I
    :cond_7
    new-instance v12, Lcom/android/mms/ui/MixedAttachmentAdapter;

    invoke-direct {v12, p0, v5}, Lcom/android/mms/ui/MixedAttachmentAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v12, p0, Lcom/android/mms/ui/MixedAttachmentsActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 144
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 145
    .local v1, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v12, 0x7f090110

    invoke-virtual {v1, v12}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 146
    iget-object v12, p0, Lcom/android/mms/ui/MixedAttachmentsActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    new-instance v13, Lcom/android/mms/ui/MixedAttachmentsActivity$onListItemClick;

    const/4 v14, 0x0

    invoke-direct {v13, p0, v14}, Lcom/android/mms/ui/MixedAttachmentsActivity$onListItemClick;-><init>(Lcom/android/mms/ui/MixedAttachmentsActivity;Lcom/android/mms/ui/MixedAttachmentsActivity$1;)V

    invoke-virtual {v1, v12, v13}, Lcom/htc/widget/HtcAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 147
    new-instance v12, Lcom/android/mms/ui/MixedAttachmentsActivity$1;

    invoke-direct {v12, p0}, Lcom/android/mms/ui/MixedAttachmentsActivity$1;-><init>(Lcom/android/mms/ui/MixedAttachmentsActivity;)V

    invoke-virtual {v1, v12}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 152
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_1
.end method


# virtual methods
.method public displayDialog(II)V
    .locals 3
    .parameter "resTitle"
    .parameter "resID"

    .prologue
    .line 243
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x20c015f

    new-instance v2, Lcom/android/mms/ui/MixedAttachmentsActivity$2;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MixedAttachmentsActivity$2;-><init>(Lcom/android/mms/ui/MixedAttachmentsActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 252
    return-void
.end method

.method public displayDialog(IILcom/android/mms/model/MediaModel;)V
    .locals 3
    .parameter "resTitle"
    .parameter "resID"
    .parameter "part"

    .prologue
    .line 255
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x20c015f

    new-instance v2, Lcom/android/mms/ui/MixedAttachmentsActivity$4;

    invoke-direct {v2, p0, p3}, Lcom/android/mms/ui/MixedAttachmentsActivity$4;-><init>(Lcom/android/mms/ui/MixedAttachmentsActivity;Lcom/android/mms/model/MediaModel;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x20c0164

    new-instance v2, Lcom/android/mms/ui/MixedAttachmentsActivity$3;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MixedAttachmentsActivity$3;-><init>(Lcom/android/mms/ui/MixedAttachmentsActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 293
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const v7, 0x7f090154

    const v6, 0x7f090152

    const/4 v5, -0x1

    .line 165
    const-string v2, "MixedAttachmentsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityResult: requestCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", resultCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", data="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    sget v2, Lcom/android/mms/ui/MixedAttachmentsActivity;->VCALENDAR_REQUEST_CODE:I

    if-ne p1, v2, :cond_2

    .line 168
    if-ne p2, v5, :cond_1

    .line 169
    invoke-static {}, Lcom/android/mms/util/VCardSaveIndicatorCache;->saveVCalendar()V

    .line 170
    const v2, 0x7f090156

    invoke-virtual {p0, v7, v2}, Lcom/android/mms/ui/MixedAttachmentsActivity;->displayDialog(II)V

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    const v2, 0x7f090155

    invoke-virtual {p0, v7, v2}, Lcom/android/mms/ui/MixedAttachmentsActivity;->displayDialog(II)V

    goto :goto_0

    .line 175
    :cond_2
    sget v2, Lcom/android/mms/ui/MixedAttachmentsActivity;->REQUEST_CODE_IMPORT_VCARD:I

    if-ne p1, v2, :cond_0

    .line 176
    if-ne p2, v5, :cond_4

    .line 177
    const-string v2, "MMS_ID"

    const-wide/16 v3, -0x1

    invoke-virtual {p3, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 178
    .local v0, mmsID:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_3

    .line 179
    invoke-static {v0, v1}, Lcom/android/mms/util/VCardSaveIndicatorCache;->saveMmsVCard(J)V

    .line 181
    :cond_3
    const v2, 0x7f090151

    invoke-virtual {p0, v6, v2}, Lcom/android/mms/ui/MixedAttachmentsActivity;->displayDialog(II)V

    goto :goto_0

    .line 184
    .end local v0           #mmsID:J
    :cond_4
    const v2, 0x7f090153

    invoke-virtual {p0, v6, v2}, Lcom/android/mms/ui/MixedAttachmentsActivity;->displayDialog(II)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MixedAttachmentsActivity;->requestWindowFeature(I)Z

    .line 88
    invoke-direct {p0}, Lcom/android/mms/ui/MixedAttachmentsActivity;->init()V

    .line 89
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 158
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 159
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/MixedAttachmentsActivity;->sCurrentActivity:Landroid/app/Activity;

    .line 160
    return-void
.end method
