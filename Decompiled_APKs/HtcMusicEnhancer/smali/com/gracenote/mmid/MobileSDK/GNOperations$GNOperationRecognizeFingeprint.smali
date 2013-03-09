.class Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeFingeprint;
.super Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;
.source "GNOperations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gracenote/mmid/MobileSDK/GNOperations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GNOperationRecognizeFingeprint"
.end annotation


# direct methods
.method constructor <init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNSearchResult;)V
    .locals 0
    .parameter "inConfig"
    .parameter "inResultReady"
    .parameter "inResult"

    .prologue
    .line 931
    invoke-direct {p0, p1, p2, p3}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNSearchResult;)V

    .line 932
    return-void
.end method


# virtual methods
.method protected doInBackground()V
    .locals 5

    .prologue
    .line 938
    sget-object v2, Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;->WEBSERVICES:Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;

    const-string v3, "Contacting Webservices"

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationRecognizeFingeprint;->fpxStatusUpdate(Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;Ljava/lang/String;I)V

    .line 939
    new-instance v0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;

    iget-object v2, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    iget-object v3, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->resultReady:Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;

    iget-object v4, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    invoke-direct {v0, v2, v3, v4, p0}, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNSearchResult;Lcom/gracenote/mmid/MobileSDK/FPXCallback;)V

    .line 940
    .local v0, handler:Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;
    invoke-virtual {v0}, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->formatXML()Ljava/lang/String;

    move-result-object v1

    .line 941
    .local v1, queryXML:Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->doPost(Ljava/lang/String;)V

    .line 942
    return-void
.end method
