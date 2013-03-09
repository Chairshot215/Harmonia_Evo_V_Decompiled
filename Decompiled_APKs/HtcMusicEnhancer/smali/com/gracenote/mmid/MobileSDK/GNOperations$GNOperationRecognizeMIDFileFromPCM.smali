.class Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeMIDFileFromPCM;
.super Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;
.source "GNOperations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gracenote/mmid/MobileSDK/GNOperations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GNOperationRecognizeMIDFileFromPCM"
.end annotation


# instance fields
.field protected sampleBuffer:Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;


# direct methods
.method constructor <init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNSearchResult;Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;)V
    .locals 0
    .parameter "inConfig"
    .parameter "inResultReady"
    .parameter "inResult"
    .parameter "inSampleBuffer"

    .prologue
    .line 844
    invoke-direct {p0, p1, p2, p3}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNSearchResult;)V

    .line 845
    iput-object p4, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeMIDFileFromPCM;->sampleBuffer:Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;

    .line 846
    return-void
.end method


# virtual methods
.method protected doInBackground()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 852
    new-instance v5, Lcom/gracenote/mmid/MobileSDK/FPXJNI;

    invoke-direct {v5}, Lcom/gracenote/mmid/MobileSDK/FPXJNI;-><init>()V

    iput-object v5, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->fingerprinter:Lcom/gracenote/mmid/MobileSDK/FPXJNI;

    .line 853
    sget-object v5, Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;->FINGERPRINTING:Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;

    const-string v6, "Fingerprinting PCM "

    invoke-virtual {p0, v5, v6, v8}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeMIDFileFromPCM;->fpxStatusUpdate(Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;Ljava/lang/String;I)V

    .line 855
    iget-object v5, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->fingerprinter:Lcom/gracenote/mmid/MobileSDK/FPXJNI;

    iget-object v6, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeMIDFileFromPCM;->sampleBuffer:Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;

    iget-object v7, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    invoke-virtual {v5, v6, p0, v7}, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->fingerprintMIDFileFromPcm(Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;Lcom/gracenote/mmid/MobileSDK/FPXCallback;Lcom/gracenote/mmid/MobileSDK/GNConfig;)[Ljava/lang/String;

    move-result-object v4

    .line 856
    .local v4, results:[Ljava/lang/String;
    aget-object v0, v4, v8

    .line 857
    .local v0, fpError:Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v1, v4, v5

    .line 859
    .local v1, fpXml:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 862
    iget-object v5, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    const/16 v6, 0xbb8

    invoke-virtual {v5, v6}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->setErrCode(I)V

    .line 863
    iget-object v5, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    invoke-virtual {v5, v0}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->setErrMessage(Ljava/lang/String;)V

    .line 872
    :goto_0
    return-void

    .line 865
    :cond_0
    iget-object v5, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    invoke-virtual {v5, v1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->setFingerprintData(Ljava/lang/String;)V

    .line 867
    sget-object v5, Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;->WEBSERVICES:Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;

    const-string v6, "Contacting Webservices"

    invoke-virtual {p0, v5, v6, v8}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeMIDFileFromPCM;->fpxStatusUpdate(Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;Ljava/lang/String;I)V

    .line 868
    new-instance v2, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;

    iget-object v5, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    iget-object v6, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->resultReady:Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;

    iget-object v7, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    invoke-direct {v2, v5, v6, v7, p0}, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNSearchResult;Lcom/gracenote/mmid/MobileSDK/FPXCallback;)V

    .line 869
    .local v2, handler:Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;
    invoke-virtual {v2}, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->formatXML()Ljava/lang/String;

    move-result-object v3

    .line 870
    .local v3, queryXML:Ljava/lang/String;
    invoke-virtual {v2, v3}, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->doPost(Ljava/lang/String;)V

    goto :goto_0
.end method
