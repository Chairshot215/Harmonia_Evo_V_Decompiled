.class public Lcom/android/providers/downloads/Helpers;
.super Ljava/lang/Object;
.source "Helpers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/downloads/Helpers$Lexer;
    }
.end annotation


# static fields
.field private static final CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final DATA_DIRECTORY:Ljava/io/File; = null

.field public static final DESTINATION_EXTERNAL_REMOVABLE_STORAGE:I = 0x8

.field public static sRandom:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 69
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/android/providers/downloads/Helpers;->sRandom:Ljava/util/Random;

    .line 72
    const-string v0, "attachment;\\s*filename\\s*=\\s*\"([^\"]*)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/providers/downloads/Helpers;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    .line 1139
    const-string v0, "ANDROID_DATA"

    const-string v1, "/data"

    invoke-static {v0, v1}, Lcom/android/providers/downloads/Helpers;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/android/providers/downloads/Helpers;->DATA_DIRECTORY:Ljava/io/File;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 86
    return-void
.end method

.method private static checkCanHandleDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 7
    .parameter "context"
    .parameter "mimeType"
    .parameter "extras"
    .parameter "destination"
    .parameter "isPublicApi"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x196

    .line 299
    if-eqz p4, :cond_1

    .line 352
    :cond_0
    return-void

    .line 306
    :cond_1
    invoke-static {p3}, Lcom/android/providers/downloads/Helpers;->isExternalStorage(I)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x7

    if-eq p3, v3, :cond_2

    const/4 v3, 0x2

    if-ne p3, v3, :cond_0

    .line 310
    :cond_2
    if-nez p1, :cond_3

    .line 311
    new-instance v3, Lcom/android/providers/downloads/StopRequestException;

    const-string v4, "external download with no mime type not allowed"

    invoke-direct {v3, v6, v4}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 317
    :cond_3
    const-string v3, "application/vnd.oma.drm.message"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "application/vnd.oma.drm.content"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "application/vnd.oma.drm.rights+wbxml"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "application/vnd.oma.drm.rights+xml"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p2, :cond_4

    const-string v3, "skipcheckmimetype"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 329
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 338
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 339
    .local v1, pm:Landroid/content/pm/PackageManager;
    const-string v3, "file"

    const-string v4, ""

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    const/high16 v3, 0x1

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 343
    .local v2, ri:Landroid/content/pm/ResolveInfo;
    if-nez v2, :cond_0

    .line 344
    sget-boolean v3, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v3, :cond_5

    .line 345
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no handler found for type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_5
    new-instance v3, Lcom/android/providers/downloads/StopRequestException;

    const-string v4, "no handler found for this download type"

    invoke-direct {v3, v6, v4}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method private static chooseExtensionFromFilename(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;
    .locals 5
    .parameter "mimeType"
    .parameter "destination"
    .parameter "filename"
    .parameter "lastDotIndex"

    .prologue
    .line 523
    const/4 v0, 0x0

    .line 524
    .local v0, extension:Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 527
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    add-int/lit8 v3, p3, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 529
    .local v1, typeFromExt:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 530
    :cond_0
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/providers/downloads/Helpers;->chooseExtensionFromMimeType(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 531
    if-eqz v0, :cond_4

    .line 532
    sget-boolean v2, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v2, :cond_1

    .line 533
    const-string v2, "DownloadManager"

    const-string v3, "substituting extension from type"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    .end local v1           #typeFromExt:Ljava/lang/String;
    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 543
    sget-boolean v2, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v2, :cond_2

    .line 544
    const-string v2, "DownloadManager"

    const-string v3, "keeping extension"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_2
    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 548
    :cond_3
    return-object v0

    .line 536
    .restart local v1       #typeFromExt:Ljava/lang/String;
    :cond_4
    sget-boolean v2, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v2, :cond_1

    .line 537
    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t find extension for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static chooseExtensionFromMimeType(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .parameter "mimeType"
    .parameter "useDefaults"

    .prologue
    .line 484
    const/4 v0, 0x0

    .line 485
    .local v0, extension:Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 486
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 487
    if-eqz v0, :cond_4

    .line 488
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v1, :cond_0

    .line 489
    const-string v1, "DownloadManager"

    const-string v2, "adding extension from type"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 498
    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 499
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "text/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 500
    const-string v1, "text/html"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 501
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v1, :cond_2

    .line 502
    const-string v1, "DownloadManager"

    const-string v2, "adding default html extension"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_2
    const-string v0, ".html"

    .line 518
    :cond_3
    :goto_1
    return-object v0

    .line 493
    :cond_4
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v1, :cond_1

    .line 494
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t find extension for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 505
    :cond_5
    if-eqz p1, :cond_3

    .line 506
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v1, :cond_6

    .line 507
    const-string v1, "DownloadManager"

    const-string v2, "adding default text extension"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_6
    const-string v0, ".txt"

    goto :goto_1

    .line 511
    :cond_7
    if-eqz p1, :cond_3

    .line 512
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v1, :cond_8

    .line 513
    const-string v1, "DownloadManager"

    const-string v2, "adding default binary extension"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_8
    const-string v0, ".bin"

    goto :goto_1
.end method

.method private static chooseFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 10
    .parameter "url"
    .parameter "hint"
    .parameter "contentDisposition"
    .parameter "contentLocation"
    .parameter "destination"

    .prologue
    const/16 v9, 0x3f

    const/16 v8, 0x2f

    .line 356
    const/4 v2, 0x0

    .line 359
    .local v2, filename:Ljava/lang/String;
    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    const-string v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 360
    sget-boolean v6, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v6, :cond_0

    .line 361
    const-string v6, "DownloadManager"

    const-string v7, "getting filename from hint"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_0
    invoke-virtual {p1, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/lit8 v3, v6, 0x1

    .line 364
    .local v3, index:I
    if-lez v3, :cond_c

    .line 365
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 372
    .end local v3           #index:I
    :cond_1
    :goto_0
    if-nez v2, :cond_3

    if-eqz p2, :cond_3

    .line 373
    invoke-static {p2}, Lcom/android/providers/downloads/Helpers;->parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 374
    if-eqz v2, :cond_3

    .line 375
    sget-boolean v6, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v6, :cond_2

    .line 376
    const-string v6, "DownloadManager"

    const-string v7, "getting filename from content-disposition"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_2
    invoke-virtual {v2, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/lit8 v3, v6, 0x1

    .line 379
    .restart local v3       #index:I
    if-lez v3, :cond_3

    .line 380
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 386
    .end local v3           #index:I
    :cond_3
    if-nez v2, :cond_5

    if-eqz p3, :cond_5

    .line 387
    invoke-static {p3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, decodedContentLocation:Ljava/lang/String;
    if-eqz v0, :cond_5

    const-string v6, "/"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_5

    .line 391
    sget-boolean v6, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v6, :cond_4

    .line 392
    const-string v6, "DownloadManager"

    const-string v7, "getting filename from content-location"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_4
    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/lit8 v3, v6, 0x1

    .line 395
    .restart local v3       #index:I
    if-lez v3, :cond_d

    .line 396
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 423
    .end local v0           #decodedContentLocation:Ljava/lang/String;
    .end local v3           #index:I
    :cond_5
    :goto_1
    if-nez v2, :cond_6

    .line 424
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 425
    .local v5, uri:Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/net/Uri;->isHierarchical()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 426
    const-string v6, "file"

    invoke-virtual {v5, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 427
    if-eqz v2, :cond_6

    .line 428
    invoke-virtual {v2, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/lit8 v3, v6, 0x1

    .line 429
    .restart local v3       #index:I
    if-lez v3, :cond_6

    .line 430
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 437
    .end local v3           #index:I
    .end local v5           #uri:Landroid/net/Uri;
    :cond_6
    if-nez v2, :cond_9

    .line 438
    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 439
    .local v1, decodedUrl:Ljava/lang/String;
    if-eqz v1, :cond_9

    .line 440
    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 442
    .local v4, queryIndex:I
    if-lez v4, :cond_7

    .line 443
    const/4 v6, 0x0

    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 445
    :cond_7
    const-string v6, "/"

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 446
    invoke-virtual {v1, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/lit8 v3, v6, 0x1

    .line 447
    .restart local v3       #index:I
    if-lez v3, :cond_9

    .line 448
    sget-boolean v6, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v6, :cond_8

    .line 449
    const-string v6, "DownloadManager"

    const-string v7, "getting filename from uri"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_8
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 459
    .end local v1           #decodedUrl:Ljava/lang/String;
    .end local v3           #index:I
    .end local v4           #queryIndex:I
    :cond_9
    if-nez v2, :cond_b

    .line 460
    sget-boolean v6, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v6, :cond_a

    .line 461
    const-string v6, "DownloadManager"

    const-string v7, "using default filename"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_a
    const-string v2, "downloadfile"

    .line 477
    :cond_b
    invoke-static {v2}, Lcom/android/providers/downloads/Helpers;->replaceInvalidVfatCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 479
    return-object v2

    .line 367
    .restart local v3       #index:I
    :cond_c
    move-object v2, p1

    goto/16 :goto_0

    .line 398
    .restart local v0       #decodedContentLocation:Ljava/lang/String;
    :cond_d
    move-object v2, v0

    goto :goto_1
.end method

.method private static chooseUniqueFilename(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8
    .parameter "destination"
    .parameter "filename"
    .parameter "extension"
    .parameter "recoveryDir"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    .line 553
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 554
    .local v0, fullFilename:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz p3, :cond_0

    const/4 v5, 0x1

    if-eq p0, v5, :cond_1

    const/4 v5, 0x5

    if-eq p0, v5, :cond_1

    const/4 v5, 0x2

    if-eq p0, v5, :cond_1

    const/4 v5, 0x3

    if-eq p0, v5, :cond_1

    :cond_0
    move-object v1, v0

    .line 582
    .end local v0           #fullFilename:Ljava/lang/String;
    .local v1, fullFilename:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 562
    .end local v1           #fullFilename:Ljava/lang/String;
    .restart local v0       #fullFilename:Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 577
    const/4 v4, 0x1

    .line 578
    .local v4, sequence:I
    const/4 v3, 0x1

    .local v3, magnitude:I
    :goto_1
    const v5, 0x3b9aca00

    if-ge v3, v5, :cond_5

    .line 579
    const/4 v2, 0x0

    .local v2, iteration:I
    :goto_2
    const/16 v5, 0x9

    if-ge v2, v5, :cond_4

    .line 580
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 581
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    move-object v1, v0

    .line 582
    .end local v0           #fullFilename:Ljava/lang/String;
    .restart local v1       #fullFilename:Ljava/lang/String;
    goto :goto_0

    .line 584
    .end local v1           #fullFilename:Ljava/lang/String;
    .restart local v0       #fullFilename:Ljava/lang/String;
    :cond_2
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v5, :cond_3

    .line 585
    const-string v5, "DownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file with sequence number "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " exists"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_3
    sget-object v5, Lcom/android/providers/downloads/Helpers;->sRandom:Ljava/util/Random;

    invoke-virtual {v5, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    .line 579
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 578
    :cond_4
    mul-int/lit8 v3, v3, 0xa

    goto :goto_1

    .line 590
    .end local v2           #iteration:I
    :cond_5
    new-instance v5, Lcom/android/providers/downloads/StopRequestException;

    const/16 v6, 0x1ec

    const-string v7, "failed to generate an unused filename on internal download storage"

    invoke-direct {v5, v6, v7}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v5
.end method

.method public static convertFeaturebyApn(I)Ljava/lang/String;
    .locals 1
    .parameter "apnType"

    .prologue
    .line 754
    const-string v0, "default"

    .line 756
    .local v0, feature:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 764
    :goto_0
    return-object v0

    .line 758
    :pswitch_0
    const-string v0, "enableFOTA"

    .line 759
    goto :goto_0

    .line 756
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public static ensureRouteToHost(Ljava/lang/String;ILandroid/content/Context;)Z
    .locals 6
    .parameter "uri"
    .parameter "apnType"
    .parameter "context"

    .prologue
    .line 726
    const/4 v3, 0x0

    .line 727
    .local v3, isLouteSuccessful:Z
    const-string v4, "connectivity"

    invoke-virtual {p2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 729
    .local v0, connMgr:Landroid/net/ConnectivityManager;
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 730
    .local v1, dest:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 733
    invoke-static {v1}, Lcom/android/providers/downloads/Helpers;->lookupHost(Ljava/lang/String;)I

    move-result v2

    .line 738
    .local v2, inetAddr:I
    const/4 v4, -0x1

    if-eq v4, v2, :cond_2

    .line 739
    invoke-virtual {v0, p1, v2}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 740
    const/4 v3, 0x1

    .line 750
    .end local v2           #inetAddr:I
    :cond_0
    :goto_0
    return v3

    .line 742
    .restart local v2       #inetAddr:I
    :cond_1
    const-string v4, "DownloadManager"

    const-string v5, "Fail to set routing table"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 744
    :cond_2
    const-string v4, "DownloadManager"

    const-string v5, "Fail to lookup host url to IP address"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static existRestriction(II)Z
    .locals 1
    .parameter "currRestriction"
    .parameter "checkedRestriction"

    .prologue
    .line 605
    and-int v0, p0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static generateSaveFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZLcom/android/providers/downloads/StorageManager;)Ljava/lang/String;
    .locals 13
    .parameter "context"
    .parameter "url"
    .parameter "hint"
    .parameter "contentDisposition"
    .parameter "contentLocation"
    .parameter "mimeType"
    .parameter "destination"
    .parameter "contentLength"
    .parameter "isPublicApi"
    .parameter "storageManager"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    .line 138
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v8, p6

    move-wide/from16 v9, p7

    move/from16 v11, p9

    move-object/from16 v12, p10

    invoke-static/range {v0 .. v12}, Lcom/android/providers/downloads/Helpers;->generateSaveFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIJZLcom/android/providers/downloads/StorageManager;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static generateSaveFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIJZLcom/android/providers/downloads/StorageManager;)Ljava/lang/String;
    .locals 16
    .parameter "context"
    .parameter "url"
    .parameter "hint"
    .parameter "contentDisposition"
    .parameter "contentLocation"
    .parameter "mimeType"
    .parameter "extras"
    .parameter "isMarketAP"
    .parameter "destination"
    .parameter "contentLength"
    .parameter "isPublicApi"
    .parameter "storageManager"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    .line 161
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move/from16 v3, p8

    move/from16 v4, p11

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/providers/downloads/Helpers;->checkCanHandleDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 163
    const/4 v14, 0x0

    .line 164
    .local v14, base:Ljava/io/File;
    const/4 v5, 0x4

    move/from16 v0, p8

    if-ne v0, v5, :cond_0

    .line 165
    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v15

    .line 183
    .local v15, path:Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p12

    move/from16 v1, p8

    move-wide/from16 v2, p9

    invoke-virtual {v0, v1, v15, v2, v3}, Lcom/android/providers/downloads/StorageManager;->verifySpace(ILjava/lang/String;J)V

    .line 184
    move-object/from16 v0, p5

    move/from16 v1, p8

    invoke-static {v15, v0, v1, v14}, Lcom/android/providers/downloads/Helpers;->getFullPath(Ljava/lang/String;Ljava/lang/String;ILjava/io/File;)Ljava/lang/String;

    move-result-object v15

    .line 193
    .end local v15           #path:Ljava/lang/String;
    :goto_1
    return-object v15

    .line 169
    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/android/providers/downloads/Helpers;->isContainUsrSpecificFullPath(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v11, p8

    move-wide/from16 v12, p9

    .line 170
    invoke-static/range {v5 .. v13}, Lcom/android/providers/downloads/Helpers;->getUsrSpecificFullPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)Ljava/lang/String;

    move-result-object v15

    goto :goto_1

    :cond_1
    move-object/from16 v5, p12

    move-object/from16 v6, p5

    move/from16 v7, p8

    move-wide/from16 v8, p9

    move/from16 v10, p7

    .line 177
    invoke-virtual/range {v5 .. v10}, Lcom/android/providers/downloads/StorageManager;->locateDestinationDirectory(Ljava/lang/String;IJZ)Ljava/io/File;

    move-result-object v14

    .line 180
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p8

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/providers/downloads/Helpers;->chooseFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    .restart local v15       #path:Ljava/lang/String;
    goto :goto_0
.end method

.method static getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "variableName"
    .parameter "defaultPath"

    .prologue
    .line 1135
    invoke-static {p0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1136
    .local v0, path:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static getDownloadUserCacheDirectory()Ljava/io/File;
    .locals 3

    .prologue
    .line 1142
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/providers/downloads/Helpers;->DATA_DIRECTORY:Ljava/io/File;

    const-string v2, "cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static getFullPath(Ljava/lang/String;Ljava/lang/String;ILjava/io/File;)Ljava/lang/String;
    .locals 7
    .parameter "filename"
    .parameter "mimeType"
    .parameter "destination"
    .parameter "base"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 198
    const/4 v1, 0x0

    .line 199
    .local v1, extension:Ljava/lang/String;
    const/16 v6, 0x2e

    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 200
    .local v0, dotIndex:I
    if-ltz v0, :cond_0

    const/16 v6, 0x2f

    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    if-ge v0, v6, :cond_3

    :cond_0
    move v2, v5

    .line 201
    .local v2, missingExtension:Z
    :goto_0
    const/4 v6, 0x4

    if-ne p2, v6, :cond_5

    .line 203
    if-eqz v2, :cond_4

    .line 204
    const-string v1, ""

    .line 220
    :goto_1
    const-string v4, "recovery"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 222
    .local v3, recoveryDir:Z
    if-eqz p3, :cond_1

    .line 223
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 226
    :cond_1
    sget-boolean v4, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v4, :cond_2

    .line 227
    const-string v4, "DownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "target file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_2
    invoke-static {p2, p0, v1, v3}, Lcom/android/providers/downloads/Helpers;->chooseUniqueFilename(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .end local v2           #missingExtension:Z
    .end local v3           #recoveryDir:Z
    :cond_3
    move v2, v4

    .line 200
    goto :goto_0

    .line 206
    .restart local v2       #missingExtension:Z
    :cond_4
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 207
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 212
    :cond_5
    if-eqz v2, :cond_6

    .line 213
    invoke-static {p1, v5}, Lcom/android/providers/downloads/Helpers;->chooseExtensionFromMimeType(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 215
    :cond_6
    invoke-static {p1, p2, p0, v0}, Lcom/android/providers/downloads/Helpers;->chooseExtensionFromFilename(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method

.method public static getNetworkAvailableType(Landroid/content/Context;)I
    .locals 9
    .parameter "context"

    .prologue
    const/4 v5, -0x1

    .line 640
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 642
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_2

    .line 643
    const-string v6, "DownloadManager"

    const-string v7, "couldn\'t get connectivity manager"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :cond_0
    sget-boolean v6, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v6, :cond_1

    .line 670
    const-string v6, "DownloadManager"

    const-string v7, "network is not available"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v4, v5

    .line 672
    :goto_0
    return v4

    .line 645
    :cond_2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v3

    .line 646
    .local v3, infos:[Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    .line 648
    const/4 v4, -0x1

    .line 649
    .local v4, type:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v6, v3

    if-ge v1, v6, :cond_4

    .line 650
    aget-object v2, v3, v1

    .line 651
    .local v2, info:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v6, v7, :cond_5

    .line 652
    sget-boolean v6, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v6, :cond_3

    .line 653
    const-string v6, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "network is available, type:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :cond_3
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    .line 661
    const/4 v6, 0x1

    if-eq v4, v6, :cond_4

    const/16 v6, 0x12

    if-ne v4, v6, :cond_5

    .line 665
    .end local v2           #info:Landroid/net/NetworkInfo;
    :cond_4
    if-eq v4, v5, :cond_0

    goto :goto_0

    .line 649
    .restart local v2       #info:Landroid/net/NetworkInfo;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static getProxyHost(Landroid/content/Context;)Lorg/apache/http/HttpHost;
    .locals 7
    .parameter "context"

    .prologue
    .line 679
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 681
    .local v1, connectivity:Landroid/net/ConnectivityManager;
    if-nez v1, :cond_2

    .line 682
    const-string v4, "DownloadManager"

    const-string v5, "couldn\'t get connectivity manager"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :cond_1
    :goto_1
    return-object v0

    .line 684
    :cond_2
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 685
    .local v3, info:Landroid/net/NetworkInfo;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/16 v5, 0x12

    if-ne v4, v5, :cond_4

    .line 687
    :cond_3
    sget-boolean v4, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v4, :cond_0

    .line 688
    const-string v4, "DownloadManager"

    const-string v5, "getProxyHost network type is wifi/usbnet"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 693
    :cond_4
    const/4 v0, 0x0

    .line 695
    .local v0, _host:Lorg/apache/http/HttpHost;
    if-nez v0, :cond_1

    .line 698
    invoke-static {p0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 699
    .local v2, host:Ljava/lang/String;
    sget-boolean v4, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v4, :cond_5

    .line 700
    const-string v4, "DownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getProxyHost host: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :cond_5
    if-eqz v2, :cond_0

    .line 703
    new-instance v0, Lorg/apache/http/HttpHost;

    .end local v0           #_host:Lorg/apache/http/HttpHost;
    invoke-static {p0}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v4

    const-string v5, "http"

    invoke-direct {v0, v2, v4, v5}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1
.end method

.method public static getUsrSpecificFullPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)Ljava/lang/String;
    .locals 12
    .parameter "context"
    .parameter "url"
    .parameter "hint"
    .parameter "contentDisposition"
    .parameter "contentLocation"
    .parameter "mimeType"
    .parameter "destination"
    .parameter "contentLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    .line 262
    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 263
    .local v5, index:I
    move-object v8, p2

    .line 264
    .local v8, temp:Ljava/lang/String;
    const/4 v9, 0x0

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v5

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 265
    .local v6, path:Ljava/lang/String;
    move-object/from16 v0, p4

    move/from16 v1, p6

    invoke-static {p1, p2, p3, v0, v1}, Lcom/android/providers/downloads/Helpers;->chooseFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 270
    .local v4, filename:Ljava/lang/String;
    const/4 v3, 0x0

    .line 274
    .local v3, extension:Ljava/lang/String;
    const/16 v9, 0x2e

    invoke-virtual {v4, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 277
    .local v2, dotIndex:I
    if-gez v2, :cond_1

    .line 278
    const/4 v9, 0x1

    move-object/from16 v0, p5

    invoke-static {v0, v9}, Lcom/android/providers/downloads/Helpers;->chooseExtensionFromMimeType(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 284
    :goto_0
    const-string v9, "recovery"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    .line 286
    .local v7, recoveryDir:Z
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 288
    sget-boolean v9, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v9, :cond_0

    .line 289
    const-string v9, "DownloadManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "target file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_0
    move/from16 v0, p6

    invoke-static {v0, v4, v3, v7}, Lcom/android/providers/downloads/Helpers;->chooseUniqueFilename(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 280
    .end local v7           #recoveryDir:Z
    :cond_1
    move-object/from16 v0, p5

    move/from16 v1, p6

    invoke-static {v0, v1, v4, v2}, Lcom/android/providers/downloads/Helpers;->chooseExtensionFromFilename(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 281
    const/4 v9, 0x0

    invoke-virtual {v4, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static guessRealMimeType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .parameter "url"
    .parameter "contentDisposition"
    .parameter "contentLocation"
    .parameter "destination"

    .prologue
    const/4 v2, 0x0

    .line 714
    invoke-static {p0, v2, p1, p2, p3}, Lcom/android/providers/downloads/Helpers;->chooseFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 715
    .local v0, filename_temp:Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 717
    .local v1, index:I
    if-lez v1, :cond_0

    .line 718
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 722
    :cond_0
    return-object v2
.end method

.method public static isContainUsrSpecificFullPath(Ljava/lang/String;)Z
    .locals 5
    .parameter "hint"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 234
    if-nez p0, :cond_1

    .line 250
    :cond_0
    :goto_0
    return v2

    .line 235
    :cond_1
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    .line 237
    const/4 v0, 0x1

    .line 238
    .local v0, match_cnt:I
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 240
    .local v1, start:I
    :goto_1
    if-le v0, v3, :cond_2

    move v2, v3

    .line 241
    goto :goto_0

    .line 242
    :cond_2
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 243
    if-ltz v1, :cond_0

    .line 246
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v1, v4

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isExternalStorage(I)Z
    .locals 1
    .parameter "nDest"

    .prologue
    .line 92
    sparse-switch p0, :sswitch_data_0

    .line 98
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 96
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 92
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method static isFilenameValid(Ljava/lang/String;Ljava/io/File;)Z
    .locals 2
    .parameter "filename"
    .parameter "downloadsDataDir"

    .prologue
    .line 792
    const-string v0, "/+"

    const-string v1, "/"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 793
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNeedTrimDB(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 772
    const/4 v6, 0x0

    .line 773
    .local v6, count:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v9

    const-string v3, "status >= \'200\'"

    const/4 v4, 0x0

    const-string v5, "lastmod"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 778
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 783
    :goto_0
    return v9

    .line 781
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 782
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 783
    const/16 v0, 0x258

    if-lt v6, v0, :cond_1

    move v0, v8

    :goto_1
    move v9, v0

    goto :goto_0

    :cond_1
    move v0, v9

    goto :goto_1
.end method

.method public static isNetworkAvailable(Landroid/content/Context;I)Z
    .locals 1
    .parameter "context"
    .parameter "restriction"

    .prologue
    .line 609
    invoke-static {p0}, Lcom/android/providers/downloads/Helpers;->getNetworkAvailableType(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/providers/downloads/Helpers;->isNetworkAvailableForType(II)Z

    move-result v0

    return v0
.end method

.method public static isNetworkAvailable(Lcom/android/providers/downloads/SystemFacade;I)Z
    .locals 2
    .parameter "system"
    .parameter "uid"

    .prologue
    .line 598
    invoke-interface {p0, p1}, Lcom/android/providers/downloads/SystemFacade;->getActiveNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 599
    .local v0, info:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isNetworkAvailableForType(II)Z
    .locals 5
    .parameter "type"
    .parameter "restriction"

    .prologue
    const/16 v4, 0x12

    const/16 v3, 0x10

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 613
    invoke-static {p1, v0}, Lcom/android/providers/downloads/Helpers;->existRestriction(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 614
    invoke-static {p1, v3}, Lcom/android/providers/downloads/Helpers;->existRestriction(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 615
    if-eq p0, v0, :cond_0

    if-ne p0, v4, :cond_1

    .line 631
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 618
    goto :goto_0

    .line 620
    :cond_2
    if-eq p0, v0, :cond_0

    move v0, v1

    .line 623
    goto :goto_0

    .line 625
    :cond_3
    invoke-static {p1, v3}, Lcom/android/providers/downloads/Helpers;->existRestriction(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 626
    if-eq p0, v4, :cond_0

    move v0, v1

    .line 629
    goto :goto_0

    .line 631
    :cond_4
    const/4 v2, -0x1

    if-gt p0, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static lookupHost(Ljava/lang/String;)I
    .locals 6
    .parameter "hostname"

    .prologue
    .line 1119
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1125
    .local v3, inetAddress:Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 1126
    .local v1, addrBytes:[B
    const/4 v4, 0x3

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    const/4 v5, 0x2

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/4 v5, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const/4 v5, 0x0

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    or-int v0, v4, v5

    .line 1130
    .end local v1           #addrBytes:[B
    .end local v3           #inetAddress:Ljava/net/InetAddress;
    :goto_0
    return v0

    .line 1120
    :catch_0
    move-exception v2

    .line 1121
    .local v2, e:Ljava/net/UnknownHostException;
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "contentDisposition"

    .prologue
    .line 111
    :try_start_0
    sget-object v1, Lcom/android/providers/downloads/Helpers;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 112
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 118
    .end local v0           #m:Ljava/util/regex/Matcher;
    :goto_0
    return-object v1

    .line 115
    :catch_0
    move-exception v1

    .line 118
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static parseExpression(Lcom/android/providers/downloads/Helpers$Lexer;)V
    .locals 2
    .parameter "lexer"

    .prologue
    .line 830
    :goto_0
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->currentToken()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 831
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->advance()V

    .line 832
    invoke-static {p0}, Lcom/android/providers/downloads/Helpers;->parseExpression(Lcom/android/providers/downloads/Helpers$Lexer;)V

    .line 833
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->currentToken()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 834
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "syntax error, unmatched parenthese"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 836
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->advance()V

    .line 841
    :goto_1
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->currentToken()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 846
    return-void

    .line 839
    :cond_1
    invoke-static {p0}, Lcom/android/providers/downloads/Helpers;->parseStatement(Lcom/android/providers/downloads/Helpers$Lexer;)V

    goto :goto_1

    .line 844
    :cond_2
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->advance()V

    goto :goto_0
.end method

.method private static parseStatement(Lcom/android/providers/downloads/Helpers$Lexer;)V
    .locals 2
    .parameter "lexer"

    .prologue
    .line 852
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->currentToken()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 853
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "syntax error, expected column name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 855
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->advance()V

    .line 858
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->currentToken()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 859
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->advance()V

    .line 860
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->currentToken()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    .line 861
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "syntax error, expected quoted string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 863
    :cond_1
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->advance()V

    .line 874
    :goto_0
    return-void

    .line 868
    :cond_2
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->currentToken()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4

    .line 869
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->advance()V

    .line 870
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->currentToken()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    .line 871
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "syntax error, expected NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 873
    :cond_3
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->advance()V

    goto :goto_0

    .line 878
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "syntax error after column name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static replaceInvalidVfatCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .parameter "filename"

    .prologue
    .line 1068
    const/4 v12, 0x0

    .line 1069
    .local v12, START_CTRLCODE:C
    const/16 v6, 0x1f

    .line 1070
    .local v6, END_CTRLCODE:C
    const/16 v10, 0x22

    .line 1071
    .local v10, QUOTEDBL:C
    const/16 v1, 0x2a

    .line 1072
    .local v1, ASTERISK:C
    const/16 v11, 0x2f

    .line 1073
    .local v11, SLASH:C
    const/16 v4, 0x3a

    .line 1074
    .local v4, COLON:C
    const/16 v8, 0x3c

    .line 1075
    .local v8, LESS:C
    const/16 v7, 0x3e

    .line 1076
    .local v7, GREATER:C
    const/16 v9, 0x3f

    .line 1077
    .local v9, QUESTION:C
    const/16 v2, 0x5c

    .line 1078
    .local v2, BACKSLASH:C
    const/16 v3, 0x7c

    .line 1079
    .local v3, BAR:C
    const/16 v5, 0x7f

    .line 1080
    .local v5, DEL:C
    const/16 v13, 0x5f

    .line 1082
    .local v13, UNDERSCORE:C
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    .line 1084
    .local v17, sb:Ljava/lang/StringBuffer;
    const/16 v16, 0x0

    .line 1085
    .local v16, isRepetition:Z
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v15, v0, :cond_4

    .line 1086
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .line 1087
    .local v14, ch:C
    if-ltz v14, :cond_0

    const/16 v18, 0x1f

    move/from16 v0, v18

    if-le v14, v0, :cond_1

    :cond_0
    const/16 v18, 0x22

    move/from16 v0, v18

    if-eq v14, v0, :cond_1

    const/16 v18, 0x2a

    move/from16 v0, v18

    if-eq v14, v0, :cond_1

    const/16 v18, 0x2f

    move/from16 v0, v18

    if-eq v14, v0, :cond_1

    const/16 v18, 0x3a

    move/from16 v0, v18

    if-eq v14, v0, :cond_1

    const/16 v18, 0x3c

    move/from16 v0, v18

    if-eq v14, v0, :cond_1

    const/16 v18, 0x3e

    move/from16 v0, v18

    if-eq v14, v0, :cond_1

    const/16 v18, 0x3f

    move/from16 v0, v18

    if-eq v14, v0, :cond_1

    const/16 v18, 0x5c

    move/from16 v0, v18

    if-eq v14, v0, :cond_1

    const/16 v18, 0x7c

    move/from16 v0, v18

    if-eq v14, v0, :cond_1

    const/16 v18, 0x7f

    move/from16 v0, v18

    if-ne v14, v0, :cond_3

    .line 1099
    :cond_1
    if-nez v16, :cond_2

    .line 1100
    const/16 v18, 0x5f

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1101
    const/16 v16, 0x1

    .line 1085
    :cond_2
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 1104
    :cond_3
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1105
    const/16 v16, 0x0

    goto :goto_1

    .line 1108
    .end local v14           #ch:C
    :cond_4
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    return-object v18
.end method

.method public static validateSelection(Ljava/lang/String;Ljava/util/Set;)V
    .locals 5
    .parameter "selection"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 806
    .local p1, allowedColumns:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 823
    :cond_0
    return-void

    .line 809
    :cond_1
    new-instance v1, Lcom/android/providers/downloads/Helpers$Lexer;

    invoke-direct {v1, p0, p1}, Lcom/android/providers/downloads/Helpers$Lexer;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    .line 810
    .local v1, lexer:Lcom/android/providers/downloads/Helpers$Lexer;
    invoke-static {v1}, Lcom/android/providers/downloads/Helpers;->parseExpression(Lcom/android/providers/downloads/Helpers$Lexer;)V

    .line 811
    invoke-virtual {v1}, Lcom/android/providers/downloads/Helpers$Lexer;->currentToken()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    .line 812
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "syntax error"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 814
    .end local v1           #lexer:Lcom/android/providers/downloads/Helpers$Lexer;
    :catch_0
    move-exception v0

    .line 815
    .local v0, ex:Ljava/lang/RuntimeException;
    sget-boolean v2, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v2, :cond_2

    .line 816
    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid selection ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] triggered "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    :cond_2
    throw v0
.end method
