.class Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeMIDFileFromFile;
.super Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;
.source "GNOperations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gracenote/mmid/MobileSDK/GNOperations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GNOperationRecognizeMIDFileFromFile"
.end annotation


# instance fields
.field protected filename:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNSearchResult;Ljava/lang/String;)V
    .locals 0
    .parameter "inConfig"
    .parameter "inResultReady"
    .parameter "inResult"
    .parameter "inFilename"

    .prologue
    .line 888
    invoke-direct {p0, p1, p2, p3}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNSearchResult;)V

    .line 889
    iput-object p4, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeMIDFileFromFile;->filename:Ljava/lang/String;

    .line 890
    return-void
.end method


# virtual methods
.method protected doInBackground()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 896
    new-instance v6, Lcom/gracenote/mmid/MobileSDK/FPXJNI;

    invoke-direct {v6}, Lcom/gracenote/mmid/MobileSDK/FPXJNI;-><init>()V

    iput-object v6, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->fingerprinter:Lcom/gracenote/mmid/MobileSDK/FPXJNI;

    .line 897
    sget-object v6, Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;->FINGERPRINTING:Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Fingerprinting "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeMIDFileFromFile;->filename:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7, v9}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeMIDFileFromFile;->fpxStatusUpdate(Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;Ljava/lang/String;I)V

    .line 899
    new-instance v0, Ljava/io/File;

    iget-object v6, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeMIDFileFromFile;->filename:Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 900
    .local v0, file:Ljava/io/File;
    iget-object v6, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->fingerprinter:Lcom/gracenote/mmid/MobileSDK/FPXJNI;

    iget-object v7, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    invoke-virtual {v6, v0, p0, v7}, Lcom/gracenote/mmid/MobileSDK/FPXJNI;->fingerprintMIDFileFromFile(Ljava/io/File;Lcom/gracenote/mmid/MobileSDK/FPXCallback;Lcom/gracenote/mmid/MobileSDK/GNConfig;)[Ljava/lang/String;

    move-result-object v5

    .line 901
    .local v5, results:[Ljava/lang/String;
    aget-object v1, v5, v9

    .line 902
    .local v1, fpError:Ljava/lang/String;
    const/4 v6, 0x1

    aget-object v2, v5, v6

    .line 904
    .local v2, fpXml:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 907
    iget-object v6, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    const/16 v7, 0xbb8

    invoke-virtual {v6, v7}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->setErrCode(I)V

    .line 908
    iget-object v6, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    invoke-virtual {v6, v1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->setErrMessage(Ljava/lang/String;)V

    .line 917
    :goto_0
    return-void

    .line 910
    :cond_0
    iget-object v6, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    invoke-virtual {v6, v2}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->setFingerprintData(Ljava/lang/String;)V

    .line 912
    sget-object v6, Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;->WEBSERVICES:Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;

    const-string v7, "Contacting Webservices"

    invoke-virtual {p0, v6, v7, v9}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeMIDFileFromFile;->fpxStatusUpdate(Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;Ljava/lang/String;I)V

    .line 913
    new-instance v3, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;

    iget-object v6, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    iget-object v7, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->resultReady:Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;

    iget-object v8, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    invoke-direct {v3, v6, v7, v8, p0}, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNSearchResult;Lcom/gracenote/mmid/MobileSDK/FPXCallback;)V

    .line 914
    .local v3, handler:Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;
    invoke-virtual {v3}, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->formatXML()Ljava/lang/String;

    move-result-object v4

    .line 915
    .local v4, queryXML:Ljava/lang/String;
    invoke-virtual {v3, v4}, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->doPost(Ljava/lang/String;)V

    goto :goto_0
.end method
