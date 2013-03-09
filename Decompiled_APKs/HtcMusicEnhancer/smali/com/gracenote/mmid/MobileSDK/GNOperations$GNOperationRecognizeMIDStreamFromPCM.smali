.class Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeMIDStreamFromPCM;
.super Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;
.source "GNOperations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gracenote/mmid/MobileSDK/GNOperations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GNOperationRecognizeMIDStreamFromPCM"
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
    .line 782
    invoke-direct {p0, p1, p2, p3}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNSearchResult;)V

    .line 783
    iput-object p4, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeMIDStreamFromPCM;->sampleBuffer:Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;

    .line 784
    return-void
.end method


# virtual methods
.method protected doInBackground()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 790
    new-instance v8, Lcom/gracenote/mmid/MobileSDK/FPXJNI;

    invoke-direct {v8}, Lcom/gracenote/mmid/MobileSDK/FPXJNI;-><init>()V

    iput-object v8, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->fingerprinter:Lcom/gracenote/mmid/MobileSDK/FPXJNI;

    .line 791
    sget-object v8, Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;->FINGERPRINTING:Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;

    const-string v9, "Fingerprinting PCM "

    invoke-virtual {p0, v8, v9, v11}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeMIDStreamFromPCM;->fpxStatusUpdate(Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;Ljava/lang/String;I)V

    .line 793
    iget-object v8, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->fingerprinter:Lcom/gracenote/mmid/MobileSDK/FPXJNI;

    iget-object v9, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeMIDStreamFromPCM;->sampleBuffer:Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;

    iget-object v10, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    invoke-virtual {v8, v9, p0, v10}, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->classifyMIDStreamFromPcm(Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;Lcom/gracenote/mmid/MobileSDK/FPXCallback;Lcom/gracenote/mmid/MobileSDK/GNConfig;)[Ljava/lang/String;

    move-result-object v7

    .line 794
    .local v7, results:[Ljava/lang/String;
    aget-object v0, v7, v11

    .line 795
    .local v0, classificationError:Ljava/lang/String;
    aget-object v1, v7, v12

    .line 797
    .local v1, classificationXml:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 798
    iget-object v8, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    const/16 v9, 0xbbb

    invoke-virtual {v8, v9}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->setErrCode(I)V

    .line 799
    iget-object v8, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    invoke-virtual {v8, v0}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->setErrMessage(Ljava/lang/String;)V

    .line 828
    :goto_0
    return-void

    .line 802
    :cond_0
    iget-object v8, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->fingerprinter:Lcom/gracenote/mmid/MobileSDK/FPXJNI;

    iget-object v9, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeMIDStreamFromPCM;->sampleBuffer:Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;

    iget-object v10, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    invoke-virtual {v8, v9, p0, v10}, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->fingerprintMIDStreamFromPcm(Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;Lcom/gracenote/mmid/MobileSDK/FPXCallback;Lcom/gracenote/mmid/MobileSDK/GNConfig;)[Ljava/lang/String;

    move-result-object v7

    .line 803
    aget-object v2, v7, v11

    .line 804
    .local v2, fpError:Ljava/lang/String;
    aget-object v3, v7, v12

    .line 806
    .local v3, fpXml:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 809
    iget-object v8, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    const/16 v9, 0xbb8

    invoke-virtual {v8, v9}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->setErrCode(I)V

    .line 810
    iget-object v8, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    invoke-virtual {v8, v2}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->setErrMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 812
    :cond_1
    if-eqz v1, :cond_2

    .line 815
    const-string v8, "<AUDIO>"

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 817
    .local v5, index:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 820
    .end local v5           #index:I
    :cond_2
    iget-object v8, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    invoke-virtual {v8, v3}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->setFingerprintData(Ljava/lang/String;)V

    .line 822
    sget-object v8, Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;->WEBSERVICES:Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;

    const-string v9, "Contacting Webservices"

    invoke-virtual {p0, v8, v9, v11}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeMIDStreamFromPCM;->fpxStatusUpdate(Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;Ljava/lang/String;I)V

    .line 823
    new-instance v4, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;

    iget-object v8, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    iget-object v9, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->resultReady:Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;

    iget-object v10, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    invoke-direct {v4, v8, v9, v10, p0}, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNSearchResult;Lcom/gracenote/mmid/MobileSDK/FPXCallback;)V

    .line 824
    .local v4, handler:Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;
    invoke-virtual {v4}, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->formatXML()Ljava/lang/String;

    move-result-object v6

    .line 825
    .local v6, queryXML:Ljava/lang/String;
    invoke-virtual {v4, v6}, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->doPost(Ljava/lang/String;)V

    goto :goto_0
.end method
