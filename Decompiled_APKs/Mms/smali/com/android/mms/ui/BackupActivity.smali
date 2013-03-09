.class public Lcom/android/mms/ui/BackupActivity;
.super Landroid/app/Activity;
.source "BackupActivity.java"


# static fields
.field static final BACKUP_DIRECTORY_NAME:Ljava/lang/String; = "/sms_backup/"

.field static final CT_BACKUP_DIRECTORY_NAME:Ljava/lang/String; = "/ct_backup/"

.field static final LOG_TAG:Ljava/lang/String; = "BackupActivity"

.field static final MSG_BACKUP_CANCELCONFIRM:I = 0x68

.field static final MSG_BACKUP_FAILED:I = 0x67

.field static final MSG_BACKUP_STARTED:I = 0x65

.field static final MSG_BACKUP_SUCCESS:I = 0x66

.field static final NULL_VALUE_HACK:Ljava/lang/String; = "#null#"

.field private static mBackupSuccess:Z = false

.field private static mBackupThread:Ljava/lang/Thread; = null

.field private static mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean; = null

.field static final mSupportEncrypt:Z = true


# instance fields
.field private mBackupDir:Ljava/lang/String;

.field mCancelButton:Landroid/widget/Button;

.field protected mCancelListener:Landroid/view/View$OnClickListener;

.field mDoneButton:Landroid/widget/Button;

.field protected mDoneListener:Landroid/view/View$OnClickListener;

.field private mFileName:Landroid/widget/TextView;

.field mHandler:Landroid/os/Handler;

.field private mIsForeground:Z

.field private mNeedToDisplayResultDialog:Z

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/BackupActivity;->mBackupThread:Ljava/lang/Thread;

    .line 84
    sput-boolean v1, Lcom/android/mms/ui/BackupActivity;->mBackupSuccess:Z

    .line 92
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/android/mms/ui/BackupActivity;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 82
    iput-boolean v0, p0, Lcom/android/mms/ui/BackupActivity;->mIsForeground:Z

    .line 83
    iput-boolean v0, p0, Lcom/android/mms/ui/BackupActivity;->mNeedToDisplayResultDialog:Z

    .line 93
    new-instance v0, Lcom/android/mms/ui/BackupActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/BackupActivity$1;-><init>(Lcom/android/mms/ui/BackupActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/BackupActivity;->mHandler:Landroid/os/Handler;

    .line 117
    new-instance v0, Lcom/android/mms/ui/BackupActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/BackupActivity$2;-><init>(Lcom/android/mms/ui/BackupActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/BackupActivity;->mDoneListener:Landroid/view/View$OnClickListener;

    .line 225
    new-instance v0, Lcom/android/mms/ui/BackupActivity$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/BackupActivity$5;-><init>(Lcom/android/mms/ui/BackupActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/BackupActivity;->mCancelListener:Landroid/view/View$OnClickListener;

    .line 231
    new-instance v0, Lcom/android/mms/ui/BackupActivity$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/BackupActivity$6;-><init>(Lcom/android/mms/ui/BackupActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/BackupActivity;->mTextWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/mms/ui/BackupActivity;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/BackupActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/mms/ui/BackupActivity;->mFileName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/mms/ui/BackupActivity;->mBackupThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$202(Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    sput-object p0, Lcom/android/mms/ui/BackupActivity;->mBackupThread:Ljava/lang/Thread;

    return-object p0
.end method

.method public static cancelbyExternal()V
    .locals 2

    .prologue
    .line 484
    const-string v0, "BackupActivity"

    const-string v1, "Backup cancel by external"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    sget-object v0, Lcom/android/mms/ui/BackupActivity;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 486
    return-void
.end method

.method private createBackupFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 415
    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 416
    new-instance v1, Ljava/io/IOException;

    const-string v2, "External storage isn\'t mounted."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 419
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/BackupActivity;->mBackupDir:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/BackupActivity;->ensureDirectory(Ljava/lang/String;)V

    .line 421
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/mms/ui/BackupActivity;->mBackupDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 422
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 423
    return-object v0
.end method

.method private ensureDirectory(Ljava/lang/String;)V
    .locals 2
    .parameter "dirName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 427
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 428
    .local v0, backupDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 429
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 431
    :cond_0
    return-void
.end method

.method private generateBackupFileName()Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x5f

    .line 341
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 342
    .local v1, now:J
    const-string v6, "yyyyMMdd"

    invoke-static {v6, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 343
    .local v3, p1:Ljava/lang/String;
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 344
    .local v5, strNow:Ljava/lang/String;
    const-string v6, "BackupActivity"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    .line 346
    .local v0, len:I
    add-int/lit8 v6, v0, -0x7

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 347
    .local v4, p2:Ljava/lang/String;
    const-string v6, "BackupActivity"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SD_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x30

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static getBackupStatus()Z
    .locals 1

    .prologue
    .line 480
    sget-boolean v0, Lcom/android/mms/ui/BackupActivity;->mBackupSuccess:Z

    return v0
.end method

.method public static isBackuping()Z
    .locals 1

    .prologue
    .line 475
    sget-object v0, Lcom/android/mms/ui/BackupActivity;->mBackupThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setTitleBar()V
    .locals 3

    .prologue
    .line 256
    const/4 v0, 0x0

    .line 257
    .local v0, headerText:Lcom/htc/widget/HeaderBarText;
    const/high16 v2, 0x7f0e

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/BackupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 259
    .local v1, title:Landroid/view/View;
    const v2, 0x7f0e0001

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #headerText:Lcom/htc/widget/HeaderBarText;
    check-cast v0, Lcom/htc/widget/HeaderBarText;

    .line 261
    .restart local v0       #headerText:Lcom/htc/widget/HeaderBarText;
    if-eqz v0, :cond_0

    .line 263
    const v2, 0x7f09028b

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/BackupActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 264
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 266
    :cond_0
    return-void
.end method

.method private writeMessage(Ljava/io/Writer;Landroid/database/Cursor;)V
    .locals 11
    .parameter "backupFileWriter"
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 445
    invoke-interface {p2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    .line 446
    .local v0, count:I
    const-string v7, "index_on_sim"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 447
    .local v2, idx_indexonsim:I
    const-string v7, "type"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 448
    .local v3, idx_type:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_5

    .line 449
    if-eqz v1, :cond_0

    .line 450
    const/16 v7, 0x7c

    invoke-virtual {p1, v7}, Ljava/io/Writer;->write(I)V

    .line 452
    :cond_0
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 453
    .local v6, value:Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 454
    move-object v5, v6

    .line 455
    .local v5, v2:Ljava/lang/String;
    if-ne v2, v1, :cond_2

    .line 456
    const-string v6, "-1"

    .line 462
    :cond_1
    :goto_1
    const-string v7, "|"

    const-string v8, "\\|"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "\'"

    const-string v9, "\\\'"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "\r"

    const-string v9, "\\r"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "\n"

    const-string v9, "\\n"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 466
    .local v4, v:Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 448
    .end local v4           #v:Ljava/lang/String;
    .end local v5           #v2:Ljava/lang/String;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 457
    .restart local v5       #v2:Ljava/lang/String;
    :cond_2
    if-ne v3, v1, :cond_1

    .line 458
    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eq v7, v10, :cond_3

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v10, :cond_1

    .line 460
    :cond_3
    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 468
    .end local v5           #v2:Ljava/lang/String;
    :cond_4
    const-string v7, "#null#"

    invoke-virtual {p1, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 471
    .end local v6           #value:Ljava/lang/String;
    :cond_5
    const/16 v7, 0xa

    invoke-virtual {p1, v7}, Ljava/io/Writer;->write(I)V

    .line 472
    return-void
.end method

.method private writeSchema(Ljava/io/Writer;Landroid/database/Cursor;)V
    .locals 3
    .parameter "backupFileWriter"
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 434
    invoke-interface {p2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 435
    .local v0, columnNames:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 436
    if-eqz v1, :cond_0

    .line 437
    const/16 v2, 0x7c

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    .line 439
    :cond_0
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 435
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 441
    :cond_1
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    .line 442
    return-void
.end method


# virtual methods
.method backup(Ljava/lang/String;)Z
    .locals 18
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 358
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/ui/BackupActivity;->createBackupFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 359
    .local v8, backupFile:Ljava/io/File;
    const/4 v9, 0x0

    .line 362
    .local v9, backupFileWriter:Ljava/io/Writer;
    const/16 v16, 0x0

    .line 363
    .local v16, outputStream:Ljava/io/OutputStream;
    const-string v17, "htc20100416"

    .line 366
    .local v17, passwd:Ljava/lang/String;
    :try_start_0
    const-string v1, "AES"

    invoke-static {v1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v14

    .line 367
    .local v14, generator:Ljavax/crypto/KeyGenerator;
    new-instance v1, Ljava/security/SecureRandom;

    const-string v2, "htc20100416"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/SecureRandom;-><init>([B)V

    invoke-virtual {v14, v1}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/SecureRandom;)V

    .line 368
    invoke-virtual {v14}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v15

    .line 369
    .local v15, key:Ljava/security/Key;
    const-string v1, "AES"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v11

    .line 370
    .local v11, cipher:Ljavax/crypto/Cipher;
    const/4 v1, 0x1

    invoke-virtual {v11, v1, v15}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 372
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xd8

    if-ne v1, v2, :cond_2

    .line 373
    new-instance v16, Ljava/io/FileOutputStream;

    .end local v16           #outputStream:Ljava/io/OutputStream;
    move-object/from16 v0, v16

    invoke-direct {v0, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    .restart local v16       #outputStream:Ljava/io/OutputStream;
    :goto_0
    new-instance v9, Ljava/io/OutputStreamWriter;

    .end local v9           #backupFileWriter:Ljava/io/Writer;
    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 386
    .restart local v9       #backupFileWriter:Ljava/io/Writer;
    const/4 v10, 0x0

    .line 388
    .local v10, backupSuccess:Z
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/BackupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 391
    .local v12, cursor:Landroid/database/Cursor;
    if-eqz v12, :cond_4

    .line 392
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v12}, Lcom/android/mms/ui/BackupActivity;->writeSchema(Ljava/io/Writer;Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 394
    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/mms/ui/BackupActivity;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 395
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v12}, Lcom/android/mms/ui/BackupActivity;->writeMessage(Ljava/io/Writer;Landroid/database/Cursor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 398
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 403
    .end local v12           #cursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v1

    .line 404
    :try_start_4
    invoke-virtual {v9}, Ljava/io/Writer;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 407
    :goto_2
    if-eqz v10, :cond_0

    sget-object v2, Lcom/android/mms/ui/BackupActivity;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 408
    :cond_0
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :cond_1
    throw v1

    .line 375
    .end local v10           #backupSuccess:Z
    :cond_2
    :try_start_5
    new-instance v16, Ljavax/crypto/CipherOutputStream;

    .end local v16           #outputStream:Ljava/io/OutputStream;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v16

    invoke-direct {v0, v1, v11}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .restart local v16       #outputStream:Ljava/io/OutputStream;
    goto :goto_0

    .line 376
    .end local v11           #cipher:Ljavax/crypto/Cipher;
    .end local v14           #generator:Ljavax/crypto/KeyGenerator;
    .end local v15           #key:Ljava/security/Key;
    .end local v16           #outputStream:Ljava/io/OutputStream;
    :catch_0
    move-exception v13

    .line 377
    .local v13, e:Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 378
    const/4 v1, 0x0

    .line 411
    .end local v13           #e:Ljava/lang/Exception;
    :goto_3
    return v1

    .line 398
    .restart local v10       #backupSuccess:Z
    .restart local v11       #cipher:Ljavax/crypto/Cipher;
    .restart local v12       #cursor:Landroid/database/Cursor;
    .restart local v14       #generator:Ljavax/crypto/KeyGenerator;
    .restart local v15       #key:Ljava/security/Key;
    .restart local v16       #outputStream:Ljava/io/OutputStream;
    :cond_3
    :try_start_6
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 401
    :cond_4
    const/4 v10, 0x1

    .line 404
    :try_start_7
    invoke-virtual {v9}, Ljava/io/Writer;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 407
    :goto_4
    if-eqz v10, :cond_5

    sget-object v1, Lcom/android/mms/ui/BackupActivity;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 408
    :cond_5
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 411
    :cond_6
    if-eqz v10, :cond_7

    sget-object v1, Lcom/android/mms/ui/BackupActivity;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x1

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    goto :goto_3

    .line 405
    :catch_1
    move-exception v1

    goto :goto_4

    .end local v12           #cursor:Landroid/database/Cursor;
    :catch_2
    move-exception v2

    goto :goto_2
.end method

.method cancelBackup()V
    .locals 2

    .prologue
    .line 164
    sget-object v0, Lcom/android/mms/ui/BackupActivity;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 165
    return-void
.end method

.method dismissProgressDialog()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/mms/ui/BackupActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BackupActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/BackupActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/BackupActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 175
    :cond_0
    return-void

    .line 171
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method displayConfirmDialog()V
    .locals 3

    .prologue
    .line 492
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 493
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x7f0903d7

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 494
    const v1, 0x7f0903d5

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 495
    const v1, 0x20c015f

    new-instance v2, Lcom/android/mms/ui/BackupActivity$7;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/BackupActivity$7;-><init>(Lcom/android/mms/ui/BackupActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 500
    const v1, 0x20c0164

    new-instance v2, Lcom/android/mms/ui/BackupActivity$8;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/BackupActivity$8;-><init>(Lcom/android/mms/ui/BackupActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 505
    new-instance v1, Lcom/android/mms/ui/BackupActivity$9;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/BackupActivity$9;-><init>(Lcom/android/mms/ui/BackupActivity;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 513
    :try_start_0
    iget-boolean v1, p0, Lcom/android/mms/ui/BackupActivity;->mIsForeground:Z

    if-eqz v1, :cond_0

    .line 514
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 517
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method displayProgressDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 144
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/BackupActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 145
    iget-object v0, p0, Lcom/android/mms/ui/BackupActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f090276

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/BackupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lcom/android/mms/ui/BackupActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 147
    iget-object v0, p0, Lcom/android/mms/ui/BackupActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 148
    iget-object v0, p0, Lcom/android/mms/ui/BackupActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 149
    iget-object v0, p0, Lcom/android/mms/ui/BackupActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/mms/ui/BackupActivity$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/BackupActivity$3;-><init>(Lcom/android/mms/ui/BackupActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 160
    iget-object v0, p0, Lcom/android/mms/ui/BackupActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 161
    return-void
.end method

.method displayResultDialog(Z)V
    .locals 4
    .parameter "success"

    .prologue
    .line 178
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 179
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v2, 0x7f09028b

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 180
    if-eqz p1, :cond_0

    const v1, 0x7f090277

    .line 182
    .local v1, message:I
    :goto_0
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 183
    const v2, 0x20c015f

    new-instance v3, Lcom/android/mms/ui/BackupActivity$4;

    invoke-direct {v3, p0, p1}, Lcom/android/mms/ui/BackupActivity$4;-><init>(Lcom/android/mms/ui/BackupActivity;Z)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 193
    :try_start_0
    iget-boolean v2, p0, Lcom/android/mms/ui/BackupActivity;->mIsForeground:Z

    if-eqz v2, :cond_1

    .line 194
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 202
    :goto_1
    return-void

    .line 180
    .end local v1           #message:I
    :cond_0
    const v1, 0x7f090278

    goto :goto_0

    .line 196
    .restart local v1       #message:I
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/mms/ui/BackupActivity;->mNeedToDisplayResultDialog:Z

    .line 197
    sput-boolean p1, Lcom/android/mms/ui/BackupActivity;->mBackupSuccess:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 199
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method isValidFileName(Ljava/lang/String;)Z
    .locals 1
    .parameter "fileName"

    .prologue
    .line 337
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 329
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 330
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/android/mms/ui/BackupActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/BackupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->getWindowBackgroundRes(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 334
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 269
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 270
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/BackupActivity;->requestWindowFeature(I)Z

    .line 271
    const/high16 v2, 0x7f03

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/BackupActivity;->setContentView(I)V

    .line 273
    invoke-direct {p0}, Lcom/android/mms/ui/BackupActivity;->setTitleBar()V

    .line 276
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isExternalStorageMounted()Z

    move-result v2

    if-nez v2, :cond_1

    .line 277
    const-string v2, "Mms"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 278
    const-string v2, "BackupActivity"

    const-string v3, "External storage unavailable."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_0
    const v2, 0x7f090280

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 281
    invoke-virtual {p0}, Lcom/android/mms/ui/BackupActivity;->finish()V

    .line 324
    :goto_0
    return-void

    .line 285
    :cond_1
    const v2, 0x7f0e0002

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/BackupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooter;

    .line 286
    .local v0, fl:Lcom/htc/widget/HtcFooter;
    const v2, 0x7f0e0007

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/mms/ui/BackupActivity;->mDoneButton:Landroid/widget/Button;

    .line 287
    iget-object v2, p0, Lcom/android/mms/ui/BackupActivity;->mDoneButton:Landroid/widget/Button;

    const v3, 0x20c015f

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 288
    iget-object v2, p0, Lcom/android/mms/ui/BackupActivity;->mDoneButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/mms/ui/BackupActivity;->mDoneListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    const v2, 0x7f0e0006

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/mms/ui/BackupActivity;->mCancelButton:Landroid/widget/Button;

    .line 290
    iget-object v2, p0, Lcom/android/mms/ui/BackupActivity;->mCancelButton:Landroid/widget/Button;

    const v3, 0x20c0164

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 291
    iget-object v2, p0, Lcom/android/mms/ui/BackupActivity;->mCancelButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/mms/ui/BackupActivity;->mCancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    const v2, 0x7f0e0004

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/BackupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/mms/ui/BackupActivity;->mFileName:Landroid/widget/TextView;

    .line 294
    iget-object v2, p0, Lcom/android/mms/ui/BackupActivity;->mFileName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/mms/ui/BackupActivity;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 295
    iget-object v2, p0, Lcom/android/mms/ui/BackupActivity;->mFileName:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/mms/ui/BackupActivity;->generateBackupFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    const v2, 0x7f0e0005

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/BackupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 298
    .local v1, mDescription:Landroid/widget/TextView;
    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/mms/MmsApp;->isNotSupportSDCard()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 299
    const v2, 0x7f090275

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 303
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getSdCardStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/sms_backup/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/BackupActivity;->mBackupDir:Ljava/lang/String;

    .line 306
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd8

    if-ne v2, v3, :cond_3

    .line 308
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getSdCardStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/ct_backup/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/BackupActivity;->mBackupDir:Ljava/lang/String;

    .line 311
    iget-object v2, p0, Lcom/android/mms/ui/BackupActivity;->mFileName:Landroid/widget/TextView;

    const-string v3, "sms.vmg"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v2, p0, Lcom/android/mms/ui/BackupActivity;->mFileName:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 313
    iget-object v2, p0, Lcom/android/mms/ui/BackupActivity;->mFileName:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 316
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_0()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 317
    invoke-virtual {p0}, Lcom/android/mms/ui/BackupActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/mms/ui/BackupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->getWindowBackgroundRes(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 323
    :goto_1
    sput-boolean v4, Lcom/android/mms/ui/BackupActivity;->mBackupSuccess:Z

    goto/16 :goto_0

    .line 321
    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/ui/BackupActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 207
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/BackupActivity;->mIsForeground:Z

    .line 209
    const-string v0, "BackupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause: mIsForeground >"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/mms/ui/BackupActivity;->mIsForeground:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 214
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/BackupActivity;->mIsForeground:Z

    .line 216
    const-string v0, "BackupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume: mIsForeground >"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/mms/ui/BackupActivity;->mIsForeground:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-boolean v0, p0, Lcom/android/mms/ui/BackupActivity;->mNeedToDisplayResultDialog:Z

    if-eqz v0, :cond_0

    .line 219
    const-string v0, "BackupActivity"

    const-string v1, "Display Result Dialog after onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    sget-boolean v0, Lcom/android/mms/ui/BackupActivity;->mBackupSuccess:Z

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/BackupActivity;->displayResultDialog(Z)V

    .line 222
    :cond_0
    return-void
.end method
