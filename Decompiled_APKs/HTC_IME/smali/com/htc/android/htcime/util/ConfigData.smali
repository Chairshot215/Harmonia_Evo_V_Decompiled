.class public Lcom/htc/android/htcime/util/ConfigData;
.super Ljava/lang/Object;
.source "ConfigData.java"


# static fields
.field public static mCapitalize:[B

.field public static mLSIPByType:[B

.field public static mLWCLViByType:[Z

.field public static mPSIPByType:[B

.field public static mPWCLViByType:[Z


# instance fields
.field private final DUMPLOG:Z

.field private final MAXVALUEARRAY:I

.field private final TAG:Ljava/lang/String;

.field private mIsCSLoadDefault:Z

.field vibrateThreshold:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x1f

    .line 49
    new-array v0, v1, [B

    sput-object v0, Lcom/htc/android/htcime/util/ConfigData;->mPSIPByType:[B

    .line 50
    new-array v0, v1, [Z

    sput-object v0, Lcom/htc/android/htcime/util/ConfigData;->mPWCLViByType:[Z

    .line 52
    new-array v0, v1, [B

    sput-object v0, Lcom/htc/android/htcime/util/ConfigData;->mLSIPByType:[B

    .line 53
    new-array v0, v1, [Z

    sput-object v0, Lcom/htc/android/htcime/util/ConfigData;->mLWCLViByType:[Z

    .line 55
    new-array v0, v1, [B

    sput-object v0, Lcom/htc/android/htcime/util/ConfigData;->mCapitalize:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "ConfigData"

    iput-object v0, p0, Lcom/htc/android/htcime/util/ConfigData;->TAG:Ljava/lang/String;

    .line 44
    iput-boolean v1, p0, Lcom/htc/android/htcime/util/ConfigData;->DUMPLOG:Z

    .line 47
    iput-boolean v1, p0, Lcom/htc/android/htcime/util/ConfigData;->mIsCSLoadDefault:Z

    .line 57
    const/16 v0, 0x1f

    iput v0, p0, Lcom/htc/android/htcime/util/ConfigData;->MAXVALUEARRAY:I

    .line 59
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/android/htcime/util/ConfigData;->vibrateThreshold:[I

    .line 65
    return-void

    .line 59
    nop

    :array_0
    .array-data 0x4
        0x32t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x96t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
    .end array-data
.end method

.method private doFirstTutorial()Z
    .locals 5

    .prologue
    .line 356
    const/4 v0, 0x0

    .line 357
    .local v0, ret:Z
    invoke-direct {p0}, Lcom/htc/android/htcime/util/ConfigData;->isMFGBuild()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/htc/android/htcime/HTCIMEService;->fetchHtcSenseVer()F

    move-result v1

    float-to-double v1, v1

    const-wide/high16 v3, 0x4008

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_0

    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->sFeature_Tablet:Z

    if-nez v1, :cond_0

    .line 359
    const/4 v0, 0x1

    .line 361
    :cond_0
    return v0
.end method

.method private getValues(Ljava/lang/String;)I
    .locals 3
    .parameter "input"

    .prologue
    .line 707
    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 708
    .local v0, retStr:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private getValues(Ljava/lang/String;[I)I
    .locals 5
    .parameter "input"
    .parameter "output"

    .prologue
    .line 720
    const/4 v3, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 721
    .local v0, handleStr:Ljava/lang/String;
    const-string v3, "\\|"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 724
    .local v2, parsedStr:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 725
    aget-object v3, v2, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, p2, v1

    .line 724
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 729
    :cond_0
    array-length v3, v2

    return v3
.end method

.method private initBiasCorrection(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 7
    .parameter "htcIMM"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 588
    invoke-virtual {p1}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 590
    .local v0, res:Landroid/content/res/Resources;
    sget-object v1, Lcom/htc/android/htcime/HTCIMMData;->KEYBOARD_P_BIAS_DEF:[F

    const v2, 0x7f0c001e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    aput v2, v1, v3

    .line 591
    sget-object v1, Lcom/htc/android/htcime/HTCIMMData;->KEYBOARD_P_BIAS_DEF:[F

    const v2, 0x7f0c001f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    aput v2, v1, v4

    .line 592
    sget-object v1, Lcom/htc/android/htcime/HTCIMMData;->KEYBOARD_P_BIAS_DEF:[F

    const v2, 0x7f0c0020

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    aput v2, v1, v5

    .line 593
    sget-object v1, Lcom/htc/android/htcime/HTCIMMData;->KEYBOARD_P_BIAS_DEF:[F

    const v2, 0x7f0c0021

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    aput v2, v1, v6

    .line 595
    sget-object v1, Lcom/htc/android/htcime/HTCIMMData;->KEYBOARD_L_BIAS_DEF:[F

    const v2, 0x7f0c000c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    aput v2, v1, v3

    .line 596
    sget-object v1, Lcom/htc/android/htcime/HTCIMMData;->KEYBOARD_L_BIAS_DEF:[F

    const v2, 0x7f0c000d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    aput v2, v1, v4

    .line 597
    sget-object v1, Lcom/htc/android/htcime/HTCIMMData;->KEYBOARD_L_BIAS_DEF:[F

    const v2, 0x7f0c000e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    aput v2, v1, v5

    .line 598
    sget-object v1, Lcom/htc/android/htcime/HTCIMMData;->KEYBOARD_L_BIAS_DEF:[F

    const v2, 0x7f0c000f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    aput v2, v1, v6

    .line 599
    return-void
.end method

.method private isMFGBuild()Z
    .locals 2

    .prologue
    .line 364
    const-string v0, "ro.bootmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "factory2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private loadContenSensitiveValue(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 9
    .parameter "htcIMM"

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 405
    invoke-virtual {p1}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v0

    .line 407
    .local v0, immData:Lcom/htc/android/htcime/HTCIMMData;
    const/16 v1, 0x1f

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/htc/android/htcime/HTCIMMData;->mXT9ModuleByType:[I

    .line 409
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->sFeature_XT9ACmodule:Z

    if-eqz v1, :cond_0

    .line 411
    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMData;->mXT9ModuleByType:[I

    aput v4, v1, v4

    .line 412
    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMData;->mXT9ModuleByType:[I

    aput v4, v1, v5

    .line 413
    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMData;->mXT9ModuleByType:[I

    aput v7, v1, v6

    .line 414
    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMData;->mXT9ModuleByType:[I

    const/4 v2, 0x3

    aput v4, v1, v2

    .line 415
    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMData;->mXT9ModuleByType:[I

    const/4 v2, 0x4

    aput v4, v1, v2

    .line 416
    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMData;->mXT9ModuleByType:[I

    const/4 v2, 0x5

    aput v7, v1, v2

    .line 417
    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMData;->mXT9ModuleByType:[I

    aput v4, v1, v8

    .line 418
    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMData;->mXT9ModuleByType:[I

    aput v4, v1, v7

    .line 419
    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMData;->mXT9ModuleByType:[I

    const/16 v2, 0x8

    aput v4, v1, v2

    .line 420
    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMData;->mXT9ModuleByType:[I

    const/16 v2, 0x9

    aput v4, v1, v2

    .line 421
    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMData;->mXT9ModuleByType:[I

    const/16 v2, 0xa

    aput v4, v1, v2

    .line 422
    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMData;->mXT9ModuleByType:[I

    const/16 v2, 0xb

    aput v4, v1, v2

    .line 423
    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMData;->mXT9ModuleByType:[I

    const/16 v2, 0xc

    aput v4, v1, v2

    .line 424
    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMData;->mXT9ModuleByType:[I

    const/16 v2, 0xd

    aput v4, v1, v2

    .line 425
    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMData;->mXT9ModuleByType:[I

    const/16 v2, 0xe

    aput v4, v1, v2

    .line 426
    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMData;->mXT9ModuleByType:[I

    const/16 v2, 0xf

    aput v4, v1, v2

    .line 427
    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMData;->mXT9ModuleByType:[I

    const/16 v2, 0x10

    aput v4, v1, v2

    .line 428
    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMData;->mXT9ModuleByType:[I

    const/16 v2, 0x11

    aput v7, v1, v2

    .line 429
    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMData;->mXT9ModuleByType:[I

    const/16 v2, 0x12

    aput v4, v1, v2

    .line 430
    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMData;->mXT9ModuleByType:[I

    const/16 v2, 0x13

    aput v4, v1, v2

    .line 431
    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMData;->mXT9ModuleByType:[I

    const/16 v2, 0x14

    aput v4, v1, v2

    .line 432
    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMData;->mXT9ModuleByType:[I

    const/16 v2, 0x15

    aput v7, v1, v2

    .line 433
    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMData;->mXT9ModuleByType:[I

    const/16 v2, 0x16

    aput v4, v1, v2

    .line 434
    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMData;->mXT9ModuleByType:[I

    const/16 v2, 0x17

    aput v4, v1, v2

    .line 435
    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMData;->mXT9ModuleByType:[I

    const/16 v2, 0x18

    aput v4, v1, v2

    .line 436
    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMData;->mXT9ModuleByType:[I

    const/16 v2, 0x19

    aput v4, v1, v2

    .line 437
    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMData;->mXT9ModuleByType:[I

    const/16 v2, 0x1a

    aput v4, v1, v2

    .line 438
    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMData;->mXT9ModuleByType:[I

    const/16 v2, 0x1b

    aput v4, v1, v2

    .line 442
    :cond_0
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mPSIPByType:[B

    aput-byte v6, v1, v4

    .line 443
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mPSIPByType:[B

    aput-byte v6, v1, v5

    .line 444
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mPSIPByType:[B

    aput-byte v6, v1, v6

    .line 445
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mPSIPByType:[B

    const/4 v2, 0x3

    aput-byte v6, v1, v2

    .line 446
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mPSIPByType:[B

    const/4 v2, 0x4

    aput-byte v6, v1, v2

    .line 447
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mPSIPByType:[B

    const/4 v2, 0x5

    aput-byte v6, v1, v2

    .line 448
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mPSIPByType:[B

    aput-byte v6, v1, v8

    .line 449
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mPSIPByType:[B

    aput-byte v6, v1, v7

    .line 450
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mPSIPByType:[B

    const/16 v2, 0x8

    aput-byte v6, v1, v2

    .line 451
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mPSIPByType:[B

    const/16 v2, 0x9

    aput-byte v6, v1, v2

    .line 452
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mPSIPByType:[B

    const/16 v2, 0xa

    const/4 v3, 0x4

    aput-byte v3, v1, v2

    .line 453
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mPSIPByType:[B

    const/16 v2, 0xb

    aput-byte v6, v1, v2

    .line 454
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mPSIPByType:[B

    const/16 v2, 0xd

    aput-byte v6, v1, v2

    .line 455
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mPSIPByType:[B

    const/16 v2, 0xe

    aput-byte v6, v1, v2

    .line 456
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mPSIPByType:[B

    const/16 v2, 0xf

    aput-byte v6, v1, v2

    .line 457
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mPSIPByType:[B

    const/16 v2, 0x10

    aput-byte v6, v1, v2

    .line 458
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mPSIPByType:[B

    const/16 v2, 0x11

    aput-byte v6, v1, v2

    .line 459
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mPSIPByType:[B

    const/16 v2, 0x12

    aput-byte v6, v1, v2

    .line 460
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mPSIPByType:[B

    const/16 v2, 0x14

    aput-byte v8, v1, v2

    .line 461
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mPSIPByType:[B

    const/16 v2, 0x15

    aput-byte v6, v1, v2

    .line 462
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mPSIPByType:[B

    const/16 v2, 0x16

    aput-byte v8, v1, v2

    .line 463
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mPSIPByType:[B

    const/16 v2, 0x17

    const/4 v3, 0x3

    aput-byte v3, v1, v2

    .line 464
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mPSIPByType:[B

    const/16 v2, 0x19

    aput-byte v8, v1, v2

    .line 465
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mPSIPByType:[B

    const/16 v2, 0x1a

    aput-byte v6, v1, v2

    .line 468
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mPWCLViByType:[Z

    aput-boolean v5, v1, v4

    .line 469
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mPWCLViByType:[Z

    aput-boolean v5, v1, v5

    .line 470
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mPWCLViByType:[Z

    aput-boolean v5, v1, v6

    .line 471
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mPWCLViByType:[Z

    const/4 v2, 0x3

    aput-boolean v5, v1, v2

    .line 472
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mPWCLViByType:[Z

    const/4 v2, 0x4

    aput-boolean v5, v1, v2

    .line 473
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mPWCLViByType:[Z

    const/4 v2, 0x5

    aput-boolean v5, v1, v2

    .line 474
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mPWCLViByType:[Z

    aput-boolean v5, v1, v8

    .line 475
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mPWCLViByType:[Z

    aput-boolean v5, v1, v7

    .line 476
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mPWCLViByType:[Z

    const/16 v2, 0x8

    aput-boolean v5, v1, v2

    .line 477
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mPWCLViByType:[Z

    const/16 v2, 0x9

    aput-boolean v5, v1, v2

    .line 478
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mPWCLViByType:[Z

    const/16 v2, 0xa

    aput-boolean v4, v1, v2

    .line 479
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mPWCLViByType:[Z

    const/16 v2, 0xb

    aput-boolean v4, v1, v2

    .line 480
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mPWCLViByType:[Z

    const/16 v2, 0xd

    aput-boolean v4, v1, v2

    .line 481
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mPWCLViByType:[Z

    const/16 v2, 0xe

    aput-boolean v4, v1, v2

    .line 482
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mPWCLViByType:[Z

    const/16 v2, 0xf

    aput-boolean v4, v1, v2

    .line 483
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mPWCLViByType:[Z

    const/16 v2, 0x10

    aput-boolean v4, v1, v2

    .line 484
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mPWCLViByType:[Z

    const/16 v2, 0x11

    aput-boolean v5, v1, v2

    .line 485
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mPWCLViByType:[Z

    const/16 v2, 0x12

    aput-boolean v4, v1, v2

    .line 486
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mPWCLViByType:[Z

    const/16 v2, 0x14

    aput-boolean v5, v1, v2

    .line 487
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mPWCLViByType:[Z

    const/16 v2, 0x15

    aput-boolean v5, v1, v2

    .line 488
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mPWCLViByType:[Z

    const/16 v2, 0x16

    aput-boolean v5, v1, v2

    .line 489
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mPWCLViByType:[Z

    const/16 v2, 0x17

    aput-boolean v4, v1, v2

    .line 490
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mPWCLViByType:[Z

    const/16 v2, 0x19

    aput-boolean v5, v1, v2

    .line 491
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mPWCLViByType:[Z

    const/16 v2, 0x1a

    aput-boolean v5, v1, v2

    .line 493
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mLSIPByType:[B

    aput-byte v4, v1, v4

    .line 494
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mLSIPByType:[B

    aput-byte v4, v1, v5

    .line 495
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mLSIPByType:[B

    aput-byte v4, v1, v6

    .line 496
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mLSIPByType:[B

    const/4 v2, 0x3

    aput-byte v4, v1, v2

    .line 497
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mLSIPByType:[B

    const/4 v2, 0x4

    aput-byte v4, v1, v2

    .line 498
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mLSIPByType:[B

    const/4 v2, 0x5

    aput-byte v4, v1, v2

    .line 499
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mLSIPByType:[B

    aput-byte v4, v1, v8

    .line 500
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mLSIPByType:[B

    aput-byte v4, v1, v7

    .line 501
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mLSIPByType:[B

    const/16 v2, 0x8

    aput-byte v4, v1, v2

    .line 502
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mLSIPByType:[B

    const/16 v2, 0x9

    aput-byte v4, v1, v2

    .line 503
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mLSIPByType:[B

    const/16 v2, 0xa

    aput-byte v6, v1, v2

    .line 504
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mLSIPByType:[B

    const/16 v2, 0xb

    aput-byte v4, v1, v2

    .line 505
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mLSIPByType:[B

    const/16 v2, 0xd

    aput-byte v4, v1, v2

    .line 506
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mLSIPByType:[B

    const/16 v2, 0xe

    aput-byte v4, v1, v2

    .line 507
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mLSIPByType:[B

    const/16 v2, 0xf

    aput-byte v4, v1, v2

    .line 508
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mLSIPByType:[B

    const/16 v2, 0x10

    aput-byte v4, v1, v2

    .line 509
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mLSIPByType:[B

    const/16 v2, 0x11

    aput-byte v4, v1, v2

    .line 510
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mLSIPByType:[B

    const/16 v2, 0x12

    aput-byte v4, v1, v2

    .line 511
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mLSIPByType:[B

    const/16 v2, 0x15

    aput-byte v4, v1, v2

    .line 512
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mLSIPByType:[B

    const/16 v2, 0x17

    aput-byte v5, v1, v2

    .line 513
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mLSIPByType:[B

    const/16 v2, 0x1a

    aput-byte v4, v1, v2

    .line 515
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mLWCLViByType:[Z

    aput-boolean v5, v1, v4

    .line 516
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mLWCLViByType:[Z

    aput-boolean v5, v1, v5

    .line 517
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mLWCLViByType:[Z

    aput-boolean v5, v1, v6

    .line 518
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mLWCLViByType:[Z

    const/4 v2, 0x3

    aput-boolean v5, v1, v2

    .line 519
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mLWCLViByType:[Z

    const/4 v2, 0x4

    aput-boolean v5, v1, v2

    .line 520
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mLWCLViByType:[Z

    const/4 v2, 0x5

    aput-boolean v5, v1, v2

    .line 521
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mLWCLViByType:[Z

    aput-boolean v5, v1, v8

    .line 522
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mLWCLViByType:[Z

    aput-boolean v5, v1, v7

    .line 523
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mLWCLViByType:[Z

    const/16 v2, 0x8

    aput-boolean v5, v1, v2

    .line 524
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mLWCLViByType:[Z

    const/16 v2, 0x9

    aput-boolean v5, v1, v2

    .line 525
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mLWCLViByType:[Z

    const/16 v2, 0xa

    aput-boolean v4, v1, v2

    .line 526
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mLWCLViByType:[Z

    const/16 v2, 0xb

    aput-boolean v4, v1, v2

    .line 527
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mLWCLViByType:[Z

    const/16 v2, 0xd

    aput-boolean v4, v1, v2

    .line 528
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mLWCLViByType:[Z

    const/16 v2, 0xe

    aput-boolean v4, v1, v2

    .line 529
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mLWCLViByType:[Z

    const/16 v2, 0xf

    aput-boolean v4, v1, v2

    .line 530
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mLWCLViByType:[Z

    const/16 v2, 0x10

    aput-boolean v4, v1, v2

    .line 531
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mLWCLViByType:[Z

    const/16 v2, 0x11

    aput-boolean v5, v1, v2

    .line 532
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mLWCLViByType:[Z

    const/16 v2, 0x12

    aput-boolean v4, v1, v2

    .line 533
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mLWCLViByType:[Z

    const/16 v2, 0x15

    aput-boolean v5, v1, v2

    .line 534
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mLWCLViByType:[Z

    const/16 v2, 0x17

    aput-boolean v4, v1, v2

    .line 535
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mLWCLViByType:[Z

    const/16 v2, 0x1a

    aput-boolean v5, v1, v2

    .line 537
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mCapitalize:[B

    aput-byte v4, v1, v4

    .line 538
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mCapitalize:[B

    aput-byte v5, v1, v5

    .line 539
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mCapitalize:[B

    aput-byte v4, v1, v6

    .line 540
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mCapitalize:[B

    const/4 v2, 0x3

    aput-byte v4, v1, v2

    .line 541
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mCapitalize:[B

    const/4 v2, 0x4

    aput-byte v4, v1, v2

    .line 542
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mCapitalize:[B

    const/4 v2, 0x5

    aput-byte v4, v1, v2

    .line 543
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mCapitalize:[B

    aput-byte v5, v1, v8

    .line 544
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mCapitalize:[B

    aput-byte v5, v1, v7

    .line 545
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mCapitalize:[B

    const/16 v2, 0x8

    aput-byte v6, v1, v2

    .line 546
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mCapitalize:[B

    const/16 v2, 0x9

    aput-byte v6, v1, v2

    .line 547
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mCapitalize:[B

    const/16 v2, 0xa

    aput-byte v4, v1, v2

    .line 548
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mCapitalize:[B

    const/16 v2, 0xb

    aput-byte v4, v1, v2

    .line 549
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mCapitalize:[B

    const/16 v2, 0xd

    aput-byte v4, v1, v2

    .line 550
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mCapitalize:[B

    const/16 v2, 0xe

    aput-byte v4, v1, v2

    .line 551
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mCapitalize:[B

    const/16 v2, 0xf

    aput-byte v4, v1, v2

    .line 552
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mCapitalize:[B

    const/16 v2, 0x10

    aput-byte v4, v1, v2

    .line 553
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mCapitalize:[B

    const/16 v2, 0x11

    aput-byte v4, v1, v2

    .line 554
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mCapitalize:[B

    const/16 v2, 0x12

    aput-byte v4, v1, v2

    .line 555
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mCapitalize:[B

    const/16 v2, 0x14

    aput-byte v4, v1, v2

    .line 556
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mCapitalize:[B

    const/16 v2, 0x15

    aput-byte v4, v1, v2

    .line 557
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mCapitalize:[B

    const/16 v2, 0x16

    aput-byte v4, v1, v2

    .line 558
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mCapitalize:[B

    const/16 v2, 0x17

    aput-byte v4, v1, v2

    .line 559
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mCapitalize:[B

    const/16 v2, 0x19

    aput-byte v4, v1, v2

    .line 560
    sget-object v1, Lcom/htc/android/htcime/util/ConfigData;->mCapitalize:[B

    const/16 v2, 0x1a

    aput-byte v5, v1, v2

    .line 561
    return-void
.end method

.method private writeALineToFile(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "out"
    .parameter "LValue"
    .parameter "RValue"

    .prologue
    .line 691
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 692
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 697
    :goto_0
    return-void

    .line 694
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private writeSingleSettings(Ljava/io/BufferedWriter;Ljava/lang/String;B)V
    .locals 3
    .parameter "out"
    .parameter "LValue"
    .parameter "RValue"

    .prologue
    .line 662
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 664
    .local v0, RValueStr:Ljava/lang/String;
    invoke-direct {p0, p1, p2, v0}, Lcom/htc/android/htcime/util/ConfigData;->writeALineToFile(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    return-void
.end method

.method private writeSingleSettings(Ljava/io/BufferedWriter;Ljava/lang/String;Z)V
    .locals 4
    .parameter "out"
    .parameter "LValue"
    .parameter "RValue"

    .prologue
    const/4 v1, 0x1

    .line 675
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-ne p3, v1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 677
    .local v0, RValueStr:Ljava/lang/String;
    invoke-direct {p0, p1, p2, v0}, Lcom/htc/android/htcime/util/ConfigData;->writeALineToFile(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    return-void

    .line 675
    .end local v0           #RValueStr:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private writeSingleSettings(Ljava/io/BufferedWriter;Ljava/lang/String;[B)V
    .locals 5
    .parameter "out"
    .parameter "LValue"
    .parameter "RValue"

    .prologue
    .line 645
    const-string v0, "["

    .line 646
    .local v0, RValueStr:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_0

    .line 647
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 646
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 649
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 651
    invoke-direct {p0, p1, p2, v0}, Lcom/htc/android/htcime/util/ConfigData;->writeALineToFile(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    return-void
.end method

.method private writeSingleSettings(Ljava/io/BufferedWriter;Ljava/lang/String;[Z)V
    .locals 6
    .parameter "out"
    .parameter "LValue"
    .parameter "RValue"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 628
    const-string v0, "["

    .line 629
    .local v0, RValueStr:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_1

    .line 630
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-boolean v2, p3, v1

    if-ne v2, v3, :cond_0

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "|"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 629
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v2, v4

    .line 630
    goto :goto_1

    .line 632
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 634
    invoke-direct {p0, p1, p2, v0}, Lcom/htc/android/htcime/util/ConfigData;->writeALineToFile(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    return-void
.end method


# virtual methods
.method public initSettings(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 7
    .parameter "htcIMM"

    .prologue
    const/4 v6, -0x1

    .line 373
    invoke-virtual {p1}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/util/ConfigData;->loadFeaturesConfig(Landroid/content/Context;)V

    .line 374
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/util/ConfigData;->loadConstantValue(Lcom/htc/android/htcime/HTCIMEService;)V

    .line 375
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/util/ConfigData;->loadContenSensitiveValue(Lcom/htc/android/htcime/HTCIMEService;)V

    .line 377
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/util/ConfigData;->initBiasCorrection(Lcom/htc/android/htcime/HTCIMEService;)V

    .line 379
    invoke-static {}, Lcom/htc/android/htcime/util/SIPUtils;->TouchDriverFileCheck()I

    move-result v3

    sput v3, Lcom/htc/android/htcime/HTCIMMData;->mTouchDriverDev:I

    .line 380
    sget v3, Lcom/htc/android/htcime/HTCIMMData;->mTouchDriverDev:I

    if-gez v3, :cond_0

    .line 381
    const/4 v3, 0x0

    sput-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->sFeature_Fake_MultiTouch_Enable:Z

    .line 384
    invoke-virtual {p1}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 385
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-virtual {p1}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 386
    .local v1, res:Landroid/content/res/Resources;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const v4, 0x7f090310

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-boolean v5, Lcom/htc/android/htcime/HTCIMMData;->sFeature_Fake_MultiTouch_Enable:Z

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 389
    .end local v1           #res:Landroid/content/res/Resources;
    .end local v2           #sp:Landroid/content/SharedPreferences;
    :cond_0
    invoke-virtual {p1}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 390
    .restart local v2       #sp:Landroid/content/SharedPreferences;
    const-string v3, "MODIFIED"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 392
    .local v0, mod:I
    if-ne v0, v6, :cond_1

    .line 393
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/util/ConfigData;->loadSystemDBDefault(Lcom/htc/android/htcime/HTCIMEService;)V

    .line 399
    :goto_0
    return-void

    .line 396
    :cond_1
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "MODIFIED"

    const/4 v5, 0x4

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 397
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/util/ConfigData;->loadConfigFromSettings(Lcom/htc/android/htcime/HTCIMEService;)V

    goto :goto_0
.end method

.method public isCurrentQWERTYSetting(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 766
    invoke-static {p1}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 767
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 768
    .local v0, r:Landroid/content/res/Resources;
    const/4 v2, 0x2

    const v3, 0x7f0900d8

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "2"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isUserAdjustStrokeSpeed(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 735
    invoke-static {p1}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 736
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v3, "stroke_speed_set"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v0, v3, :cond_0

    .line 737
    .local v0, beModified:Z
    :goto_0
    return v0

    .end local v0           #beModified:Z
    :cond_0
    move v0, v2

    .line 736
    goto :goto_0
.end method

.method public loadBiasCorrectionParameters(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 8
    .parameter "htcIMM"

    .prologue
    const/4 v7, 0x4

    .line 566
    invoke-virtual {p1}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 567
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v7, :cond_0

    .line 568
    invoke-virtual {p1}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mPortBias:[F

    sget-object v5, Lcom/htc/android/htcime/HTCIMMData;->KEYBOARD_P_BIAS:[Ljava/lang/String;

    aget-object v5, v5, v1

    sget-object v6, Lcom/htc/android/htcime/HTCIMMData;->KEYBOARD_P_BIAS_DEF:[F

    aget v6, v6, v1

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v5

    aput v5, v4, v1

    .line 570
    invoke-virtual {p1}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mLandBias:[F

    sget-object v5, Lcom/htc/android/htcime/HTCIMMData;->KEYBOARD_L_BIAS:[Ljava/lang/String;

    aget-object v5, v5, v1

    sget-object v6, Lcom/htc/android/htcime/HTCIMMData;->KEYBOARD_L_BIAS_DEF:[F

    aget v6, v6, v1

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v5

    aput v5, v4, v1

    .line 567
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 575
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 576
    .local v3, pBiasParam:Ljava/lang/StringBuffer;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 577
    .local v2, lBiasParam:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v7, :cond_1

    .line 578
    invoke-virtual {p1}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mPortBias:[F

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 579
    invoke-virtual {p1}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mLandBias:[F

    aget v4, v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 577
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 581
    :cond_1
    const-string v4, "ConfigData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(port) bias correction parameters = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    const-string v4, "ConfigData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(land) bias correction parameters = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    return-void
.end method

.method public loadConfigFromSettings(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 12
    .parameter "htcIMM"

    .prologue
    .line 155
    invoke-virtual {p1}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 156
    .local v1, cr:Landroid/content/ContentResolver;
    invoke-virtual {p1}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v2

    .line 157
    .local v2, htcIMMData:Lcom/htc/android/htcime/HTCIMMData;
    invoke-virtual {p1}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 160
    .local v6, r:Landroid/content/res/Resources;
    const-string v9, "sip_record_mode"

    const/4 v10, 0x0

    invoke-static {v1, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    const/4 v9, 0x1

    :goto_0
    sput-boolean v9, Lcom/htc/android/htcime/HTCIMMData;->mSIPrecord:Z

    .line 161
    const-string v9, "scoring_idx_mode"

    const/4 v10, 0x0

    invoke-static {v1, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    const/4 v9, 0x1

    :goto_1
    sput-boolean v9, Lcom/htc/android/htcime/HTCIMMData;->mScoring:Z

    .line 163
    invoke-virtual {p1}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 164
    .local v7, sp:Landroid/content/SharedPreferences;
    const-string v9, "MODIFIED"

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 167
    .local v5, mod:I
    invoke-static {}, Lcom/htc/android/htcime/HTCIMEService;->fetchHtcSenseVer()F

    move-result v9

    const/high16 v10, 0x4060

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_5

    const-string v9, "DHA_Switch"

    const/4 v10, 0x1

    invoke-static {v1, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    const/4 v9, 0x1

    :goto_2
    sput-boolean v9, Lcom/htc/android/htcime/HTCIMMData;->isDHA_ON:Z

    .line 172
    const-string v9, "DHA_Hint"

    const/4 v10, 0x0

    invoke-static {v1, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_7

    const/4 v9, 0x0

    :goto_3
    sput-boolean v9, Lcom/htc/android/htcime/HTCIMMData;->mShowDHAHint:Z

    .line 175
    const-string v9, "DD"

    const/4 v10, 0x0

    invoke-static {v1, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_8

    const/4 v9, 0x0

    :goto_4
    sput-boolean v9, Lcom/htc/android/htcime/HTCIMMData;->DEBUG_DHA:Z

    .line 177
    if-lez v5, :cond_e

    .line 178
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "MODIFIED"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 181
    const/4 v9, 0x1

    if-le v5, v9, :cond_1

    .line 183
    const v9, 0x7f0900cb

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/htc/android/htcime/HTCIMMData;->mSpellingCheck:Z

    .line 184
    const v9, 0x7f0900cc

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/htc/android/htcime/HTCIMMData;->mMultitapWordComplete:Z

    sput-boolean v9, Lcom/htc/android/htcime/HTCIMMData;->mWordComplete:Z

    .line 186
    const v9, 0x7f090079

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/htc/android/htcime/HTCIMMData;->mPredictionMode_Usr:Z

    .line 188
    const v9, 0x7f0900cd

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/htc/android/htcime/HTCIMMData;->mQWERTYPrediction:Z

    .line 189
    const v9, 0x7f0900cf

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/htc/android/htcime/HTCIMMData;->mQWERTYSpellingCheck:Z

    .line 192
    const v9, 0x7f0900ce

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/htc/android/htcime/HTCIMMData;->mHWQWERTYPrediction:Z

    .line 197
    const v9, 0x7f0900d2

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/htc/android/htcime/HTCIMMData;->mSoundFlag:Z

    .line 199
    const v9, 0x7f0900d3

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/htc/android/htcime/HTCIMMData;->mVibrationFlag:Z

    .line 201
    if-eqz v1, :cond_0

    .line 202
    sget-boolean v9, Lcom/htc/android/htcime/HTCIMMData;->mVibrationFlag:Z

    if-eqz v9, :cond_9

    .line 203
    const-string v9, "htc.ime.isVibrateOn"

    const/4 v10, 0x1

    invoke-static {v1, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 210
    :cond_0
    :goto_5
    iget-object v9, v2, Lcom/htc/android/htcime/HTCIMMData;->mTraceConfig:Lcom/htc/android/htcime/ezsip/trace/TraceConfig;

    invoke-virtual {v9, v6, v7}, Lcom/htc/android/htcime/ezsip/trace/TraceConfig;->load(Landroid/content/res/Resources;Landroid/content/SharedPreferences;)V

    .line 213
    :cond_1
    if-lez v5, :cond_b

    .line 215
    const v9, 0x7f0900d8

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "2"

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v2, Lcom/htc/android/htcime/HTCIMMData;->mPortPrimarySIP:I

    .line 217
    const v9, 0x7f090008

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, LandQwertydefault:Ljava/lang/String;
    const v9, 0x7f0900d9

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "1"

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sput v9, Lcom/htc/android/htcime/HTCIMMData;->mPortQwertyType:I

    .line 219
    const v9, 0x7f0900da

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sput v9, Lcom/htc/android/htcime/HTCIMMData;->mLandQwertyType:I

    .line 222
    const v9, 0x7f0900d7

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "0"

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sput v9, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    .line 224
    const v9, 0x7f0900db

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, -0x1

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sput v9, Lcom/htc/android/htcime/HTCIMMData;->m2ndLanguage:I

    .line 228
    const v9, 0x7f0900f8

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 229
    .local v8, tmp:Ljava/lang/String;
    const/4 v9, 0x0

    sput v9, Lcom/htc/android/htcime/HTCIMMData;->mCPEnableSipListCount:I

    .line 231
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_f

    .line 232
    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 234
    .local v4, list:[Ljava/lang/String;
    array-length v9, v4

    sput v9, Lcom/htc/android/htcime/HTCIMMData;->mCPEnableSipListCount:I

    .line 236
    const/4 v3, 0x0

    .local v3, i:I
    :goto_6
    sget v9, Lcom/htc/android/htcime/HTCIMMData;->mCPEnableSipListCount:I

    if-ge v3, v9, :cond_a

    .line 237
    sget-object v9, Lcom/htc/android/htcime/HTCIMMData;->mCPEnableSipList:[I

    aget-object v10, v4, v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput v10, v9, v3

    .line 236
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 160
    .end local v0           #LandQwertydefault:Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #list:[Ljava/lang/String;
    .end local v5           #mod:I
    .end local v7           #sp:Landroid/content/SharedPreferences;
    .end local v8           #tmp:Ljava/lang/String;
    :cond_2
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 161
    :cond_3
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 167
    .restart local v5       #mod:I
    .restart local v7       #sp:Landroid/content/SharedPreferences;
    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_2

    :cond_5
    const-string v9, "DHA_Switch"

    const/4 v10, 0x0

    invoke-static {v1, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_6

    const/4 v9, 0x0

    goto/16 :goto_2

    :cond_6
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 172
    :cond_7
    const/4 v9, 0x1

    goto/16 :goto_3

    .line 175
    :cond_8
    const/4 v9, 0x1

    goto/16 :goto_4

    .line 205
    :cond_9
    const-string v9, "htc.ime.isVibrateOn"

    const/4 v10, 0x0

    invoke-static {v1, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_5

    .line 240
    .restart local v0       #LandQwertydefault:Ljava/lang/String;
    .restart local v3       #i:I
    .restart local v4       #list:[Ljava/lang/String;
    .restart local v8       #tmp:Ljava/lang/String;
    :cond_a
    sget-object v9, Lcom/htc/android/htcime/HTCIMMData;->mCPEnableSipList:[I

    sget v10, Lcom/htc/android/htcime/HTCIMMData;->mCPEnableSipListCount:I

    const/16 v11, 0x100

    aput v11, v9, v10

    .line 241
    sget v9, Lcom/htc/android/htcime/HTCIMMData;->mCPEnableSipListCount:I

    add-int/lit8 v9, v9, 0x1

    sput v9, Lcom/htc/android/htcime/HTCIMMData;->mCPEnableSipListCount:I

    .line 253
    .end local v3           #i:I
    .end local v4           #list:[Ljava/lang/String;
    :goto_7
    const v9, 0x7f0902a4

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x11

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    sput v9, Lcom/htc/android/htcime/HTCIMMData;->mCPDefaultSip:I

    .line 255
    const v9, 0x7f0900f9

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 256
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_10

    const/4 v9, 0x0

    :goto_8
    sput v9, Lcom/htc/android/htcime/HTCIMMData;->mCPLanguage:I

    .line 258
    const v9, 0x7f0900fa

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 259
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_11

    const/4 v9, 0x1

    :goto_9
    sput v9, Lcom/htc/android/htcime/HTCIMMData;->mCPPYLanguage:I

    .line 261
    const v9, 0x7f0900fb

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 262
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_12

    const/4 v9, 0x1

    :goto_a
    sput v9, Lcom/htc/android/htcime/HTCIMMData;->mCPSTLanguage:I

    .line 264
    sget-boolean v9, Lcom/htc/android/htcime/HTCIMMData;->sFeature_ZY_Phrase_Input:Z

    if-eqz v9, :cond_b

    .line 265
    const v9, 0x7f09010f

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/htc/android/htcime/HTCIMMData;->mCPZYSmartInput:Z

    .line 295
    .end local v0           #LandQwertydefault:Ljava/lang/String;
    .end local v8           #tmp:Ljava/lang/String;
    :cond_b
    const/4 v9, 0x2

    if-le v5, v9, :cond_c

    .line 297
    const v9, 0x7f0900dc

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/htc/android/htcime/HTCIMMData;->InternalTest_BiasCorrection:Z

    .line 298
    const v9, 0x7f0900dd

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/htc/android/htcime/HTCIMMData;->InternalTest_AnimHint:Z

    .line 299
    const v9, 0x7f0900de

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/htc/android/htcime/HTCIMMData;->InternalTest_ShowHint:Z

    .line 300
    const v9, 0x7f0900e0

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/htc/android/htcime/HTCIMMData;->InternalTest_TouchMovement:Z

    .line 301
    const v9, 0x7f0900e1

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/htc/android/htcime/HTCIMMData;->InternalTest_PostPrediction:Z

    .line 302
    const v9, 0x7f090110

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/htc/android/htcime/HTCIMMData;->nonwordVibrateEnable:Z

    .line 303
    const v9, 0x7f090111

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "2"

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    sput-byte v9, Lcom/htc/android/htcime/HTCIMMData;->nonwordVibrateTimes:B

    .line 304
    const v9, 0x7f090112

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "2"

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    sput-byte v9, Lcom/htc/android/htcime/HTCIMMData;->nonwordVibratePeriod:B

    .line 308
    const v9, 0x7f090116

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/htc/android/htcime/HTCIMMData;->mVibrateSkip:Z

    .line 309
    iget-object v9, p0, Lcom/htc/android/htcime/util/ConfigData;->vibrateThreshold:[I

    const v10, 0x7f090117

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "2"

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Byte;->byteValue()B

    move-result v10

    aget v9, v9, v10

    sput v9, Lcom/htc/android/htcime/HTCIMMData;->mVibrateSkipThreshold:I

    .line 312
    :cond_c
    const/4 v9, 0x3

    if-le v5, v9, :cond_d

    .line 314
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/util/ConfigData;->loadBiasCorrectionParameters(Lcom/htc/android/htcime/HTCIMEService;)V

    .line 317
    :cond_d
    const/4 v9, 0x4

    if-le v5, v9, :cond_e

    .line 318
    invoke-virtual {p1}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/htc/android/htcime/util/ConfigData;->loadFeaturesConfig(Landroid/content/Context;)V

    .line 323
    :cond_e
    iget v9, v2, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_13

    sget v9, Lcom/htc/android/htcime/HTCIMMData;->mLandQwertyType:I

    :goto_b
    sput v9, Lcom/htc/android/htcime/HTCIMMData;->mQwertyType:I

    .line 327
    invoke-direct {p0}, Lcom/htc/android/htcime/util/ConfigData;->doFirstTutorial()Z

    move-result v9

    if-eqz v9, :cond_15

    .line 328
    const-string v9, "TutorialPlayed"

    const/4 v10, -0x1

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_14

    .line 329
    const/4 v9, 0x0

    sput-boolean v9, Lcom/htc/android/htcime/HTCIMMData;->sTutored:Z

    .line 337
    :goto_c
    return-void

    .line 244
    .restart local v0       #LandQwertydefault:Ljava/lang/String;
    .restart local v8       #tmp:Ljava/lang/String;
    :cond_f
    const/4 v9, 0x5

    sput v9, Lcom/htc/android/htcime/HTCIMMData;->mCPEnableSipListCount:I

    .line 246
    sget-object v9, Lcom/htc/android/htcime/HTCIMMData;->mCPEnableSipList:[I

    const/4 v10, 0x0

    const/16 v11, 0x9

    aput v11, v9, v10

    .line 247
    sget-object v9, Lcom/htc/android/htcime/HTCIMMData;->mCPEnableSipList:[I

    const/4 v10, 0x1

    const/16 v11, 0xb

    aput v11, v9, v10

    .line 248
    sget-object v9, Lcom/htc/android/htcime/HTCIMMData;->mCPEnableSipList:[I

    const/4 v10, 0x2

    const/16 v11, 0xd

    aput v11, v9, v10

    .line 249
    sget-object v9, Lcom/htc/android/htcime/HTCIMMData;->mCPEnableSipList:[I

    const/4 v10, 0x3

    const/16 v11, 0xf

    aput v11, v9, v10

    .line 250
    sget-object v9, Lcom/htc/android/htcime/HTCIMMData;->mCPEnableSipList:[I

    const/4 v10, 0x4

    const/16 v11, 0x100

    aput v11, v9, v10

    goto/16 :goto_7

    .line 256
    :cond_10
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto/16 :goto_8

    .line 259
    :cond_11
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto/16 :goto_9

    .line 262
    :cond_12
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto/16 :goto_a

    .line 323
    .end local v0           #LandQwertydefault:Ljava/lang/String;
    .end local v8           #tmp:Ljava/lang/String;
    :cond_13
    sget v9, Lcom/htc/android/htcime/HTCIMMData;->mPortQwertyType:I

    goto :goto_b

    .line 332
    :cond_14
    const/4 v9, 0x1

    sput-boolean v9, Lcom/htc/android/htcime/HTCIMMData;->sTutored:Z

    goto :goto_c

    .line 335
    :cond_15
    const/4 v9, 0x1

    sput-boolean v9, Lcom/htc/android/htcime/HTCIMMData;->sTutored:Z

    goto :goto_c
.end method

.method loadConstantValue(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 4
    .parameter "htcIMM"

    .prologue
    .line 140
    invoke-virtual {p1}, Lcom/htc/android/htcime/HTCIMEService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 141
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f0a0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/htc/android/htcime/HTCIMMData;->sVibratePeriodMilliSec:I

    .line 142
    const v1, 0x7f08000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/htc/android/htcime/HTCIMMData;->IMM_COLOR_SELECTION:I

    .line 146
    const-string v1, "ldb_00e0"

    const-string v2, "raw"

    const-string v3, "com.htc.android.htcime"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/htc/android/htcime/HTCIMMData;->IMM_CP_TC_LDB_RES_ID:I

    .line 147
    const-string v1, "ldb_00e1"

    const-string v2, "raw"

    const-string v3, "com.htc.android.htcime"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/htc/android/htcime/HTCIMMData;->IMM_CP_SC_LDB_RES_ID:I

    .line 148
    return-void
.end method

.method public loadFeaturesConfig(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 70
    .local v0, r:Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 71
    .local v1, sp:Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    const v2, 0x7f090309

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x7f0b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_XT9ACmodule:Z

    .line 77
    const v2, 0x7f09030a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b0001

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_LessWordAccuracyImprove:Z

    .line 80
    const v2, 0x7f09030b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b0002

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_AutoSwitchSpellingCheck:Z

    .line 83
    const v2, 0x7f09030f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b0004

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    .line 86
    const v2, 0x7f09030e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b0003

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_Tips_Enable:Z

    .line 89
    const v2, 0x7f090310

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b0005

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_Fake_MultiTouch_Enable:Z

    .line 92
    const v2, 0x7f090311

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b0006

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_MultiTouchShift_Enable:Z

    .line 95
    const v2, 0x7f090312

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b0007

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_HWKB_ChineseSupport:Z

    .line 98
    const v2, 0x7f090313

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b0008

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_Memory_Optimize:Z

    .line 101
    const v2, 0x7f090314

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b0009

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_CMCC_Request:Z

    .line 104
    const v2, 0x7f090315

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b000a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_HWR_DPADSupport:Z

    .line 107
    const v2, 0x7f090317

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b000c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_HWR_LandHalfScreenSupport:Z

    .line 110
    const v2, 0x7f090318

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b000d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_HWR_FullScreenExpand:Z

    .line 113
    const v2, 0x7f090319

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b000e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_DAMEnable:Z

    .line 116
    const v2, 0x7f09031a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b000f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_UserProfilingLog:Z

    .line 119
    const v2, 0x7f09031b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b0010

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_Tablet:Z

    .line 122
    const v2, 0x7f09031c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b0011

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_FixedWCL:Z

    .line 125
    const v2, 0x7f09031d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b0012

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_TopLabelHoldOnSHIFT:Z

    .line 128
    const v2, 0x7f09031e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b0013

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_WCL_With_Close_Btn:Z

    .line 131
    const v2, 0x7f09031f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b0014

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_FixedWCL_Landscape:Z

    .line 134
    sget v2, Lcom/htc/android/htcime/HTCIMMData;->sHtcSenseVer:F

    const/high16 v3, 0x4080

    cmpl-float v2, v2, v3

    if-gez v2, :cond_2

    const v2, 0x7f090320

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b0015

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v2, 0x1

    :goto_1
    sput-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_Transparent_HWR:Z

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public loadSystemDBDefault(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 4
    .parameter "htcIMM"

    .prologue
    .line 342
    invoke-virtual {p1}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 343
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "MODIFIED"

    const/4 v3, 0x4

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 344
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/util/ConfigData;->loadConfigFromSettings(Lcom/htc/android/htcime/HTCIMEService;)V

    .line 347
    invoke-direct {p0}, Lcom/htc/android/htcime/util/ConfigData;->doFirstTutorial()Z

    move-result v1

    if-nez v1, :cond_0

    .line 348
    const/4 v1, 0x1

    sput-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->sTutored:Z

    .line 350
    :cond_0
    return-void
.end method

.method public setHandWritingData(Landroid/content/Context;I)Z
    .locals 5
    .parameter "context"
    .parameter "iMMSipId"

    .prologue
    const/4 v4, 0x1

    .line 756
    invoke-static {p1}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 757
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902a4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "sip_list_mode_change"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "MODIFIED"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 762
    return v4
.end method

.method public setStrokeSpeed(Landroid/content/Context;I)Z
    .locals 3
    .parameter "context"
    .parameter "level"

    .prologue
    .line 748
    if-ltz p2, :cond_0

    const/16 v1, 0x9

    if-ge v1, p2, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 751
    :goto_0
    return v1

    .line 749
    :cond_1
    invoke-static {p1}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 750
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "handwriting_settings_writing_stroke_speed"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 751
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setUserAdjustStrokeSpeed(Landroid/content/Context;I)Z
    .locals 4
    .parameter "context"
    .parameter "flag"

    .prologue
    const/4 v3, 0x1

    .line 741
    invoke-static {p1}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 742
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "stroke_speed_set"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 743
    return v3
.end method

.method public updateLocaleToSharePrefs(Landroid/content/Context;I)V
    .locals 5
    .parameter "htcIMMContext"
    .parameter "newLocale"

    .prologue
    .line 608
    invoke-static {p1}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 609
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 610
    .local v0, r:Landroid/content/res/Resources;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 611
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const v3, 0x7f0900d7

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "MODIFIED"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 615
    :goto_0
    return-void

    .line 614
    :cond_0
    const-string v2, "ConfigData"

    const-string v3, "Get SharedPrefedrences or Resource fail!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
