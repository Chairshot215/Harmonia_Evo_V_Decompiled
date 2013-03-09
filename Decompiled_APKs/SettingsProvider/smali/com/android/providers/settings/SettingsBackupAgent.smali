.class public Lcom/android/providers/settings/SettingsBackupAgent;
.super Lcom/android/providers/settings/abs/HtcAbsSettingsBackupAgent;
.source "SettingsBackupAgent.java"


# static fields
.field private static final COLUMN_NAME:I = 0x1

.field private static final COLUMN_VALUE:I = 0x2

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

#the value of this static final field might be set in the static constructor
.field private static final DEBUG_BACKUP:Z = false

.field private static final EMPTY_DATA:[B = null

.field private static final FILE_WIFI_SUPPLICANT:Ljava/lang/String; = "/data/misc/wifi/wpa_supplicant.conf"

.field private static final FILE_WIFI_SUPPLICANT_TEMPLATE:Ljava/lang/String; = "/system/etc/wifi/wpa_supplicant.conf"

.field private static final FULL_BACKUP_VERSION:I = 0x1

.field private static final INTEGER_BYTE_COUNT:I = 0x4

.field private static final KEY_LOCALE:Ljava/lang/String; = "locale"

.field private static final KEY_SECURE:Ljava/lang/String; = "secure"

.field private static final KEY_SYSTEM:Ljava/lang/String; = "system"

.field private static final KEY_WIFI_CONFIG:Ljava/lang/String; = "\uffedCONFIG_WIFI"

.field private static final KEY_WIFI_SUPPLICANT:Ljava/lang/String; = "\uffedWIFI"

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final STAGE_FILE:Ljava/lang/String; = "flattened-data"

.field private static final STATE_LOCALE:I = 0x2

.field private static final STATE_SECURE:I = 0x1

.field private static final STATE_SIZE:I = 0x5

.field private static final STATE_SYSTEM:I = 0x0

.field private static final STATE_VERSION:I = 0x2

.field private static final STATE_VERSION_1:I = 0x1

.field private static final STATE_VERSION_1_SIZE:I = 0x4

.field private static final STATE_WIFI_CONFIG:I = 0x4

.field private static final STATE_WIFI_SUPPLICANT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SettingsBackupAgent"

.field private static mWifiConfigFile:Ljava/lang/String;


# instance fields
.field private mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

.field private mWfm:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    sget-boolean v0, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/providers/settings/SettingsBackupAgent;->DEBUG:Z

    .line 63
    sget-boolean v0, Lcom/android/providers/settings/SettingsBackupAgent;->DEBUG:Z

    if-nez v0, :cond_0

    :cond_0
    sput-boolean v3, Lcom/android/providers/settings/SettingsBackupAgent;->DEBUG_BACKUP:Z

    .line 89
    new-array v0, v2, [B

    sput-object v0, Lcom/android/providers/settings/SettingsBackupAgent;->EMPTY_DATA:[B

    .line 96
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "name"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "value"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/settings/SettingsBackupAgent;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/providers/settings/abs/HtcAbsSettingsBackupAgent;-><init>()V

    return-void
.end method

.method private copyWifiSupplicantTemplate()V
    .locals 7

    .prologue
    .line 663
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/system/etc/wifi/wpa_supplicant.conf"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 664
    .local v0, br:Ljava/io/BufferedReader;
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    const-string v5, "/data/misc/wifi/wpa_supplicant.conf"

    invoke-direct {v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 676
    .local v1, bw:Ljava/io/BufferedWriter;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, line:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 677
    const-string v4, "network"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 688
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 689
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 693
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #bw:Ljava/io/BufferedWriter;
    .end local v3           #line:Ljava/lang/String;
    :goto_1
    return-void

    .line 681
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v1       #bw:Ljava/io/BufferedWriter;
    .restart local v3       #line:Ljava/lang/String;
    :cond_1
    sget-boolean v4, Lcom/android/providers/settings/SettingsBackupAgent;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 682
    const-string v4, "SettingsBackupAgent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "copyWifiSupplicantTemplate: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    .line 685
    const-string v4, "\n"

    const/4 v5, 0x0

    const-string v6, "\n"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 690
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #bw:Ljava/io/BufferedWriter;
    .end local v3           #line:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 691
    .local v2, ioe:Ljava/io/IOException;
    const-string v4, "SettingsBackupAgent"

    const-string v5, "Couldn\'t copy wpa_supplicant file"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private enableWifi(Z)I
    .locals 2
    .parameter "enable"

    .prologue
    .line 725
    iget-object v1, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mWfm:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_0

    .line 726
    iget-object v1, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mWfm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 727
    .local v0, state:I
    iget-object v1, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mWfm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 730
    .end local v0           #state:I
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private extractRelevantValues(Landroid/database/Cursor;[Ljava/lang/String;)[B
    .locals 20
    .parameter "cursor"
    .parameter "settings"

    .prologue
    .line 472
    move-object/from16 v0, p2

    array-length v12, v0

    .line 473
    .local v12, settingsCount:I
    mul-int/lit8 v17, v12, 0x2

    move/from16 v0, v17

    new-array v0, v0, [[B

    move-object/from16 v16, v0

    .line 474
    .local v16, values:[[B
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v17

    if-nez v17, :cond_1

    .line 475
    const-string v17, "SettingsBackupAgent"

    const-string v18, "Couldn\'t read from the cursor"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v11, v0, [B

    .line 532
    :cond_0
    return-object v11

    .line 480
    :cond_1
    const/4 v13, 0x0

    .line 481
    .local v13, totalSize:I
    const/4 v2, 0x0

    .line 482
    .local v2, backedUpSettingIndex:I
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 483
    .local v3, cachedEntries:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v12, :cond_6

    .line 484
    aget-object v7, p2, v6

    .line 485
    .local v7, key:Ljava/lang/String;
    invoke-interface {v3, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 488
    .local v14, value:Ljava/lang/String;
    if-nez v14, :cond_2

    .line 489
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v17

    if-nez v17, :cond_2

    .line 490
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 491
    .local v4, cursorKey:Ljava/lang/String;
    const/16 v17, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 492
    .local v5, cursorValue:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 493
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 494
    move-object v14, v5

    .line 501
    .end local v4           #cursorKey:Ljava/lang/String;
    .end local v5           #cursorValue:Ljava/lang/String;
    :cond_2
    if-nez v14, :cond_5

    .line 502
    sget-boolean v17, Lcom/android/providers/settings/SettingsBackupAgent;->DEBUG:Z

    if-eqz v17, :cond_3

    .line 503
    const-string v17, "SettingsBackupAgent"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Skip backup settings: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " (value is null)"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 497
    .restart local v4       #cursorKey:Ljava/lang/String;
    .restart local v5       #cursorValue:Ljava/lang/String;
    :cond_4
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 509
    .end local v4           #cursorKey:Ljava/lang/String;
    .end local v5           #cursorValue:Ljava/lang/String;
    :cond_5
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 510
    .local v8, keyBytes:[B
    array-length v0, v8

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x4

    add-int v13, v13, v17

    .line 511
    mul-int/lit8 v17, v2, 0x2

    aput-object v8, v16, v17

    .line 513
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    .line 514
    .local v15, valueBytes:[B
    array-length v0, v15

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x4

    add-int v13, v13, v17

    .line 515
    mul-int/lit8 v17, v2, 0x2

    add-int/lit8 v17, v17, 0x1

    aput-object v15, v16, v17

    .line 517
    add-int/lit8 v2, v2, 0x1

    .line 519
    sget-boolean v17, Lcom/android/providers/settings/SettingsBackupAgent;->DEBUG:Z

    if-eqz v17, :cond_3

    .line 520
    const-string v17, "SettingsBackupAgent"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Backed up setting: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 525
    .end local v7           #key:Ljava/lang/String;
    .end local v8           #keyBytes:[B
    .end local v14           #value:Ljava/lang/String;
    .end local v15           #valueBytes:[B
    :cond_6
    new-array v11, v13, [B

    .line 526
    .local v11, result:[B
    const/4 v10, 0x0

    .line 527
    .local v10, pos:I
    mul-int/lit8 v9, v2, 0x2

    .line 528
    .local v9, keyValuePairCount:I
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v9, :cond_0

    .line 529
    aget-object v17, v16, v6

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v11, v10, v1}, Lcom/android/providers/settings/SettingsBackupAgent;->writeInt([BII)I

    move-result v10

    .line 530
    aget-object v17, v16, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v11, v10, v1}, Lcom/android/providers/settings/SettingsBackupAgent;->writeBytes([BI[B)I

    move-result v10

    .line 528
    add-int/lit8 v6, v6, 0x1

    goto :goto_3
.end method

.method private getFileData(Ljava/lang/String;)[B
    .locals 10
    .parameter "filename"

    .prologue
    .line 536
    const/4 v3, 0x0

    .line 538
    .local v3, is:Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 539
    .local v1, file:Ljava/io/File;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    .end local v3           #is:Ljava/io/InputStream;
    .local v4, is:Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v7

    long-to-int v7, v7

    new-array v0, v7, [B

    .line 545
    .local v0, bytes:[B
    const/4 v6, 0x0

    .line 546
    .local v6, offset:I
    const/4 v5, 0x0

    .line 548
    .local v5, numRead:I
    :goto_0
    array-length v7, v0

    if-ge v6, v7, :cond_0

    array-length v7, v0

    sub-int/2addr v7, v6

    invoke-virtual {v4, v0, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-ltz v5, :cond_0

    .line 549
    add-int/2addr v6, v5

    goto :goto_0

    .line 553
    :cond_0
    array-length v7, v0

    if-ge v6, v7, :cond_3

    .line 554
    const-string v7, "SettingsBackupAgent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t backup "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    sget-object v0, Lcom/android/providers/settings/SettingsBackupAgent;->EMPTY_DATA:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 562
    .end local v0           #bytes:[B
    if-eqz v4, :cond_1

    .line 564
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_1
    move-object v3, v4

    .line 566
    .end local v1           #file:Ljava/io/File;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #numRead:I
    .end local v6           #offset:I
    .restart local v3       #is:Ljava/io/InputStream;
    :cond_2
    :goto_2
    return-object v0

    .line 562
    .end local v3           #is:Ljava/io/InputStream;
    .restart local v0       #bytes:[B
    .restart local v1       #file:Ljava/io/File;
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v5       #numRead:I
    .restart local v6       #offset:I
    :cond_3
    if-eqz v4, :cond_4

    .line 564
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_4
    :goto_3
    move-object v3, v4

    .line 566
    .end local v4           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    goto :goto_2

    .line 558
    .end local v0           #bytes:[B
    .end local v1           #file:Ljava/io/File;
    .end local v5           #numRead:I
    .end local v6           #offset:I
    :catch_0
    move-exception v2

    .line 559
    .local v2, ioe:Ljava/io/IOException;
    :goto_4
    :try_start_4
    const-string v7, "SettingsBackupAgent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t backup "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    sget-object v0, Lcom/android/providers/settings/SettingsBackupAgent;->EMPTY_DATA:[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 562
    if-eqz v3, :cond_2

    .line 564
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 565
    :catch_1
    move-exception v7

    goto :goto_2

    .line 562
    .end local v2           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v3, :cond_5

    .line 564
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 566
    :cond_5
    :goto_6
    throw v7

    .line 565
    .end local v3           #is:Ljava/io/InputStream;
    .restart local v1       #file:Ljava/io/File;
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v5       #numRead:I
    .restart local v6       #offset:I
    :catch_2
    move-exception v7

    goto :goto_1

    .restart local v0       #bytes:[B
    :catch_3
    move-exception v7

    goto :goto_3

    .end local v0           #bytes:[B
    .end local v1           #file:Ljava/io/File;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #numRead:I
    .end local v6           #offset:I
    .restart local v3       #is:Ljava/io/InputStream;
    :catch_4
    move-exception v8

    goto :goto_6

    .line 562
    .end local v3           #is:Ljava/io/InputStream;
    .restart local v1       #file:Ljava/io/File;
    .restart local v4       #is:Ljava/io/InputStream;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    goto :goto_5

    .line 558
    .end local v3           #is:Ljava/io/InputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    :catch_5
    move-exception v2

    move-object v3, v4

    .end local v4           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    goto :goto_4
.end method

.method private getSecureSettings()[B
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 370
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/settings/SettingsBackupAgent;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 373
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    sget-object v1, Landroid/provider/Settings$Secure;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getBackupList(Lcom/android/providers/settings/util/HtcDatabaseTable;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lcom/android/providers/settings/SettingsBackupAgent;->extractRelevantValues(Landroid/database/Cursor;[Ljava/lang/String;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 379
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getSystemSettings()[B
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 356
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/settings/SettingsBackupAgent;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 359
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    sget-object v1, Landroid/provider/Settings$System;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getBackupList(Lcom/android/providers/settings/util/HtcDatabaseTable;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lcom/android/providers/settings/SettingsBackupAgent;->extractRelevantValues(Landroid/database/Cursor;[Ljava/lang/String;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 365
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getWifiSupplicant(Ljava/lang/String;)[B
    .locals 10
    .parameter "filename"

    .prologue
    .line 598
    const/4 v0, 0x0

    .line 600
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 601
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 602
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    .line 603
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 604
    .local v5, relevantLines:Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    .line 606
    .local v6, started:Z
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, line:Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 607
    if-nez v6, :cond_1

    const-string v7, "network"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 608
    const/4 v6, 0x1

    .line 610
    :cond_1
    if-eqz v6, :cond_0

    .line 611
    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 622
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #relevantLines:Ljava/lang/StringBuffer;
    .end local v6           #started:Z
    :catch_0
    move-exception v3

    move-object v0, v1

    .line 623
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v2           #file:Ljava/io/File;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .local v3, ioe:Ljava/io/IOException;
    :goto_1
    :try_start_2
    const-string v7, "SettingsBackupAgent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t backup "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    sget-object v7, Lcom/android/providers/settings/SettingsBackupAgent;->EMPTY_DATA:[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 626
    if-eqz v0, :cond_2

    .line 628
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 630
    .end local v3           #ioe:Ljava/io/IOException;
    :cond_2
    :goto_2
    return-object v7

    .line 614
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v5       #relevantLines:Ljava/lang/StringBuffer;
    .restart local v6       #started:Z
    :cond_3
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 615
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v7

    .line 626
    if-eqz v1, :cond_4

    .line 628
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_4
    :goto_3
    move-object v0, v1

    .line 630
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_2

    .line 617
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :cond_5
    :try_start_6
    sget-object v7, Lcom/android/providers/settings/SettingsBackupAgent;->EMPTY_DATA:[B
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 626
    if-eqz v1, :cond_6

    .line 628
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_6
    :goto_4
    move-object v0, v1

    .line 630
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_2

    .line 620
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #relevantLines:Ljava/lang/StringBuffer;
    .end local v6           #started:Z
    :cond_7
    :try_start_8
    sget-object v7, Lcom/android/providers/settings/SettingsBackupAgent;->EMPTY_DATA:[B
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 626
    if-eqz v0, :cond_2

    .line 628
    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_2

    .line 629
    :catch_1
    move-exception v8

    goto :goto_2

    .line 626
    .end local v2           #file:Ljava/io/File;
    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v0, :cond_8

    .line 628
    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 630
    :cond_8
    :goto_6
    throw v7

    .line 629
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v5       #relevantLines:Ljava/lang/StringBuffer;
    .restart local v6       #started:Z
    :catch_2
    move-exception v8

    goto :goto_3

    :catch_3
    move-exception v8

    goto :goto_4

    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v2           #file:Ljava/io/File;
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #relevantLines:Ljava/lang/StringBuffer;
    .end local v6           #started:Z
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v3       #ioe:Ljava/io/IOException;
    :catch_4
    move-exception v8

    goto :goto_2

    .end local v3           #ioe:Ljava/io/IOException;
    :catch_5
    move-exception v8

    goto :goto_6

    .line 626
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v2       #file:Ljava/io/File;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_5

    .line 622
    .end local v2           #file:Ljava/io/File;
    :catch_6
    move-exception v3

    goto :goto_1
.end method

.method private readInt([BI)I
    .locals 3
    .parameter "in"
    .parameter "pos"

    .prologue
    .line 716
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x0

    or-int v0, v1, v2

    .line 721
    .local v0, result:I
    return v0
.end method

.method private readOldChecksums(Landroid/os/ParcelFileDescriptor;)[J
    .locals 7
    .parameter "oldState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x5

    .line 302
    new-array v2, v6, [J

    .line 304
    .local v2, stateChecksums:[J
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 308
    .local v0, dataInput:Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 309
    .local v3, stateVersion:I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 310
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v4, 0x4

    if-ge v1, v4, :cond_1

    .line 311
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    aput-wide v4, v2, v1

    .line 310
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 313
    .end local v1           #i:I
    :cond_0
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 314
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    if-ge v1, v6, :cond_1

    .line 315
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    aput-wide v4, v2, v1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 318
    .end local v1           #i:I
    .end local v3           #stateVersion:I
    :catch_0
    move-exception v4

    .line 322
    :cond_1
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 323
    return-object v2
.end method

.method private restoreFileData(Ljava/lang/String;Landroid/app/backup/BackupDataInput;)V
    .locals 5
    .parameter "filename"
    .parameter "data"

    .prologue
    .line 573
    invoke-virtual {p2}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v2

    new-array v0, v2, [B

    .line 574
    .local v0, bytes:[B
    array-length v2, v0

    if-gtz v2, :cond_0

    .line 581
    :goto_0
    return-void

    .line 576
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p2}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v3

    invoke-virtual {p2, v0, v2, v3}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 577
    array-length v2, v0

    invoke-direct {p0, p1, v0, v2}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreFileData(Ljava/lang/String;[BI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 578
    :catch_0
    move-exception v1

    .line 579
    .local v1, e:Ljava/io/IOException;
    const-string v2, "SettingsBackupAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to read file data for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private restoreFileData(Ljava/lang/String;[BI)V
    .locals 6
    .parameter "filename"
    .parameter "bytes"
    .parameter "size"

    .prologue
    .line 585
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 586
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 588
    :cond_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v3, p1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 589
    .local v2, os:Ljava/io/OutputStream;
    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 590
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    .end local v0           #file:Ljava/io/File;
    .end local v2           #os:Ljava/io/OutputStream;
    :goto_0
    return-void

    .line 591
    :catch_0
    move-exception v1

    .line 592
    .local v1, ioe:Ljava/io/IOException;
    const-string v3, "SettingsBackupAgent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t restore "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private restoreSettings(Landroid/app/backup/BackupDataInput;Landroid/net/Uri;)V
    .locals 4
    .parameter "data"
    .parameter "contentUri"

    .prologue
    .line 384
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v2

    new-array v1, v2, [B

    .line 386
    .local v1, settings:[B
    const/4 v2, 0x0

    :try_start_0
    array-length v3, v1

    invoke-virtual {p1, v1, v2, v3}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    array-length v2, v1

    invoke-direct {p0, v1, v2, p2}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreSettings([BILandroid/net/Uri;)V

    .line 392
    :goto_0
    return-void

    .line 387
    :catch_0
    move-exception v0

    .line 388
    .local v0, ioe:Ljava/io/IOException;
    const-string v2, "SettingsBackupAgent"

    const-string v3, "Couldn\'t read entity data"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private restoreSettings([BILandroid/net/Uri;)V
    .locals 17
    .parameter "settings"
    .parameter "bytes"
    .parameter "contentUri"

    .prologue
    .line 395
    sget-boolean v14, Lcom/android/providers/settings/SettingsBackupAgent;->DEBUG:Z

    if-eqz v14, :cond_0

    .line 396
    const-string v14, "SettingsBackupAgent"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "restoreSettings: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_0
    const/4 v13, 0x0

    .line 401
    .local v13, whitelist:[Ljava/lang/String;
    sget-object v14, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 402
    sget-object v14, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    sget-object v15, Landroid/provider/Settings$Secure;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    invoke-static {v14, v15}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getBackupList(Lcom/android/providers/settings/util/HtcDatabaseTable;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 414
    :goto_0
    const/4 v9, 0x0

    .line 415
    .local v9, pos:I
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 416
    .local v2, cachedEntries:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Landroid/content/ContentValues;

    const/4 v14, 0x2

    invoke-direct {v3, v14}, Landroid/content/ContentValues;-><init>(I)V

    .line 417
    .local v3, contentValues:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/providers/settings/SettingsBackupAgent;->mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

    .line 419
    .local v10, settingsHelper:Lcom/android/providers/settings/SettingsHelper;
    array-length v12, v13

    .line 420
    .local v12, whiteListSize:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v12, :cond_a

    .line 421
    aget-object v7, v13, v6

    .line 422
    .local v7, key:Ljava/lang/String;
    invoke-interface {v2, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 425
    .local v11, value:Ljava/lang/String;
    if-nez v11, :cond_1

    .line 426
    :goto_2
    move/from16 v0, p2

    if-ge v9, v0, :cond_1

    .line 427
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9}, Lcom/android/providers/settings/SettingsBackupAgent;->readInt([BI)I

    move-result v8

    .line 428
    .local v8, length:I
    add-int/lit8 v9, v9, 0x4

    .line 429
    if-lez v8, :cond_5

    new-instance v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v9, v8}, Ljava/lang/String;-><init>([BII)V

    .line 430
    .local v4, dataKey:Ljava/lang/String;
    :goto_3
    add-int/2addr v9, v8

    .line 431
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9}, Lcom/android/providers/settings/SettingsBackupAgent;->readInt([BI)I

    move-result v8

    .line 432
    add-int/lit8 v9, v9, 0x4

    .line 433
    if-lez v8, :cond_6

    new-instance v5, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v5, v0, v9, v8}, Ljava/lang/String;-><init>([BII)V

    .line 434
    .local v5, dataValue:Ljava/lang/String;
    :goto_4
    add-int/2addr v9, v8

    .line 435
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 436
    move-object v11, v5

    .line 443
    .end local v4           #dataKey:Ljava/lang/String;
    .end local v5           #dataValue:Ljava/lang/String;
    .end local v8           #length:I
    :cond_1
    if-nez v11, :cond_8

    .line 444
    sget-boolean v14, Lcom/android/providers/settings/SettingsBackupAgent;->DEBUG:Z

    if-eqz v14, :cond_2

    .line 445
    const-string v14, "SettingsBackupAgent"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Skip restore settings: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " (value is null)"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_2
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 405
    .end local v2           #cachedEntries:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3           #contentValues:Landroid/content/ContentValues;
    .end local v6           #i:I
    .end local v7           #key:Ljava/lang/String;
    .end local v9           #pos:I
    .end local v10           #settingsHelper:Lcom/android/providers/settings/SettingsHelper;
    .end local v11           #value:Ljava/lang/String;
    .end local v12           #whiteListSize:I
    :cond_3
    sget-object v14, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 406
    sget-object v14, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    sget-object v15, Landroid/provider/Settings$System;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    invoke-static {v14, v15}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getBackupList(Lcom/android/providers/settings/util/HtcDatabaseTable;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0

    .line 410
    :cond_4
    new-instance v14, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unknown URI: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 429
    .restart local v2       #cachedEntries:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3       #contentValues:Landroid/content/ContentValues;
    .restart local v6       #i:I
    .restart local v7       #key:Ljava/lang/String;
    .restart local v8       #length:I
    .restart local v9       #pos:I
    .restart local v10       #settingsHelper:Lcom/android/providers/settings/SettingsHelper;
    .restart local v11       #value:Ljava/lang/String;
    .restart local v12       #whiteListSize:I
    :cond_5
    const/4 v4, 0x0

    goto :goto_3

    .line 433
    .restart local v4       #dataKey:Ljava/lang/String;
    :cond_6
    const/4 v5, 0x0

    goto :goto_4

    .line 439
    .restart local v5       #dataValue:Ljava/lang/String;
    :cond_7
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 450
    .end local v4           #dataKey:Ljava/lang/String;
    .end local v5           #dataValue:Ljava/lang/String;
    .end local v8           #length:I
    :cond_8
    invoke-virtual {v10, v7, v11}, Lcom/android/providers/settings/SettingsHelper;->restoreValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 451
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 452
    const-string v14, "name"

    invoke-virtual {v3, v14, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string v14, "value"

    invoke-virtual {v3, v14, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v14, v0, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 457
    :cond_9
    sget-boolean v14, Lcom/android/providers/settings/SettingsBackupAgent;->DEBUG:Z

    if-eqz v14, :cond_2

    .line 458
    const-string v14, "SettingsBackupAgent"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Restored setting: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 461
    .end local v7           #key:Ljava/lang/String;
    .end local v11           #value:Ljava/lang/String;
    :cond_a
    return-void
.end method

.method private restoreWifiSupplicant(Ljava/lang/String;Landroid/app/backup/BackupDataInput;)V
    .locals 4
    .parameter "filename"
    .parameter "data"

    .prologue
    .line 636
    invoke-virtual {p2}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v2

    new-array v0, v2, [B

    .line 637
    .local v0, bytes:[B
    array-length v2, v0

    if-gtz v2, :cond_0

    .line 644
    :goto_0
    return-void

    .line 639
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p2}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v3

    invoke-virtual {p2, v0, v2, v3}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 640
    array-length v2, v0

    invoke-direct {p0, p1, v0, v2}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreWifiSupplicant(Ljava/lang/String;[BI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 641
    :catch_0
    move-exception v1

    .line 642
    .local v1, e:Ljava/io/IOException;
    const-string v2, "SettingsBackupAgent"

    const-string v3, "Unable to read supplicant data"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private restoreWifiSupplicant(Ljava/lang/String;[BI)V
    .locals 6
    .parameter "filename"
    .parameter "bytes"
    .parameter "size"

    .prologue
    .line 648
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/misc/wifi/wpa_supplicant.conf"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 649
    .local v2, supplicantFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 650
    :cond_0
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsBackupAgent;->copyWifiSupplicantTemplate()V

    .line 652
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v3, p1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 653
    .local v1, os:Ljava/io/OutputStream;
    const-string v3, "\n"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 654
    const/4 v3, 0x0

    invoke-virtual {v1, p2, v3, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 655
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    .end local v1           #os:Ljava/io/OutputStream;
    .end local v2           #supplicantFile:Ljava/io/File;
    :goto_0
    return-void

    .line 656
    :catch_0
    move-exception v0

    .line 657
    .local v0, ioe:Ljava/io/IOException;
    const-string v3, "SettingsBackupAgent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t restore "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private writeBytes([BI[B)I
    .locals 2
    .parameter "out"
    .parameter "pos"
    .parameter "value"

    .prologue
    .line 711
    const/4 v0, 0x0

    array-length v1, p3

    invoke-static {p3, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 712
    array-length v0, p3

    add-int/2addr v0, p2

    return v0
.end method

.method private writeIfChanged(JLjava/lang/String;[BLandroid/app/backup/BackupDataOutput;)J
    .locals 4
    .parameter "oldChecksum"
    .parameter "key"
    .parameter "data"
    .parameter "output"

    .prologue
    .line 340
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 341
    .local v0, checkSummer:Ljava/util/zip/CRC32;
    invoke-virtual {v0, p4}, Ljava/util/zip/CRC32;->update([B)V

    .line 342
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    .line 343
    .local v1, newChecksum:J
    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    .line 352
    .end local p1
    :goto_0
    return-wide p1

    .line 347
    .restart local p1
    :cond_0
    :try_start_0
    array-length v3, p4

    invoke-virtual {p5, p3, v3}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 348
    array-length v3, p4

    invoke-virtual {p5, p4, v3}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-wide p1, v1

    .line 352
    goto :goto_0

    .line 349
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private writeInt([BII)I
    .locals 2
    .parameter "out"
    .parameter "pos"
    .parameter "value"

    .prologue
    .line 703
    add-int/lit8 v0, p2, 0x0

    shr-int/lit8 v1, p3, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 704
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p3, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 705
    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p3, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 706
    add-int/lit8 v0, p2, 0x3

    shr-int/lit8 v1, p3, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 707
    add-int/lit8 v0, p2, 0x4

    return v0
.end method

.method private writeNewChecksums([JLandroid/os/ParcelFileDescriptor;)V
    .locals 4
    .parameter "checksums"
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 328
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 331
    .local v0, dataOutput:Ljava/io/DataOutputStream;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 332
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 333
    aget-wide v2, p1, v1

    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 332
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 335
    :cond_0
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 336
    return-void
.end method


# virtual methods
.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 30
    .parameter "oldState"
    .parameter "data"
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getSystemSettings()[B

    move-result-object v7

    .line 135
    .local v7, systemSettingsData:[B
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getSecureSettings()[B

    move-result-object v12

    .line 136
    .local v12, secureSettingsData:[B
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/settings/SettingsBackupAgent;->mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

    invoke-virtual {v3}, Lcom/android/providers/settings/SettingsHelper;->getLocaleData()[B

    move-result-object v17

    .line 137
    .local v17, locale:[B
    const-string v3, "/data/misc/wifi/wpa_supplicant.conf"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/settings/SettingsBackupAgent;->getWifiSupplicant(Ljava/lang/String;)[B

    move-result-object v22

    .line 138
    .local v22, wifiSupplicantData:[B
    sget-object v3, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiConfigFile:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/settings/SettingsBackupAgent;->getFileData(Ljava/lang/String;)[B

    move-result-object v27

    .line 140
    .local v27, wifiConfigData:[B
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/SettingsBackupAgent;->readOldChecksums(Landroid/os/ParcelFileDescriptor;)[J

    move-result-object v29

    .line 142
    .local v29, stateChecksums:[J
    const/4 v9, 0x0

    const/4 v3, 0x0

    aget-wide v4, v29, v3

    const-string v6, "system"

    move-object/from16 v3, p0

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/providers/settings/SettingsBackupAgent;->writeIfChanged(JLjava/lang/String;[BLandroid/app/backup/BackupDataOutput;)J

    move-result-wide v3

    aput-wide v3, v29, v9

    .line 144
    const/4 v3, 0x1

    const/4 v4, 0x1

    aget-wide v9, v29, v4

    const-string v11, "secure"

    move-object/from16 v8, p0

    move-object/from16 v13, p2

    invoke-direct/range {v8 .. v13}, Lcom/android/providers/settings/SettingsBackupAgent;->writeIfChanged(JLjava/lang/String;[BLandroid/app/backup/BackupDataOutput;)J

    move-result-wide v4

    aput-wide v4, v29, v3

    .line 146
    const/4 v3, 0x2

    const/4 v4, 0x2

    aget-wide v14, v29, v4

    const-string v16, "locale"

    move-object/from16 v13, p0

    move-object/from16 v18, p2

    invoke-direct/range {v13 .. v18}, Lcom/android/providers/settings/SettingsBackupAgent;->writeIfChanged(JLjava/lang/String;[BLandroid/app/backup/BackupDataOutput;)J

    move-result-wide v4

    aput-wide v4, v29, v3

    .line 148
    const/4 v3, 0x3

    const/4 v4, 0x3

    aget-wide v19, v29, v4

    const-string v21, "\uffedWIFI"

    move-object/from16 v18, p0

    move-object/from16 v23, p2

    invoke-direct/range {v18 .. v23}, Lcom/android/providers/settings/SettingsBackupAgent;->writeIfChanged(JLjava/lang/String;[BLandroid/app/backup/BackupDataOutput;)J

    move-result-wide v4

    aput-wide v4, v29, v3

    .line 151
    const/4 v3, 0x4

    const/4 v4, 0x4

    aget-wide v24, v29, v4

    const-string v26, "\uffedCONFIG_WIFI"

    move-object/from16 v23, p0

    move-object/from16 v28, p2

    invoke-direct/range {v23 .. v28}, Lcom/android/providers/settings/SettingsBackupAgent;->writeIfChanged(JLjava/lang/String;[BLandroid/app/backup/BackupDataOutput;)J

    move-result-wide v4

    aput-wide v4, v29, v3

    .line 155
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/providers/settings/SettingsBackupAgent;->writeNewChecksums([JLandroid/os/ParcelFileDescriptor;)V

    .line 156
    return-void
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 121
    sget-boolean v1, Lcom/android/providers/settings/SettingsBackupAgent;->DEBUG_BACKUP:Z

    if-eqz v1, :cond_0

    const-string v1, "SettingsBackupAgent"

    const-string v2, "onCreate() invoked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    new-instance v1, Lcom/android/providers/settings/SettingsHelper;

    invoke-direct {v1, p0}, Lcom/android/providers/settings/SettingsHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

    .line 124
    invoke-super {p0}, Lcom/android/providers/settings/abs/HtcAbsSettingsBackupAgent;->onCreate()V

    .line 126
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/providers/settings/SettingsBackupAgent;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 127
    .local v0, mWfm:Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfigFile()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiConfigFile:Ljava/lang/String;

    .line 128
    :cond_1
    return-void
.end method

.method public onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    .locals 13
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getSystemSettings()[B

    move-result-object v7

    .line 195
    .local v7, systemSettingsData:[B
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getSecureSettings()[B

    move-result-object v5

    .line 196
    .local v5, secureSettingsData:[B
    iget-object v10, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

    invoke-virtual {v10}, Lcom/android/providers/settings/SettingsHelper;->getLocaleData()[B

    move-result-object v2

    .line 197
    .local v2, locale:[B
    const-string v10, "/data/misc/wifi/wpa_supplicant.conf"

    invoke-direct {p0, v10}, Lcom/android/providers/settings/SettingsBackupAgent;->getWifiSupplicant(Ljava/lang/String;)[B

    move-result-object v9

    .line 198
    .local v9, wifiSupplicantData:[B
    sget-object v10, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiConfigFile:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/providers/settings/SettingsBackupAgent;->getFileData(Ljava/lang/String;)[B

    move-result-object v8

    .line 202
    .local v8, wifiConfigData:[B
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getFilesDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 203
    .local v4, root:Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    const-string v10, "flattened-data"

    invoke-direct {v6, v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .local v6, stage:Ljava/io/File;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 206
    .local v1, filestream:Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 207
    .local v0, bufstream:Ljava/io/BufferedOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 209
    .local v3, out:Ljava/io/DataOutputStream;
    sget-boolean v10, Lcom/android/providers/settings/SettingsBackupAgent;->DEBUG_BACKUP:Z

    if-eqz v10, :cond_0

    const-string v10, "SettingsBackupAgent"

    const-string v11, "Writing flattened data version 1"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_0
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 212
    sget-boolean v10, Lcom/android/providers/settings/SettingsBackupAgent;->DEBUG_BACKUP:Z

    if-eqz v10, :cond_1

    const-string v10, "SettingsBackupAgent"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    array-length v12, v7

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " bytes of settings data"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_1
    array-length v10, v7

    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 214
    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->write([B)V

    .line 215
    sget-boolean v10, Lcom/android/providers/settings/SettingsBackupAgent;->DEBUG_BACKUP:Z

    if-eqz v10, :cond_2

    const-string v10, "SettingsBackupAgent"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    array-length v12, v5

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " bytes of secure settings data"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_2
    array-length v10, v5

    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 217
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 218
    sget-boolean v10, Lcom/android/providers/settings/SettingsBackupAgent;->DEBUG_BACKUP:Z

    if-eqz v10, :cond_3

    const-string v10, "SettingsBackupAgent"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    array-length v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " bytes of locale data"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_3
    array-length v10, v2

    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 220
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 221
    sget-boolean v10, Lcom/android/providers/settings/SettingsBackupAgent;->DEBUG_BACKUP:Z

    if-eqz v10, :cond_4

    const-string v10, "SettingsBackupAgent"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    array-length v12, v9

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " bytes of wifi supplicant data"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_4
    array-length v10, v9

    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 223
    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->write([B)V

    .line 224
    sget-boolean v10, Lcom/android/providers/settings/SettingsBackupAgent;->DEBUG_BACKUP:Z

    if-eqz v10, :cond_5

    const-string v10, "SettingsBackupAgent"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    array-length v12, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " bytes of wifi config data"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_5
    array-length v10, v8

    invoke-virtual {v3, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 226
    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->write([B)V

    .line 228
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 231
    invoke-virtual {p0, v6, p1}, Lcom/android/providers/settings/SettingsBackupAgent;->fullBackupFile(Ljava/io/File;Landroid/app/backup/FullBackupDataOutput;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 235
    return-void

    .line 233
    .end local v0           #bufstream:Ljava/io/BufferedOutputStream;
    .end local v1           #filestream:Ljava/io/FileOutputStream;
    .end local v3           #out:Ljava/io/DataOutputStream;
    :catchall_0
    move-exception v10

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    throw v10
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 9
    .parameter "data"
    .parameter "appVersionCode"
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 162
    :goto_0
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 163
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, key:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v3

    .line 165
    .local v3, size:I
    const-string v4, "system"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 166
    sget-object v4, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v4}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreSettings(Landroid/app/backup/BackupDataInput;Landroid/net/Uri;)V

    .line 167
    iget-object v4, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

    invoke-virtual {v4}, Lcom/android/providers/settings/SettingsHelper;->applyAudioSettings()V

    goto :goto_0

    .line 168
    :cond_0
    const-string v4, "secure"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 169
    sget-object v4, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v4}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreSettings(Landroid/app/backup/BackupDataInput;Landroid/net/Uri;)V

    goto :goto_0

    .line 170
    :cond_1
    const-string v4, "\uffedWIFI"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 171
    invoke-direct {p0, v5}, Lcom/android/providers/settings/SettingsBackupAgent;->enableWifi(Z)I

    move-result v2

    .line 172
    .local v2, retainedWifiState:I
    const-string v4, "/data/misc/wifi/wpa_supplicant.conf"

    invoke-direct {p0, v4, p1}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreWifiSupplicant(Ljava/lang/String;Landroid/app/backup/BackupDataInput;)V

    .line 173
    const-string v4, "/data/misc/wifi/wpa_supplicant.conf"

    const/16 v6, 0x1b0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    const/16 v8, 0x3f2

    invoke-static {v4, v6, v7, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 178
    const/4 v4, 0x3

    if-eq v2, v4, :cond_2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    :cond_2
    const/4 v4, 0x1

    :goto_1
    invoke-direct {p0, v4}, Lcom/android/providers/settings/SettingsBackupAgent;->enableWifi(Z)I

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_1

    .line 180
    .end local v2           #retainedWifiState:I
    :cond_4
    const-string v4, "locale"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 181
    new-array v1, v3, [B

    .line 182
    .local v1, localeData:[B
    invoke-virtual {p1, v1, v5, v3}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 183
    iget-object v4, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

    invoke-virtual {v4, v1, v3}, Lcom/android/providers/settings/SettingsHelper;->setLocaleData([BI)V

    goto :goto_0

    .line 184
    .end local v1           #localeData:[B
    :cond_5
    const-string v4, "\uffedCONFIG_WIFI"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 185
    sget-object v4, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiConfigFile:Ljava/lang/String;

    invoke-direct {p0, v4, p1}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreFileData(Ljava/lang/String;Landroid/app/backup/BackupDataInput;)V

    goto :goto_0

    .line 187
    :cond_6
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->skipEntityData()V

    goto :goto_0

    .line 190
    .end local v0           #key:Ljava/lang/String;
    .end local v3           #size:I
    :cond_7
    return-void
.end method

.method public onRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 10
    .parameter "data"
    .parameter "size"
    .parameter "type"
    .parameter "domain"
    .parameter "relpath"
    .parameter "mode"
    .parameter "mtime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    sget-boolean v6, Lcom/android/providers/settings/SettingsBackupAgent;->DEBUG_BACKUP:Z

    if-eqz v6, :cond_0

    const-string v6, "SettingsBackupAgent"

    const-string v7, "onRestoreFile() invoked"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 246
    .local v2, instream:Ljava/io/FileInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 248
    .local v1, in:Ljava/io/DataInputStream;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 249
    .local v5, version:I
    sget-boolean v6, Lcom/android/providers/settings/SettingsBackupAgent;->DEBUG_BACKUP:Z

    if-eqz v6, :cond_1

    const-string v6, "SettingsBackupAgent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Flattened data version "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_1
    const/4 v6, 0x1

    if-ne v5, v6, :cond_e

    .line 252
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 253
    .local v3, nBytes:I
    sget-boolean v6, Lcom/android/providers/settings/SettingsBackupAgent;->DEBUG_BACKUP:Z

    if-eqz v6, :cond_2

    const-string v6, "SettingsBackupAgent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bytes of settings data"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_2
    new-array v0, v3, [B

    .line 255
    .local v0, buffer:[B
    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6, v3}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 256
    sget-object v6, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0, v3, v6}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreSettings([BILandroid/net/Uri;)V

    .line 259
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 260
    sget-boolean v6, Lcom/android/providers/settings/SettingsBackupAgent;->DEBUG_BACKUP:Z

    if-eqz v6, :cond_3

    const-string v6, "SettingsBackupAgent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bytes of secure settings data"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_3
    array-length v6, v0

    if-le v3, v6, :cond_4

    new-array v0, v3, [B

    .line 262
    :cond_4
    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6, v3}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 263
    sget-object v6, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0, v3, v6}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreSettings([BILandroid/net/Uri;)V

    .line 266
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 267
    sget-boolean v6, Lcom/android/providers/settings/SettingsBackupAgent;->DEBUG_BACKUP:Z

    if-eqz v6, :cond_5

    const-string v6, "SettingsBackupAgent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bytes of locale data"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_5
    array-length v6, v0

    if-le v3, v6, :cond_6

    new-array v0, v3, [B

    .line 269
    :cond_6
    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6, v3}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 270
    iget-object v6, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

    invoke-virtual {v6, v0, v3}, Lcom/android/providers/settings/SettingsHelper;->setLocaleData([BI)V

    .line 273
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 274
    sget-boolean v6, Lcom/android/providers/settings/SettingsBackupAgent;->DEBUG_BACKUP:Z

    if-eqz v6, :cond_7

    const-string v6, "SettingsBackupAgent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bytes of wifi supplicant data"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_7
    array-length v6, v0

    if-le v3, v6, :cond_8

    new-array v0, v3, [B

    .line 276
    :cond_8
    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6, v3}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 277
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/providers/settings/SettingsBackupAgent;->enableWifi(Z)I

    move-result v4

    .line 278
    .local v4, retainedWifiState:I
    const-string v6, "/data/misc/wifi/wpa_supplicant.conf"

    invoke-direct {p0, v6, v0, v3}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreWifiSupplicant(Ljava/lang/String;[BI)V

    .line 279
    const-string v6, "/data/misc/wifi/wpa_supplicant.conf"

    const/16 v7, 0x1b0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    const/16 v9, 0x3f2

    invoke-static {v6, v7, v8, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 284
    const/4 v6, 0x3

    if-eq v4, v6, :cond_9

    const/4 v6, 0x2

    if-ne v4, v6, :cond_d

    :cond_9
    const/4 v6, 0x1

    :goto_0
    invoke-direct {p0, v6}, Lcom/android/providers/settings/SettingsBackupAgent;->enableWifi(Z)I

    .line 288
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 289
    sget-boolean v6, Lcom/android/providers/settings/SettingsBackupAgent;->DEBUG_BACKUP:Z

    if-eqz v6, :cond_a

    const-string v6, "SettingsBackupAgent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bytes of wifi config data"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_a
    array-length v6, v0

    if-le v3, v6, :cond_b

    new-array v0, v3, [B

    .line 291
    :cond_b
    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6, v3}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 292
    sget-object v6, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiConfigFile:Ljava/lang/String;

    invoke-direct {p0, v6, v0, v3}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreFileData(Ljava/lang/String;[BI)V

    .line 294
    sget-boolean v6, Lcom/android/providers/settings/SettingsBackupAgent;->DEBUG_BACKUP:Z

    if-eqz v6, :cond_c

    const-string v6, "SettingsBackupAgent"

    const-string v7, "Full restore complete."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_c
    return-void

    .line 284
    :cond_d
    const/4 v6, 0x0

    goto :goto_0

    .line 296
    .end local v0           #buffer:[B
    .end local v3           #nBytes:I
    .end local v4           #retainedWifiState:I
    :cond_e
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 297
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Invalid file schema"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method
