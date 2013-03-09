.class public Lcom/google/android/vending/verifier/api/PackageVerificationApi;
.super Ljava/lang/Object;
.source "PackageVerificationApi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildSha256Digest([B)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;
    .locals 2
    .parameter "sha256hash"

    .prologue
    .line 138
    new-instance v0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;

    invoke-direct {v0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;-><init>()V

    .line 140
    .local v0, digests:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;
    invoke-static {p0}, Lcom/google/protobuf/micro/ByteStringMicro;->copyFrom([B)Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;->setSha256(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;

    move-result-object v1

    return-object v1
.end method

.method private static createResource(Landroid/net/Uri;Ljava/net/InetAddress;Landroid/net/Uri;I)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;
    .locals 2
    .parameter "uri"
    .parameter "ip"
    .parameter "referrerUri"
    .parameter "type"

    .prologue
    .line 123
    new-instance v0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;

    invoke-direct {v0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;-><init>()V

    .line 125
    .local v0, resource:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;->setUrl(Ljava/lang/String;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;

    .line 126
    invoke-virtual {v0, p3}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;->setType(I)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;

    .line 127
    if-eqz p2, :cond_0

    .line 128
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;->setReferrer(Ljava/lang/String;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;

    .line 131
    :cond_0
    if-eqz p1, :cond_1

    .line 132
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/micro/ByteStringMicro;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;->setRemoteIp(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;

    .line 134
    :cond_1
    return-object v0
.end method

.method public static reportUserDecision(I[BLcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 3
    .parameter "userDecision"
    .parameter "requestToken"
    .parameter "errorListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 108
    new-instance v1, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;

    invoke-direct {v1}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;-><init>()V

    .line 111
    .local v1, requestProto:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;
    if-eqz p1, :cond_0

    .line 112
    invoke-static {p1}, Lcom/google/protobuf/micro/ByteStringMicro;->copyFrom([B)Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;->setToken(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;

    .line 114
    :cond_0
    invoke-virtual {v1, p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;->setUserDecision(I)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;

    .line 116
    new-instance v0, Lcom/google/android/vending/verifier/api/PackageVerificationStatsRequest;

    const-string v2, "https://safebrowsing.google.com/safebrowsing/clientreport/download-stat"

    invoke-direct {v0, v2, p2, v1}, Lcom/google/android/vending/verifier/api/PackageVerificationStatsRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;)V

    .line 118
    .local v0, request:Lcom/android/volley/Request;,"Lcom/android/volley/Request<*>;"
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v2

    return-object v2
.end method

.method public static verifyApp([BJLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/lang/String;JLcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 9
    .parameter "sha256"
    .parameter "length"
    .parameter "packageName"
    .parameter "versionCode"
    .parameter "installingPackage"
    .parameter "originatingUri"
    .parameter "referrerUri"
    .parameter "originatingIp"
    .parameter "referrerIp"
    .parameter "locale"
    .parameter "androidId"
    .parameter
    .parameter "errorListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJ",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Ljava/net/InetAddress;",
            "Ljava/net/InetAddress;",
            "Ljava/lang/String;",
            "J",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/vending/verifier/api/PackageVerificationResult;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 56
    .local p13, responseListener:Lcom/android/volley/Response$Listener;,"Lcom/android/volley/Response$Listener<Lcom/google/android/vending/verifier/api/PackageVerificationResult;>;"
    new-instance v6, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;

    invoke-direct {v6}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;-><init>()V

    .line 58
    .local v6, requestProto:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;
    if-nez p3, :cond_0

    if-eqz p4, :cond_3

    .line 59
    :cond_0
    new-instance v2, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;

    invoke-direct {v2}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;-><init>()V

    .line 61
    .local v2, apkInfo:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;
    if-eqz p3, :cond_1

    .line 62
    invoke-virtual {v2, p3}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;->setPackageName(Ljava/lang/String;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;

    .line 64
    :cond_1
    if-eqz p4, :cond_2

    .line 65
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;->setVersionCode(I)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;

    .line 67
    :cond_2
    invoke-virtual {v6, v2}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->setApkInfo(Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;

    .line 70
    .end local v2           #apkInfo:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;
    :cond_3
    if-eqz p6, :cond_6

    .line 71
    invoke-virtual {p6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->setUrl(Ljava/lang/String;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;

    .line 73
    const/4 v7, 0x0

    move-object/from16 v0, p8

    move-object/from16 v1, p7

    invoke-static {p6, v0, v1, v7}, Lcom/google/android/vending/verifier/api/PackageVerificationApi;->createResource(Landroid/net/Uri;Ljava/net/InetAddress;Landroid/net/Uri;I)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;

    move-result-object v3

    .line 76
    .local v3, originatingResource:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;
    invoke-virtual {v6, v3}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->addResources(Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;

    .line 78
    if-eqz p7, :cond_4

    .line 79
    const/4 v7, 0x0

    const/4 v8, 0x2

    move-object/from16 v0, p7

    move-object/from16 v1, p9

    invoke-static {v0, v1, v7, v8}, Lcom/google/android/vending/verifier/api/PackageVerificationApi;->createResource(Landroid/net/Uri;Ljava/net/InetAddress;Landroid/net/Uri;I)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;

    move-result-object v4

    .line 82
    .local v4, referrerResource:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;
    invoke-virtual {v6, v4}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->addResources(Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;

    .line 89
    .end local v3           #originatingResource:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;
    .end local v4           #referrerResource:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;
    :cond_4
    :goto_0
    invoke-virtual {v6, p1, p2}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->setLength(J)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;

    .line 92
    invoke-static {p0}, Lcom/google/android/vending/verifier/api/PackageVerificationApi;->buildSha256Digest([B)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->setDigests(Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;

    .line 93
    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->setDownloadType(I)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;

    .line 94
    if-eqz p10, :cond_5

    .line 95
    move-object/from16 v0, p10

    invoke-virtual {v6, v0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->setLocale(Ljava/lang/String;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;

    .line 98
    :cond_5
    move-wide/from16 v0, p11

    invoke-virtual {v6, v0, v1}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->setAndroidId(J)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;

    .line 100
    new-instance v5, Lcom/google/android/vending/verifier/api/PackageVerificationRequest;

    const-string v7, "https://safebrowsing.google.com/safebrowsing/clientreport/download"

    move-object/from16 v0, p13

    move-object/from16 v1, p14

    invoke-direct {v5, v7, v0, v1, v6}, Lcom/google/android/vending/verifier/api/PackageVerificationRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;)V

    .line 103
    .local v5, request:Lcom/android/volley/Request;,"Lcom/android/volley/Request<*>;"
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/finsky/FinskyApp;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v7

    return-object v7

    .line 86
    .end local v5           #request:Lcom/android/volley/Request;,"Lcom/android/volley/Request<*>;"
    :cond_6
    const-string v7, ""

    invoke-virtual {v6, v7}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->setUrl(Ljava/lang/String;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;

    goto :goto_0
.end method
