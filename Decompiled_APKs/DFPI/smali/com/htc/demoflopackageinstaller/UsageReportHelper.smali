.class public Lcom/htc/demoflopackageinstaller/UsageReportHelper;
.super Ljava/lang/Object;
.source "UsageReportHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DFPI.UsageReportHelper"


# instance fields
.field private final TEMP_FILE_NAME:Ljava/lang/String;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mRawFilePath:Ljava/lang/String;

.field private mReportFilePath:Ljava/lang/String;

.field private mUsageStatsService:Lcom/android/internal/app/IUsageStats;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v2, "tempUsageReport.xml"

    iput-object v2, p0, Lcom/htc/demoflopackageinstaller/UsageReportHelper;->TEMP_FILE_NAME:Ljava/lang/String;

    .line 44
    iput-object v3, p0, Lcom/htc/demoflopackageinstaller/UsageReportHelper;->mRawFilePath:Ljava/lang/String;

    .line 45
    iput-object v3, p0, Lcom/htc/demoflopackageinstaller/UsageReportHelper;->mReportFilePath:Ljava/lang/String;

    .line 49
    const-string v2, "DFPI.UsageReportHelper"

    const-string v3, "UsageReportHelper.UsageReportHelper()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/temp/usageReport/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/demoflopackageinstaller/UsageReportHelper;->mRawFilePath:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/htc/demoflopackageinstaller/UsageReportHelper;->mRawFilePath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, rawFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 53
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 55
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/upload/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/demoflopackageinstaller/UsageReportHelper;->mReportFilePath:Ljava/lang/String;

    .line 56
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/htc/demoflopackageinstaller/UsageReportHelper;->mReportFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    .local v1, reportFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 58
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 60
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/demoflopackageinstaller/UsageReportHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 61
    const-string v2, "usagestats"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IUsageStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IUsageStats;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/demoflopackageinstaller/UsageReportHelper;->mUsageStatsService:Lcom/android/internal/app/IUsageStats;

    .line 62
    iget-object v2, p0, Lcom/htc/demoflopackageinstaller/UsageReportHelper;->mUsageStatsService:Lcom/android/internal/app/IUsageStats;

    if-nez v2, :cond_2

    .line 64
    const-string v2, "DFPI.UsageReportHelper"

    const-string v3, "Failed to retrieve usagestats service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_2
    return-void
.end method

.method private checkDifferent(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/demoflopackageinstaller/Usage;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/PkgUsageStats;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/demoflopackageinstaller/Usage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, usagesFromXml:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/demoflopackageinstaller/Usage;>;"
    .local p2, userStatesNow:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/os/PkgUsageStats;>;"
    const-string v9, "DFPI.UsageReportHelper"

    const-string v10, "UsageReportHelper.checkDifferent()"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v8, usagesDiff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/demoflopackageinstaller/Usage;>;"
    const/4 v4, 0x0

    .line 74
    .local v4, nDifCounter:I
    const-wide/16 v2, 0x0

    .line 75
    .local v2, lDifUsedtime:J
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/PkgUsageStats;

    .line 77
    .local v5, ps:Lcom/android/internal/os/PkgUsageStats;
    iget v4, v5, Lcom/android/internal/os/PkgUsageStats;->launchCount:I

    .line 78
    iget-wide v2, v5, Lcom/android/internal/os/PkgUsageStats;->usageTime:J

    .line 79
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/demoflopackageinstaller/Usage;

    .line 81
    .local v7, usage:Lcom/htc/demoflopackageinstaller/Usage;
    iget-object v9, v5, Lcom/android/internal/os/PkgUsageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/htc/demoflopackageinstaller/Usage;->getApplication()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 83
    invoke-virtual {v7}, Lcom/htc/demoflopackageinstaller/Usage;->getCounter()I

    move-result v9

    sub-int/2addr v4, v9

    .line 84
    if-gez v4, :cond_2

    .line 86
    const/4 v4, 0x0

    .line 88
    :cond_2
    invoke-virtual {v7}, Lcom/htc/demoflopackageinstaller/Usage;->getUsedTime()J

    move-result-wide v9

    sub-long/2addr v2, v9

    .line 89
    const-wide/16 v9, 0x0

    cmp-long v9, v2, v9

    if-gez v9, :cond_1

    .line 91
    const-wide/16 v2, 0x0

    goto :goto_1

    .line 95
    .end local v7           #usage:Lcom/htc/demoflopackageinstaller/Usage;
    :cond_3
    if-lez v4, :cond_0

    .line 98
    new-instance v6, Lcom/htc/demoflopackageinstaller/Usage;

    invoke-direct {v6}, Lcom/htc/demoflopackageinstaller/Usage;-><init>()V

    .line 99
    .local v6, tempUsage:Lcom/htc/demoflopackageinstaller/Usage;
    iget-object v9, v5, Lcom/android/internal/os/PkgUsageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/htc/demoflopackageinstaller/Usage;->setApplication(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v6, v4}, Lcom/htc/demoflopackageinstaller/Usage;->setCounter(I)V

    .line 101
    invoke-virtual {v6, v2, v3}, Lcom/htc/demoflopackageinstaller/Usage;->setUsedTime(J)V

    .line 102
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 105
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v5           #ps:Lcom/android/internal/os/PkgUsageStats;
    .end local v6           #tempUsage:Lcom/htc/demoflopackageinstaller/Usage;
    :cond_4
    return-object v8
.end method

.method private getUTCTime()Ljava/lang/String;
    .locals 2

    .prologue
    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUsageDateStart()Ljava/lang/String;
    .locals 14

    .prologue
    const/16 v13, 0xc

    const/16 v12, 0xb

    const/4 v11, 0x5

    const/4 v10, 0x2

    const/16 v9, 0xa

    .line 367
    const-string v7, "DFPI.UsageReportHelper"

    const-string v8, "UsageReportHelper.getUsageDateStart()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 369
    .local v0, c:Ljava/util/Calendar;
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 370
    .local v6, year:Ljava/lang/String;
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    if-ge v7, v9, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 371
    .local v4, month:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ge v7, v9, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, day:Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ge v7, v9, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 373
    .local v2, hour:Ljava/lang/String;
    :goto_2
    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ge v7, v9, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 374
    .local v3, min:Ljava/lang/String;
    :goto_3
    const/16 v7, 0xd

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ge v7, v9, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xd

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 375
    .local v5, sec:Ljava/lang/String;
    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "T"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 370
    .end local v1           #day:Ljava/lang/String;
    .end local v2           #hour:Ljava/lang/String;
    .end local v3           #min:Ljava/lang/String;
    .end local v4           #month:Ljava/lang/String;
    .end local v5           #sec:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 371
    .restart local v4       #month:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 372
    .restart local v1       #day:Ljava/lang/String;
    :cond_2
    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 373
    .restart local v2       #hour:Ljava/lang/String;
    :cond_3
    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    .line 374
    .restart local v3       #min:Ljava/lang/String;
    :cond_4
    const/16 v7, 0xd

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_4
.end method

.method private getUserStatics()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/PkgUsageStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    const-string v9, "DFPI.UsageReportHelper"

    const-string v10, "UsageReportHelper.getUserStatics()"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v0, UserStats:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/os/PkgUsageStats;>;"
    :try_start_0
    iget-object v9, p0, Lcom/htc/demoflopackageinstaller/UsageReportHelper;->mUsageStatsService:Lcom/android/internal/app/IUsageStats;

    invoke-interface {v9}, Lcom/android/internal/app/IUsageStats;->getAllPkgUsageStats()[Lcom/android/internal/os/PkgUsageStats;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 137
    .local v7, stats:[Lcom/android/internal/os/PkgUsageStats;
    move-object v2, v7

    .local v2, arr$:[Lcom/android/internal/os/PkgUsageStats;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v6, v2, v4

    .line 139
    .local v6, ps:Lcom/android/internal/os/PkgUsageStats;
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    :try_start_1
    iget-object v9, p0, Lcom/htc/demoflopackageinstaller/UsageReportHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v10, v6, Lcom/android/internal/os/PkgUsageStats;->packageName:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 144
    .local v1, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v9, p0, Lcom/htc/demoflopackageinstaller/UsageReportHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 145
    iget-object v9, p0, Lcom/htc/demoflopackageinstaller/UsageReportHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v10, v6, Lcom/android/internal/os/PkgUsageStats;->packageName:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    iget-object v8, v9, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 146
    .local v8, strVersionName:Ljava/lang/String;
    const-string v9, "DFPI.UsageReportHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v6, Lcom/android/internal/os/PkgUsageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " version is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 137
    .end local v1           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v8           #strVersionName:Ljava/lang/String;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 132
    .end local v2           #arr$:[Lcom/android/internal/os/PkgUsageStats;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #ps:Lcom/android/internal/os/PkgUsageStats;
    .end local v7           #stats:[Lcom/android/internal/os/PkgUsageStats;
    :catch_0
    move-exception v3

    .line 134
    .local v3, e:Landroid/os/RemoteException;
    const-string v9, "DFPI.UsageReportHelper"

    const-string v10, "Failed initializing usage stats service"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .end local v3           #e:Landroid/os/RemoteException;
    :goto_2
    return-object v0

    .line 160
    .restart local v2       #arr$:[Lcom/android/internal/os/PkgUsageStats;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    .restart local v7       #stats:[Lcom/android/internal/os/PkgUsageStats;
    :cond_0
    const-string v9, "DFPI.UsageReportHelper"

    const-string v10, "getUserStatics end"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 148
    .restart local v6       #ps:Lcom/android/internal/os/PkgUsageStats;
    :catch_1
    move-exception v9

    goto :goto_1
.end method

.method private readFromTempXML()Ljava/util/ArrayList;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/demoflopackageinstaller/Usage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    const-string v18, "DFPI.UsageReportHelper"

    const-string v19, "readFromTempXML()"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v5

    .line 172
    .local v5, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v16, usages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/demoflopackageinstaller/Usage;>;"
    :try_start_0
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/demoflopackageinstaller/UsageReportHelper;->mRawFilePath:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "tempUsageReport.xml"

    invoke-direct/range {v17 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .local v17, xmlFile:Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->isFile()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 177
    new-instance v11, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 178
    .local v11, myxmlInputStream:Ljava/io/FileInputStream;
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 179
    .local v2, builder:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v2, v11}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 180
    .local v3, dom:Lorg/w3c/dom/Document;
    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v15

    .line 181
    .local v15, root:Lorg/w3c/dom/Element;
    const-string v18, "Usage"

    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 182
    .local v8, items:Lorg/w3c/dom/NodeList;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_2

    .line 183
    new-instance v10, Lcom/htc/demoflopackageinstaller/Usage;

    invoke-direct {v10}, Lcom/htc/demoflopackageinstaller/Usage;-><init>()V

    .line 184
    .local v10, myUsage:Lcom/htc/demoflopackageinstaller/Usage;
    invoke-interface {v8, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 185
    .local v7, item:Lorg/w3c/dom/Node;
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 186
    .local v13, properties:Lorg/w3c/dom/NodeList;
    const/4 v9, 0x0

    .local v9, j:I
    :goto_1
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    move/from16 v0, v18

    if-ge v9, v0, :cond_4

    .line 187
    invoke-interface {v13, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    .line 188
    .local v14, property:Lorg/w3c/dom/Node;
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v12

    .line 189
    .local v12, name:Ljava/lang/String;
    const-string v18, "APPLICATION"

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 190
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/htc/demoflopackageinstaller/Usage;->setApplication(Ljava/lang/String;)V

    .line 186
    :cond_0
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 191
    :cond_1
    const-string v18, "COUNTER"

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 192
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/htc/demoflopackageinstaller/Usage;->setCounter(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 200
    .end local v2           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v3           #dom:Lorg/w3c/dom/Document;
    .end local v6           #i:I
    .end local v7           #item:Lorg/w3c/dom/Node;
    .end local v8           #items:Lorg/w3c/dom/NodeList;
    .end local v9           #j:I
    .end local v10           #myUsage:Lcom/htc/demoflopackageinstaller/Usage;
    .end local v11           #myxmlInputStream:Ljava/io/FileInputStream;
    .end local v12           #name:Ljava/lang/String;
    .end local v13           #properties:Lorg/w3c/dom/NodeList;
    .end local v14           #property:Lorg/w3c/dom/Node;
    .end local v15           #root:Lorg/w3c/dom/Element;
    .end local v17           #xmlFile:Ljava/io/File;
    :catch_0
    move-exception v4

    .line 201
    .local v4, e:Ljava/lang/Exception;
    const-string v18, "DFPI.UsageReportHelper"

    const-string v19, "readFromTempXML()"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 205
    .end local v4           #e:Ljava/lang/Exception;
    :cond_2
    return-object v16

    .line 193
    .restart local v2       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3       #dom:Lorg/w3c/dom/Document;
    .restart local v6       #i:I
    .restart local v7       #item:Lorg/w3c/dom/Node;
    .restart local v8       #items:Lorg/w3c/dom/NodeList;
    .restart local v9       #j:I
    .restart local v10       #myUsage:Lcom/htc/demoflopackageinstaller/Usage;
    .restart local v11       #myxmlInputStream:Ljava/io/FileInputStream;
    .restart local v12       #name:Ljava/lang/String;
    .restart local v13       #properties:Lorg/w3c/dom/NodeList;
    .restart local v14       #property:Lorg/w3c/dom/Node;
    .restart local v15       #root:Lorg/w3c/dom/Element;
    .restart local v17       #xmlFile:Ljava/io/File;
    :cond_3
    :try_start_1
    const-string v18, "USEDTIME"

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 194
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v10, v0, v1}, Lcom/htc/demoflopackageinstaller/Usage;->setUsedTime(J)V

    goto :goto_2

    .line 197
    .end local v12           #name:Ljava/lang/String;
    .end local v14           #property:Lorg/w3c/dom/Node;
    :cond_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 182
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0
.end method

.method private writeToReportXML(Ljava/util/ArrayList;)V
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/demoflopackageinstaller/Usage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p1, diffUsage:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/demoflopackageinstaller/Usage;>;"
    const-string v8, "DFPI.UsageReportHelper"

    const-string v9, "UsageReportHelper.writeToReportXML()"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 286
    const-string v8, "DFPI.UsageReportHelper"

    const-string v9, "there is no difference in UsageLog."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :goto_0
    return-void

    .line 289
    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v8, p0, Lcom/htc/demoflopackageinstaller/UsageReportHelper;->mReportFilePath:Ljava/lang/String;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 290
    .local v2, reportFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 292
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 293
    const-string v8, "DFPI.UsageReportHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mReportFilePath.mkdir() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Ljava/io/File;

    iget-object v11, p0, Lcom/htc/demoflopackageinstaller/UsageReportHelper;->mReportFilePath:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_1
    new-instance v5, Ljava/io/File;

    iget-object v8, p0, Lcom/htc/demoflopackageinstaller/UsageReportHelper;->mReportFilePath:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/htc/demoflopackageinstaller/UsageReportHelper;->getUTCTime()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".xml"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    .local v5, xmlFile:Ljava/io/File;
    const/4 v6, 0x0

    .line 298
    .local v6, xmlOutStream:Ljava/io/FileOutputStream;
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 299
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 304
    :cond_2
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 305
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6           #xmlOutStream:Ljava/io/FileOutputStream;
    .local v7, xmlOutStream:Ljava/io/FileOutputStream;
    move-object v6, v7

    .line 312
    .end local v7           #xmlOutStream:Ljava/io/FileOutputStream;
    .restart local v6       #xmlOutStream:Ljava/io/FileOutputStream;
    :goto_1
    if-nez v6, :cond_3

    .line 314
    const-string v8, "DFPI.UsageReportHelper"

    const-string v9, "xmlOutStream = null"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 307
    :catch_0
    move-exception v0

    .line 309
    .local v0, e:Ljava/lang/Exception;
    const-string v8, "DFPI.UsageReportHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "xml path is"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 317
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    .line 320
    .local v3, serializer:Lorg/xmlpull/v1/XmlSerializer;
    :try_start_1
    const-string v8, "UTF-8"

    invoke-interface {v3, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 321
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 323
    const-string v8, ""

    const-string v9, "FeatureUsage"

    invoke-interface {v3, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 324
    sget-object v8, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mDeviceInfoHelper:Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;

    if-eqz v8, :cond_4

    .line 326
    const-string v8, ""

    const-string v9, "longitude"

    sget-object v10, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mDeviceInfoHelper:Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;

    invoke-virtual {v10}, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->getLog()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 327
    const-string v8, ""

    const-string v9, "latitude"

    sget-object v10, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mDeviceInfoHelper:Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;

    invoke-virtual {v10}, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->getLat()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 328
    const-string v8, ""

    const-string v9, "cityName"

    sget-object v10, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mDeviceInfoHelper:Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;

    invoke-virtual {v10}, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->getCityName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 329
    const-string v8, ""

    const-string v9, "countryCode"

    sget-object v10, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mDeviceInfoHelper:Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;

    invoke-virtual {v10}, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->getCountryCode()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 330
    const-string v8, ""

    const-string v9, "mccMnc"

    sget-object v10, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mDeviceInfoHelper:Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;

    invoke-virtual {v10}, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->getMNC_MCC()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 331
    const-string v8, ""

    const-string v9, "modelId"

    sget-object v10, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mDeviceInfoHelper:Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;

    invoke-virtual {v10}, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->getMID()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 332
    const-string v8, ""

    const-string v9, "customerId"

    sget-object v10, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mDeviceInfoHelper:Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;

    invoke-virtual {v10}, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->getCID()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 333
    const-string v8, ""

    const-string v9, "deviceId"

    sget-object v10, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mDeviceInfoHelper:Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;

    invoke-virtual {v10}, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 334
    const-string v8, ""

    const-string v9, "swSku"

    sget-object v10, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mDeviceInfoHelper:Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;

    invoke-virtual {v10}, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->getSKU()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 335
    const-string v8, ""

    const-string v9, "usageDateStart"

    invoke-direct {p0}, Lcom/htc/demoflopackageinstaller/UsageReportHelper;->getUsageDateStart()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 336
    const-string v8, ""

    const-string v9, "romCode"

    sget-object v10, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mDeviceInfoHelper:Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;

    invoke-virtual {v10}, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->getRomVersion()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 339
    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/demoflopackageinstaller/Usage;

    .line 341
    .local v4, u:Lcom/htc/demoflopackageinstaller/Usage;
    const-string v8, ""

    const-string v9, "Usage"

    invoke-interface {v3, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 342
    const-string v8, ""

    const-string v9, "featureId"

    const-string v10, "0"

    invoke-interface {v3, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 343
    const-string v8, ""

    const-string v9, "featureName"

    invoke-virtual {v4}, Lcom/htc/demoflopackageinstaller/Usage;->getApplication()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 344
    const-string v8, ""

    const-string v9, "featureVersion"

    const-string v10, "0"

    invoke-interface {v3, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 345
    const-string v8, ""

    const-string v9, "featureCategory"

    const-string v10, "UN_KNOWN"

    invoke-interface {v3, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 346
    const-string v8, ""

    const-string v9, "featureType"

    const-string v10, "APK"

    invoke-interface {v3, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 347
    const-string v8, ""

    const-string v9, "usageCount"

    invoke-virtual {v4}, Lcom/htc/demoflopackageinstaller/Usage;->getCounter()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 348
    const-string v8, ""

    const-string v9, "usageDuration"

    invoke-virtual {v4}, Lcom/htc/demoflopackageinstaller/Usage;->getUsedTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 349
    const-string v8, ""

    const-string v9, "interruptCount"

    const-string v10, "0"

    invoke-interface {v3, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 351
    const-string v8, ""

    const-string v9, "Usage"

    invoke-interface {v3, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 358
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #u:Lcom/htc/demoflopackageinstaller/Usage;
    :catch_1
    move-exception v0

    .line 360
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v8, "DFPI.UsageReportHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UsageReportHelper.writeToReportXML exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    .line 353
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_5
    :try_start_2
    const-string v8, ""

    const-string v9, "FeatureUsage"

    invoke-interface {v3, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 354
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 355
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 356
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method private writeToTempXml(Ljava/util/ArrayList;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/PkgUsageStats;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 217
    .local p1, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/os/PkgUsageStats;>;"
    const-string v6, "DFPI.UsageReportHelper"

    const-string v7, "UsageReportHelper.writeToTempXml()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lcom/htc/demoflopackageinstaller/UsageReportHelper;->mRawFilePath:Ljava/lang/String;

    const-string v7, "tempUsageReport.xml"

    invoke-direct {v3, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .local v3, xmlFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 221
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 225
    :cond_0
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 230
    :goto_0
    const/4 v4, 0x0

    .line 233
    .local v4, xmlOutStream:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .end local v4           #xmlOutStream:Ljava/io/FileOutputStream;
    .local v5, xmlOutStream:Ljava/io/FileOutputStream;
    move-object v4, v5

    .line 238
    .end local v5           #xmlOutStream:Ljava/io/FileOutputStream;
    .restart local v4       #xmlOutStream:Ljava/io/FileOutputStream;
    :goto_1
    if-nez v4, :cond_1

    .line 280
    :goto_2
    return-void

    .line 243
    :cond_1
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    .line 249
    .local v2, serializer:Lorg/xmlpull/v1/XmlSerializer;
    :try_start_2
    const-string v6, "UTF-8"

    invoke-interface {v2, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 250
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 251
    const-string v6, ""

    const-string v7, "messages"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 252
    const-string v6, ""

    const-string v7, "number"

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 253
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/PkgUsageStats;

    .line 255
    .local v1, msg:Lcom/android/internal/os/PkgUsageStats;
    const-string v6, ""

    const-string v7, "Usage"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 256
    const-string v6, ""

    const-string v7, "TYPE"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 257
    const-string v6, "USER"

    invoke-interface {v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 258
    const-string v6, ""

    const-string v7, "TYPE"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 259
    const-string v6, ""

    const-string v7, "APPLICATION"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 261
    iget-object v6, v1, Lcom/android/internal/os/PkgUsageStats;->packageName:Ljava/lang/String;

    invoke-interface {v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 262
    const-string v6, ""

    const-string v7, "APPLICATION"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 263
    const-string v6, ""

    const-string v7, "COUNTER"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 264
    iget v6, v1, Lcom/android/internal/os/PkgUsageStats;->launchCount:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 265
    const-string v6, ""

    const-string v7, "COUNTER"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 266
    const-string v6, ""

    const-string v7, "USEDTIME"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 267
    iget-wide v6, v1, Lcom/android/internal/os/PkgUsageStats;->usageTime:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 268
    const-string v6, ""

    const-string v7, "USEDTIME"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 269
    const-string v6, ""

    const-string v7, "Usage"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_3

    .line 276
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #msg:Lcom/android/internal/os/PkgUsageStats;
    :catch_0
    move-exception v6

    goto/16 :goto_2

    .line 271
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2
    const-string v6, ""

    const-string v7, "messages"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 272
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 273
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 274
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 227
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .end local v4           #xmlOutStream:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v6

    goto/16 :goto_0

    .line 235
    .restart local v4       #xmlOutStream:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v6

    goto/16 :goto_1
.end method


# virtual methods
.method public getReport()V
    .locals 6

    .prologue
    .line 110
    const-string v3, "DFPI.UsageReportHelper"

    const-string v4, "UsageReportHelper.getReport()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-direct {p0}, Lcom/htc/demoflopackageinstaller/UsageReportHelper;->getUserStatics()Ljava/util/ArrayList;

    move-result-object v1

    .line 112
    .local v1, nowUsageStates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/os/PkgUsageStats;>;"
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/htc/demoflopackageinstaller/UsageReportHelper;->mRawFilePath:Ljava/lang/String;

    const-string v5, "tempUsageReport.xml"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/htc/demoflopackageinstaller/UsageReportHelper;->readFromTempXML()Ljava/util/ArrayList;

    move-result-object v2

    .line 115
    .local v2, tempUsageStates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/demoflopackageinstaller/Usage;>;"
    invoke-direct {p0, v2, v1}, Lcom/htc/demoflopackageinstaller/UsageReportHelper;->checkDifferent(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 116
    .local v0, diffUsageStates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/demoflopackageinstaller/Usage;>;"
    invoke-direct {p0, v0}, Lcom/htc/demoflopackageinstaller/UsageReportHelper;->writeToReportXML(Ljava/util/ArrayList;)V

    .line 118
    .end local v0           #diffUsageStates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/demoflopackageinstaller/Usage;>;"
    .end local v2           #tempUsageStates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/demoflopackageinstaller/Usage;>;"
    :cond_0
    invoke-direct {p0, v1}, Lcom/htc/demoflopackageinstaller/UsageReportHelper;->writeToTempXml(Ljava/util/ArrayList;)V

    .line 120
    return-void
.end method
