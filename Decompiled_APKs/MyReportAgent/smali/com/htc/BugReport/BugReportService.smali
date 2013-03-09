.class public Lcom/htc/BugReport/BugReportService;
.super Lcom/htc/BugReport/FakeContext;
.source "BugReportService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/BugReport/BugReportService$GenericReport;
    }
.end annotation


# static fields
.field private static final MAXLOG_COUNT:I = 0xa

.field private static final RETRY_COUNT:I = 0x3

.field static final TAG:Ljava/lang/String; = "BugReportService"

.field private static final _DEBUG:Z = false

.field private static final bigA:I = 0x41

.field private static final bigZ:I = 0x5a

.field private static final hackerSN:Ljava/lang/String; = "HackerDevice"

.field private static final nine:I = 0x39

.field static final sMessageVersion:Ljava/lang/String; = "HTC bugreport 1.0.0.10"

.field private static final smallA:I = 0x61

.field private static final smallZ:I = 0x7a

.field private static final zero:I = 0x30


# instance fields
.field private uploadHelper:Lcom/htc/BugReport/UploadHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/htc/BugReport/FakeContext;-><init>(Landroid/content/Context;)V

    .line 67
    new-instance v0, Lcom/htc/BugReport/S3Uploader;

    invoke-direct {v0}, Lcom/htc/BugReport/S3Uploader;-><init>()V

    iput-object v0, p0, Lcom/htc/BugReport/BugReportService;->uploadHelper:Lcom/htc/BugReport/UploadHelper;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/htc/BugReport/BugReportService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 59
    invoke-direct/range {p0 .. p5}, Lcom/htc/BugReport/BugReportService;->upload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-void
.end method

.method private static getAccountsWithJSONObjectStyle(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 15
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 540
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 541
    .local v1, accountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 542
    .local v9, jsonArray_mail:Lorg/json/JSONArray;
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 545
    .local v10, jsonObject_ap:Lorg/json/JSONObject;
    :try_start_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 546
    .local v2, accountMgr:Landroid/accounts/AccountManager;
    if-eqz v2, :cond_3

    .line 547
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    .line 548
    .local v4, accounts:[Landroid/accounts/Account;
    if-eqz v4, :cond_3

    .line 549
    const-string v3, ""

    .line 550
    .local v3, accountType:Ljava/lang/String;
    move-object v6, v4

    .local v6, arr$:[Landroid/accounts/Account;
    array-length v11, v6

    .local v11, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_0
    if-ge v8, v11, :cond_3

    aget-object v0, v6, v8

    .line 551
    .local v0, account:Landroid/accounts/Account;
    if-eqz v0, :cond_1

    .line 552
    iget-object v3, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 553
    const-string v13, "com.htc.android.mail.eas"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "com.google"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 554
    :cond_0
    iget-object v13, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v9, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 550
    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 555
    :cond_2
    iget-object v13, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v13}, Lcom/htc/BugReport/BugReportService;->isExcludedAccounts(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 556
    iget-object v13, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v10, v3, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 577
    .end local v0           #account:Landroid/accounts/Account;
    .end local v2           #accountMgr:Landroid/accounts/AccountManager;
    .end local v3           #accountType:Ljava/lang/String;
    .end local v4           #accounts:[Landroid/accounts/Account;
    .end local v6           #arr$:[Landroid/accounts/Account;
    .end local v8           #i$:I
    .end local v11           #len$:I
    :catch_0
    move-exception v7

    .line 578
    .local v7, e:Lorg/json/JSONException;
    const-string v13, "BugReportService"

    const-string v14, "JSONException"

    invoke-static {v13, v14, v7}, Lcom/htc/BugReport/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 582
    .end local v7           #e:Lorg/json/JSONException;
    :goto_2
    return-object v1

    .line 563
    .restart local v2       #accountMgr:Landroid/accounts/AccountManager;
    :cond_3
    const/4 v12, 0x0

    .local v12, mailAccountStr:Ljava/lang/String;
    const/4 v5, 0x0

    .line 564
    .local v5, apAccountStr:Ljava/lang/String;
    :try_start_1
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-gtz v13, :cond_4

    .line 565
    const-string v12, "unknown"

    .line 569
    :goto_3
    invoke-virtual {v10}, Lorg/json/JSONObject;->length()I

    move-result v13

    if-gtz v13, :cond_5

    .line 570
    const-string v5, "unknown"

    .line 574
    :goto_4
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 579
    .end local v2           #accountMgr:Landroid/accounts/AccountManager;
    .end local v5           #apAccountStr:Ljava/lang/String;
    .end local v12           #mailAccountStr:Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 580
    .local v7, e:Ljava/lang/Exception;
    const-string v13, "BugReportService"

    const-string v14, "getAccountsWithJSONObjectStyle"

    invoke-static {v13, v14, v7}, Lcom/htc/BugReport/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 567
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v2       #accountMgr:Landroid/accounts/AccountManager;
    .restart local v5       #apAccountStr:Ljava/lang/String;
    .restart local v12       #mailAccountStr:Ljava/lang/String;
    :cond_4
    :try_start_2
    invoke-virtual {v9}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    .line 572
    :cond_5
    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    goto :goto_4
.end method

.method private getAndroidId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/htc/BugReport/BugReportService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, aid:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, "unknown"

    .end local v0           #aid:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private static getCity(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ctx"
    .parameter "defaultCity"

    .prologue
    .line 594
    const-string v2, "location"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 595
    .local v1, lm:Landroid/location/LocationManager;
    invoke-static {v1}, Lcom/htc/BugReport/BugReportService;->getCurrentLocation(Landroid/location/LocationManager;)Landroid/location/Location;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/htc/BugReport/BugReportService;->getCityByLocation(Landroid/content/Context;Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    .line 596
    .local v0, city:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    move-object p1, v0

    goto :goto_0
.end method

.method private static getCityByLocation(Landroid/content/Context;Landroid/location/Location;)Ljava/lang/String;
    .locals 14
    .parameter "ctx"
    .parameter "loc"

    .prologue
    .line 616
    const/4 v9, 0x0

    .line 617
    .local v9, city:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 618
    new-instance v0, Landroid/location/Geocoder;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, p0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 619
    .local v0, gcd:Landroid/location/Geocoder;
    const/4 v7, 0x0

    .line 621
    .local v7, addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 627
    :goto_0
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 628
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Address;

    .line 629
    .local v6, address:Landroid/location/Address;
    invoke-virtual {v6}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v8

    .line 630
    .local v8, adminArea:Ljava/lang/String;
    invoke-virtual {v6}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v13

    .line 631
    .local v13, subAdminArea:Ljava/lang/String;
    invoke-virtual {v6}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v12

    .line 632
    .local v12, locality:Ljava/lang/String;
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 634
    .local v11, jobject:Lorg/json/JSONObject;
    :try_start_1
    const-string v1, "AdminArea"

    invoke-virtual {v11, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 635
    const-string v1, "SubAdminArea"

    invoke-virtual {v11, v1, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 636
    const-string v1, "Locality"

    invoke-virtual {v11, v1, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 637
    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v9

    .line 644
    .end local v0           #gcd:Landroid/location/Geocoder;
    .end local v6           #address:Landroid/location/Address;
    .end local v7           #addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .end local v8           #adminArea:Ljava/lang/String;
    .end local v11           #jobject:Lorg/json/JSONObject;
    .end local v12           #locality:Ljava/lang/String;
    .end local v13           #subAdminArea:Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v9

    .line 622
    .restart local v0       #gcd:Landroid/location/Geocoder;
    .restart local v7       #addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :catch_0
    move-exception v10

    .line 623
    .local v10, e:Ljava/io/IOException;
    const-string v1, "BugReportService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getCityByLocation] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/BugReport/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 624
    .end local v10           #e:Ljava/io/IOException;
    :catch_1
    move-exception v10

    .line 625
    .local v10, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "BugReportService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getCityByLocation] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/BugReport/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 638
    .end local v10           #e:Ljava/lang/IllegalArgumentException;
    .restart local v6       #address:Landroid/location/Address;
    .restart local v8       #adminArea:Ljava/lang/String;
    .restart local v11       #jobject:Lorg/json/JSONObject;
    .restart local v12       #locality:Ljava/lang/String;
    .restart local v13       #subAdminArea:Ljava/lang/String;
    :catch_2
    move-exception v10

    .line 639
    .local v10, e:Lorg/json/JSONException;
    invoke-virtual {v10}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private static getCurrentLocation(Landroid/location/LocationManager;)Landroid/location/Location;
    .locals 4
    .parameter "lm"

    .prologue
    .line 600
    const/4 v1, 0x0

    .line 601
    .local v1, loc:Landroid/location/Location;
    if-eqz p0, :cond_0

    .line 602
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    .line 604
    .local v0, crit:Landroid/location/Criteria;
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v2

    .line 605
    .local v2, provider:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 606
    invoke-virtual {p0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 612
    .end local v0           #crit:Landroid/location/Criteria;
    .end local v2           #provider:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private getFreeSize(Ljava/lang/String;)J
    .locals 7
    .parameter "path"

    .prologue
    .line 650
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 651
    .local v0, dataFs:Landroid/os/StatFs;
    const-wide/16 v1, -0x1

    .line 652
    .local v1, freeDataSize:J
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v5, v5

    mul-long v1, v3, v5

    .line 654
    return-wide v1
.end method

.method private static getPhoneNum(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "ctx"
    .parameter "defaultPhoneNum"

    .prologue
    .line 667
    const-string v0, ""

    .line 669
    .local v0, cipherText:Ljava/lang/String;
    :try_start_0
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 670
    .local v3, tMgr:Landroid/telephony/TelephonyManager;
    if-eqz v3, :cond_3

    .line 671
    const/4 v4, 0x1

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 672
    const-string v4, "No SIM Card"

    invoke-static {v4}, Lcom/htc/utils/ulog/StringHelper;->encrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 684
    .end local v3           #tMgr:Landroid/telephony/TelephonyManager;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v0, ""

    .end local v0           #cipherText:Ljava/lang/String;
    :cond_0
    return-object v0

    .line 674
    .restart local v0       #cipherText:Ljava/lang/String;
    .restart local v3       #tMgr:Landroid/telephony/TelephonyManager;
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    .line 675
    .local v2, phonenum:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1}, Lcom/htc/utils/ulog/StringHelper;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 676
    :goto_1
    goto :goto_0

    .line 675
    :cond_2
    invoke-static {v2}, Lcom/htc/utils/ulog/StringHelper;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 678
    .end local v2           #phonenum:Ljava/lang/String;
    :cond_3
    invoke-static {p1}, Lcom/htc/utils/ulog/StringHelper;->encrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 679
    .end local v3           #tMgr:Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v1

    .line 680
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "BugReportService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getPhoneNum] fail: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/BugReport/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    const-string v4, "FAIL"

    invoke-static {v4}, Lcom/htc/utils/ulog/StringHelper;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getSN()Ljava/lang/String;
    .locals 5

    .prologue
    .line 500
    const-string v3, "ro.serialno"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 502
    .local v1, sn:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    const-string v1, "HackerDevice"

    .line 514
    .end local v1           #sn:Ljava/lang/String;
    .local v0, i:I
    :cond_1
    :goto_0
    return-object v1

    .line 503
    .end local v0           #i:I
    .restart local v1       #sn:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 504
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const v4, 0xffff

    and-int v2, v3, v4

    .line 506
    .local v2, sting:I
    const/16 v3, 0x61

    if-lt v2, v3, :cond_3

    const/16 v3, 0x7a

    if-le v2, v3, :cond_5

    :cond_3
    const/16 v3, 0x41

    if-lt v2, v3, :cond_4

    const/16 v3, 0x5a

    if-le v2, v3, :cond_5

    :cond_4
    const/16 v3, 0x30

    if-lt v2, v3, :cond_6

    const/16 v3, 0x39

    if-gt v2, v3, :cond_6

    .line 503
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 511
    :cond_6
    const-string v1, "HackerDevice"

    goto :goto_0
.end method

.method private static getSavedFilename(I)Ljava/lang/String;
    .locals 2
    .parameter "count"

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "report-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".bin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static isExcludedAccounts(Ljava/lang/String;)Z
    .locals 1
    .parameter "accountType"

    .prologue
    .line 659
    const-string v0, "com.htc.showme"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.htc.sync.provider.weather"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.htc.android.Stock"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.htc.stock"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.htc.newsreader"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private isNetworkAllowed()Z
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 439
    const-string v7, "connectivity"

    invoke-virtual {p0, v7}, Lcom/htc/BugReport/BugReportService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 440
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 441
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-nez v1, :cond_0

    .line 442
    const-string v6, "BugReportService"

    const-string v7, "Upload block due to no active network."

    invoke-static {v6, v7}, Lcom/htc/BugReport/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :goto_0
    return v5

    .line 445
    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    .line 446
    .local v4, type:I
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    .line 447
    .local v3, subType:I
    const-string v7, "BugReportService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getTypeName():"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/BugReport/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const-string v7, "BugReportService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getType(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", getSubtype: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/BugReport/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    const-string v7, "BugReportService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isAvailable():"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/BugReport/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const-string v7, "BugReportService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isAvailable():"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/BugReport/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const-string v7, "BugReportService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isConnected():"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/BugReport/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const-string v7, "BugReportService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isConnectedOrConnecting():"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/BugReport/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const-string v7, "BugReportService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isRoaming():"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/BugReport/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const-string v7, "BugReportService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "All:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/BugReport/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 458
    const-string v6, "BugReportService"

    const-string v7, "Upload block due to roaming."

    invoke-static {v6, v7}, Lcom/htc/BugReport/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 463
    :cond_1
    if-nez v4, :cond_3

    const/4 v7, 0x2

    if-eq v3, v7, :cond_2

    if-eq v3, v6, :cond_2

    const/4 v7, 0x7

    if-eq v3, v7, :cond_2

    const/4 v7, 0x4

    if-ne v3, v7, :cond_3

    .line 466
    :cond_2
    const-string v6, "BugReportService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[2G] upload block because network type is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/BugReport/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 471
    :cond_3
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    const/16 v8, 0x12

    if-ne v7, v8, :cond_4

    .line 472
    const-string v5, "BugReportService"

    const-string v7, "Upload by USBNET."

    invoke-static {v5, v7}, Lcom/htc/BugReport/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 473
    goto/16 :goto_0

    .line 477
    :cond_4
    invoke-virtual {p0}, Lcom/htc/BugReport/BugReportService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "htc_error_report_prefer_network"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 478
    .local v2, preferNetwork:I
    const-string v7, "BugReportService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "preferNetwork="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/BugReport/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    if-nez v2, :cond_5

    move v5, v6

    .line 480
    goto/16 :goto_0

    .line 481
    :cond_5
    if-ne v2, v6, :cond_6

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    if-ne v7, v6, :cond_6

    move v5, v6

    .line 482
    goto/16 :goto_0

    .line 484
    :cond_6
    const-string v6, "BugReportService"

    const-string v7, "Upload block due to wifi only."

    invoke-static {v6, v7}, Lcom/htc/BugReport/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private renameCachedFiles()V
    .locals 7

    .prologue
    .line 145
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/htc/BugReport/BugReportService;->getSavedFilename(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/htc/BugReport/BugReportService;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 146
    .local v1, file0:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 147
    const-string v4, "BugReportService"

    const-string v5, "position 0 has no cache file"

    invoke-static {v4, v5}, Lcom/htc/BugReport/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_0
    return-void

    .line 151
    :cond_1
    invoke-virtual {p0}, Lcom/htc/BugReport/BugReportService;->getFilesCount()I

    move-result v2

    .line 152
    .local v2, filecount:I
    const/16 v4, 0xa

    if-gt v2, v4, :cond_0

    .line 153
    add-int/lit8 v3, v2, -0x1

    .local v3, j:I
    :goto_0
    if-ltz v3, :cond_0

    .line 154
    invoke-static {v3}, Lcom/htc/BugReport/BugReportService;->getSavedFilename(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/htc/BugReport/BugReportService;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 155
    .local v0, file:Ljava/io/File;
    add-int/lit8 v4, v3, 0x1

    invoke-static {v4}, Lcom/htc/BugReport/BugReportService;->getSavedFilename(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/htc/BugReport/BugReportService;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 156
    const-string v4, "BugReportService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "From "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    invoke-static {v6}, Lcom/htc/BugReport/BugReportService;->getSavedFilename(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/BugReport/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    add-int/lit8 v3, v3, -0x1

    goto :goto_0
.end method

.method private resumeCachedReport(Lcom/htc/BugReport/UploadHelper;)V
    .locals 13
    .parameter "helper"

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/htc/BugReport/BugReportService;->isNetworkAllowed()Z

    move-result v10

    if-nez v10, :cond_1

    .line 231
    :cond_0
    return-void

    .line 182
    :cond_1
    new-instance v7, Ljava/util/Properties;

    invoke-direct {v7}, Ljava/util/Properties;-><init>()V

    .line 183
    .local v7, prop:Ljava/util/Properties;
    const-string v10, "BugReportService"

    const-string v11, "Start upload resuming queue files."

    invoke-static {v10, v11}, Lcom/htc/BugReport/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {p0}, Lcom/htc/BugReport/BugReportService;->getFilesCount()I

    move-result v3

    .line 186
    .local v3, filecount:I
    const-string v10, "BugReportService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Start upload resuming queue files.Totl file count is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/BugReport/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/htc/BugReport/BugReportService;->getSavedFilename(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/htc/BugReport/BugReportService;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v1, 0x0

    .line 189
    .local v1, endFile:I
    :goto_0
    add-int v10, v3, v1

    add-int/lit8 v9, v10, -0x1

    .line 191
    .local v9, startFile:I
    move v6, v9

    .local v6, j:I
    :goto_1
    if-lt v6, v1, :cond_0

    .line 192
    invoke-static {v6}, Lcom/htc/BugReport/BugReportService;->getSavedFilename(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/htc/BugReport/BugReportService;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 193
    .local v2, file:Ljava/io/File;
    const-string v10, "BugReportService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[Start upload resuming queue files.]The file path: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v6}, Lcom/htc/BugReport/BugReportService;->getSavedFilename(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/BugReport/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_4

    .line 195
    const-string v10, "BugReportService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "file cannot find,"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v6}, Lcom/htc/BugReport/BugReportService;->getSavedFilename(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/htc/BugReport/BugReportService;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/BugReport/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 188
    .end local v1           #endFile:I
    .end local v2           #file:Ljava/io/File;
    .end local v6           #j:I
    .end local v9           #startFile:I
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 198
    .restart local v1       #endFile:I
    .restart local v2       #file:Ljava/io/File;
    .restart local v6       #j:I
    .restart local v9       #startFile:I
    :cond_4
    const/4 v4, 0x3

    .local v4, i:I
    :goto_3
    if-lez v4, :cond_2

    .line 200
    :try_start_0
    new-instance v5, Ljava/io/DataInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 201
    .local v5, in:Ljava/io/DataInputStream;
    const-string v10, "TAG"

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 202
    const-string v10, "S/N"

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 204
    const/16 v10, 0x7530

    invoke-interface {p1, v2, v7, v10}, Lcom/htc/BugReport/UploadHelper;->putReportByHttpClient(Ljava/io/File;Ljava/util/Properties;I)Lcom/amazon/s3/Result;

    move-result-object v8

    .line 205
    .local v8, result:Lcom/amazon/s3/Result;
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lcom/amazon/s3/Result;->getStatusCode()I

    move-result v10

    const/16 v11, 0xc8

    if-ne v10, v11, :cond_5

    .line 206
    const-string v10, "BugReportService"

    const-string v11, "Upload Done"

    invoke-static {v10, v11}, Lcom/htc/BugReport/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const-string v10, "BugReportService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Upload The absolute file path: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v6}, Lcom/htc/BugReport/BugReportService;->getSavedFilename(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/htc/BugReport/BugReportService;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/BugReport/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 218
    .end local v5           #in:Ljava/io/DataInputStream;
    .end local v8           #result:Lcom/amazon/s3/Result;
    :catch_0
    move-exception v0

    .line 219
    .local v0, e:Lorg/apache/http/HttpException;
    const-string v10, "BugReportService"

    const-string v11, "resumeCachedReport exception "

    invoke-static {v10, v11, v0}, Lcom/htc/BugReport/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 220
    const-wide/16 v10, 0x3e8

    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    .line 198
    .end local v0           #e:Lorg/apache/http/HttpException;
    :goto_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 212
    .restart local v5       #in:Ljava/io/DataInputStream;
    .restart local v8       #result:Lcom/amazon/s3/Result;
    :cond_5
    :try_start_1
    const-string v10, "BugReportService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Upload fail retry"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v6}, Lcom/htc/BugReport/BugReportService;->getSavedFilename(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/htc/BugReport/BugReportService;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/BugReport/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    if-nez v4, :cond_6

    .line 215
    const-string v10, "BugReportService"

    const-string v11, "resumeCachedReport fail (upload on the s3 server failed)"

    invoke-static {v10, v11}, Lcom/htc/BugReport/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_6
    const-wide/16 v10, 0x3e8

    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_1
    .catch Lorg/apache/http/HttpException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 221
    .end local v5           #in:Ljava/io/DataInputStream;
    .end local v8           #result:Lcom/amazon/s3/Result;
    :catch_1
    move-exception v0

    .line 222
    .local v0, e:Ljava/lang/Exception;
    const-string v10, "BugReportService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "get exception when resume cached files "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v6}, Lcom/htc/BugReport/BugReportService;->getSavedFilename(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/htc/BugReport/BugReportService;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/htc/BugReport/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    if-nez v4, :cond_7

    .line 225
    const-string v10, "BugReportService"

    const-string v11, "resumeCachedReport exception"

    invoke-static {v10, v11, v0}, Lcom/htc/BugReport/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 227
    :cond_7
    const-wide/16 v10, 0x3e8

    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_4
.end method

.method private upload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 25
    .parameter "tag"
    .parameter "message"
    .parameter "position"
    .parameter "unique_msg"
    .parameter "input"

    .prologue
    .line 240
    if-nez p1, :cond_0

    .line 241
    const-string v21, "BugReportService"

    const-string v22, "Upload abort due to tag==null"

    invoke-static/range {v21 .. v22}, Lcom/htc/BugReport/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    .end local p4
    :goto_0
    return-void

    .line 244
    .restart local p4
    :cond_0
    if-nez p2, :cond_1

    .line 245
    const-string p2, ""

    .line 246
    :cond_1
    if-nez p3, :cond_2

    .line 247
    const-string p3, ""

    .line 249
    :cond_2
    const-string v21, "power"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/BugReport/BugReportService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PowerManager;

    .line 250
    .local v9, pm:Landroid/os/PowerManager;
    const/16 v21, 0x1

    const-string v22, "BugReportService"

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v16

    .line 251
    .local v16, wakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-virtual/range {v16 .. v16}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 254
    :try_start_0
    invoke-static {}, Lcom/htc/BugReport/BugReportService;->getSN()Ljava/lang/String;

    move-result-object v13

    .line 255
    .local v13, sn:Ljava/lang/String;
    const-string v21, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/BugReport/BugReportService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/telephony/TelephonyManager;

    .line 257
    .local v14, telmgr:Landroid/telephony/TelephonyManager;
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 259
    .local v8, os_deviceinfo:Ljava/io/ByteArrayOutputStream;
    new-instance v11, Ljava/util/Properties;

    invoke-direct {v11}, Ljava/util/Properties;-><init>()V

    .line 260
    .local v11, propReportData:Ljava/util/Properties;
    const-string v21, "tag"

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 261
    const-string v21, "message"

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 262
    const-string v21, "project"

    const-string v22, "ro.product.device"

    const-string v23, "unknown"

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 263
    const-string v21, "model"

    const-string v22, "ro.product.model"

    const-string v23, "unknown"

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 264
    const-string v21, "product"

    const-string v22, "ro.product.name"

    const-string v23, "unknown"

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 265
    const-string v21, "rom"

    const-string v22, "ro.build.description"

    const-string v23, "unknown"

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 266
    const-string v21, "changelist"

    const-string v22, "ro.build.changelist"

    const-string v23, "-1"

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 267
    const-string v21, "aid"

    invoke-direct/range {p0 .. p0}, Lcom/htc/BugReport/BugReportService;->getAndroidId()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 268
    const-string v21, "fingerprint"

    sget-object v22, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 269
    const-string v21, "radio"

    const-string v22, "gsm.version.baseband"

    const-string v23, "unknown"

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 270
    const-string v21, "revision"

    const-string v22, "ro.revision"

    const-string v23, "unknown"

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 271
    const-string v21, "serialno"

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 272
    const-string v21, "buildtype"

    const-string v22, "ro.build.type"

    const-string v23, "unknown"

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 273
    const-string v21, "deviceid"

    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/htc/BugReport/BugReportService;->validTelephonyId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 274
    const-string v21, "phonetype"

    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 275
    const-string v21, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 276
    const-string v21, "frameworkversion"

    const-string v22, "ro.build.version.release"

    const-string v23, "unknown"

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 277
    const-string v21, "buildidentify"

    const-string v22, "ro.build.project"

    const-string v23, "unknown"

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 278
    const-string v21, "keyset"

    const-string v22, "ro.build.tags"

    const-string v23, "unknown"

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 279
    const-string v21, "position"

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 280
    const-string v21, "cid"

    const-string v22, "ro.cid"

    const-string v23, "unknown"

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 281
    const-string v21, "sense_version"

    sget-object v22, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 282
    const-string v21, "builddateid"

    const-string v22, "ro.build.date.utc"

    const-string v23, "unknown"

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 283
    const-string v21, "unlocked_device"

    const-string v22, "ro.lb"

    const-string v23, "unknown"

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 284
    const-string v21, "free_data_storage"

    const-string v22, "/data"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/htc/BugReport/BugReportService;->getFreeSize(Ljava/lang/String;)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 285
    const-string v21, "unique_msg"

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_3

    const-string p4, "unknown"

    .end local p4
    :cond_3
    move-object/from16 v0, v21

    move-object/from16 v1, p4

    invoke-virtual {v11, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 286
    invoke-static {}, Lcom/htc/utils/ulog/Util;->isFactoryRom()Z

    move-result v21

    if-nez v21, :cond_4

    invoke-static {}, Lcom/htc/utils/ulog/Util;->isUserRom()Z

    move-result v21

    if-nez v21, :cond_4

    .line 287
    invoke-virtual/range {p0 .. p0}, Lcom/htc/BugReport/BugReportService;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/htc/BugReport/BugReportService;->getAccountsWithJSONObjectStyle(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    .line 288
    .local v3, accountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v22, "account"

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 289
    const-string v22, "apaccount"

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 290
    const-string v21, "city"

    invoke-virtual/range {p0 .. p0}, Lcom/htc/BugReport/BugReportService;->getContext()Landroid/content/Context;

    move-result-object v22

    const-string v23, "unknown"

    invoke-static/range {v22 .. v23}, Lcom/htc/BugReport/BugReportService;->getCity(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 291
    const-string v21, "devicepid"

    invoke-virtual/range {p0 .. p0}, Lcom/htc/BugReport/BugReportService;->getContext()Landroid/content/Context;

    move-result-object v22

    const-string v23, "unknown"

    invoke-static/range {v22 .. v23}, Lcom/htc/BugReport/BugReportService;->getPhoneNum(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 295
    .end local v3           #accountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    const-string v21, "HTC bugreport 1.0.0.10"

    move-object/from16 v0, v21

    invoke-virtual {v11, v8, v0}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 300
    new-instance v10, Ljava/util/Properties;

    invoke-direct {v10}, Ljava/util/Properties;-><init>()V

    .line 301
    .local v10, prop:Ljava/util/Properties;
    const-string v21, "TAG"

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v10, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 302
    const-string v21, "S/N"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0, v13}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 304
    invoke-direct/range {p0 .. p0}, Lcom/htc/BugReport/BugReportService;->renameCachedFiles()V

    .line 305
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Lcom/htc/BugReport/BugReportService;->getSavedFilename(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/BugReport/BugReportService;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    .line 306
    .local v15, temp_file_loc:Ljava/io/File;
    new-instance v20, Ljava/io/FileOutputStream;

    move-object/from16 v0, v20

    invoke-direct {v0, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 307
    .local v20, zipos:Ljava/io/FileOutputStream;
    new-instance v4, Ljava/io/DataOutputStream;

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 308
    .local v4, dataStream:Ljava/io/DataOutputStream;
    const-string v21, "TAG"

    const-string v22, "ALL"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 309
    const-string v21, "S/N"

    const-string v22, "unknown"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 310
    new-instance v19, Ljava/util/zip/ZipOutputStream;

    invoke-direct/range {v19 .. v20}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 315
    .local v19, zip:Ljava/util/zip/ZipOutputStream;
    new-instance v17, Ljava/util/zip/ZipEntry;

    const-string v21, "DeviceInfo.properties"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 316
    .local v17, ze1:Ljava/util/zip/ZipEntry;
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 317
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 318
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 319
    new-instance v18, Ljava/util/zip/ZipEntry;

    const-string v21, "Logfile"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 320
    .local v18, ze2:Ljava/util/zip/ZipEntry;
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 321
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/htc/BugReport/BugReportService;->streamCopy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 322
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 323
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 324
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    .line 325
    if-eqz p5, :cond_5

    invoke-virtual/range {p5 .. p5}, Ljava/io/InputStream;->close()V

    .line 328
    :cond_5
    const-string v21, "BugReportService"

    const-string v22, "Start upload"

    invoke-static/range {v21 .. v22}, Lcom/htc/BugReport/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const-string v21, "BugReportService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "The size of uploaded file is: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "(bytes)"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/htc/BugReport/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-direct/range {p0 .. p0}, Lcom/htc/BugReport/BugReportService;->isNetworkAllowed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v21

    if-nez v21, :cond_7

    .line 371
    :cond_6
    :goto_1
    invoke-virtual/range {v16 .. v16}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 333
    :cond_7
    const/4 v6, 0x3

    .local v6, i:I
    :goto_2
    if-ltz v6, :cond_6

    .line 339
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/BugReport/BugReportService;->uploadHelper:Lcom/htc/BugReport/UploadHelper;

    move-object/from16 v21, v0

    const/16 v22, 0x7530

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v0, v15, v10, v1}, Lcom/htc/BugReport/UploadHelper;->putReportByHttpClient(Ljava/io/File;Ljava/util/Properties;I)Lcom/amazon/s3/Result;

    move-result-object v12

    .line 342
    .local v12, result:Lcom/amazon/s3/Result;
    if-eqz v12, :cond_9

    invoke-virtual {v12}, Lcom/amazon/s3/Result;->getStatusCode()I

    move-result v21

    const/16 v22, 0xc8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    .line 343
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    .line 344
    const-string v21, "BugReportService"

    const-string v22, "Upload Done"

    invoke-static/range {v21 .. v22}, Lcom/htc/BugReport/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/BugReport/BugReportService;->uploadHelper:Lcom/htc/BugReport/UploadHelper;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/htc/BugReport/BugReportService;->resumeCachedReport(Lcom/htc/BugReport/UploadHelper;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 356
    .end local v12           #result:Lcom/amazon/s3/Result;
    :catch_0
    move-exception v5

    .line 357
    .local v5, e:Ljava/lang/Exception;
    if-nez v6, :cond_8

    .line 358
    :try_start_2
    const-string v21, "BugReportService"

    const-string v22, "Got exception"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v5}, Lcom/htc/BugReport/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 361
    :cond_8
    const-wide/16 v21, 0x3e8

    invoke-static/range {v21 .. v22}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 333
    .end local v5           #e:Ljava/lang/Exception;
    :goto_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 350
    .restart local v12       #result:Lcom/amazon/s3/Result;
    :cond_9
    if-nez v6, :cond_a

    .line 351
    :try_start_3
    const-string v21, "BugReportService"

    const-string v22, "fail "

    invoke-static/range {v21 .. v22}, Lcom/htc/BugReport/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_a
    const-wide/16 v21, 0x3e8

    invoke-static/range {v21 .. v22}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 365
    .end local v4           #dataStream:Ljava/io/DataOutputStream;
    .end local v6           #i:I
    .end local v8           #os_deviceinfo:Ljava/io/ByteArrayOutputStream;
    .end local v10           #prop:Ljava/util/Properties;
    .end local v11           #propReportData:Ljava/util/Properties;
    .end local v12           #result:Lcom/amazon/s3/Result;
    .end local v13           #sn:Ljava/lang/String;
    .end local v14           #telmgr:Landroid/telephony/TelephonyManager;
    .end local v15           #temp_file_loc:Ljava/io/File;
    .end local v17           #ze1:Ljava/util/zip/ZipEntry;
    .end local v18           #ze2:Ljava/util/zip/ZipEntry;
    .end local v19           #zip:Ljava/util/zip/ZipOutputStream;
    .end local v20           #zipos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v7

    .line 366
    .local v7, ioException:Ljava/io/IOException;
    :try_start_4
    const-string v21, "BugReportService"

    const-string v22, "IO Exception occurs when zip: "

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Lcom/htc/BugReport/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 371
    invoke-virtual/range {v16 .. v16}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 368
    .end local v7           #ioException:Ljava/io/IOException;
    :catch_2
    move-exception v5

    .line 369
    .restart local v5       #e:Ljava/lang/Exception;
    :try_start_5
    const-string v21, "BugReportService"

    const-string v22, "Got exception "

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v5}, Lcom/htc/BugReport/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 371
    invoke-virtual/range {v16 .. v16}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .end local v5           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v21

    invoke-virtual/range {v16 .. v16}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v21
.end method

.method private validTelephonyId(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "value"

    .prologue
    .line 126
    if-nez p1, :cond_0

    const-string p1, "unknown"

    .end local p1
    :cond_0
    return-object p1
.end method


# virtual methods
.method public onConnectivityChange()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/BugReport/BugReportService;->uploadHelper:Lcom/htc/BugReport/UploadHelper;

    invoke-direct {p0, v0}, Lcom/htc/BugReport/BugReportService;->resumeCachedReport(Lcom/htc/BugReport/UploadHelper;)V

    .line 79
    return-void
.end method

.method public onUploadBugReport(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 74
    new-instance v0, Lcom/htc/BugReport/BugReportService$GenericReport;

    invoke-direct {v0, p0, p1}, Lcom/htc/BugReport/BugReportService$GenericReport;-><init>(Lcom/htc/BugReport/BugReportService;Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/htc/BugReport/BugReportService$GenericReport;->run()V

    .line 75
    return-void
.end method

.method public streamCopy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .parameter "in"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 520
    monitor-enter p1

    .line 521
    :try_start_0
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 522
    const/16 v2, 0x100

    :try_start_1
    new-array v0, v2, [B

    .line 524
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 525
    .local v1, bytesRead:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 528
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 529
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 530
    return-void

    .line 526
    :cond_0
    const/4 v2, 0x0

    :try_start_3
    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 528
    .end local v0           #buffer:[B
    .end local v1           #bytesRead:I
    :catchall_0
    move-exception v2

    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    .line 529
    :catchall_1
    move-exception v2

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method
