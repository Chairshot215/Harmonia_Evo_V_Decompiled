.class Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationTextSearch;
.super Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;
.source "GNOperations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gracenote/mmid/MobileSDK/GNOperations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GNOperationTextSearch"
.end annotation


# instance fields
.field albumTitle:Ljava/lang/String;

.field artist:Ljava/lang/String;

.field trackTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNSearchResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "inConfig"
    .parameter "inResultReady"
    .parameter "inResult"
    .parameter "inArtist"
    .parameter "inAlbumTitle"
    .parameter "inTrackTitle"

    .prologue
    .line 961
    invoke-direct {p0, p1, p2, p3}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNSearchResult;)V

    .line 962
    iput-object p4, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationTextSearch;->artist:Ljava/lang/String;

    .line 963
    iput-object p5, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationTextSearch;->albumTitle:Ljava/lang/String;

    .line 964
    iput-object p6, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationTextSearch;->trackTitle:Ljava/lang/String;

    .line 965
    return-void
.end method


# virtual methods
.method protected doInBackground()V
    .locals 9

    .prologue
    .line 971
    sget-object v1, Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;->WEBSERVICES:Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;

    const-string v2, "Contacting Webservices"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationTextSearch;->fpxStatusUpdate(Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;Ljava/lang/String;I)V

    .line 972
    new-instance v0, Lcom/gracenote/mmid/MobileSDK/GNTextSearchPostHandler;

    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    iget-object v2, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->resultReady:Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;

    iget-object v3, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    .line 973
    iget-object v5, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationTextSearch;->artist:Ljava/lang/String;

    iget-object v6, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationTextSearch;->albumTitle:Ljava/lang/String;

    iget-object v7, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationTextSearch;->trackTitle:Ljava/lang/String;

    move-object v4, p0

    .line 972
    invoke-direct/range {v0 .. v7}, Lcom/gracenote/mmid/MobileSDK/GNTextSearchPostHandler;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNSearchResult;Lcom/gracenote/mmid/MobileSDK/FPXCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    .local v0, handler:Lcom/gracenote/mmid/MobileSDK/GNTextSearchPostHandler;
    invoke-virtual {v0}, Lcom/gracenote/mmid/MobileSDK/GNTextSearchPostHandler;->formatXML()Ljava/lang/String;

    move-result-object v8

    .line 975
    .local v8, queryXML:Ljava/lang/String;
    invoke-virtual {v0, v8}, Lcom/gracenote/mmid/MobileSDK/GNTextSearchPostHandler;->doPost(Ljava/lang/String;)V

    .line 976
    return-void
.end method
