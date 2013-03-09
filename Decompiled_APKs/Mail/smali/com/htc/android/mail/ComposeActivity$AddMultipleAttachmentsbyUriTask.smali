.class Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;
.super Landroid/os/AsyncTask;
.source "ComposeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ComposeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddMultipleAttachmentsbyUriTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Lcom/htc/android/mail/Attachment;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private NONE:I

.field private OVER_MAX_ATTACH_NUM:I

.field private OVER_SIZE:I

.field private UNKNOWN_ERR:I

.field private mDialog:Lcom/htc/app/HtcProgressDialog;

.field private mShowDialogRunnable:Ljava/lang/Runnable;

.field private mTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mWeakHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/android/mail/ComposeActivity;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/ComposeActivity;Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 3
    .parameter
    .parameter "target"
    .parameter "handler"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 13524
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->this$0:Lcom/htc/android/mail/ComposeActivity;

    .line 13525
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 13515
    iput-object v0, p0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->mDialog:Lcom/htc/app/HtcProgressDialog;

    .line 13517
    iput-object v0, p0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->mWeakHandler:Ljava/lang/ref/WeakReference;

    .line 13518
    iput-object v0, p0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->mTarget:Ljava/lang/ref/WeakReference;

    .line 13519
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->OVER_SIZE:I

    .line 13520
    const/4 v0, -0x2

    iput v0, p0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->OVER_MAX_ATTACH_NUM:I

    .line 13521
    iput v2, p0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->NONE:I

    .line 13522
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->UNKNOWN_ERR:I

    .line 13527
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->mTarget:Ljava/lang/ref/WeakReference;

    .line 13528
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->mWeakHandler:Ljava/lang/ref/WeakReference;

    .line 13529
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p2}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->mDialog:Lcom/htc/app/HtcProgressDialog;

    .line 13530
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->mDialog:Lcom/htc/app/HtcProgressDialog;

    const v1, 0x7f0b028d

    invoke-virtual {p2, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 13531
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->mDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 13533
    new-instance v0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask$1;

    invoke-direct {v0, p0, p1}, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask$1;-><init>(Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;Lcom/htc/android/mail/ComposeActivity;)V

    iput-object v0, p0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->mShowDialogRunnable:Ljava/lang/Runnable;

    .line 13541
    return-void
.end method

.method static synthetic access$14900(Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13514
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->mTarget:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$15000(Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13514
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->mDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Ljava/lang/Integer;
    .locals 36
    .parameter "params"

    .prologue
    .line 13557
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v33, v0

    .line 13558
    .local v33, size:I
    if-eqz p1, :cond_0

    if-nez v33, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->NONE:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 13763
    :goto_0
    return-object v3

    .line 13560
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/app/Activity;

    .line 13561
    .local v34, target:Landroid/app/Activity;
    if-eqz v34, :cond_2

    invoke-virtual/range {v34 .. v34}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->UNKNOWN_ERR:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    .line 13563
    :cond_3
    const/16 v31, 0x0

    .local v31, i:I
    :goto_1
    move/from16 v0, v31

    move/from16 v1, v33

    if-ge v0, v1, :cond_30

    .line 13564
    aget-object v4, p1, v31

    .line 13565
    .local v4, uri:Landroid/net/Uri;
    if-nez v4, :cond_5

    .line 13563
    :cond_4
    :goto_2
    add-int/lit8 v31, v31, 0x1

    goto :goto_1

    .line 13567
    :cond_5
    const/16 v30, 0x0

    .line 13568
    .local v30, fullpath:Ljava/lang/String;
    const/16 v29, 0x0

    .line 13569
    .local v29, filename:Ljava/lang/String;
    const/16 v22, 0x0

    .line 13570
    .local v22, f:Ljava/io/File;
    const/4 v13, 0x0

    .line 13571
    .local v13, buf2:Ljava/io/BufferedInputStream;
    const/16 v26, 0x0

    .line 13572
    .local v26, fileSize:I
    const/4 v15, 0x0

    .line 13573
    .local v15, c:Landroid/database/Cursor;
    const/16 v27, 0x0

    .line 13574
    .local v27, fileSizeFromDB:I
    new-instance v11, Lcom/htc/android/mail/Attachment;

    invoke-direct {v11}, Lcom/htc/android/mail/Attachment;-><init>()V

    .line 13576
    .local v11, attach:Lcom/htc/android/mail/Attachment;
    invoke-static {}, Lcom/htc/android/mail/ComposeActivity;->access$1600()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "ComposeActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13577
    :cond_6
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "content://com.htc.vvm.provider.VoiceMailContentProvider/FILES/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 13578
    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v29

    .line 13579
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v30

    .line 13580
    invoke-static {}, Lcom/htc/android/mail/ComposeActivity;->access$1600()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "ComposeActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "vvm filename> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", fullpath>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13584
    :cond_7
    :try_start_0
    new-instance v14, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v3}, Lcom/htc/android/mail/ComposeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    const/16 v5, 0x400

    invoke-direct {v14, v3, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13585
    .end local v13           #buf2:Ljava/io/BufferedInputStream;
    .local v14, buf2:Ljava/io/BufferedInputStream;
    :try_start_1
    invoke-virtual {v14}, Ljava/io/BufferedInputStream;->available()I

    move-result v26

    .line 13586
    invoke-static {}, Lcom/htc/android/mail/ComposeActivity;->access$1600()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "ComposeActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fileSize : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_c

    .line 13590
    :cond_8
    if-eqz v14, :cond_9

    .line 13592
    :try_start_2
    invoke-virtual {v14}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    :cond_9
    :goto_3
    move-object v13, v14

    .line 13696
    .end local v14           #buf2:Ljava/io/BufferedInputStream;
    .restart local v13       #buf2:Ljava/io/BufferedInputStream;
    :cond_a
    :goto_4
    invoke-static {}, Lcom/htc/android/mail/ComposeActivity;->access$1600()Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "ComposeActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addFile>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mTotalAttachmentCount:I
    invoke-static {v6}, Lcom/htc/android/mail/ComposeActivity;->access$5600(Lcom/htc/android/mail/ComposeActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mTotalAttachmentSize:J
    invoke-static {v6}, Lcom/htc/android/mail/ComposeActivity;->access$5700(Lcom/htc/android/mail/ComposeActivity;)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/htc/android/mail/Mail;->attachmentSizeLimit()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13697
    :cond_b
    invoke-static {}, Lcom/htc/android/mail/Mail;->attachmentSizeLimit()I

    move-result v3

    if-lez v3, :cond_23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mTotalAttachmentSize:J
    invoke-static {v3}, Lcom/htc/android/mail/ComposeActivity;->access$5700(Lcom/htc/android/mail/ComposeActivity;)J

    move-result-wide v5

    move/from16 v0, v26

    int-to-long v8, v0

    add-long/2addr v5, v8

    invoke-static {}, Lcom/htc/android/mail/Mail;->attachmentSizeLimit()I

    move-result v3

    int-to-long v8, v3

    cmp-long v3, v5, v8

    if-lez v3, :cond_23

    .line 13698
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->OVER_SIZE:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_0

    .line 13587
    :catch_0
    move-exception v21

    .line 13588
    .local v21, e:Ljava/lang/Exception;
    :goto_5
    :try_start_3
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 13590
    if-eqz v13, :cond_a

    .line 13592
    :try_start_4
    invoke-virtual {v13}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    .line 13593
    :catch_1
    move-exception v21

    .line 13594
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 13590
    .end local v21           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :goto_6
    if-eqz v13, :cond_c

    .line 13592
    :try_start_5
    invoke-virtual {v13}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 13590
    :cond_c
    :goto_7
    throw v3

    .line 13598
    :cond_d
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "content://com.android.contacts/contacts/as_multi_vcard/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 13600
    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v3}, Lcom/htc/android/mail/ComposeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 13601
    if-eqz v15, :cond_16

    .line 13602
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 13603
    const-string v3, "_data"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 13604
    .local v17, dataIndex:I
    const/4 v3, -0x1

    move/from16 v0, v17

    if-eq v0, v3, :cond_e

    .line 13605
    move/from16 v0, v17

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 13607
    :cond_e
    const-string v3, "_display_name"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 13608
    .local v18, displayNameIndex:I
    const/4 v3, -0x1

    move/from16 v0, v18

    if-eq v0, v3, :cond_f

    .line 13609
    move/from16 v0, v18

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 13612
    .end local v17           #dataIndex:I
    .end local v18           #displayNameIndex:I
    :cond_f
    invoke-static {}, Lcom/htc/android/mail/ComposeActivity;->access$1600()Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v3, "ComposeActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "multi-VCard uri fullpath> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13613
    :cond_10
    invoke-static {}, Lcom/htc/android/mail/ComposeActivity;->access$1600()Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v3, "ComposeActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "multi-VCard uri filename> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13615
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v3}, Lcom/htc/android/mail/ComposeActivity;->access$5200(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->enableSDsave()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v5}, Lcom/htc/android/mail/ComposeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_MIXED:I

    move-object/from16 v0, v29

    invoke-static {v3, v0, v5, v6}, Lcom/htc/android/mail/MailCommon;->getSuggestFileName(ILjava/lang/String;Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v19

    .line 13616
    .local v19, dstFileName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v3}, Lcom/htc/android/mail/ComposeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v5}, Lcom/htc/android/mail/ComposeActivity;->access$5200(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/Account;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/android/mail/Account;->enableSDsave()I

    move-result v5

    const/4 v6, 0x0

    sget v8, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_MIXED:I

    move-object/from16 v0, v19

    invoke-static {v3, v5, v6, v0, v8}, Lcom/htc/android/mail/util/StorageControl;->getAttachmentFilePath(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    .line 13618
    .local v20, dstFilePath:Ljava/lang/String;
    if-eqz v20, :cond_16

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    #calls: Lcom/htc/android/mail/ComposeActivity;->copyVCardFile(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v3, v5, v0}, Lcom/htc/android/mail/ComposeActivity;->access$15100(Lcom/htc/android/mail/ComposeActivity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 13619
    move-object/from16 v30, v20

    .line 13621
    invoke-static {}, Lcom/htc/android/mail/ComposeActivity;->access$1600()Z

    move-result v3

    if-eqz v3, :cond_12

    const-string v3, "ComposeActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "multi-VCard new fullpath> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13622
    :cond_12
    new-instance v23, Ljava/io/File;

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 13623
    .end local v22           #f:Ljava/io/File;
    .local v23, f:Ljava/io/File;
    if-eqz v23, :cond_15

    .line 13624
    :try_start_7
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v29

    .line 13625
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v0, v5

    move/from16 v26, v0

    .line 13626
    invoke-static {}, Lcom/htc/android/mail/ComposeActivity;->access$1600()Z

    move-result v3

    if-eqz v3, :cond_13

    const-string v3, "ComposeActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "multi-VCard uri fileSize> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13628
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mSavedMultiVCard:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/android/mail/ComposeActivity;->access$15200(Lcom/htc/android/mail/ComposeActivity;)Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->this$0:Lcom/htc/android/mail/ComposeActivity;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/android/mail/ComposeActivity;->mSavedMultiVCard:Ljava/util/ArrayList;
    invoke-static {v3, v5}, Lcom/htc/android/mail/ComposeActivity;->access$15202(Lcom/htc/android/mail/ComposeActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 13629
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mSavedMultiVCard:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/android/mail/ComposeActivity;->access$15200(Lcom/htc/android/mail/ComposeActivity;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_b

    :cond_15
    move-object/from16 v22, v23

    .line 13636
    .end local v19           #dstFileName:Ljava/lang/String;
    .end local v20           #dstFilePath:Ljava/lang/String;
    .end local v23           #f:Ljava/io/File;
    .restart local v22       #f:Ljava/io/File;
    :cond_16
    if-eqz v15, :cond_a

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_a

    .line 13637
    :goto_8
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .line 13633
    :catch_2
    move-exception v21

    .line 13634
    .restart local v21       #e:Ljava/lang/Exception;
    :goto_9
    :try_start_8
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 13636
    if-eqz v15, :cond_a

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_8

    .end local v21           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v3

    :goto_a
    if-eqz v15, :cond_17

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_17

    .line 13637
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 13636
    :cond_17
    throw v3

    .line 13640
    :cond_18
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "content"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 13642
    :try_start_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v3}, Lcom/htc/android/mail/ComposeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 13643
    if-eqz v15, :cond_1b

    .line 13644
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 13645
    const-string v3, "_data"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 13646
    .restart local v17       #dataIndex:I
    const/4 v3, -0x1

    move/from16 v0, v17

    if-eq v0, v3, :cond_19

    .line 13647
    move/from16 v0, v17

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 13649
    :cond_19
    const-string v3, "_display_name"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 13650
    .restart local v18       #displayNameIndex:I
    const/4 v3, -0x1

    move/from16 v0, v18

    if-eq v0, v3, :cond_1a

    .line 13651
    move/from16 v0, v18

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 13653
    :cond_1a
    const-string v3, "_filesize"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 13654
    .local v28, fileSizeIndex:I
    const/4 v3, -0x1

    move/from16 v0, v28

    if-eq v0, v3, :cond_1b

    .line 13655
    move/from16 v0, v28

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    move-result v27

    .line 13662
    .end local v17           #dataIndex:I
    .end local v18           #displayNameIndex:I
    .end local v28           #fileSizeIndex:I
    :cond_1b
    if-eqz v15, :cond_1c

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 13663
    :goto_b
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 13669
    :cond_1c
    :try_start_a
    new-instance v14, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v3}, Lcom/htc/android/mail/ComposeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    const/16 v5, 0x400

    invoke-direct {v14, v3, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 13670
    .end local v13           #buf2:Ljava/io/BufferedInputStream;
    .restart local v14       #buf2:Ljava/io/BufferedInputStream;
    :try_start_b
    invoke-virtual {v14}, Ljava/io/BufferedInputStream;->available()I

    move-result v26

    .line 13671
    invoke-static {}, Lcom/htc/android/mail/ComposeActivity;->access$1600()Z

    move-result v3

    if-eqz v3, :cond_1d

    const-string v3, "ComposeActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fileSize : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    .line 13675
    :cond_1d
    if-eqz v14, :cond_1e

    .line 13677
    :try_start_c
    invoke-virtual {v14}, Ljava/io/BufferedInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    :cond_1e
    :goto_c
    move-object v13, v14

    .line 13682
    .end local v14           #buf2:Ljava/io/BufferedInputStream;
    .restart local v13       #buf2:Ljava/io/BufferedInputStream;
    goto/16 :goto_4

    .line 13659
    :catch_3
    move-exception v21

    .line 13660
    .restart local v21       #e:Ljava/lang/Exception;
    :try_start_d
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 13662
    if-eqz v15, :cond_1c

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1c

    goto :goto_b

    .end local v21           #e:Ljava/lang/Exception;
    :catchall_2
    move-exception v3

    if-eqz v15, :cond_1f

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_1f

    .line 13663
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 13662
    :cond_1f
    throw v3

    .line 13672
    :catch_4
    move-exception v21

    .line 13673
    .restart local v21       #e:Ljava/lang/Exception;
    :goto_d
    :try_start_e
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 13675
    if-eqz v13, :cond_a

    .line 13677
    :try_start_f
    invoke-virtual {v13}, Ljava/io/BufferedInputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5

    goto/16 :goto_4

    .line 13678
    :catch_5
    move-exception v21

    .line 13679
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 13675
    .end local v21           #e:Ljava/lang/Exception;
    :catchall_3
    move-exception v3

    :goto_e
    if-eqz v13, :cond_20

    .line 13677
    :try_start_10
    invoke-virtual {v13}, Ljava/io/BufferedInputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_8

    .line 13675
    :cond_20
    :goto_f
    throw v3

    .line 13685
    :cond_21
    invoke-virtual {v4}, Landroid/net/Uri;->isAbsolute()Z

    move-result v32

    .line 13686
    .local v32, isAbsUriStr:Z
    invoke-static {}, Lcom/htc/android/mail/ComposeActivity;->access$1600()Z

    move-result v3

    if-eqz v3, :cond_22

    const-string v3, "ComposeActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAbsUriStr> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13688
    :cond_22
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v30

    .line 13689
    new-instance v22, Ljava/io/File;

    .end local v22           #f:Ljava/io/File;
    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13690
    .restart local v22       #f:Ljava/io/File;
    if-eqz v22, :cond_4

    .line 13691
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v29

    .line 13692
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v0, v5

    move/from16 v26, v0

    goto/16 :goto_4

    .line 13701
    .end local v32           #isAbsUriStr:Z
    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mTotalAttachmentCount:I
    invoke-static {v3}, Lcom/htc/android/mail/ComposeActivity;->access$5600(Lcom/htc/android/mail/ComposeActivity;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/16 v5, 0x64

    if-le v3, v5, :cond_24

    .line 13702
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->OVER_MAX_ATTACH_NUM:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_0

    .line 13706
    :cond_24
    invoke-static {}, Lcom/htc/android/mail/ComposeActivity;->access$1600()Z

    move-result v3

    if-eqz v3, :cond_25

    const-string v3, "ComposeActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AddMultipleAttachmentsbyUriTask c absolutePath>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13707
    :cond_25
    if-nez v29, :cond_28

    .line 13708
    if-eqz v30, :cond_26

    .line 13709
    invoke-static/range {v30 .. v30}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v29

    .line 13711
    :cond_26
    if-eqz v29, :cond_27

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_28

    :cond_27
    const-string v29, "Noname"

    .line 13715
    :cond_28
    const/4 v12, 0x0

    .line 13716
    .local v12, bFromServer:Z
    const/16 v25, 0x0

    .line 13717
    .local v25, fileRef:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v3}, Lcom/htc/android/mail/ComposeActivity;->access$5200(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v3

    const/4 v5, 0x4

    if-ne v3, v5, :cond_2a

    if-eqz v30, :cond_2a

    .line 13718
    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_filereference"

    aput-object v5, v7, v3

    .line 13719
    .local v7, proj:[Ljava/lang/String;
    new-instance v35, Ljava/lang/StringBuilder;

    const-string v3, "_filepath ="

    move-object/from16 v0, v35

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13720
    .local v35, where:Ljava/lang/StringBuilder;
    move-object/from16 v0, v35

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 13721
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v3}, Lcom/htc/android/mail/ComposeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/htc/android/mail/MailProvider;->sPartsURI:Landroid/net/Uri;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 13722
    if-eqz v15, :cond_29

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 13723
    const-string v3, "_filereference"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 13724
    if-eqz v25, :cond_29

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_29

    .line 13725
    const/4 v12, 0x1

    .line 13727
    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v3, v15}, Lcom/htc/android/mail/ComposeActivity;->closeCursor(Landroid/database/Cursor;)V

    .line 13731
    .end local v7           #proj:[Ljava/lang/String;
    .end local v35           #where:Ljava/lang/StringBuilder;
    :cond_2a
    const/16 v16, 0x0

    .line 13733
    .local v16, contentType:Ljava/lang/String;
    new-instance v24, Lcom/htc/android/mail/MailCommon$SupportFileList;

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/MailCommon$SupportFileList;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 13734
    .local v24, fileList:Lcom/htc/android/mail/MailCommon$SupportFileList;
    invoke-virtual/range {v24 .. v24}, Lcom/htc/android/mail/MailCommon$SupportFileList;->getMimeType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2f

    invoke-virtual/range {v24 .. v24}, Lcom/htc/android/mail/MailCommon$SupportFileList;->getMimeType()Ljava/lang/String;

    move-result-object v16

    .line 13735
    :goto_10
    if-eqz v16, :cond_2b

    const-string v3, ""

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    :cond_2b
    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailCommon$SupportFileList;->getMimetypeFromSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 13737
    :cond_2c
    if-nez v30, :cond_2d

    const-string v3, "text/x-vcard"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 13738
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v30

    .line 13741
    :cond_2d
    invoke-static {}, Lcom/htc/android/mail/ComposeActivity;->access$1600()Z

    move-result v3

    if-eqz v3, :cond_2e

    const-string v3, "ComposeActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AddMultipleAttachmentsbyUriTask:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13743
    :cond_2e
    const-wide/16 v5, 0x0

    iput-wide v5, v11, Lcom/htc/android/mail/Attachment;->id:J

    .line 13744
    const/4 v3, 0x0

    iput-object v3, v11, Lcom/htc/android/mail/Attachment;->BtnView:Landroid/view/View;

    .line 13745
    move-object/from16 v0, v30

    iput-object v0, v11, Lcom/htc/android/mail/Attachment;->attachPath:Ljava/lang/String;

    .line 13746
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v11, Lcom/htc/android/mail/Attachment;->attachOrgUri:Ljava/lang/String;

    .line 13747
    move-object/from16 v0, v29

    iput-object v0, v11, Lcom/htc/android/mail/Attachment;->attachName:Ljava/lang/String;

    .line 13748
    move-object/from16 v0, v16

    iput-object v0, v11, Lcom/htc/android/mail/Attachment;->attachMimeType:Ljava/lang/String;

    .line 13749
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v11, Lcom/htc/android/mail/Attachment;->attachUUID:Ljava/lang/String;

    .line 13750
    move/from16 v0, v26

    int-to-long v5, v0

    iput-wide v5, v11, Lcom/htc/android/mail/Attachment;->attachSize:J

    .line 13751
    move/from16 v0, v26

    int-to-long v5, v0

    iput-wide v5, v11, Lcom/htc/android/mail/Attachment;->dispSize:J

    .line 13752
    iput-boolean v12, v11, Lcom/htc/android/mail/Attachment;->fromServer:Z

    .line 13753
    move-object/from16 v0, v25

    iput-object v0, v11, Lcom/htc/android/mail/Attachment;->filereference:Ljava/lang/String;

    .line 13754
    sget v3, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_MIXED:I

    iput v3, v11, Lcom/htc/android/mail/Attachment;->contenttype:I

    .line 13755
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mFromSearchSvrMailView:Z
    invoke-static {v3}, Lcom/htc/android/mail/ComposeActivity;->access$13300(Lcom/htc/android/mail/ComposeActivity;)Z

    move-result v3

    iput-boolean v3, v11, Lcom/htc/android/mail/Attachment;->globalAttach:Z

    .line 13757
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-static {v3}, Lcom/htc/android/mail/ComposeActivity;->access$5608(Lcom/htc/android/mail/ComposeActivity;)I

    .line 13758
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-wide v5, v11, Lcom/htc/android/mail/Attachment;->dispSize:J

    invoke-static {v3, v5, v6}, Lcom/htc/android/mail/ComposeActivity;->access$5714(Lcom/htc/android/mail/ComposeActivity;J)J

    .line 13760
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/htc/android/mail/Attachment;

    const/4 v5, 0x0

    aput-object v11, v3, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 13734
    :cond_2f
    const-string v16, ""

    goto/16 :goto_10

    .line 13763
    .end local v4           #uri:Landroid/net/Uri;
    .end local v11           #attach:Lcom/htc/android/mail/Attachment;
    .end local v12           #bFromServer:Z
    .end local v13           #buf2:Ljava/io/BufferedInputStream;
    .end local v15           #c:Landroid/database/Cursor;
    .end local v16           #contentType:Ljava/lang/String;
    .end local v22           #f:Ljava/io/File;
    .end local v24           #fileList:Lcom/htc/android/mail/MailCommon$SupportFileList;
    .end local v25           #fileRef:Ljava/lang/String;
    .end local v26           #fileSize:I
    .end local v27           #fileSizeFromDB:I
    .end local v29           #filename:Ljava/lang/String;
    .end local v30           #fullpath:Ljava/lang/String;
    :cond_30
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->NONE:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_0

    .line 13593
    .restart local v4       #uri:Landroid/net/Uri;
    .restart local v11       #attach:Lcom/htc/android/mail/Attachment;
    .restart local v13       #buf2:Ljava/io/BufferedInputStream;
    .restart local v15       #c:Landroid/database/Cursor;
    .restart local v22       #f:Ljava/io/File;
    .restart local v26       #fileSize:I
    .restart local v27       #fileSizeFromDB:I
    .restart local v29       #filename:Ljava/lang/String;
    .restart local v30       #fullpath:Ljava/lang/String;
    :catch_6
    move-exception v21

    .line 13594
    .restart local v21       #e:Ljava/lang/Exception;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    .line 13593
    .end local v13           #buf2:Ljava/io/BufferedInputStream;
    .end local v21           #e:Ljava/lang/Exception;
    .restart local v14       #buf2:Ljava/io/BufferedInputStream;
    :catch_7
    move-exception v21

    .line 13594
    .restart local v21       #e:Ljava/lang/Exception;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 13678
    .end local v14           #buf2:Ljava/io/BufferedInputStream;
    .end local v21           #e:Ljava/lang/Exception;
    .restart local v13       #buf2:Ljava/io/BufferedInputStream;
    :catch_8
    move-exception v21

    .line 13679
    .restart local v21       #e:Ljava/lang/Exception;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_f

    .line 13678
    .end local v13           #buf2:Ljava/io/BufferedInputStream;
    .end local v21           #e:Ljava/lang/Exception;
    .restart local v14       #buf2:Ljava/io/BufferedInputStream;
    :catch_9
    move-exception v21

    .line 13679
    .restart local v21       #e:Ljava/lang/Exception;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_c

    .line 13675
    .end local v21           #e:Ljava/lang/Exception;
    :catchall_4
    move-exception v3

    move-object v13, v14

    .end local v14           #buf2:Ljava/io/BufferedInputStream;
    .restart local v13       #buf2:Ljava/io/BufferedInputStream;
    goto/16 :goto_e

    .line 13672
    .end local v13           #buf2:Ljava/io/BufferedInputStream;
    .restart local v14       #buf2:Ljava/io/BufferedInputStream;
    :catch_a
    move-exception v21

    move-object v13, v14

    .end local v14           #buf2:Ljava/io/BufferedInputStream;
    .restart local v13       #buf2:Ljava/io/BufferedInputStream;
    goto/16 :goto_d

    .line 13636
    .end local v22           #f:Ljava/io/File;
    .restart local v19       #dstFileName:Ljava/lang/String;
    .restart local v20       #dstFilePath:Ljava/lang/String;
    .restart local v23       #f:Ljava/io/File;
    :catchall_5
    move-exception v3

    move-object/from16 v22, v23

    .end local v23           #f:Ljava/io/File;
    .restart local v22       #f:Ljava/io/File;
    goto/16 :goto_a

    .line 13633
    .end local v22           #f:Ljava/io/File;
    .restart local v23       #f:Ljava/io/File;
    :catch_b
    move-exception v21

    move-object/from16 v22, v23

    .end local v23           #f:Ljava/io/File;
    .restart local v22       #f:Ljava/io/File;
    goto/16 :goto_9

    .line 13590
    .end local v13           #buf2:Ljava/io/BufferedInputStream;
    .end local v19           #dstFileName:Ljava/lang/String;
    .end local v20           #dstFilePath:Ljava/lang/String;
    .restart local v14       #buf2:Ljava/io/BufferedInputStream;
    :catchall_6
    move-exception v3

    move-object v13, v14

    .end local v14           #buf2:Ljava/io/BufferedInputStream;
    .restart local v13       #buf2:Ljava/io/BufferedInputStream;
    goto/16 :goto_6

    .line 13587
    .end local v13           #buf2:Ljava/io/BufferedInputStream;
    .restart local v14       #buf2:Ljava/io/BufferedInputStream;
    :catch_c
    move-exception v21

    move-object v13, v14

    .end local v14           #buf2:Ljava/io/BufferedInputStream;
    .restart local v13       #buf2:Ljava/io/BufferedInputStream;
    goto/16 :goto_5
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13514
    check-cast p1, [Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->doInBackground([Landroid/net/Uri;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 5
    .parameter "result"

    .prologue
    .line 13780
    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 13781
    .local v1, target:Landroid/app/Activity;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 13794
    :cond_0
    :goto_0
    return-void

    .line 13782
    :cond_1
    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 13783
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 13785
    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->mShowDialogRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13786
    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->mDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->mDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v2}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 13787
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->NONE:I

    if-eq v2, v3, :cond_0

    .line 13789
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->OVER_SIZE:I

    if-ne v2, v3, :cond_3

    .line 13790
    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v2}, Lcom/htc/android/mail/ComposeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->this$0:Lcom/htc/android/mail/ComposeActivity;

    const v4, 0x7f0b0029

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/ComposeActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 13791
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->OVER_MAX_ATTACH_NUM:I

    if-ne v2, v3, :cond_0

    .line 13792
    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #calls: Lcom/htc/android/mail/ComposeActivity;->showMaxAttachmentWarning()V
    invoke-static {v2}, Lcom/htc/android/mail/ComposeActivity;->access$15400(Lcom/htc/android/mail/ComposeActivity;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 13514
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 13545
    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 13546
    .local v1, target:Landroid/app/Activity;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 13552
    :cond_0
    :goto_0
    return-void

    .line 13548
    :cond_1
    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 13549
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 13550
    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->mShowDialogRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected varargs onProgressUpdate([Lcom/htc/android/mail/Attachment;)V
    .locals 9
    .parameter "params"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13768
    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_1

    .line 13776
    :cond_0
    :goto_0
    return-void

    .line 13769
    :cond_1
    iget-object v4, p0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 13770
    .local v1, target:Landroid/app/Activity;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 13771
    aget-object v0, p1, v2

    .line 13773
    .local v0, att:Lcom/htc/android/mail/Attachment;
    iget-object v4, p0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-wide v5, v0, Lcom/htc/android/mail/Attachment;->attachSize:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    move v2, v3

    :cond_2
    #calls: Lcom/htc/android/mail/ComposeActivity;->setMediaToUI(Lcom/htc/android/mail/Attachment;Z)V
    invoke-static {v4, v0, v2}, Lcom/htc/android/mail/ComposeActivity;->access$15300(Lcom/htc/android/mail/ComposeActivity;Lcom/htc/android/mail/Attachment;Z)V

    .line 13774
    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #setter for: Lcom/htc/android/mail/ComposeActivity;->expandAttachmentView:Z
    invoke-static {v2, v3}, Lcom/htc/android/mail/ComposeActivity;->access$5802(Lcom/htc/android/mail/ComposeActivity;Z)Z

    .line 13775
    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mTotalAttachmentCount:I
    invoke-static {v3}, Lcom/htc/android/mail/ComposeActivity;->access$5600(Lcom/htc/android/mail/ComposeActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->expandAttachmentView:Z
    invoke-static {v4}, Lcom/htc/android/mail/ComposeActivity;->access$5800(Lcom/htc/android/mail/ComposeActivity;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/mail/ComposeActivity;->updateAttachmentSwitch(IZ)V

    goto :goto_0
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 13514
    check-cast p1, [Lcom/htc/android/mail/Attachment;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->onProgressUpdate([Lcom/htc/android/mail/Attachment;)V

    return-void
.end method
