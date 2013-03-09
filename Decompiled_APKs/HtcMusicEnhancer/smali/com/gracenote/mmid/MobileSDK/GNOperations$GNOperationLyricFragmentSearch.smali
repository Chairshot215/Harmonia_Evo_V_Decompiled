.class Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationLyricFragmentSearch;
.super Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;
.source "GNOperations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gracenote/mmid/MobileSDK/GNOperations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GNOperationLyricFragmentSearch"
.end annotation


# instance fields
.field artist:Ljava/lang/String;

.field lyricFragment:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNSearchResult;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "inConfig"
    .parameter "inResultReady"
    .parameter "inResult"
    .parameter "inLyricFragment"
    .parameter "inArtist"

    .prologue
    .line 1021
    invoke-direct {p0, p1, p2, p3}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNSearchResult;)V

    .line 1022
    iput-object p4, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationLyricFragmentSearch;->lyricFragment:Ljava/lang/String;

    .line 1023
    iput-object p5, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationLyricFragmentSearch;->artist:Ljava/lang/String;

    .line 1024
    return-void
.end method


# virtual methods
.method protected doInBackground()V
    .locals 8

    .prologue
    .line 1030
    sget-object v1, Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;->WEBSERVICES:Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;

    const-string v2, "Contacting Webservices"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationLyricFragmentSearch;->fpxStatusUpdate(Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;Ljava/lang/String;I)V

    .line 1031
    new-instance v0, Lcom/gracenote/mmid/MobileSDK/GNLyricFragmentSearchPostHandler;

    .line 1032
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    iget-object v2, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->resultReady:Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;

    iget-object v3, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    .line 1033
    iget-object v5, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationLyricFragmentSearch;->lyricFragment:Ljava/lang/String;

    iget-object v6, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationLyricFragmentSearch;->artist:Ljava/lang/String;

    move-object v4, p0

    .line 1031
    invoke-direct/range {v0 .. v6}, Lcom/gracenote/mmid/MobileSDK/GNLyricFragmentSearchPostHandler;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNSearchResult;Lcom/gracenote/mmid/MobileSDK/FPXCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    .local v0, handler:Lcom/gracenote/mmid/MobileSDK/GNLyricFragmentSearchPostHandler;
    invoke-virtual {v0}, Lcom/gracenote/mmid/MobileSDK/GNLyricFragmentSearchPostHandler;->formatXML()Ljava/lang/String;

    move-result-object v7

    .line 1035
    .local v7, queryXML:Ljava/lang/String;
    invoke-virtual {v0, v7}, Lcom/gracenote/mmid/MobileSDK/GNLyricFragmentSearchPostHandler;->doPost(Ljava/lang/String;)V

    .line 1036
    return-void
.end method
