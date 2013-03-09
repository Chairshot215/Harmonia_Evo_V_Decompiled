.class public Lcom/google/android/vending/verifier/PackageVerificationService;
.super Landroid/app/Service;
.source "PackageVerificationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;,
        Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/google/android/vending/verifier/PackageVerificationService;


# instance fields
.field private mLastStartId:I

.field private mVerifications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 88
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/finsky/utils/Lists;->newArrayList(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/verifier/PackageVerificationService;->mVerifications:Ljava/util/ArrayList;

    .line 226
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/vending/verifier/PackageVerificationService;Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/google/android/vending/verifier/PackageVerificationService;->getPackageInfo(Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-static {p0}, Lcom/google/android/vending/verifier/PackageVerificationService;->resolveHosts(Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/vending/verifier/PackageVerificationService;Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/google/android/vending/verifier/PackageVerificationService;->sendVerificationRequest(Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/vending/verifier/PackageVerificationService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/google/android/vending/verifier/PackageVerificationService;->extendTimeout(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/vending/verifier/PackageVerificationService;Landroid/content/Context;Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/google/android/vending/verifier/PackageVerificationService;->reportAndCleanup(Landroid/content/Context;Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/vending/verifier/PackageVerificationService;Landroid/content/Context;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/vending/verifier/PackageVerificationService;->reportVerificationResult(Landroid/content/Context;II)V

    return-void
.end method

.method private cancelDialog(Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 362
    iget-object v0, p1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mDialog:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mDialog:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 364
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mDialog:Landroid/app/Activity;

    .line 366
    :cond_0
    return-void
.end method

.method private cancelVerificationIntent(Landroid/content/Intent;)V
    .locals 7
    .parameter "broadcast"

    .prologue
    .line 150
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 151
    .local v0, extras:Landroid/os/Bundle;
    const-string v3, "android.content.pm.extra.VERIFICATION_ID"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 152
    .local v1, id:I
    invoke-direct {p0, v1}, Lcom/google/android/vending/verifier/PackageVerificationService;->findVerification(I)Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    move-result-object v2

    .line 153
    .local v2, state:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;
    if-eqz v2, :cond_0

    iget v3, v2, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mResult:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 154
    const-string v3, "Cancel active verification id=%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    invoke-direct {p0, v2}, Lcom/google/android/vending/verifier/PackageVerificationService;->cancelDialog(Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V

    .line 156
    iget-object v3, p0, Lcom/google/android/vending/verifier/PackageVerificationService;->mVerifications:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 158
    :cond_0
    return-void
.end method

.method private destroyAllVerifications()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 347
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 348
    :goto_0
    iget-object v1, p0, Lcom/google/android/vending/verifier/PackageVerificationService;->mVerifications:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 349
    iget-object v1, p0, Lcom/google/android/vending/verifier/PackageVerificationService;->mVerifications:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    .line 350
    .local v0, state:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;
    const-string v1, "Destroying orphaned verification id=%d"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, v0, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 352
    iget v1, v0, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->id:I

    invoke-direct {p0, p0, v1, v5}, Lcom/google/android/vending/verifier/PackageVerificationService;->reportVerificationResult(Landroid/content/Context;II)V

    .line 353
    invoke-direct {p0, v0}, Lcom/google/android/vending/verifier/PackageVerificationService;->cancelDialog(Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V

    goto :goto_0

    .line 355
    .end local v0           #state:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;
    :cond_0
    return-void
.end method

.method private extendTimeout(II)V
    .locals 4
    .parameter "id"
    .parameter "code"

    .prologue
    .line 339
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v0, Lcom/google/android/finsky/config/G;->platformAntiMalwareDialogDelayMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, p1, p2, v2, v3}, Landroid/content/pm/PackageManager;->extendVerificationTimeout(IIJ)V

    .line 341
    return-void
.end method

.method private findVerification(I)Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;
    .locals 3
    .parameter "id"

    .prologue
    .line 372
    iget-object v2, p0, Lcom/google/android/vending/verifier/PackageVerificationService;->mVerifications:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    .line 373
    .local v1, state:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;
    iget v2, v1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->id:I

    if-ne v2, p1, :cond_0

    .line 377
    .end local v1           #state:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPackageInfo(Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)Z
    .locals 14
    .parameter "state"

    .prologue
    const/4 v13, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 460
    iget-object v0, p1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->dataUri:Landroid/net/Uri;

    .line 461
    .local v0, dataUri:Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 462
    const-string v10, "Null data for request id=%d"

    new-array v9, v9, [Ljava/lang/Object;

    iget v11, p1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v8

    invoke-static {v10, v9}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 521
    :goto_0
    return v8

    .line 465
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    .line 466
    .local v7, scheme:Ljava/lang/String;
    const-string v10, "file"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 467
    const-string v10, "Unsupported scheme for %s in request id=%d"

    new-array v11, v13, [Ljava/lang/Object;

    aput-object v0, v11, v8

    iget v12, p1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-static {v10, v11}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 470
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 471
    .local v6, path:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 472
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_2

    .line 473
    const-string v10, "Cannot find file for %s in request id=%d"

    new-array v11, v13, [Ljava/lang/Object;

    aput-object v0, v11, v8

    iget v12, p1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-static {v10, v11}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 476
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v10

    if-nez v10, :cond_3

    .line 477
    const-string v10, "Cannot read file for %s in request id=%d"

    new-array v11, v13, [Ljava/lang/Object;

    aput-object v0, v11, v8

    iget v12, p1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-static {v10, v11}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 480
    :cond_3
    const/4 v4, 0x0

    .line 483
    .local v4, info:Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/finsky/FinskyApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/16 v11, 0x40

    invoke-virtual {v10, v6, v11}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 489
    if-nez v4, :cond_4

    .line 490
    const-string v10, "Cannot read archive for %s in request id=%d"

    new-array v11, v13, [Ljava/lang/Object;

    aput-object v0, v11, v8

    iget v12, p1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-static {v10, v11}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 485
    :catch_0
    move-exception v1

    .line 486
    .local v1, e:Ljava/lang/Exception;
    const-string v10, "Exception reading %s in request id=%d %s"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v0, v11, v8

    iget v12, p1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v9

    aput-object v1, v11, v13

    invoke-static {v10, v11}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 496
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    iget-object v10, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v10, p1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mPackageName:Ljava/lang/String;

    .line 497
    iget v10, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iput-object v10, p1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mVersion:Ljava/lang/Integer;

    .line 499
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v10

    iput-wide v10, p1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mLength:J

    .line 502
    :try_start_1
    invoke-static {v3}, Lcom/google/android/vending/verifier/PackageVerificationService;->getSha256Hash(Ljava/io/File;)[B

    move-result-object v10

    iput-object v10, p1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mSha256:[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2

    .line 514
    iget-object v8, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v6, v8, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 515
    iget-object v8, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/finsky/FinskyApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 516
    .local v5, label:Ljava/lang/CharSequence;
    if-eqz v5, :cond_5

    .line 517
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mLabel:Ljava/lang/String;

    .line 519
    :cond_5
    iget-object v8, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iput-object v8, p1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mSignatures:[Landroid/content/pm/Signature;

    move v8, v9

    .line 521
    goto/16 :goto_0

    .line 503
    .end local v5           #label:Ljava/lang/CharSequence;
    :catch_1
    move-exception v2

    .line 504
    .local v2, ex:Ljava/io/IOException;
    const-string v10, "Error while calculating sha256 for file=%s, error=%s"

    new-array v11, v13, [Ljava/lang/Object;

    aput-object v0, v11, v8

    aput-object v2, v11, v9

    invoke-static {v10, v11}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 507
    .end local v2           #ex:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 508
    .local v2, ex:Ljava/security/NoSuchAlgorithmException;
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8
.end method

.method private static getSha256Hash(Ljava/io/File;)[B
    .locals 6
    .parameter "apkFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 528
    const-string v5, "SHA256"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 530
    .local v2, digester:Ljava/security/MessageDigest;
    const/4 v3, 0x0

    .line 532
    .local v3, stream:Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 535
    .end local v3           #stream:Ljava/io/InputStream;
    .local v4, stream:Ljava/io/InputStream;
    const/16 v5, 0x4000

    :try_start_1
    new-array v0, v5, [B

    .line 536
    .local v0, buf:[B
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, bytesRead:I
    if-ltz v1, :cond_1

    .line 537
    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5, v1}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 540
    .end local v0           #buf:[B
    .end local v1           #bytesRead:I
    :catchall_0
    move-exception v5

    move-object v3, v4

    .end local v4           #stream:Ljava/io/InputStream;
    .restart local v3       #stream:Ljava/io/InputStream;
    :goto_1
    if-eqz v3, :cond_0

    .line 541
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_0
    throw v5

    .line 540
    .end local v3           #stream:Ljava/io/InputStream;
    .restart local v0       #buf:[B
    .restart local v1       #bytesRead:I
    .restart local v4       #stream:Ljava/io/InputStream;
    :cond_1
    if-eqz v4, :cond_2

    .line 541
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 545
    :cond_2
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    return-object v5

    .line 540
    .end local v0           #buf:[B
    .end local v1           #bytesRead:I
    .end local v4           #stream:Ljava/io/InputStream;
    .restart local v3       #stream:Ljava/io/InputStream;
    :catchall_1
    move-exception v5

    goto :goto_1
.end method

.method private handleVerificationIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "broadcast"

    .prologue
    .line 139
    new-instance v0, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    invoke-direct {v0, p1}, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;-><init>(Landroid/content/Intent;)V

    .line 140
    .local v0, state:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;
    iget-object v2, p0, Lcom/google/android/vending/verifier/PackageVerificationService;->mVerifications:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance v1, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;

    invoke-direct {v1, p0, v0}, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;-><init>(Lcom/google/android/vending/verifier/PackageVerificationService;Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V

    .line 142
    .local v1, task:Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;
    invoke-virtual {v1}, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;->execute()V

    .line 143
    return-void
.end method

.method public static registerDialog(ILandroid/app/Activity;)Z
    .locals 3
    .parameter "id"
    .parameter "a"

    .prologue
    const/4 v1, 0x0

    .line 386
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 387
    sget-object v2, Lcom/google/android/vending/verifier/PackageVerificationService;->sInstance:Lcom/google/android/vending/verifier/PackageVerificationService;

    if-nez v2, :cond_1

    .line 395
    :cond_0
    :goto_0
    return v1

    .line 390
    :cond_1
    sget-object v2, Lcom/google/android/vending/verifier/PackageVerificationService;->sInstance:Lcom/google/android/vending/verifier/PackageVerificationService;

    invoke-direct {v2, p0}, Lcom/google/android/vending/verifier/PackageVerificationService;->findVerification(I)Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    move-result-object v0

    .line 391
    .local v0, state:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;
    if-eqz v0, :cond_0

    .line 392
    iput-object p1, v0, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mDialog:Landroid/app/Activity;

    .line 393
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private reportAndCleanup(Landroid/content/Context;Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V
    .locals 2
    .parameter "context"
    .parameter "state"

    .prologue
    .line 312
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 314
    iget v0, p2, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->id:I

    iget v1, p2, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mResult:I

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/vending/verifier/PackageVerificationService;->reportVerificationResult(Landroid/content/Context;II)V

    .line 316
    iget-object v0, p0, Lcom/google/android/vending/verifier/PackageVerificationService;->mVerifications:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 317
    iget-object v0, p0, Lcom/google/android/vending/verifier/PackageVerificationService;->mVerifications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    iget v0, p0, Lcom/google/android/vending/verifier/PackageVerificationService;->mLastStartId:I

    invoke-virtual {p0, v0}, Lcom/google/android/vending/verifier/PackageVerificationService;->stopSelf(I)V

    .line 320
    :cond_0
    return-void
.end method

.method public static reportConsentDialog(IZ)V
    .locals 6
    .parameter "id"
    .parameter "granted"

    .prologue
    const/4 v5, 0x1

    .line 436
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 437
    const-string v1, "User consent %b for id=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 438
    sget-object v1, Lcom/google/android/vending/verifier/PackageVerificationService;->sInstance:Lcom/google/android/vending/verifier/PackageVerificationService;

    if-nez v1, :cond_1

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    sget-object v1, Lcom/google/android/vending/verifier/PackageVerificationService;->sInstance:Lcom/google/android/vending/verifier/PackageVerificationService;

    invoke-direct {v1, p0}, Lcom/google/android/vending/verifier/PackageVerificationService;->findVerification(I)Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    move-result-object v0

    .line 442
    .local v0, state:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;
    if-eqz v0, :cond_0

    .line 443
    if-eqz p1, :cond_2

    .line 444
    sget-object v1, Lcom/google/android/finsky/utils/FinskyPreferences;->acceptedAntiMalwareConsent:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 445
    sget-object v1, Lcom/google/android/vending/verifier/PackageVerificationService;->sInstance:Lcom/google/android/vending/verifier/PackageVerificationService;

    invoke-direct {v1, v0}, Lcom/google/android/vending/verifier/PackageVerificationService;->sendVerificationRequest(Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V

    goto :goto_0

    .line 447
    :cond_2
    iput v5, v0, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mResult:I

    .line 448
    sget-object v1, Lcom/google/android/vending/verifier/PackageVerificationService;->sInstance:Lcom/google/android/vending/verifier/PackageVerificationService;

    sget-object v2, Lcom/google/android/vending/verifier/PackageVerificationService;->sInstance:Lcom/google/android/vending/verifier/PackageVerificationService;

    invoke-direct {v1, v2, v0}, Lcom/google/android/vending/verifier/PackageVerificationService;->reportAndCleanup(Landroid/content/Context;Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V

    goto :goto_0
.end method

.method public static reportUserChoice(II)V
    .locals 6
    .parameter "id"
    .parameter "result"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 403
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 404
    const-string v3, "User selected %d for id=%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 405
    sget-object v3, Lcom/google/android/vending/verifier/PackageVerificationService;->sInstance:Lcom/google/android/vending/verifier/PackageVerificationService;

    if-nez v3, :cond_1

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 408
    :cond_1
    sget-object v3, Lcom/google/android/vending/verifier/PackageVerificationService;->sInstance:Lcom/google/android/vending/verifier/PackageVerificationService;

    invoke-direct {v3, p0}, Lcom/google/android/vending/verifier/PackageVerificationService;->findVerification(I)Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    move-result-object v1

    .line 409
    .local v1, state:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;
    if-eqz v1, :cond_0

    .line 413
    iget v3, v1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mResult:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 414
    if-ne p1, v2, :cond_3

    .line 418
    .local v0, decision:I
    :goto_1
    iget-object v2, v1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mToken:[B

    new-instance v3, Lcom/google/android/vending/verifier/PackageVerificationService$1;

    invoke-direct {v3, v1}, Lcom/google/android/vending/verifier/PackageVerificationService$1;-><init>(Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V

    invoke-static {v0, v2, v3}, Lcom/google/android/vending/verifier/api/PackageVerificationApi;->reportUserDecision(I[BLcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 427
    .end local v0           #decision:I
    :cond_2
    iput p1, v1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mResult:I

    .line 428
    sget-object v2, Lcom/google/android/vending/verifier/PackageVerificationService;->sInstance:Lcom/google/android/vending/verifier/PackageVerificationService;

    sget-object v3, Lcom/google/android/vending/verifier/PackageVerificationService;->sInstance:Lcom/google/android/vending/verifier/PackageVerificationService;

    invoke-direct {v2, v3, v1}, Lcom/google/android/vending/verifier/PackageVerificationService;->reportAndCleanup(Landroid/content/Context;Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 414
    goto :goto_1
.end method

.method private reportVerificationResult(Landroid/content/Context;II)V
    .locals 1
    .parameter "context"
    .parameter "id"
    .parameter "result"

    .prologue
    .line 329
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/content/pm/PackageManager;->verifyPendingInstall(II)V

    .line 330
    return-void
.end method

.method private static resolveHosts(Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V
    .locals 6
    .parameter "state"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 290
    iget-object v2, p0, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->originatingUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 291
    iget-object v2, p0, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->originatingUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 293
    .local v1, host:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->originatingIp:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    .end local v1           #host:Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->referrerUri:Landroid/net/Uri;

    if-eqz v2, :cond_1

    .line 299
    iget-object v2, p0, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->referrerUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 301
    .restart local v1       #host:Ljava/lang/String;
    :try_start_1
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->referrerIp:Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    .line 306
    .end local v1           #host:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 294
    .restart local v1       #host:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 295
    .local v0, ex:Ljava/net/UnknownHostException;
    const-string v2, "Could not resolve host %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 302
    .end local v0           #ex:Ljava/net/UnknownHostException;
    :catch_1
    move-exception v0

    .line 303
    .restart local v0       #ex:Ljava/net/UnknownHostException;
    const-string v2, "Could not resolve host %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private sendVerificationRequest(Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V
    .locals 17
    .parameter "state"

    .prologue
    .line 551
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/vending/verifier/PackageVerificationService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v12

    .line 552
    .local v12, currentLocale:Ljava/lang/String;
    sget-object v2, Lcom/google/android/finsky/api/DfeApiConfig;->androidId:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 554
    .local v13, androidId:J
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mSha256:[B

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mLength:J

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mVersion:Ljava/lang/Integer;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->installingPackage:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->originatingUri:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->referrerUri:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->originatingIp:Ljava/net/InetAddress;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->referrerIp:Ljava/net/InetAddress;

    new-instance v15, Lcom/google/android/vending/verifier/PackageVerificationService$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v15, v0, v1}, Lcom/google/android/vending/verifier/PackageVerificationService$2;-><init>(Lcom/google/android/vending/verifier/PackageVerificationService;Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V

    new-instance v16, Lcom/google/android/vending/verifier/PackageVerificationService$3;

    invoke-direct/range {v16 .. v18}, Lcom/google/android/vending/verifier/PackageVerificationService$3;-><init>(Lcom/google/android/vending/verifier/PackageVerificationService;Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V

    invoke-static/range {v2 .. v16}, Lcom/google/android/vending/verifier/api/PackageVerificationApi;->verifyApp([BJLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/lang/String;JLcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 595
    return-void
.end method

.method public static start(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 96
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/vending/verifier/PackageVerificationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    const-string v1, "broadcast_intent"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 98
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 99
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 116
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 103
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 104
    sput-object p0, Lcom/google/android/vending/verifier/PackageVerificationService;->sInstance:Lcom/google/android/vending/verifier/PackageVerificationService;

    .line 105
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/google/android/vending/verifier/PackageVerificationService;->destroyAllVerifications()V

    .line 110
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/vending/verifier/PackageVerificationService;->sInstance:Lcom/google/android/vending/verifier/PackageVerificationService;

    .line 111
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 112
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 122
    const-string v2, "broadcast_intent"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 123
    .local v1, broadcast:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 125
    invoke-direct {p0, v1}, Lcom/google/android/vending/verifier/PackageVerificationService;->handleVerificationIntent(Landroid/content/Intent;)V

    .line 130
    :cond_0
    :goto_0
    iput p3, p0, Lcom/google/android/vending/verifier/PackageVerificationService;->mLastStartId:I

    .line 132
    iget-object v2, p0, Lcom/google/android/vending/verifier/PackageVerificationService;->mVerifications:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    iget v2, p0, Lcom/google/android/vending/verifier/PackageVerificationService;->mLastStartId:I

    invoke-virtual {p0, v2}, Lcom/google/android/vending/verifier/PackageVerificationService;->stopSelf(I)V

    .line 135
    :cond_1
    const/4 v2, 0x3

    return v2

    .line 126
    :cond_2
    const-string v2, "android.intent.action.PACKAGE_VERIFIED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    invoke-direct {p0, v1}, Lcom/google/android/vending/verifier/PackageVerificationService;->cancelVerificationIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method
