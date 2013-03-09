.class public Lcom/htc/sdm/service/SDMService;
.super Landroid/app/Service;
.source "SDMService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sdm/service/SDMService$1;,
        Lcom/htc/sdm/service/SDMService$insertPresetSoundSet;,
        Lcom/htc/sdm/service/SDMService$Observer;
    }
.end annotation


# static fields
.field private static final FIRST_PAGE:J = 0x0L

.field public static final INTENT_EXTRA_LIST_TYPE_TO_BE_UPDATE:Ljava/lang/String; = "com.htc.sdm.service.SDMService.listType"

.field private static final LOG_FLAG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SDM"

.field private static final NO_MORE_PAGE:J = -0x1L

.field private static final PREFIX:Ljava/lang/String; = "[SDMService] "

.field private static final PRESET_PATH:Ljava/lang/String; = "preset"

.field public static final RESULT_INTENT_ACTION_NAME:Ljava/lang/String; = "com.htc.sdm.service.soundset.notify"

.field public static final RESULT_INTENT_EXTRA_LIST_TYPE:Ljava/lang/String; = "com.htc.sdm.service.SDMService.resultlistType"

.field public static final RESULT_INTENT_EXTRA_STATUS:Ljava/lang/String; = "com.htc.sdm.service.SDMService.result"

.field public static final RESULT_STATUS_ALREADY_HAS_LATEST_VERSION:I = 0x2

.field public static final RESULT_STATUS_FAILED:I = -0x1

.field public static final RESULT_STATUS_HAS_NEW_VERSION:I = 0x1

.field public static final RESULT_STATUS_NOTIFYNEW_ALREADY:I = 0x3

.field public static final RESULT_STATUS_OK:I = 0x0

.field public static final RESULT_STATUS_SERVER_UNAVAILABLE:I = -0x2

.field private static final THREAD_ID_ALARM:I = 0x2

.field private static final THREAD_ID_NOTIFY:I = 0x3

.field private static final THREAD_ID_PRESET:I = 0x4

.field private static final THREAD_ID_RINGTONE:I = 0x1

.field private static final THREAD_ID_SOUNDSET:I

.field private static sRingtoneObs:Lcom/htc/sdm/service/SDMService$Observer;

.field public static syncObj:Ljava/lang/Object;

.field private static threadArray:[Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/sdm/service/SDMService;->syncObj:Ljava/lang/Object;

    .line 89
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/sdm/service/SDMService;->sRingtoneObs:Lcom/htc/sdm/service/SDMService$Observer;

    .line 92
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Thread;

    sput-object v0, Lcom/htc/sdm/service/SDMService;->threadArray:[Ljava/lang/Thread;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 292
    return-void
.end method

.method private GetCustFilePath()Ljava/lang/String;
    .locals 12

    .prologue
    .line 637
    const-string v1, "/system/customize/resource/ringtone.xml"

    .line 638
    .local v1, DEFAULT_RINGTONE_FILE:Ljava/lang/String;
    const-string v3, "/system/customize/resource/ringtone_"

    .line 639
    .local v3, RINGTONE_FILE_PATH_NAME:Ljava/lang/String;
    const-string v2, ".xml"

    .line 640
    .local v2, RINGTONE_FILE_EXT:Ljava/lang/String;
    const/4 v0, 0x0

    .line 641
    .local v0, CustFilePath:Ljava/lang/String;
    const/4 v5, 0x0

    .line 644
    .local v5, isCustFileExist:Z
    :try_start_0
    const-string v8, ""

    .line 645
    .local v8, strOperator:Ljava/lang/String;
    const-string v10, "phone"

    invoke-virtual {p0, v10}, Lcom/htc/sdm/service/SDMService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 646
    .local v9, teleMgr:Landroid/telephony/TelephonyManager;
    if-eqz v9, :cond_0

    .line 647
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v8

    .line 652
    :cond_0
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 654
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/system/customize/resource/ringtone_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".xml"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 655
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 658
    .local v4, custFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 659
    const/4 v5, 0x1

    .line 683
    .end local v4           #custFile:Ljava/io/File;
    :cond_1
    :goto_0
    if-nez v5, :cond_2

    .line 685
    const-string v0, "/system/customize/resource/ringtone.xml"

    .line 686
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 689
    .restart local v4       #custFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 690
    const/4 v5, 0x1

    .line 701
    .end local v4           #custFile:Ljava/io/File;
    .end local v8           #strOperator:Ljava/lang/String;
    .end local v9           #teleMgr:Landroid/telephony/TelephonyManager;
    :cond_2
    :goto_1
    const/4 v10, 0x1

    if-ne v10, v5, :cond_5

    .line 707
    .end local v0           #CustFilePath:Ljava/lang/String;
    :goto_2
    return-object v0

    .line 662
    .restart local v0       #CustFilePath:Ljava/lang/String;
    .restart local v4       #custFile:Ljava/io/File;
    .restart local v8       #strOperator:Ljava/lang/String;
    .restart local v9       #teleMgr:Landroid/telephony/TelephonyManager;
    :cond_3
    const/4 v10, 0x0

    const/4 v11, 0x3

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 663
    .local v6, mcc:Ljava/lang/String;
    const/4 v10, 0x3

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 666
    .local v7, mnc:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/system/customize/resource/ringtone_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".xml"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 667
    new-instance v4, Ljava/io/File;

    .end local v4           #custFile:Ljava/io/File;
    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 670
    .restart local v4       #custFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 671
    const/4 v5, 0x1

    goto :goto_0

    .line 674
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/system/customize/resource/ringtone_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".xml"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 675
    new-instance v4, Ljava/io/File;

    .end local v4           #custFile:Ljava/io/File;
    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 678
    .restart local v4       #custFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_1

    .line 679
    const/4 v5, 0x1

    goto :goto_0

    .line 707
    .end local v4           #custFile:Ljava/io/File;
    .end local v6           #mcc:Ljava/lang/String;
    .end local v7           #mnc:I
    .end local v8           #strOperator:Ljava/lang/String;
    .end local v9           #teleMgr:Landroid/telephony/TelephonyManager;
    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    .line 696
    :catch_0
    move-exception v10

    goto :goto_1
.end method

.method private GetSoundUri(Lcom/htc/sdm/provider/SoundSetDAO;)Ljava/lang/String;
    .locals 6
    .parameter "soundSet"

    .prologue
    .line 420
    const/4 v0, 0x0

    .line 421
    .local v0, MediaUri:Landroid/net/Uri;
    const/4 v1, 0x0

    .line 427
    .local v1, SoundUri:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/sdm/service/SDMService;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p1, Lcom/htc/sdm/provider/SoundSetDAO;->file_url:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sdm/util/SDMDBUtil;->findMediaStoreUriBySDMUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 428
    const/16 v3, 0x78

    .line 429
    .local v3, retryCounter:I
    :goto_0
    if-nez v0, :cond_1

    if-lez v3, :cond_1

    .line 436
    const-wide/16 v4, 0x2710

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 437
    invoke-virtual {p0}, Lcom/htc/sdm/service/SDMService;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p1, Lcom/htc/sdm/provider/SoundSetDAO;->file_url:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sdm/util/SDMDBUtil;->findMediaStoreUriBySDMUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 443
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 439
    :catch_0
    move-exception v2

    .line 441
    .local v2, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 452
    .end local v2           #e:Ljava/lang/InterruptedException;
    .end local v3           #retryCounter:I
    :catch_1
    move-exception v4

    .line 457
    :cond_0
    :goto_2
    return-object v1

    .line 445
    .restart local v3       #retryCounter:I
    :cond_1
    if-eqz v0, :cond_0

    .line 447
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    goto :goto_2
.end method

.method public static ParseSIEXML(Ljava/lang/String;)Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    .locals 12
    .parameter "CustFilePath"

    .prologue
    .line 714
    const/4 v7, 0x0

    .line 715
    .local v7, xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    const/4 v0, 0x0

    .line 718
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 720
    .local v2, custFile:Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 722
    .local v6, sb:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 723
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, line:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 725
    const/4 v4, 0x0

    .local v4, index:I
    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_0

    .line 729
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x3c

    if-ne v9, v10, :cond_2

    .line 731
    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    .end local v4           #index:I
    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 741
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 752
    .end local v5           #line:Ljava/lang/String;
    :catch_0
    move-exception v9

    move-object v0, v1

    .line 759
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v2           #custFile:Ljava/io/File;
    .end local v6           #sb:Ljava/lang/StringBuilder;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :goto_2
    if-eqz v0, :cond_1

    .line 763
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 772
    :cond_1
    :goto_3
    return-object v7

    .line 725
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v2       #custFile:Ljava/io/File;
    .restart local v4       #index:I
    .restart local v5       #line:Ljava/lang/String;
    .restart local v6       #sb:Ljava/lang/StringBuilder;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 746
    .end local v4           #index:I
    :cond_3
    :try_start_3
    new-instance v8, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 747
    .end local v7           #xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    .local v8, xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    if-eqz v8, :cond_4

    .line 749
    :try_start_4
    invoke-virtual {v8}, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->parserPresetAssetList()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 759
    :cond_4
    if-eqz v1, :cond_6

    .line 763
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v7, v8

    .line 769
    .end local v8           #xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    .restart local v7       #xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    goto :goto_3

    .line 765
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v7           #xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v8       #xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    :catch_1
    move-exception v3

    .line 767
    .local v3, e:Ljava/io/IOException;
    const-string v9, "SDM"

    const-string v10, "[SDMService] IOException"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v7, v8

    .line 769
    .end local v8           #xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    .restart local v7       #xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    goto :goto_3

    .line 765
    .end local v2           #custFile:Ljava/io/File;
    .end local v3           #e:Ljava/io/IOException;
    .end local v5           #line:Ljava/lang/String;
    .end local v6           #sb:Ljava/lang/StringBuilder;
    :catch_2
    move-exception v3

    .line 767
    .restart local v3       #e:Ljava/io/IOException;
    const-string v9, "SDM"

    const-string v10, "[SDMService] IOException"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 759
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_4
    if-eqz v0, :cond_5

    .line 763
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 769
    :cond_5
    :goto_5
    throw v9

    .line 765
    :catch_3
    move-exception v3

    .line 767
    .restart local v3       #e:Ljava/io/IOException;
    const-string v10, "SDM"

    const-string v11, "[SDMService] IOException"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 759
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #e:Ljava/io/IOException;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v2       #custFile:Ljava/io/File;
    .restart local v6       #sb:Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v9

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_4

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v7           #xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v5       #line:Ljava/lang/String;
    .restart local v8       #xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    :catchall_2
    move-exception v9

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8           #xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    .restart local v7       #xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    goto :goto_4

    .line 752
    .end local v2           #custFile:Ljava/io/File;
    .end local v5           #line:Ljava/lang/String;
    .end local v6           #sb:Ljava/lang/StringBuilder;
    :catch_4
    move-exception v9

    goto :goto_2

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v7           #xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v2       #custFile:Ljava/io/File;
    .restart local v5       #line:Ljava/lang/String;
    .restart local v6       #sb:Ljava/lang/StringBuilder;
    .restart local v8       #xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    :catch_5
    move-exception v9

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8           #xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    .restart local v7       #xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    goto :goto_2

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v7           #xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v8       #xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    :cond_6
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8           #xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    .restart local v7       #xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    goto :goto_3
.end method

.method private ParseXML(Ljava/lang/String;)Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    .locals 12
    .parameter "presetFile"

    .prologue
    .line 502
    const/4 v7, 0x0

    .line 503
    .local v7, xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    const/4 v4, 0x0

    .line 506
    .local v4, reader:Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/sdm/service/SDMService;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 507
    .local v3, mAM:Landroid/content/res/AssetManager;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "preset/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 510
    .local v0, content:Ljava/io/InputStream;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 512
    .local v6, sb:Ljava/lang/StringBuilder;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    const-string v10, "UTF-8"

    invoke-direct {v9, v0, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 513
    .end local v4           #reader:Ljava/io/BufferedReader;
    .local v5, reader:Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, line:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 515
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 524
    .end local v2           #line:Ljava/lang/String;
    :catch_0
    move-exception v9

    move-object v4, v5

    .line 531
    .end local v0           #content:Ljava/io/InputStream;
    .end local v3           #mAM:Landroid/content/res/AssetManager;
    .end local v5           #reader:Ljava/io/BufferedReader;
    .end local v6           #sb:Ljava/lang/StringBuilder;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :goto_1
    if-eqz v4, :cond_0

    .line 535
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 544
    :cond_0
    :goto_2
    return-object v7

    .line 518
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v0       #content:Ljava/io/InputStream;
    .restart local v2       #line:Ljava/lang/String;
    .restart local v3       #mAM:Landroid/content/res/AssetManager;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    .restart local v6       #sb:Ljava/lang/StringBuilder;
    :cond_1
    :try_start_3
    new-instance v8, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 519
    .end local v7           #xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    .local v8, xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    if-eqz v8, :cond_2

    .line 521
    :try_start_4
    invoke-virtual {v8}, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->parserPresetAssetList()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 531
    :cond_2
    if-eqz v5, :cond_4

    .line 535
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v4, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    move-object v7, v8

    .line 541
    .end local v8           #xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    .restart local v7       #xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    goto :goto_2

    .line 537
    .end local v4           #reader:Ljava/io/BufferedReader;
    .end local v7           #xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    .restart local v8       #xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    :catch_1
    move-exception v1

    .line 539
    .local v1, e:Ljava/io/IOException;
    const-string v9, "SDM"

    const-string v10, "[SDMService] IOException"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    move-object v7, v8

    .line 541
    .end local v8           #xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    .restart local v7       #xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    goto :goto_2

    .line 537
    .end local v0           #content:Ljava/io/InputStream;
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #line:Ljava/lang/String;
    .end local v3           #mAM:Landroid/content/res/AssetManager;
    .end local v6           #sb:Ljava/lang/StringBuilder;
    :catch_2
    move-exception v1

    .line 539
    .restart local v1       #e:Ljava/io/IOException;
    const-string v9, "SDM"

    const-string v10, "[SDMService] IOException"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 531
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_3
    if-eqz v4, :cond_3

    .line 535
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 541
    :cond_3
    :goto_4
    throw v9

    .line 537
    :catch_3
    move-exception v1

    .line 539
    .restart local v1       #e:Ljava/io/IOException;
    const-string v10, "SDM"

    const-string v11, "[SDMService] IOException"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 531
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v0       #content:Ljava/io/InputStream;
    .restart local v3       #mAM:Landroid/content/res/AssetManager;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    .restart local v6       #sb:Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    goto :goto_3

    .end local v4           #reader:Ljava/io/BufferedReader;
    .end local v7           #xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    .restart local v2       #line:Ljava/lang/String;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    .restart local v8       #xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    :catchall_2
    move-exception v9

    move-object v4, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8           #xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    .restart local v7       #xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    goto :goto_3

    .line 524
    .end local v0           #content:Ljava/io/InputStream;
    .end local v2           #line:Ljava/lang/String;
    .end local v3           #mAM:Landroid/content/res/AssetManager;
    .end local v6           #sb:Ljava/lang/StringBuilder;
    :catch_4
    move-exception v9

    goto :goto_1

    .end local v4           #reader:Ljava/io/BufferedReader;
    .end local v7           #xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    .restart local v0       #content:Ljava/io/InputStream;
    .restart local v2       #line:Ljava/lang/String;
    .restart local v3       #mAM:Landroid/content/res/AssetManager;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    .restart local v6       #sb:Ljava/lang/StringBuilder;
    .restart local v8       #xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    :catch_5
    move-exception v9

    move-object v4, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8           #xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    .restart local v7       #xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    goto :goto_1

    .end local v4           #reader:Ljava/io/BufferedReader;
    .end local v7           #xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    .restart local v8       #xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    :cond_4
    move-object v4, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8           #xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    .restart local v7       #xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    goto :goto_2
.end method

.method private SaveDefaultSetting(Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;Ljava/util/HashMap;)V
    .locals 7
    .parameter "xmlInfo"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/sdm/provider/SoundSetChildDAO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1019
    .local p2, childList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/sdm/provider/SoundSetChildDAO;>;"
    :try_start_0
    const-string v4, "SoundSetPref"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/htc/sdm/service/SDMService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1020
    .local v2, pref:Landroid/content/SharedPreferences;
    iget-object v4, p1, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->soundsetDAOs:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/sdm/provider/SoundSetDAO;

    .line 1022
    .local v3, soundSet:Lcom/htc/sdm/provider/SoundSetDAO;
    iget v4, v3, Lcom/htc/sdm/provider/SoundSetDAO;->refType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 1024
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "PrefDefRingtone"

    iget-object v6, v3, Lcom/htc/sdm/provider/SoundSetDAO;->soundUri:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1055
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #pref:Landroid/content/SharedPreferences;
    .end local v3           #soundSet:Lcom/htc/sdm/provider/SoundSetDAO;
    :catch_0
    move-exception v4

    .line 1061
    :cond_1
    return-void

    .line 1026
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #pref:Landroid/content/SharedPreferences;
    .restart local v3       #soundSet:Lcom/htc/sdm/provider/SoundSetDAO;
    :cond_2
    iget v4, v3, Lcom/htc/sdm/provider/SoundSetDAO;->refType:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    .line 1028
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "PrefDefAlarm"

    iget-object v6, v3, Lcom/htc/sdm/provider/SoundSetDAO;->soundUri:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1030
    :cond_3
    iget v4, v3, Lcom/htc/sdm/provider/SoundSetDAO;->refType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 1032
    iget-object v4, v3, Lcom/htc/sdm/provider/SoundSetDAO;->GUID:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sdm/provider/SoundSetChildDAO;

    .line 1033
    .local v0, child:Lcom/htc/sdm/provider/SoundSetChildDAO;
    if-eqz v0, :cond_0

    .line 1035
    iget-object v4, v0, Lcom/htc/sdm/provider/SoundSetChildDAO;->refType:Ljava/lang/String;

    const-string v5, "Calendar"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1037
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "PrefDefCalendar"

    iget-object v6, v3, Lcom/htc/sdm/provider/SoundSetDAO;->soundUri:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1039
    :cond_4
    iget-object v4, v0, Lcom/htc/sdm/provider/SoundSetChildDAO;->refType:Ljava/lang/String;

    const-string v5, "Message"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1041
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "PrefDefMsg"

    iget-object v6, v3, Lcom/htc/sdm/provider/SoundSetDAO;->soundUri:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1043
    :cond_5
    iget-object v4, v0, Lcom/htc/sdm/provider/SoundSetChildDAO;->refType:Ljava/lang/String;

    const-string v5, "EMail"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1045
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "PrefDefEmail"

    iget-object v6, v3, Lcom/htc/sdm/provider/SoundSetDAO;->soundUri:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 1049
    :cond_6
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "PrefDefNotification"

    iget-object v6, v3, Lcom/htc/sdm/provider/SoundSetDAO;->soundUri:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method private SaveSIEToSoundSetInfoTable(Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;Ljava/lang/String;)V
    .locals 13
    .parameter "xmlInfo"
    .parameter "Default_GUID"

    .prologue
    .line 869
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/sdm/service/SDMService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 870
    .local v0, mCR:Landroid/content/ContentResolver;
    iget-object v1, p1, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->soundsetInfoDAOs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/sdm/provider/SoundSetInfoDAO;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 872
    .local v11, soundSetInfo:Lcom/htc/sdm/provider/SoundSetInfoDAO;
    const/4 v3, 0x0

    .line 873
    .local v3, infoWhere:Ljava/lang/String;
    const/4 v6, 0x0

    .line 876
    .local v6, c:Landroid/database/Cursor;
    const/4 v1, 0x1

    :try_start_1
    iget v2, v11, Lcom/htc/sdm/provider/SoundSetInfoDAO;->refType:I

    if-ne v1, v2, :cond_3

    .line 878
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->lang:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->lang:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 880
    iget-object v10, v11, Lcom/htc/sdm/provider/SoundSetInfoDAO;->name:Ljava/lang/String;

    .line 881
    .local v10, name:Ljava/lang/String;
    iget-object v7, v11, Lcom/htc/sdm/provider/SoundSetInfoDAO;->description:Ljava/lang/String;

    .line 882
    .local v7, description:Ljava/lang/String;
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 883
    .local v12, values:Landroid/content/ContentValues;
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    invoke-virtual {v1}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->description:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    invoke-virtual {v1}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    iget v1, v11, Lcom/htc/sdm/provider/SoundSetInfoDAO;->refType:I

    invoke-static {v1}, Lcom/htc/sdm/util/SDMDBUtil;->getInfoTableUri(I)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v12, v3, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 892
    new-instance v9, Landroid/content/Intent;

    const-string v1, "com.htc.intent.ACTION_PERSONALIZE_SOUND_SET_CHANGED"

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 893
    .local v9, intent:Landroid/content/Intent;
    const-string v1, "com.htc.intent.EXTRA_SUMMARY"

    invoke-virtual {v9, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 894
    invoke-virtual {p0, v9}, Lcom/htc/sdm/service/SDMService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 917
    .end local v7           #description:Ljava/lang/String;
    .end local v9           #intent:Landroid/content/Intent;
    .end local v10           #name:Ljava/lang/String;
    .end local v12           #values:Landroid/content/ContentValues;
    :cond_1
    :goto_1
    if-eqz v6, :cond_0

    .line 918
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 922
    .end local v0           #mCR:Landroid/content/ContentResolver;
    .end local v3           #infoWhere:Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v11           #soundSetInfo:Lcom/htc/sdm/provider/SoundSetInfoDAO;
    :catch_0
    move-exception v1

    .line 927
    :cond_2
    return-void

    .line 898
    .restart local v0       #mCR:Landroid/content/ContentResolver;
    .restart local v3       #infoWhere:Ljava/lang/String;
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v11       #soundSetInfo:Lcom/htc/sdm/provider/SoundSetInfoDAO;
    :cond_3
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v11, Lcom/htc/sdm/provider/SoundSetInfoDAO;->GUID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->lang:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->lang:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 901
    iget v1, v11, Lcom/htc/sdm/provider/SoundSetInfoDAO;->refType:I

    invoke-static {v1}, Lcom/htc/sdm/util/SDMDBUtil;->getInfoTableUri(I)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 903
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 905
    iget v1, v11, Lcom/htc/sdm/provider/SoundSetInfoDAO;->refType:I

    invoke-static {v1}, Lcom/htc/sdm/util/SDMDBUtil;->getInfoTableUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v11}, Lcom/htc/sdm/provider/SoundSetInfoDAO;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 917
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    .line 918
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method private SaveSIEToSoundSetTable(Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;Ljava/lang/String;)Z
    .locals 14
    .parameter "xmlInfo"
    .parameter "Default_GUID"

    .prologue
    .line 777
    const/4 v11, 0x0

    .line 778
    .local v11, isInsertSIEItem:Z
    invoke-virtual {p0}, Lcom/htc/sdm/service/SDMService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 779
    .local v0, mCR:Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 780
    .local v8, childList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/sdm/provider/SoundSetChildDAO;>;"
    const/4 v6, 0x0

    .line 783
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p1, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->soundsetDAOs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/sdm/provider/SoundSetDAO;

    .line 785
    .local v12, soundSet:Lcom/htc/sdm/provider/SoundSetDAO;
    const/4 v1, 0x1

    iget v2, v12, Lcom/htc/sdm/provider/SoundSetDAO;->refType:I

    if-eq v1, v2, :cond_0

    .line 787
    invoke-direct {p0, v12}, Lcom/htc/sdm/service/SDMService;->GetSoundUri(Lcom/htc/sdm/provider/SoundSetDAO;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/htc/sdm/provider/SoundSetDAO;->soundUri:Ljava/lang/String;

    .line 789
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v12, Lcom/htc/sdm/provider/SoundSetDAO;->GUID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 791
    .local v3, where:Ljava/lang/String;
    iget v1, v12, Lcom/htc/sdm/provider/SoundSetDAO;->refType:I

    invoke-static {v1}, Lcom/htc/sdm/util/SDMDBUtil;->getListTableUri(I)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 793
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 795
    iget v1, v12, Lcom/htc/sdm/provider/SoundSetDAO;->refType:I

    invoke-static {v1}, Lcom/htc/sdm/util/SDMDBUtil;->getListTableUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v12}, Lcom/htc/sdm/provider/SoundSetDAO;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 796
    const/4 v11, 0x1

    .line 803
    :cond_1
    iget v1, v12, Lcom/htc/sdm/provider/SoundSetDAO;->refType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    .line 808
    invoke-virtual {p0}, Lcom/htc/sdm/service/SDMService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v12, Lcom/htc/sdm/provider/SoundSetDAO;->GUID:Ljava/lang/String;

    iget v4, v12, Lcom/htc/sdm/provider/SoundSetDAO;->srcType:I

    iget v5, v12, Lcom/htc/sdm/provider/SoundSetDAO;->refType:I

    invoke-static {v5}, Lcom/htc/sdm/util/SDMUtil;->RefID2Type(I)Ljava/lang/String;

    move-result-object v5

    iget-object v13, v12, Lcom/htc/sdm/provider/SoundSetDAO;->soundUri:Ljava/lang/String;

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-static {v1, v2, v4, v5, v13}, Lcom/htc/sdm/util/SDMDBUtil;->ApplySound(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;)V

    .line 841
    :cond_2
    iget-object v1, v12, Lcom/htc/sdm/provider/SoundSetDAO;->soundUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget v2, v12, Lcom/htc/sdm/provider/SoundSetDAO;->refType:I

    const/4 v4, 0x1

    invoke-static {p0, v1, v2, v4}, Lcom/htc/sdm/util/SDMDBUtil;->SetMusicProperty(Landroid/content/Context;Landroid/net/Uri;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 850
    .end local v3           #where:Ljava/lang/String;
    .end local v12           #soundSet:Lcom/htc/sdm/provider/SoundSetDAO;
    :catch_0
    move-exception v1

    .line 857
    if-eqz v6, :cond_3

    .line 858
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 861
    :cond_3
    :goto_1
    return v11

    .line 813
    .restart local v3       #where:Ljava/lang/String;
    .restart local v12       #soundSet:Lcom/htc/sdm/provider/SoundSetDAO;
    :cond_4
    :try_start_1
    invoke-virtual/range {p1 .. p2}, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->getChildList(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v8

    .line 814
    if-eqz v8, :cond_2

    .line 816
    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/sdm/provider/SoundSetChildDAO;

    .line 820
    .local v7, child:Lcom/htc/sdm/provider/SoundSetChildDAO;
    iget-object v1, v7, Lcom/htc/sdm/provider/SoundSetChildDAO;->GUID:Ljava/lang/String;

    iget-object v2, v12, Lcom/htc/sdm/provider/SoundSetDAO;->GUID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    .line 828
    invoke-virtual {p0}, Lcom/htc/sdm/service/SDMService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v12, Lcom/htc/sdm/provider/SoundSetDAO;->GUID:Ljava/lang/String;

    iget v4, v12, Lcom/htc/sdm/provider/SoundSetDAO;->srcType:I

    iget-object v5, v7, Lcom/htc/sdm/provider/SoundSetChildDAO;->refType:Ljava/lang/String;

    iget-object v13, v12, Lcom/htc/sdm/provider/SoundSetDAO;->soundUri:Ljava/lang/String;

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-static {v1, v2, v4, v5, v13}, Lcom/htc/sdm/util/SDMDBUtil;->ApplySound(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 857
    .end local v3           #where:Ljava/lang/String;
    .end local v7           #child:Lcom/htc/sdm/provider/SoundSetChildDAO;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v12           #soundSet:Lcom/htc/sdm/provider/SoundSetDAO;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_6

    .line 858
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1

    .line 857
    :cond_7
    if-eqz v6, :cond_3

    .line 858
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method private SaveToSoundSetChild(Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;Lcom/htc/sdm/provider/SoundSetDAO;)Ljava/util/HashMap;
    .locals 9
    .parameter "xmlInfo"
    .parameter "soundSetParent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;",
            "Lcom/htc/sdm/provider/SoundSetDAO;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/sdm/provider/SoundSetChildDAO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 595
    const/4 v1, 0x0

    .line 599
    .local v1, childList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/sdm/provider/SoundSetChildDAO;>;"
    :try_start_0
    iget-object v7, p2, Lcom/htc/sdm/provider/SoundSetDAO;->GUID:Ljava/lang/String;

    invoke-virtual {p1, v7}, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->getChildList(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 600
    invoke-virtual {p0}, Lcom/htc/sdm/service/SDMService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 601
    .local v4, mCR:Landroid/content/ContentResolver;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 602
    .local v5, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v3, 0x0

    .line 603
    .local v3, isSoundsetCleared:Z
    if-eqz v1, :cond_1

    .line 605
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sdm/provider/SoundSetChildDAO;

    .line 607
    .local v0, child:Lcom/htc/sdm/provider/SoundSetChildDAO;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->PARENT_GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;

    invoke-virtual {v8}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/htc/sdm/provider/SoundSetChildDAO;->PARENT_GUID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 608
    .local v6, where:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 612
    sget-object v7, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SOUNDSET_CHILD:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v6, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 613
    const/4 v3, 0x1

    .line 617
    :cond_0
    sget-object v7, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SOUNDSET_CHILD:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/htc/sdm/provider/SoundSetChildDAO;->toContentValues()Landroid/content/ContentValues;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 627
    .end local v0           #child:Lcom/htc/sdm/provider/SoundSetChildDAO;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #isSoundsetCleared:Z
    .end local v4           #mCR:Landroid/content/ContentResolver;
    .end local v5           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v6           #where:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 632
    :cond_1
    :goto_1
    return-object v1

    .line 619
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #isSoundsetCleared:Z
    .restart local v4       #mCR:Landroid/content/ContentResolver;
    .restart local v5       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_2
    const-string v7, "com.htc.sdm.provider.SDMProvider"

    invoke-virtual {v4, v7, v5}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private SavetoSoundSetInfoTable(Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;)Lcom/htc/sdm/provider/SoundSetInfoDAO;
    .locals 10
    .parameter "xmlInfo"

    .prologue
    .line 549
    const/4 v8, 0x0

    .line 550
    .local v8, soundInfoParent:Lcom/htc/sdm/provider/SoundSetInfoDAO;
    invoke-virtual {p0}, Lcom/htc/sdm/service/SDMService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 554
    .local v0, mCR:Landroid/content/ContentResolver;
    :try_start_0
    iget-object v1, p1, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->soundsetInfoDAOs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/sdm/provider/SoundSetInfoDAO;

    .line 556
    .local v9, soundSetInfo:Lcom/htc/sdm/provider/SoundSetInfoDAO;
    const/4 v1, 0x1

    iget v2, v9, Lcom/htc/sdm/provider/SoundSetInfoDAO;->refType:I

    if-ne v1, v2, :cond_1

    .line 557
    move-object v8, v9

    .line 559
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Lcom/htc/sdm/provider/SoundSetInfoDAO;->GUID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->lang:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->lang:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 561
    .local v3, infoWhere:Ljava/lang/String;
    const/4 v6, 0x0

    .line 564
    .local v6, c:Landroid/database/Cursor;
    :try_start_1
    iget v1, v9, Lcom/htc/sdm/provider/SoundSetInfoDAO;->refType:I

    invoke-static {v1}, Lcom/htc/sdm/util/SDMDBUtil;->getInfoTableUri(I)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 566
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 568
    iget v1, v9, Lcom/htc/sdm/provider/SoundSetInfoDAO;->refType:I

    invoke-static {v1}, Lcom/htc/sdm/util/SDMDBUtil;->getInfoTableUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v9}, Lcom/htc/sdm/provider/SoundSetInfoDAO;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 580
    :cond_2
    if-eqz v6, :cond_0

    .line 581
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 585
    .end local v3           #infoWhere:Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v9           #soundSetInfo:Lcom/htc/sdm/provider/SoundSetInfoDAO;
    :catch_0
    move-exception v1

    .line 590
    :cond_3
    return-object v8

    .line 580
    .restart local v3       #infoWhere:Ljava/lang/String;
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v9       #soundSetInfo:Lcom/htc/sdm/provider/SoundSetInfoDAO;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    .line 581
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
.end method

.method private SavetoSoundSetTable(Lcom/htc/sdm/provider/SoundSetDAO;)Z
    .locals 8
    .parameter "soundSet"

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/htc/sdm/service/SDMService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 463
    .local v0, mCR:Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 464
    .local v7, isInsertItem:Z
    const/4 v6, 0x0

    .line 471
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/sdm/provider/SoundSetDAO;->GUID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 472
    .local v3, where:Ljava/lang/String;
    iget v1, p1, Lcom/htc/sdm/provider/SoundSetDAO;->refType:I

    invoke-static {v1}, Lcom/htc/sdm/util/SDMDBUtil;->getListTableUri(I)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 474
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 476
    iget v1, p1, Lcom/htc/sdm/provider/SoundSetDAO;->refType:I

    invoke-static {v1}, Lcom/htc/sdm/util/SDMDBUtil;->getListTableUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/sdm/provider/SoundSetDAO;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    const/4 v7, 0x1

    .line 494
    :cond_0
    if-eqz v6, :cond_1

    .line 495
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 497
    .end local v3           #where:Ljava/lang/String;
    :cond_1
    :goto_0
    return v7

    .line 487
    :catch_0
    move-exception v1

    .line 494
    if-eqz v6, :cond_1

    .line 495
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 494
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 495
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method static synthetic access$100(Lcom/htc/sdm/service/SDMService;Ljava/lang/String;)Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/htc/sdm/service/SDMService;->ParseXML(Ljava/lang/String;)Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/sdm/service/SDMService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/htc/sdm/service/SDMService;->onThreadFinished(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/sdm/service/SDMService;Lcom/htc/sdm/provider/SoundSetDAO;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/htc/sdm/service/SDMService;->GetSoundUri(Lcom/htc/sdm/provider/SoundSetDAO;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/sdm/service/SDMService;Lcom/htc/sdm/provider/SoundSetDAO;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/htc/sdm/service/SDMService;->SavetoSoundSetTable(Lcom/htc/sdm/provider/SoundSetDAO;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/htc/sdm/service/SDMService;Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;)Lcom/htc/sdm/provider/SoundSetInfoDAO;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/htc/sdm/service/SDMService;->SavetoSoundSetInfoTable(Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;)Lcom/htc/sdm/provider/SoundSetInfoDAO;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/sdm/service/SDMService;Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;Lcom/htc/sdm/provider/SoundSetDAO;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/htc/sdm/service/SDMService;->SaveToSoundSetChild(Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;Lcom/htc/sdm/provider/SoundSetDAO;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/sdm/service/SDMService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/htc/sdm/service/SDMService;->GetCustFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/sdm/service/SDMService;Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/htc/sdm/service/SDMService;->SaveSIEToSoundSetTable(Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/htc/sdm/service/SDMService;Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/htc/sdm/service/SDMService;->SaveSIEToSoundSetInfoTable(Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/sdm/service/SDMService;Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;Ljava/util/HashMap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/htc/sdm/service/SDMService;->SaveDefaultSetting(Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;Ljava/util/HashMap;)V

    return-void
.end method

.method private onThreadFinished(I)V
    .locals 9
    .parameter "nListType"

    .prologue
    .line 246
    sget-object v7, Lcom/htc/sdm/service/SDMService;->syncObj:Ljava/lang/Object;

    monitor-enter v7

    .line 248
    const/4 v5, 0x0

    .line 249
    .local v5, threadIdx:I
    packed-switch p1, :pswitch_data_0

    .line 268
    :goto_0
    :try_start_0
    sget-object v6, Lcom/htc/sdm/service/SDMService;->threadArray:[Ljava/lang/Thread;

    const/4 v8, 0x0

    aput-object v8, v6, v5

    .line 270
    const/4 v1, 0x1

    .line 271
    .local v1, finish:Z
    sget-object v0, Lcom/htc/sdm/service/SDMService;->threadArray:[Ljava/lang/Thread;

    .local v0, arr$:[Ljava/lang/Thread;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 273
    .local v4, obj:Ljava/lang/Thread;
    if-eqz v4, :cond_2

    .line 275
    const/4 v1, 0x0

    .line 282
    .end local v4           #obj:Ljava/lang/Thread;
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/sdm/service/SDMService;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/sdm/util/SDMUtil;->IsCustomizedReady(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 286
    invoke-virtual {p0}, Lcom/htc/sdm/service/SDMService;->stopSelf()V

    .line 289
    :cond_1
    monitor-exit v7

    .line 290
    return-void

    .line 252
    .end local v0           #arr$:[Ljava/lang/Thread;
    .end local v1           #finish:Z
    .end local v2           #i$:I
    .end local v3           #len$:I
    :pswitch_0
    const/4 v5, 0x0

    .line 253
    goto :goto_0

    .line 255
    :pswitch_1
    const/4 v5, 0x1

    .line 256
    goto :goto_0

    .line 258
    :pswitch_2
    const/4 v5, 0x2

    .line 259
    goto :goto_0

    .line 261
    :pswitch_3
    const/4 v5, 0x3

    .line 262
    goto :goto_0

    .line 264
    :pswitch_4
    const/4 v5, 0x4

    goto :goto_0

    .line 271
    .restart local v0       #arr$:[Ljava/lang/Thread;
    .restart local v1       #finish:Z
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v4       #obj:Ljava/lang/Thread;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 289
    .end local v0           #arr$:[Ljava/lang/Thread;
    .end local v1           #finish:Z
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #obj:Ljava/lang/Thread;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private printSIECustomizeFileNameLog(Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;Lcom/htc/sdm/provider/SoundSetDAO;)V
    .locals 6
    .parameter "xmlInfo"
    .parameter "soundSet"

    .prologue
    .line 931
    const-string v2, "DfSoundSet_"

    .line 932
    .local v2, sieCustomizeLog:Ljava/lang/String;
    const-string v0, "28c33567b07d4dec8d38d4547d595163"

    .line 934
    .local v0, Default_GUID:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->getChildList(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/sdm/provider/SoundSetChildDAO;

    .line 936
    .local v3, soundset:Lcom/htc/sdm/provider/SoundSetChildDAO;
    iget-object v4, v3, Lcom/htc/sdm/provider/SoundSetChildDAO;->GUID:Ljava/lang/String;

    iget-object v5, p2, Lcom/htc/sdm/provider/SoundSetDAO;->GUID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 938
    iget-object v4, v3, Lcom/htc/sdm/provider/SoundSetChildDAO;->refType:Ljava/lang/String;

    invoke-static {v4}, Lcom/htc/sdm/util/SDMUtil;->RefType2ID(Ljava/lang/String;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 941
    :pswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "CustP > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 942
    goto :goto_0

    .line 944
    :pswitch_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "CustRingP > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 945
    goto :goto_0

    .line 947
    :pswitch_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "CustCalP > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 948
    goto :goto_0

    .line 950
    :pswitch_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "CustEmailP > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 951
    goto :goto_0

    .line 953
    :pswitch_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "CustMsgP > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 954
    goto/16 :goto_0

    .line 956
    :pswitch_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "CustNotifyP > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 957
    goto/16 :goto_0

    .line 959
    :pswitch_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "CustAlarmP > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 960
    goto/16 :goto_0

    .line 962
    :pswitch_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "CustTaskP > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 967
    .end local v3           #soundset:Lcom/htc/sdm/provider/SoundSetChildDAO;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/htc/sdm/provider/SoundSetDAO;->file_url:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 968
    const-string v4, "Cust_SoundSet"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    return-void

    .line 938
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method private printSIECustomizeSoundTitleLog(Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;Lcom/htc/sdm/provider/SoundSetInfoDAO;)V
    .locals 6
    .parameter "xmlInfo"
    .parameter "soundSetInfo"

    .prologue
    .line 973
    const-string v2, "DfSoundSet_"

    .line 974
    .local v2, sieCustomizeLog:Ljava/lang/String;
    const-string v0, "28c33567b07d4dec8d38d4547d595163"

    .line 976
    .local v0, Default_GUID:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->getChildList(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/sdm/provider/SoundSetChildDAO;

    .line 978
    .local v3, soundSet:Lcom/htc/sdm/provider/SoundSetChildDAO;
    iget-object v4, p2, Lcom/htc/sdm/provider/SoundSetInfoDAO;->GUID:Ljava/lang/String;

    iget-object v5, v3, Lcom/htc/sdm/provider/SoundSetChildDAO;->GUID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 980
    iget-object v4, v3, Lcom/htc/sdm/provider/SoundSetChildDAO;->refType:Ljava/lang/String;

    invoke-static {v4}, Lcom/htc/sdm/util/SDMUtil;->RefType2ID(Ljava/lang/String;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 983
    :pswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "CustN > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 984
    goto :goto_0

    .line 986
    :pswitch_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "CustRingN > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 987
    goto :goto_0

    .line 989
    :pswitch_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "CustCalN > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 990
    goto :goto_0

    .line 992
    :pswitch_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "CustEmailN > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 993
    goto :goto_0

    .line 995
    :pswitch_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "CustMsgN > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 996
    goto/16 :goto_0

    .line 998
    :pswitch_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "CustNotifyN > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 999
    goto/16 :goto_0

    .line 1001
    :pswitch_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "CustAlarmN > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1002
    goto/16 :goto_0

    .line 1004
    :pswitch_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "CustTaskN > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 1009
    .end local v3           #soundSet:Lcom/htc/sdm/provider/SoundSetChildDAO;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/htc/sdm/provider/SoundSetInfoDAO;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1010
    const-string v4, "Cust_SoundSet"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    return-void

    .line 980
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 103
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 110
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 8
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 115
    const/4 v2, 0x1

    .line 117
    .local v2, service_start_type:I
    const/4 v1, 0x0

    .line 118
    .local v1, nListType:I
    if-eqz p1, :cond_0

    .line 119
    const-string v4, "com.htc.sdm.service.SDMService.listType"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 132
    :cond_0
    sget-object v5, Lcom/htc/sdm/service/SDMService;->syncObj:Ljava/lang/Object;

    monitor-enter v5

    .line 134
    const/4 v3, 0x0

    .line 135
    .local v3, threadIdx:I
    packed-switch v1, :pswitch_data_0

    .line 157
    const/4 v3, 0x4

    .line 161
    :goto_0
    const/4 v0, 0x1

    .line 162
    .local v0, bStartThread:Z
    :try_start_0
    sget-object v4, Lcom/htc/sdm/service/SDMService;->threadArray:[Ljava/lang/Thread;

    aget-object v4, v4, v3

    if-nez v4, :cond_2

    .line 164
    const/4 v4, 0x4

    if-ne v4, v3, :cond_1

    .line 166
    sget-boolean v4, Lcom/htc/sdm/SkuConst;->TMO_THEME_FRAMEWORK:Z

    if-eqz v4, :cond_3

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x30

    if-ne v4, v6, :cond_3

    .line 168
    const/4 v0, 0x0

    .line 180
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 182
    sget-object v4, Lcom/htc/sdm/service/SDMService;->threadArray:[Ljava/lang/Thread;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 191
    :cond_2
    monitor-exit v5

    .line 192
    return v2

    .line 138
    .end local v0           #bStartThread:Z
    :pswitch_0
    const/4 v3, 0x0

    .line 139
    goto :goto_0

    .line 141
    :pswitch_1
    const/4 v3, 0x1

    .line 142
    goto :goto_0

    .line 144
    :pswitch_2
    const/4 v3, 0x2

    .line 145
    goto :goto_0

    .line 153
    :pswitch_3
    const/4 v3, 0x3

    .line 154
    goto :goto_0

    .line 172
    .restart local v0       #bStartThread:Z
    :cond_3
    sget-object v4, Lcom/htc/sdm/service/SDMService;->threadArray:[Ljava/lang/Thread;

    new-instance v6, Lcom/htc/sdm/service/SDMService$insertPresetSoundSet;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/htc/sdm/service/SDMService$insertPresetSoundSet;-><init>(Lcom/htc/sdm/service/SDMService;Lcom/htc/sdm/service/SDMService$1;)V

    aput-object v6, v4, v3

    .line 173
    sget-object v4, Lcom/htc/sdm/service/SDMService;->threadArray:[Ljava/lang/Thread;

    aget-object v4, v4, v3

    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Ljava/lang/Thread;->setPriority(I)V

    goto :goto_1

    .line 191
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 135
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
