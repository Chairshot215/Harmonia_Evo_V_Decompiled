.class public Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;
.super Ljava/lang/Object;
.source "HtcSkuFlags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/flag/HtcSkuFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Metadata"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBuildPath:Ljava/lang/String;

.field private mDeviceName:Ljava/lang/String;

.field private mIsFromCrcLine:Z

.field private mIsFromMainLine:Z

.field private mIsFromMrLine:Z

.field private mIsFromStableLine:Z

.field private mIsFromTestLine:Z

.field private mLanguageName:Ljava/lang/String;

.field private mProjectName:Ljava/lang/String;

.field private mSenseVersion:Ljava/lang/String;

.field private mSkuName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 463
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 464
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 471
    .local v5, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x80

    invoke-virtual {v5, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 481
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 482
    .local v3, metadata:Landroid/os/Bundle;
    if-nez v3, :cond_1

    .line 559
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v3           #metadata:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 474
    :catch_0
    move-exception v1

    .line 475
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 476
    sget-object v7, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;->TAG:Ljava/lang/String;

    const-string v8, "NameNotFoundException"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 486
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #appInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v3       #metadata:Landroid/os/Bundle;
    :cond_1
    const-string v7, "device_name"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;->mDeviceName:Ljava/lang/String;

    .line 487
    const-string v7, "project_name"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;->mProjectName:Ljava/lang/String;

    .line 488
    const-string v7, "language_name"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;->mLanguageName:Ljava/lang/String;

    .line 489
    const-string v7, "sense_version"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;->mSenseVersion:Ljava/lang/String;

    .line 490
    const-string v7, "build_path"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;->mBuildPath:Ljava/lang/String;

    .line 492
    iget-object v7, p0, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;->mBuildPath:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 495
    iget-object v7, p0, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;->mDeviceName:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 496
    iget-object v7, p0, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;->mBuildPath:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 497
    .local v6, start:I
    iget-object v7, p0, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;->mBuildPath:Ljava/lang/String;

    const-string v8, "/"

    invoke-virtual {v7, v8, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 499
    .local v2, end:I
    if-ltz v6, :cond_3

    if-gt v6, v2, :cond_3

    .line 500
    iget-object v7, p0, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;->mBuildPath:Ljava/lang/String;

    invoke-virtual {v7, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;->mSkuName:Ljava/lang/String;

    .line 510
    .end local v2           #end:I
    .end local v6           #start:I
    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;->mBuildPath:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 513
    .local v4, path:Ljava/lang/String;
    const-string v7, "_mainline"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_4

    .line 514
    iput-boolean v11, p0, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;->mIsFromMainLine:Z

    .line 515
    iput-boolean v10, p0, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;->mIsFromCrcLine:Z

    .line 516
    iput-boolean v10, p0, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;->mIsFromMrLine:Z

    .line 528
    :goto_2
    const-string v7, "_stable"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_6

    .line 529
    iput-boolean v11, p0, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;->mIsFromStableLine:Z

    .line 530
    iput-boolean v10, p0, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;->mIsFromTestLine:Z

    goto :goto_0

    .line 503
    .end local v4           #path:Ljava/lang/String;
    .restart local v2       #end:I
    .restart local v6       #start:I
    :cond_3
    sget-object v7, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;->TAG:Ljava/lang/String;

    const-string v8, "Failed to extract the SKU name"

    invoke-static {v7, v8}, Lcom/android/settings/framework/util/log/HtcLog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    sget-object v7, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " - mBuildPath: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;->mBuildPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/settings/framework/util/log/HtcLog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    sget-object v7, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " - mDeviceName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/settings/framework/util/log/HtcLog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 517
    .end local v2           #end:I
    .end local v6           #start:I
    .restart local v4       #path:Ljava/lang/String;
    :cond_4
    const-string v7, "_mr"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_5

    .line 518
    iput-boolean v10, p0, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;->mIsFromMainLine:Z

    .line 519
    iput-boolean v11, p0, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;->mIsFromCrcLine:Z

    .line 520
    iput-boolean v11, p0, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;->mIsFromMrLine:Z

    goto :goto_2

    .line 522
    :cond_5
    iput-boolean v10, p0, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;->mIsFromMainLine:Z

    .line 523
    iput-boolean v11, p0, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;->mIsFromCrcLine:Z

    .line 524
    iput-boolean v10, p0, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;->mIsFromMrLine:Z

    goto :goto_2

    .line 532
    :cond_6
    iput-boolean v10, p0, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;->mIsFromStableLine:Z

    .line 533
    iput-boolean v11, p0, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;->mIsFromTestLine:Z

    goto/16 :goto_0
.end method

.method public static getMetadata(Landroid/content/Context;)Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;
    .locals 1
    .parameter "context"

    .prologue
    .line 569
    new-instance v0, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public Log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 663
    sget-object v0, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    return-void
.end method

.method public getBuildPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;->mBuildPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;->mLanguageName:Ljava/lang/String;

    return-object v0
.end method

.method public getProjectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;->mProjectName:Ljava/lang/String;

    return-object v0
.end method

.method public getSenseVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;->mSenseVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSkuName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;->mSkuName:Ljava/lang/String;

    return-object v0
.end method

.method public isFromCrcLine()Z
    .locals 1

    .prologue
    .line 650
    iget-boolean v0, p0, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;->mIsFromCrcLine:Z

    return v0
.end method

.method public isFromMainLine()Z
    .locals 1

    .prologue
    .line 641
    iget-boolean v0, p0, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;->mIsFromMainLine:Z

    return v0
.end method

.method public isFromMrLine()Z
    .locals 1

    .prologue
    .line 659
    iget-boolean v0, p0, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;->mIsFromMrLine:Z

    return v0
.end method

.method public isFromStableLine()Z
    .locals 1

    .prologue
    .line 633
    iget-boolean v0, p0, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;->mIsFromStableLine:Z

    return v0
.end method

.method public isFromTestLine()Z
    .locals 1

    .prologue
    .line 625
    iget-boolean v0, p0, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;->mIsFromTestLine:Z

    return v0
.end method
