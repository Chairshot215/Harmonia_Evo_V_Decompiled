.class public Lcom/googlecode/android/wifi/tether/system/CoreTask;
.super Ljava/lang/Object;
.source "CoreTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;,
        Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;,
        Lcom/googlecode/android/wifi/tether/system/CoreTask$TiWlanConf;,
        Lcom/googlecode/android/wifi/tether/system/CoreTask$Whitelist;,
        Lcom/googlecode/android/wifi/tether/system/CoreTask$WpaSupplicant;
    }
.end annotation


# static fields
.field private static final FILESET_VERSION:Ljava/lang/String; = "17"

.field public static final TAG:Ljava/lang/String; = "TETHER -> CoreTask"


# instance fields
.field public DATA_FILE_PATH:Ljava/lang/String;

.field private runningProcesses:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/system/CoreTask;->runningProcesses:Ljava/util/Hashtable;

    .line 34
    return-void
.end method


# virtual methods
.method public chmod(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "file"
    .parameter "mode"

    .prologue
    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "chmod "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/googlecode/android/wifi/tether/system/NativeTask;->runCommand(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 326
    const/4 v0, 0x1

    .line 328
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public filesetOutdated()Z
    .locals 9

    .prologue
    .line 608
    const/4 v6, 0x1

    .line 610
    .local v6, outdated:Z
    new-instance v0, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/googlecode/android/wifi/tether/system/CoreTask;->DATA_FILE_PATH:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/conf/tether.edify"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 611
    .local v0, inFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 612
    const/4 v7, 0x0

    .line 628
    :goto_0
    return v7

    .line 614
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/googlecode/android/wifi/tether/system/CoreTask;->DATA_FILE_PATH:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/conf/tether.edify"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/googlecode/android/wifi/tether/system/CoreTask;->readLinesFromFile(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 616
    .local v5, lines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 617
    .local v3, linecount:I
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    :cond_1
    :goto_2
    move v7, v6

    .line 628
    goto :goto_0

    .line 617
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 618
    .local v2, line:Ljava/lang/String;
    const-string v8, "@Version"

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 619
    const-string v7, "="

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v1, v7, v8

    .line 620
    .local v1, instVersion:Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v7, "17"

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 621
    const/4 v6, 0x0

    .line 623
    goto :goto_2

    .line 625
    .end local v1           #instVersion:Ljava/lang/String;
    :cond_3
    add-int/lit8 v4, v3, 0x1

    .end local v3           #linecount:I
    .local v4, linecount:I
    const/4 v8, 0x2

    if-le v3, v8, :cond_4

    move v3, v4

    .line 626
    .end local v4           #linecount:I
    .restart local v3       #linecount:I
    goto :goto_2

    .end local v3           #linecount:I
    .restart local v4       #linecount:I
    :cond_4
    move v3, v4

    .end local v4           #linecount:I
    .restart local v3       #linecount:I
    goto :goto_1
.end method

.method public getDataTraffic(Ljava/lang/String;)[J
    .locals 10
    .parameter "device"

    .prologue
    const/4 v9, 0x1

    .line 528
    const/4 v3, 0x2

    new-array v0, v3, [J

    .line 529
    .local v0, dataCount:[J
    if-eqz p1, :cond_0

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 540
    :cond_0
    return-object v0

    .line 531
    :cond_1
    const-string v3, "/proc/net/dev"

    invoke-virtual {p0, v3}, Lcom/googlecode/android/wifi/tether/system/CoreTask;->readLinesFromFile(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 532
    .local v1, line:Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 534
    const/16 v4, 0x3a

    const/16 v5, 0x20

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 535
    const-string v4, " +"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 536
    .local v2, values:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-wide v5, v0, v4

    aget-object v7, v2, v9

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    add-long/2addr v5, v7

    aput-wide v5, v0, v4

    .line 537
    aget-wide v4, v0, v9

    const/16 v6, 0x9

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v4, v6

    aput-wide v4, v0, v9

    goto :goto_0
.end method

.method public getKernelVersion()Ljava/lang/String;
    .locals 5

    .prologue
    .line 388
    const-string v2, "/proc/version"

    invoke-virtual {p0, v2}, Lcom/googlecode/android/wifi/tether/system/CoreTask;->readLinesFromFile(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 389
    .local v0, lines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v1, v2, v3

    .line 390
    .local v1, version:Ljava/lang/String;
    const-string v2, "TETHER -> CoreTask"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Kernel version: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    return-object v1
.end method

.method public getLeases()Ljava/util/Hashtable;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/googlecode/android/wifi/tether/data/ClientData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    .line 301
    new-instance v8, Ljava/util/Hashtable;

    invoke-direct {v8}, Ljava/util/Hashtable;-><init>()V

    .line 305
    .local v8, returnHash:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Lcom/googlecode/android/wifi/tether/data/ClientData;>;"
    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/googlecode/android/wifi/tether/system/CoreTask;->DATA_FILE_PATH:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "/var/dnsmasq.leases"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/googlecode/android/wifi/tether/system/CoreTask;->readLinesFromFile(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 307
    .local v6, lines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_0

    .line 321
    return-object v8

    .line 307
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 308
    .local v5, line:Ljava/lang/String;
    new-instance v0, Lcom/googlecode/android/wifi/tether/data/ClientData;

    invoke-direct {v0}, Lcom/googlecode/android/wifi/tether/data/ClientData;-><init>()V

    .line 309
    .local v0, clientData:Lcom/googlecode/android/wifi/tether/data/ClientData;
    const-string v10, " "

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 310
    .local v3, data:[Ljava/lang/String;
    new-instance v2, Ljava/util/Date;

    new-instance v10, Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    aget-object v11, v3, v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "000"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-direct {v2, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 311
    .local v2, connectTime:Ljava/util/Date;
    aget-object v7, v3, v12

    .line 312
    .local v7, macAddress:Ljava/lang/String;
    const/4 v10, 0x2

    aget-object v4, v3, v10

    .line 313
    .local v4, ipAddress:Ljava/lang/String;
    const/4 v10, 0x3

    aget-object v1, v3, v10

    .line 314
    .local v1, clientName:Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/googlecode/android/wifi/tether/data/ClientData;->setConnectTime(Ljava/util/Date;)V

    .line 315
    invoke-virtual {v0, v1}, Lcom/googlecode/android/wifi/tether/data/ClientData;->setClientName(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v0, v4}, Lcom/googlecode/android/wifi/tether/data/ClientData;->setIpAddress(Ljava/lang/String;)V

    .line 317
    invoke-virtual {v0, v7}, Lcom/googlecode/android/wifi/tether/data/ClientData;->setMacAddress(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v0, v12}, Lcom/googlecode/android/wifi/tether/data/ClientData;->setConnected(Z)V

    .line 319
    invoke-virtual {v8, v7, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getModifiedDate(Ljava/lang/String;)J
    .locals 3
    .parameter "filename"

    .prologue
    .line 633
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 634
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 635
    const-wide/16 v1, -0x1

    .line 637
    :goto_0
    return-wide v1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    goto :goto_0
.end method

.method public getProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "property"

    .prologue
    .line 523
    invoke-static {p1}, Lcom/googlecode/android/wifi/tether/system/NativeTask;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasRootPermission()Z
    .locals 6

    .prologue
    .line 496
    const/4 v1, 0x1

    .line 498
    .local v1, rooted:Z
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/bin/su"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 499
    .local v2, su:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 500
    new-instance v2, Ljava/io/File;

    .end local v2           #su:Ljava/io/File;
    const-string v3, "/system/xbin/su"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 501
    .restart local v2       #su:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 502
    const/4 v1, 0x0

    .line 509
    .end local v2           #su:Ljava/io/File;
    :cond_0
    :goto_0
    return v1

    .line 505
    :catch_0
    move-exception v0

    .line 506
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "TETHER -> CoreTask"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Can\'t obtain root - Here is what I know: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAccessControlSupported()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 414
    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/config.gz"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 415
    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/net/ip_tables_matches"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 428
    :cond_0
    :goto_0
    return v0

    .line 424
    :cond_1
    const-string v1, "CONFIG_NETFILTER_XT_MATCH_MAC="

    invoke-static {v1}, Lcom/googlecode/android/wifi/tether/system/Configuration;->hasKernelFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 428
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isMSSClampingSupported()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 436
    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/config.gz"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 440
    :cond_0
    :goto_0
    return v0

    .line 438
    :cond_1
    const-string v1, "CONFIG_NETFILTER_XT_TARGET_TCPMSS="

    invoke-static {v1}, Lcom/googlecode/android/wifi/tether/system/Configuration;->hasKernelFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 440
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isNatEnabled()Z
    .locals 2

    .prologue
    .line 383
    const-string v1, "/proc/sys/net/ipv4/ip_forward"

    invoke-virtual {p0, v1}, Lcom/googlecode/android/wifi/tether/system/CoreTask;->readLinesFromFile(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 384
    .local v0, lines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isNetfilterSupported()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 398
    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/config.gz"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 399
    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/net/netfilter"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 410
    :cond_0
    :goto_0
    return v0

    .line 401
    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/net/ip_tables_targets"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 410
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 405
    :cond_3
    const-string v1, "CONFIG_NETFILTER="

    invoke-static {v1}, Lcom/googlecode/android/wifi/tether/system/Configuration;->hasKernelFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    const-string v1, "CONFIG_IP_NF_IPTABLES="

    invoke-static {v1}, Lcom/googlecode/android/wifi/tether/system/Configuration;->hasKernelFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 407
    const-string v1, "CONFIG_NF_NAT"

    invoke-static {v1}, Lcom/googlecode/android/wifi/tether/system/Configuration;->hasKernelFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0
.end method

.method public isProcessRunning(Ljava/lang/String;)Z
    .locals 13
    .parameter "processName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 456
    const/4 v5, 0x0

    .line 457
    .local v5, processIsRunning:Z
    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    .line 458
    .local v7, tmpRunningProcesses:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/io/File;

    const-string v8, "/proc"

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 459
    .local v3, procDir:Ljava/io/File;
    new-instance v2, Lcom/googlecode/android/wifi/tether/system/CoreTask$1;

    invoke-direct {v2, p0}, Lcom/googlecode/android/wifi/tether/system/CoreTask$1;-><init>(Lcom/googlecode/android/wifi/tether/system/CoreTask;)V

    .line 469
    .local v2, filter:Ljava/io/FilenameFilter;
    invoke-virtual {v3, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v6

    .line 470
    .local v6, processes:[Ljava/io/File;
    array-length v10, v6

    move v8, v9

    :goto_0
    if-lt v8, v10, :cond_0

    .line 491
    iput-object v7, p0, Lcom/googlecode/android/wifi/tether/system/CoreTask;->runningProcesses:Ljava/util/Hashtable;

    .line 492
    return v5

    .line 470
    :cond_0
    aget-object v4, v6, v8

    .line 471
    .local v4, process:Ljava/io/File;
    const-string v0, ""

    .line 473
    .local v0, cmdLine:Ljava/lang/String;
    iget-object v11, p0, Lcom/googlecode/android/wifi/tether/system/CoreTask;->runningProcesses:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 474
    iget-object v11, p0, Lcom/googlecode/android/wifi/tether/system/CoreTask;->runningProcesses:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cmdLine:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 483
    .restart local v0       #cmdLine:Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual {v4}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 487
    const/4 v5, 0x1

    .line 470
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 477
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/cmdline"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/googlecode/android/wifi/tether/system/CoreTask;->readLinesFromFile(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 478
    .local v1, cmdlineContent:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_1

    .line 479
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cmdLine:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0       #cmdLine:Ljava/lang/String;
    goto :goto_1
.end method

.method public isRoutefixSupported()Z
    .locals 2

    .prologue
    .line 447
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/bin/ip"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    const/4 v0, 0x1

    .line 450
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public networkInterfaceExists(Ljava/lang/String;)Z
    .locals 4
    .parameter "device"

    .prologue
    const/4 v1, 0x0

    .line 544
    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 551
    :cond_0
    :goto_0
    return v1

    .line 546
    :cond_1
    const-string v2, "/proc/net/dev"

    invoke-virtual {p0, v2}, Lcom/googlecode/android/wifi/tether/system/CoreTask;->readLinesFromFile(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 547
    .local v0, line:Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 548
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public readLinesFromFile(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .parameter "filename"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 332
    const/4 v6, 0x0

    .line 333
    .local v6, line:Ljava/lang/String;
    const/4 v0, 0x0

    .line 334
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 335
    .local v4, ins:Ljava/io/InputStream;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 336
    .local v7, lines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 337
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v8

    if-nez v8, :cond_0

    .line 356
    :goto_0
    return-object v7

    .line 340
    :cond_0
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 341
    .end local v4           #ins:Ljava/io/InputStream;
    .local v5, ins:Ljava/io/InputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v9, 0x2000

    invoke-direct {v1, v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 342
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v6

    if-nez v6, :cond_1

    .line 350
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 351
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v4, v5

    .end local v5           #ins:Ljava/io/InputStream;
    .restart local v4       #ins:Ljava/io/InputStream;
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_0

    .line 343
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #ins:Ljava/io/InputStream;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v5       #ins:Ljava/io/InputStream;
    :cond_1
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 345
    :catch_0
    move-exception v2

    move-object v4, v5

    .end local v5           #ins:Ljava/io/InputStream;
    .restart local v4       #ins:Ljava/io/InputStream;
    move-object v0, v1

    .line 346
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .local v2, e:Ljava/lang/Exception;
    :goto_2
    :try_start_5
    const-string v8, "TETHER -> CoreTask"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Unexpected error - Here is what I know: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 350
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 351
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 352
    :catch_1
    move-exception v8

    goto :goto_0

    .line 348
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 350
    :goto_3
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 351
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 355
    :goto_4
    throw v8

    .line 352
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #ins:Ljava/io/InputStream;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v5       #ins:Ljava/io/InputStream;
    :catch_2
    move-exception v8

    move-object v4, v5

    .end local v5           #ins:Ljava/io/InputStream;
    .restart local v4       #ins:Ljava/io/InputStream;
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_0

    :catch_3
    move-exception v9

    goto :goto_4

    .line 348
    .end local v4           #ins:Ljava/io/InputStream;
    .restart local v5       #ins:Ljava/io/InputStream;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5           #ins:Ljava/io/InputStream;
    .restart local v4       #ins:Ljava/io/InputStream;
    goto :goto_3

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #ins:Ljava/io/InputStream;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v5       #ins:Ljava/io/InputStream;
    :catchall_2
    move-exception v8

    move-object v4, v5

    .end local v5           #ins:Ljava/io/InputStream;
    .restart local v4       #ins:Ljava/io/InputStream;
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_3

    .line 345
    :catch_4
    move-exception v2

    goto :goto_2

    .end local v4           #ins:Ljava/io/InputStream;
    .restart local v5       #ins:Ljava/io/InputStream;
    :catch_5
    move-exception v2

    move-object v4, v5

    .end local v5           #ins:Ljava/io/InputStream;
    .restart local v4       #ins:Ljava/io/InputStream;
    goto :goto_2
.end method

.method public runRootCommand(Ljava/lang/String;)Z
    .locals 4
    .parameter "command"

    .prologue
    .line 513
    const-string v1, "TETHER -> CoreTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Root-Command ==> su -c \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "su -c \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/googlecode/android/wifi/tether/system/NativeTask;->runCommand(Ljava/lang/String;)I

    move-result v0

    .line 515
    .local v0, returncode:I
    if-nez v0, :cond_0

    .line 516
    const/4 v1, 0x1

    .line 519
    :goto_0
    return v1

    .line 518
    :cond_0
    const-string v1, "TETHER -> CoreTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Root-Command error, return code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/system/CoreTask;->DATA_FILE_PATH:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public writeLinesToFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "filename"
    .parameter "lines"

    .prologue
    .line 360
    const/4 v1, 0x0

    .line 361
    .local v1, out:Ljava/io/OutputStream;
    const/4 v3, 0x0

    .line 362
    .local v3, returnStatus:Z
    const-string v4, "TETHER -> CoreTask"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Writing "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes to file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    .end local v1           #out:Ljava/io/OutputStream;
    .local v2, out:Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V

    .line 366
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 372
    if-eqz v2, :cond_0

    .line 373
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 374
    :cond_0
    const/4 v3, 0x1

    move-object v1, v2

    .line 379
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v1       #out:Ljava/io/OutputStream;
    :goto_0
    return v3

    .line 367
    :catch_0
    move-exception v0

    .line 368
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v4, "TETHER -> CoreTask"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unexpected error - Here is what I know: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 372
    if-eqz v1, :cond_1

    .line 373
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 374
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 375
    :catch_1
    move-exception v0

    .line 376
    .local v0, e:Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_0

    .line 370
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 372
    :goto_2
    if-eqz v1, :cond_2

    .line 373
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 374
    :cond_2
    const/4 v3, 0x1

    .line 378
    :goto_3
    throw v4

    .line 375
    :catch_2
    move-exception v0

    .line 376
    .restart local v0       #e:Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_3

    .line 375
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    :catch_3
    move-exception v0

    .line 376
    .restart local v0       #e:Ljava/io/IOException;
    const/4 v3, 0x0

    move-object v1, v2

    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v1       #out:Ljava/io/OutputStream;
    goto :goto_0

    .line 370
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v1       #out:Ljava/io/OutputStream;
    goto :goto_2

    .line 367
    .end local v1           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v1       #out:Ljava/io/OutputStream;
    goto :goto_1
.end method
