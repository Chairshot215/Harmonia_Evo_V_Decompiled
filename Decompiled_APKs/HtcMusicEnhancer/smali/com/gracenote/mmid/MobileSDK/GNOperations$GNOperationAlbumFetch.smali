.class Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationAlbumFetch;
.super Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;
.source "GNOperations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gracenote/mmid/MobileSDK/GNOperations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GNOperationAlbumFetch"
.end annotation


# instance fields
.field gnId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNSearchResult;Ljava/lang/String;)V
    .locals 0
    .parameter "inConfig"
    .parameter "inResultReady"
    .parameter "inResult"
    .parameter "inGnId"

    .prologue
    .line 991
    invoke-direct {p0, p1, p2, p3}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNSearchResult;)V

    .line 992
    iput-object p4, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationAlbumFetch;->gnId:Ljava/lang/String;

    .line 993
    return-void
.end method


# virtual methods
.method protected doInBackground()V
    .locals 7

    .prologue
    .line 999
    sget-object v1, Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;->WEBSERVICES:Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;

    const-string v2, "Contacting Webservices"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationAlbumFetch;->fpxStatusUpdate(Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;Ljava/lang/String;I)V

    .line 1000
    new-instance v0, Lcom/gracenote/mmid/MobileSDK/GNAlbumFetchFromIDPostHandler;

    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    iget-object v2, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->resultReady:Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;

    iget-object v3, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    .line 1001
    iget-object v5, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationAlbumFetch;->gnId:Ljava/lang/String;

    move-object v4, p0

    .line 1000
    invoke-direct/range {v0 .. v5}, Lcom/gracenote/mmid/MobileSDK/GNAlbumFetchFromIDPostHandler;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNSearchResult;Lcom/gracenote/mmid/MobileSDK/FPXCallback;Ljava/lang/String;)V

    .line 1002
    .local v0, handler:Lcom/gracenote/mmid/MobileSDK/GNAlbumFetchFromIDPostHandler;
    invoke-virtual {v0}, Lcom/gracenote/mmid/MobileSDK/GNAlbumFetchFromIDPostHandler;->formatXML()Ljava/lang/String;

    move-result-object v6

    .line 1003
    .local v6, queryXML:Ljava/lang/String;
    invoke-virtual {v0, v6}, Lcom/gracenote/mmid/MobileSDK/GNAlbumFetchFromIDPostHandler;->doPost(Ljava/lang/String;)V

    .line 1004
    return-void
.end method
