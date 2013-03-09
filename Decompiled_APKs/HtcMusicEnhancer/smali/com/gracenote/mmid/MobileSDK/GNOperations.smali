.class public Lcom/gracenote/mmid/MobileSDK/GNOperations;
.super Ljava/lang/Object;
.source "GNOperations.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationAlbumFetch;,
        Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintMIDFileFromFile;,
        Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintMIDFileFromPCM;,
        Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintMIDStreamFromPCM;,
        Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintStreamFromMic;,
        Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintTask;,
        Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationLyricFragmentSearch;,
        Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeFingeprint;,
        Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeMIDFileFromFile;,
        Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeMIDFileFromPCM;,
        Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeMIDStreamFromPCM;,
        Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeStreamFromMic;,
        Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;,
        Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationTextSearch;,
        Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationsAsyncWebservicesLogin;
    }
.end annotation


# static fields
.field private static final cancelTable:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/gracenote/mmid/MobileSDK/GNOperations;->cancelTable:Ljava/util/Hashtable;

    .line 38
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/gracenote/mmid/MobileSDK/GNOperations;->cancelTable:Ljava/util/Hashtable;

    return-object v0
.end method

.method static asyncWebservicesLogin(Lcom/gracenote/mmid/MobileSDK/GNConfig;)V
    .locals 6
    .parameter "config"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1698
    if-eqz p0, :cond_0

    move v2, v3

    :goto_0
    const-string v5, "config is null"

    invoke-static {v2, v5}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    .line 1699
    invoke-virtual {p0}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->isRegisterResultPending()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    :goto_1
    const-string v5, "register result already pending"

    invoke-static {v2, v5}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    .line 1701
    invoke-virtual {p0, v3}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->setRegisterResultPending(Z)V

    .line 1702
    new-instance v1, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationsAsyncWebservicesLogin;

    invoke-direct {v1}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationsAsyncWebservicesLogin;-><init>()V

    .line 1703
    .local v1, task:Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationsAsyncWebservicesLogin;
    new-instance v0, Lcom/gracenote/mmid/MobileSDK/GNRegistrationPostHandler;

    invoke-direct {v0, p0, v1}, Lcom/gracenote/mmid/MobileSDK/GNRegistrationPostHandler;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/FPXCallback;)V

    .line 1704
    .local v0, handler:Lcom/gracenote/mmid/MobileSDK/GNRegistrationPostHandler;
    invoke-virtual {v1, v0}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationsAsyncWebservicesLogin;->setHandler(Lcom/gracenote/mmid/MobileSDK/GNRegistrationPostHandler;)V

    .line 1705
    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationsAsyncWebservicesLogin;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1707
    return-void

    .end local v0           #handler:Lcom/gracenote/mmid/MobileSDK/GNRegistrationPostHandler;
    .end local v1           #task:Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationsAsyncWebservicesLogin;
    :cond_0
    move v2, v4

    .line 1698
    goto :goto_0

    :cond_1
    move v2, v3

    .line 1699
    goto :goto_1
.end method

.method public static cancel(Lcom/gracenote/mmid/MobileSDK/GNFingerprintResultReady;)V
    .locals 2
    .parameter "resultReady"

    .prologue
    .line 1578
    invoke-static {}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeStreamFromMic;->cancelMic()V

    .line 1579
    sget-object v0, Lcom/gracenote/mmid/MobileSDK/GNOperations;->cancelTable:Ljava/util/Hashtable;

    const-string v1, ""

    invoke-virtual {v0, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1580
    return-void
.end method

.method public static cancel(Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;)V
    .locals 2
    .parameter "resultReady"

    .prologue
    .line 1590
    invoke-static {}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeStreamFromMic;->cancelMic()V

    .line 1591
    sget-object v0, Lcom/gracenote/mmid/MobileSDK/GNOperations;->cancelTable:Ljava/util/Hashtable;

    const-string v1, ""

    invoke-virtual {v0, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1592
    return-void
.end method

.method private static commonLoginCheck(Lcom/gracenote/mmid/MobileSDK/GNFingerprintResultReady;Lcom/gracenote/mmid/MobileSDK/GNConfig;)Z
    .locals 1
    .parameter "resultReady"
    .parameter "config"

    .prologue
    .line 1144
    const/4 v0, 0x1

    return v0
.end method

.method private static commonLoginCheck(Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNConfig;)Z
    .locals 1
    .parameter "resultReady"
    .parameter "config"

    .prologue
    .line 1151
    invoke-static {p0, p1}, Lcom/gracenote/mmid/MobileSDK/GNOperations;->reportWebservicesInvalidClientId(Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1154
    const/4 v0, 0x0

    .line 1160
    :goto_0
    return v0

    .line 1156
    :cond_0
    invoke-virtual {p1}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->isRegisterNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1158
    invoke-static {p1}, Lcom/gracenote/mmid/MobileSDK/GNOperations;->asyncWebservicesLogin(Lcom/gracenote/mmid/MobileSDK/GNConfig;)V

    .line 1160
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static copyConfig(Lcom/gracenote/mmid/MobileSDK/GNConfig;)Lcom/gracenote/mmid/MobileSDK/GNConfig;
    .locals 3
    .parameter "config"

    .prologue
    .line 1123
    :try_start_0
    invoke-virtual {p0}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/gracenote/mmid/MobileSDK/GNConfig;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1129
    .restart local p0
    return-object p0

    .line 1124
    .end local p0
    :catch_0
    move-exception v0

    .line 1127
    .local v0, ex:Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "GNConfig.close() not supported"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static fetchByAlbumId(Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNConfig;Ljava/lang/String;)V
    .locals 4
    .parameter "resultReady"
    .parameter "config"
    .parameter "albumId"

    .prologue
    .line 1512
    invoke-static {p1, p0}, Lcom/gracenote/mmid/MobileSDK/GNOperations;->validateConfig(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1529
    :cond_0
    :goto_0
    return-void

    .line 1515
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 1516
    :cond_2
    new-instance v2, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    invoke-direct {v2, p1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;)V

    .line 1517
    .local v2, result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;
    const/16 v3, 0x232c

    invoke-virtual {v2, v3}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->setStatusCode(I)V

    .line 1518
    invoke-interface {p0, v2}, Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;->GNResultReady(Lcom/gracenote/mmid/MobileSDK/GNSearchResult;)V

    goto :goto_0

    .line 1521
    .end local v2           #result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;
    :cond_3
    invoke-static {p1}, Lcom/gracenote/mmid/MobileSDK/GNOperations;->copyConfig(Lcom/gracenote/mmid/MobileSDK/GNConfig;)Lcom/gracenote/mmid/MobileSDK/GNConfig;

    move-result-object p1

    .line 1522
    invoke-static {p0, p1}, Lcom/gracenote/mmid/MobileSDK/GNOperations;->commonLoginCheck(Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNConfig;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1525
    invoke-virtual {p1}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getOpQueue()Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;

    move-result-object v1

    .line 1526
    .local v1, opQueue:Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;
    new-instance v2, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    invoke-direct {v2, p1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;)V

    .line 1527
    .restart local v2       #result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;
    new-instance v0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationAlbumFetch;

    invoke-direct {v0, p1, p0, v2, p2}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationAlbumFetch;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNSearchResult;Ljava/lang/String;)V

    .line 1528
    .local v0, op:Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationAlbumFetch;
    invoke-virtual {v1, v0}, Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;->enque(Lcom/gracenote/mmid/MobileSDK/GNOperation;)V

    goto :goto_0
.end method

.method public static fetchByTrackId(Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNConfig;Ljava/lang/String;)V
    .locals 4
    .parameter "resultReady"
    .parameter "config"
    .parameter "trackId"

    .prologue
    .line 1477
    invoke-static {p1, p0}, Lcom/gracenote/mmid/MobileSDK/GNOperations;->validateConfig(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1494
    :cond_0
    :goto_0
    return-void

    .line 1480
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 1481
    :cond_2
    new-instance v2, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    invoke-direct {v2, p1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;)V

    .line 1482
    .local v2, result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;
    const/16 v3, 0x232c

    invoke-virtual {v2, v3}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->setStatusCode(I)V

    .line 1483
    invoke-interface {p0, v2}, Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;->GNResultReady(Lcom/gracenote/mmid/MobileSDK/GNSearchResult;)V

    goto :goto_0

    .line 1486
    .end local v2           #result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;
    :cond_3
    invoke-static {p1}, Lcom/gracenote/mmid/MobileSDK/GNOperations;->copyConfig(Lcom/gracenote/mmid/MobileSDK/GNConfig;)Lcom/gracenote/mmid/MobileSDK/GNConfig;

    move-result-object p1

    .line 1487
    invoke-static {p0, p1}, Lcom/gracenote/mmid/MobileSDK/GNOperations;->commonLoginCheck(Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNConfig;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1490
    invoke-virtual {p1}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getOpQueue()Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;

    move-result-object v1

    .line 1491
    .local v1, opQueue:Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;
    new-instance v2, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    invoke-direct {v2, p1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;)V

    .line 1492
    .restart local v2       #result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;
    new-instance v0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationAlbumFetch;

    invoke-direct {v0, p1, p0, v2, p2}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationAlbumFetch;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNSearchResult;Ljava/lang/String;)V

    .line 1493
    .local v0, op:Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationAlbumFetch;
    invoke-virtual {v1, v0}, Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;->enque(Lcom/gracenote/mmid/MobileSDK/GNOperation;)V

    goto :goto_0
.end method

.method public static fingerprintMIDFileFromFile(Lcom/gracenote/mmid/MobileSDK/GNFingerprintResultReady;Lcom/gracenote/mmid/MobileSDK/GNConfig;Ljava/lang/String;)V
    .locals 4
    .parameter "resultReady"
    .parameter "config"
    .parameter "filename"

    .prologue
    .line 1266
    invoke-static {p1, p0}, Lcom/gracenote/mmid/MobileSDK/GNOperations;->validateConfig(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNFingerprintResultReady;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1277
    :cond_0
    :goto_0
    return-void

    .line 1269
    :cond_1
    invoke-static {p1}, Lcom/gracenote/mmid/MobileSDK/GNOperations;->copyConfig(Lcom/gracenote/mmid/MobileSDK/GNConfig;)Lcom/gracenote/mmid/MobileSDK/GNConfig;

    move-result-object p1

    .line 1270
    invoke-static {p0, p1}, Lcom/gracenote/mmid/MobileSDK/GNOperations;->commonLoginCheck(Lcom/gracenote/mmid/MobileSDK/GNFingerprintResultReady;Lcom/gracenote/mmid/MobileSDK/GNConfig;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1273
    invoke-virtual {p1}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getOpQueue()Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;

    move-result-object v1

    .line 1274
    .local v1, opQueue:Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;
    new-instance v2, Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;

    invoke-direct {v2, p1}, Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;)V

    .line 1275
    .local v2, result:Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;
    new-instance v0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintMIDFileFromFile;

    invoke-direct {v0, p1, p0, v2, p2}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintMIDFileFromFile;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNFingerprintResultReady;Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;Ljava/lang/String;)V

    .line 1276
    .local v0, op:Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintMIDFileFromFile;
    invoke-virtual {v1, v0}, Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;->enque(Lcom/gracenote/mmid/MobileSDK/GNOperation;)V

    goto :goto_0
.end method

.method public static fingerprintMIDFileFromPcm(Lcom/gracenote/mmid/MobileSDK/GNFingerprintResultReady;Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;)V
    .locals 4
    .parameter "resultReady"
    .parameter "config"
    .parameter "sampleBuffer"

    .prologue
    .line 1231
    invoke-static {p1, p0}, Lcom/gracenote/mmid/MobileSDK/GNOperations;->validateConfig(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNFingerprintResultReady;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1242
    :cond_0
    :goto_0
    return-void

    .line 1234
    :cond_1
    invoke-static {p1}, Lcom/gracenote/mmid/MobileSDK/GNOperations;->copyConfig(Lcom/gracenote/mmid/MobileSDK/GNConfig;)Lcom/gracenote/mmid/MobileSDK/GNConfig;

    move-result-object p1

    .line 1235
    invoke-static {p0, p1}, Lcom/gracenote/mmid/MobileSDK/GNOperations;->commonLoginCheck(Lcom/gracenote/mmid/MobileSDK/GNFingerprintResultReady;Lcom/gracenote/mmid/MobileSDK/GNConfig;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1238
    invoke-virtual {p1}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getOpQueue()Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;

    move-result-object v1

    .line 1239
    .local v1, opQueue:Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;
    new-instance v2, Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;

    invoke-direct {v2, p1}, Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;)V

    .line 1240
    .local v2, result:Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;
    new-instance v0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintMIDFileFromPCM;

    invoke-direct {v0, p1, p0, v2, p2}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintMIDFileFromPCM;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNFingerprintResultReady;Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;)V

    .line 1241
    .local v0, op:Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintMIDFileFromPCM;
    invoke-virtual {v1, v0}, Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;->enque(Lcom/gracenote/mmid/MobileSDK/GNOperation;)V

    goto :goto_0
.end method

.method public static fingerprintMIDStreamFromMic(Lcom/gracenote/mmid/MobileSDK/GNFingerprintResultReady;Lcom/gracenote/mmid/MobileSDK/GNConfig;)V
    .locals 4
    .parameter "resultReady"
    .parameter "config"

    .prologue
    .line 1175
    invoke-static {p1, p0}, Lcom/gracenote/mmid/MobileSDK/GNOperations;->validateConfig(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNFingerprintResultReady;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1186
    :cond_0
    :goto_0
    return-void

    .line 1178
    :cond_1
    invoke-static {p1}, Lcom/gracenote/mmid/MobileSDK/GNOperations;->copyConfig(Lcom/gracenote/mmid/MobileSDK/GNConfig;)Lcom/gracenote/mmid/MobileSDK/GNConfig;

    move-result-object p1

    .line 1179
    invoke-static {p0, p1}, Lcom/gracenote/mmid/MobileSDK/GNOperations;->commonLoginCheck(Lcom/gracenote/mmid/MobileSDK/GNFingerprintResultReady;Lcom/gracenote/mmid/MobileSDK/GNConfig;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1182
    invoke-virtual {p1}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getOpQueue()Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;

    move-result-object v0

    .line 1183
    .local v0, opQueue:Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;
    new-instance v1, Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;

    invoke-direct {v1, p1}, Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;)V

    .line 1184
    .local v1, result:Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;
    new-instance v2, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintStreamFromMic;

    invoke-direct {v2, p1, p0, v1}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintStreamFromMic;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNFingerprintResultReady;Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;)V

    .line 1185
    .local v2, task:Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintStreamFromMic;
    invoke-virtual {v0, v2}, Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;->enque(Lcom/gracenote/mmid/MobileSDK/GNOperation;)V

    goto :goto_0
.end method

.method public static fingerprintMIDStreamFromPcm(Lcom/gracenote/mmid/MobileSDK/GNFingerprintResultReady;Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;)V
    .locals 4
    .parameter "resultReady"
    .parameter "config"
    .parameter "sampleBuffer"

    .prologue
    .line 1203
    invoke-static {p1, p0}, Lcom/gracenote/mmid/MobileSDK/GNOperations;->validateConfig(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNFingerprintResultReady;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1214
    :cond_0
    :goto_0
    return-void

    .line 1206
    :cond_1
    invoke-static {p1}, Lcom/gracenote/mmid/MobileSDK/GNOperations;->copyConfig(Lcom/gracenote/mmid/MobileSDK/GNConfig;)Lcom/gracenote/mmid/MobileSDK/GNConfig;

    move-result-object p1

    .line 1207
    invoke-static {p0, p1}, Lcom/gracenote/mmid/MobileSDK/GNOperations;->commonLoginCheck(Lcom/gracenote/mmid/MobileSDK/GNFingerprintResultReady;Lcom/gracenote/mmid/MobileSDK/GNConfig;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1210
    invoke-virtual {p1}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getOpQueue()Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;

    move-result-object v1

    .line 1211
    .local v1, opQueue:Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;
    new-instance v2, Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;

    invoke-direct {v2, p1}, Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;)V

    .line 1212
    .local v2, result:Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;
    new-instance v0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintMIDStreamFromPCM;

    invoke-direct {v0, p1, p0, v2, p2}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintMIDStreamFromPCM;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNFingerprintResultReady;Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;)V

    .line 1213
    .local v0, op:Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationFingerprintMIDStreamFromPCM;
    invoke-virtual {v1, v0}, Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;->enque(Lcom/gracenote/mmid/MobileSDK/GNOperation;)V

    goto :goto_0
.end method

.method public static recognizeMIDFileFromFile(Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNConfig;Ljava/lang/String;)V
    .locals 4
    .parameter "resultReady"
    .parameter "config"
    .parameter "filename"

    .prologue
    .line 1379
    invoke-static {p1, p0}, Lcom/gracenote/mmid/MobileSDK/GNOperations;->validateConfig(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1390
    :cond_0
    :goto_0
    return-void

    .line 1382
    :cond_1
    invoke-static {p1}, Lcom/gracenote/mmid/MobileSDK/GNOperations;->copyConfig(Lcom/gracenote/mmid/MobileSDK/GNConfig;)Lcom/gracenote/mmid/MobileSDK/GNConfig;

    move-result-object p1

    .line 1383
    invoke-static {p0, p1}, Lcom/gracenote/mmid/MobileSDK/GNOperations;->commonLoginCheck(Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNConfig;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1386
    invoke-virtual {p1}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getOpQueue()Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;

    move-result-object v1

    .line 1387
    .local v1, opQueue:Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;
    new-instance v2, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    invoke-direct {v2, p1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;)V

    .line 1388
    .local v2, result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;
    new-instance v0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeMIDFileFromFile;

    invoke-direct {v0, p1, p0, v2, p2}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeMIDFileFromFile;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNSearchResult;Ljava/lang/String;)V

    .line 1389
    .local v0, op:Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeMIDFileFromFile;
    invoke-virtual {v1, v0}, Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;->enque(Lcom/gracenote/mmid/MobileSDK/GNOperation;)V

    goto :goto_0
.end method

.method public static recognizeMIDFileFromPcm(Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;)V
    .locals 4
    .parameter "resultReady"
    .parameter "config"
    .parameter "sampleBuffer"

    .prologue
    .line 1346
    invoke-static {p1, p0}, Lcom/gracenote/mmid/MobileSDK/GNOperations;->validateConfig(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1357
    :cond_0
    :goto_0
    return-void

    .line 1349
    :cond_1
    invoke-static {p1}, Lcom/gracenote/mmid/MobileSDK/GNOperations;->copyConfig(Lcom/gracenote/mmid/MobileSDK/GNConfig;)Lcom/gracenote/mmid/MobileSDK/GNConfig;

    move-result-object p1

    .line 1350
    invoke-static {p0, p1}, Lcom/gracenote/mmid/MobileSDK/GNOperations;->commonLoginCheck(Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNConfig;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1353
    invoke-virtual {p1}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getOpQueue()Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;

    move-result-object v1

    .line 1354
    .local v1, opQueue:Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;
    new-instance v2, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    invoke-direct {v2, p1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;)V

    .line 1355
    .local v2, result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;
    new-instance v0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeMIDFileFromPCM;

    invoke-direct {v0, p1, p0, v2, p2}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeMIDFileFromPCM;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNSearchResult;Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;)V

    .line 1356
    .local v0, op:Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeMIDFileFromPCM;
    invoke-virtual {v1, v0}, Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;->enque(Lcom/gracenote/mmid/MobileSDK/GNOperation;)V

    goto :goto_0
.end method

.method public static recognizeMIDStreamFromMic(Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNConfig;)V
    .locals 4
    .parameter "resultReady"
    .parameter "config"

    .prologue
    .line 1292
    invoke-static {p1, p0}, Lcom/gracenote/mmid/MobileSDK/GNOperations;->validateConfig(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1303
    :cond_0
    :goto_0
    return-void

    .line 1295
    :cond_1
    invoke-static {p1}, Lcom/gracenote/mmid/MobileSDK/GNOperations;->copyConfig(Lcom/gracenote/mmid/MobileSDK/GNConfig;)Lcom/gracenote/mmid/MobileSDK/GNConfig;

    move-result-object p1

    .line 1296
    invoke-static {p0, p1}, Lcom/gracenote/mmid/MobileSDK/GNOperations;->commonLoginCheck(Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNConfig;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1299
    invoke-virtual {p1}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getOpQueue()Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;

    move-result-object v0

    .line 1300
    .local v0, opQueue:Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;
    new-instance v1, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    invoke-direct {v1, p1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;)V

    .line 1301
    .local v1, result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;
    new-instance v2, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeStreamFromMic;

    invoke-direct {v2, p1, p0, v1}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeStreamFromMic;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNSearchResult;)V

    .line 1302
    .local v2, task:Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeStreamFromMic;
    invoke-virtual {v0, v2}, Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;->enque(Lcom/gracenote/mmid/MobileSDK/GNOperation;)V

    goto :goto_0
.end method

.method public static recognizeMIDStreamFromPcm(Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;)V
    .locals 4
    .parameter "resultReady"
    .parameter "config"
    .parameter "sampleBuffer"

    .prologue
    .line 1319
    invoke-static {p1, p0}, Lcom/gracenote/mmid/MobileSDK/GNOperations;->validateConfig(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1330
    :cond_0
    :goto_0
    return-void

    .line 1322
    :cond_1
    invoke-static {p1}, Lcom/gracenote/mmid/MobileSDK/GNOperations;->copyConfig(Lcom/gracenote/mmid/MobileSDK/GNConfig;)Lcom/gracenote/mmid/MobileSDK/GNConfig;

    move-result-object p1

    .line 1323
    invoke-static {p0, p1}, Lcom/gracenote/mmid/MobileSDK/GNOperations;->commonLoginCheck(Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNConfig;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1326
    invoke-virtual {p1}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getOpQueue()Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;

    move-result-object v1

    .line 1327
    .local v1, opQueue:Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;
    new-instance v2, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    invoke-direct {v2, p1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;)V

    .line 1328
    .local v2, result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;
    new-instance v0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeMIDStreamFromPCM;

    invoke-direct {v0, p1, p0, v2, p2}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeMIDStreamFromPCM;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNSearchResult;Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;)V

    .line 1329
    .local v0, op:Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeMIDStreamFromPCM;
    invoke-virtual {v1, v0}, Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;->enque(Lcom/gracenote/mmid/MobileSDK/GNOperation;)V

    goto :goto_0
.end method

.method static reportWebservicesInvalidClientId(Lcom/gracenote/mmid/MobileSDK/GNFingerprintResultReady;Lcom/gracenote/mmid/MobileSDK/GNConfig;)Z
    .locals 2
    .parameter "resultReady"
    .parameter "config"

    .prologue
    .line 1722
    invoke-virtual {p1}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->isRegisterResultPending()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1725
    invoke-virtual {p1}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->isRegisterInvalidClientIdFailure()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1727
    new-instance v0, Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;

    invoke-direct {v0, p1}, Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;)V

    .line 1728
    .local v0, fr:Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;
    const/16 v1, 0x138b

    invoke-virtual {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;->setErrCode(I)V

    .line 1729
    const-string v1, "Invalid clientId"

    invoke-virtual {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;->setErrMessage(Ljava/lang/String;)V

    .line 1730
    invoke-interface {p0, v0}, Lcom/gracenote/mmid/MobileSDK/GNFingerprintResultReady;->GNResultReady(Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;)V

    .line 1731
    const/4 v1, 0x1

    .line 1734
    .end local v0           #fr:Lcom/gracenote/mmid/MobileSDK/GNFingerprintResult;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static reportWebservicesInvalidClientId(Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNConfig;)Z
    .locals 2
    .parameter "resultReady"
    .parameter "config"

    .prologue
    .line 1741
    invoke-virtual {p1}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->isRegisterResultPending()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1744
    invoke-virtual {p1}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->isRegisterInvalidClientIdFailure()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1746
    new-instance v0, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    invoke-direct {v0, p1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;)V

    .line 1747
    .local v0, sr:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;
    const/16 v1, 0x138b

    invoke-virtual {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->setErrCode(I)V

    .line 1748
    const-string v1, "Invalid clientId"

    invoke-virtual {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->setErrMessage(Ljava/lang/String;)V

    .line 1749
    invoke-interface {p0, v0}, Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;->GNResultReady(Lcom/gracenote/mmid/MobileSDK/GNSearchResult;)V

    .line 1750
    const/4 v1, 0x1

    .line 1753
    .end local v0           #sr:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static searchByFingerprint(Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNConfig;Ljava/lang/String;)V
    .locals 4
    .parameter "resultReady"
    .parameter "config"
    .parameter "fingerprintData"

    .prologue
    .line 1407
    invoke-static {p1, p0}, Lcom/gracenote/mmid/MobileSDK/GNOperations;->validateConfig(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1419
    :cond_0
    :goto_0
    return-void

    .line 1410
    :cond_1
    invoke-static {p1}, Lcom/gracenote/mmid/MobileSDK/GNOperations;->copyConfig(Lcom/gracenote/mmid/MobileSDK/GNConfig;)Lcom/gracenote/mmid/MobileSDK/GNConfig;

    move-result-object p1

    .line 1411
    invoke-static {p0, p1}, Lcom/gracenote/mmid/MobileSDK/GNOperations;->commonLoginCheck(Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNConfig;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1414
    invoke-virtual {p1}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getOpQueue()Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;

    move-result-object v1

    .line 1415
    .local v1, opQueue:Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;
    new-instance v2, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    invoke-direct {v2, p1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;)V

    .line 1416
    .local v2, result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;
    invoke-virtual {v2, p2}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->setFingerprintData(Ljava/lang/String;)V

    .line 1417
    new-instance v0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeFingeprint;

    invoke-direct {v0, p1, p0, v2}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeFingeprint;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNSearchResult;)V

    .line 1418
    .local v0, op:Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeFingeprint;
    invoke-virtual {v1, v0}, Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;->enque(Lcom/gracenote/mmid/MobileSDK/GNOperation;)V

    goto :goto_0
.end method

.method public static searchByLyricFragment(Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNConfig;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "resultReady"
    .parameter "config"
    .parameter "lyricFragment"
    .parameter "artist"

    .prologue
    .line 1549
    invoke-static {p1, p0}, Lcom/gracenote/mmid/MobileSDK/GNOperations;->validateConfig(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1566
    :cond_0
    :goto_0
    return-void

    .line 1552
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 1553
    :cond_2
    new-instance v3, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    invoke-direct {v3, p1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;)V

    .line 1554
    .local v3, result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;
    const/16 v1, 0x232b

    invoke-virtual {v3, v1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->setStatusCode(I)V

    .line 1555
    invoke-interface {p0, v3}, Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;->GNResultReady(Lcom/gracenote/mmid/MobileSDK/GNSearchResult;)V

    goto :goto_0

    .line 1558
    .end local v3           #result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;
    :cond_3
    invoke-static {p1}, Lcom/gracenote/mmid/MobileSDK/GNOperations;->copyConfig(Lcom/gracenote/mmid/MobileSDK/GNConfig;)Lcom/gracenote/mmid/MobileSDK/GNConfig;

    move-result-object p1

    .line 1559
    invoke-static {p0, p1}, Lcom/gracenote/mmid/MobileSDK/GNOperations;->commonLoginCheck(Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNConfig;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1562
    invoke-virtual {p1}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getOpQueue()Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;

    move-result-object v6

    .line 1563
    .local v6, opQueue:Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;
    new-instance v3, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    invoke-direct {v3, p1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;)V

    .line 1564
    .restart local v3       #result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;
    new-instance v0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationLyricFragmentSearch;

    move-object v1, p1

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationLyricFragmentSearch;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNSearchResult;Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    .local v0, op:Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationLyricFragmentSearch;
    invoke-virtual {v6, v0}, Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;->enque(Lcom/gracenote/mmid/MobileSDK/GNOperation;)V

    goto :goto_0
.end method

.method public static searchByText(Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "resultReady"
    .parameter "config"
    .parameter "artist"
    .parameter "albumTitle"
    .parameter "trackTitle"

    .prologue
    .line 1441
    invoke-static {p1, p0}, Lcom/gracenote/mmid/MobileSDK/GNOperations;->validateConfig(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1460
    :cond_0
    :goto_0
    return-void

    .line 1444
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    .line 1445
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    .line 1446
    :cond_3
    if-eqz p4, :cond_4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    .line 1447
    :cond_4
    new-instance v3, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    invoke-direct {v3, p1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;)V

    .line 1448
    .local v3, result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;
    const/16 v1, 0x232a

    invoke-virtual {v3, v1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->setStatusCode(I)V

    .line 1449
    invoke-interface {p0, v3}, Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;->GNResultReady(Lcom/gracenote/mmid/MobileSDK/GNSearchResult;)V

    goto :goto_0

    .line 1452
    .end local v3           #result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;
    :cond_5
    invoke-static {p1}, Lcom/gracenote/mmid/MobileSDK/GNOperations;->copyConfig(Lcom/gracenote/mmid/MobileSDK/GNConfig;)Lcom/gracenote/mmid/MobileSDK/GNConfig;

    move-result-object p1

    .line 1453
    invoke-static {p0, p1}, Lcom/gracenote/mmid/MobileSDK/GNOperations;->commonLoginCheck(Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNConfig;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1456
    invoke-virtual {p1}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getOpQueue()Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;

    move-result-object v7

    .line 1457
    .local v7, opQueue:Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;
    new-instance v3, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    invoke-direct {v3, p1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;)V

    .line 1458
    .restart local v3       #result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;
    new-instance v0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationTextSearch;

    move-object v1, p1

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationTextSearch;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNSearchResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    .local v0, op:Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationTextSearch;
    invoke-virtual {v7, v0}, Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;->enque(Lcom/gracenote/mmid/MobileSDK/GNOperation;)V

    goto :goto_0
.end method

.method static stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4
    .parameter "ex"

    .prologue
    .line 1046
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 1047
    .local v2, stringWritter:Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 1048
    .local v0, printWritter:Ljava/io/PrintWriter;
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 1049
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 1050
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1051
    .local v1, stackTrace:Ljava/lang/String;
    return-object v1
.end method

.method private static validateConfig(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNFingerprintResultReady;)Z
    .locals 2
    .parameter "config"
    .parameter "resultReady"

    .prologue
    .line 1065
    if-nez p0, :cond_0

    .line 1066
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "null can\'t be passed as GNConfig argument"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1086
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static validateConfig(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;)Z
    .locals 2
    .parameter "config"
    .parameter "resultReady"

    .prologue
    .line 1091
    if-nez p0, :cond_0

    .line 1092
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "null can\'t be passed as GNConfig argument"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1108
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
