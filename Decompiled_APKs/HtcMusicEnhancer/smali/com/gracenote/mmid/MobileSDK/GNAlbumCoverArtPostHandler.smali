.class Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;
.super Ljava/lang/Object;
.source "GNAlbumCoverArtPostHandler.java"

# interfaces
.implements Lcom/gracenote/mmid/MobileSDK/GNPostHandler;


# instance fields
.field private callback:Lcom/gracenote/mmid/MobileSDK/FPXCallback;

.field protected config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

.field protected httpStatusCode:I

.field protected result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

.field protected resultData:Ljava/lang/String;

.field protected resultReady:Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;


# direct methods
.method constructor <init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNSearchResult;Lcom/gracenote/mmid/MobileSDK/FPXCallback;)V
    .locals 1
    .parameter "inConfig"
    .parameter "inResultReady"
    .parameter "inResult"
    .parameter "inCallback"

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->resultData:Ljava/lang/String;

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->httpStatusCode:I

    .line 33
    iput-object p2, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->resultReady:Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;

    .line 34
    iput-object p3, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    .line 35
    iput-object p4, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->callback:Lcom/gracenote/mmid/MobileSDK/FPXCallback;

    .line 36
    return-void
.end method


# virtual methods
.method public doPost(Ljava/lang/String;)V
    .locals 6
    .parameter "queryXML"

    .prologue
    .line 88
    new-instance v0, Lcom/gracenote/mmid/MobileSDK/FpxWebService;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    iget-object v5, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->callback:Lcom/gracenote/mmid/MobileSDK/FPXCallback;

    move-object v1, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/gracenote/mmid/MobileSDK/FpxWebService;-><init>(Ljava/lang/String;ZLcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNPostHandler;Lcom/gracenote/mmid/MobileSDK/FPXCallback;)V

    .line 90
    .local v0, myService:Lcom/gracenote/mmid/MobileSDK/FpxWebService;
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/gracenote/mmid/MobileSDK/FpxWebService;->setTimerAndWebservicesBlockingPost(I)V

    .line 91
    invoke-virtual {v0}, Lcom/gracenote/mmid/MobileSDK/FpxWebService;->webservicesBlockingPost()V

    .line 92
    invoke-virtual {v0}, Lcom/gracenote/mmid/MobileSDK/FpxWebService;->cancelTimer()V

    .line 93
    return-void
.end method

.method public formatXML()Ljava/lang/String;
    .locals 20

    .prologue
    .line 43
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    const-string v19, "clientId"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 44
    .local v13, clientId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    const-string v19, "userId"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getProtectedProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 45
    .local v17, userId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    const-string v19, "lang"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 46
    .local v15, lang:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    const-string v19, "version"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 48
    .local v18, version:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    const-string v19, "result is null"

    move-object/from16 v0, v19

    invoke-static {v7, v0}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    .line 49
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    invoke-virtual {v7}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->getFingerprintData()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    :goto_1
    const-string v19, "fingerprint XML is null"

    move-object/from16 v0, v19

    invoke-static {v7, v0}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    .line 51
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    invoke-virtual {v7}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->getFingerprintData()Ljava/lang/String;

    move-result-object v14

    .line 57
    .local v14, fingerprintData:Ljava/lang/String;
    const/4 v11, 0x0

    .line 58
    .local v11, retunMatchedPositionEnabled:Z
    const/4 v8, 0x0

    .line 59
    .local v8, isArtistBiographyExtendedEnabled:Z
    const/4 v9, 0x0

    .line 61
    .local v9, isReviewExtendedEnabled:Z
    const-string v7, "Philips"

    invoke-virtual {v14, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v7, v0, :cond_2

    .line 63
    new-instance v3, Lcom/gracenote/mmid/MobileSDK/GNMIDStreamFingerprintQueryElement;

    invoke-direct {v3, v14}, Lcom/gracenote/mmid/MobileSDK/GNMIDStreamFingerprintQueryElement;-><init>(Ljava/lang/String;)V

    .line 64
    .local v3, fingerprint:Lcom/gracenote/mmid/MobileSDK/GNFingerprintQueryElement;
    const/4 v11, 0x1

    .line 70
    :goto_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    const-string v19, "Content.contributor.biography"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getBooleanProperty(Ljava/lang/String;)Z

    move-result v8

    .line 71
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    const-string v19, "Content.review"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getBooleanProperty(Ljava/lang/String;)Z

    move-result v9

    .line 73
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    const-string v19, "Content.contributor.images"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getBooleanProperty(Ljava/lang/String;)Z

    move-result v10

    .line 75
    .local v10, isArtistImageExtendedEnabled:Z
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    const-string v19, "webservices.isInlineCoverArtEnabled"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getBooleanProperty(Ljava/lang/String;)Z

    move-result v4

    .line 76
    .local v4, isInlineCoverArtEnabled:Z
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    const-string v19, "webservices.coverArtSizePreference"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 78
    .local v5, coverArtSizePreference:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    const-string v19, "preferredLinkSource"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 80
    .local v12, preferredLinkSource:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    const-string v19, "isGenreCoverArtEnabled"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getBooleanProperty(Ljava/lang/String;)Z

    move-result v6

    .line 82
    .local v6, isFallbackGenreCoverEnabled:Z
    new-instance v2, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverFingerprintQuery;

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v12}, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverFingerprintQuery;-><init>(Lcom/gracenote/mmid/MobileSDK/GNFingerprintQueryElement;ZLjava/lang/String;ZZZZZZLjava/lang/String;)V

    .line 83
    .local v2, query:Lcom/gracenote/mmid/MobileSDK/GNQuery;
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v13, v0, v1, v15, v2}, Lcom/gracenote/mmid/MobileSDK/GNQuery;->formatAuthQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gracenote/mmid/MobileSDK/GNQuery;)Ljava/lang/String;

    move-result-object v16

    .line 84
    .local v16, queryXML:Ljava/lang/String;
    return-object v16

    .line 48
    .end local v2           #query:Lcom/gracenote/mmid/MobileSDK/GNQuery;
    .end local v3           #fingerprint:Lcom/gracenote/mmid/MobileSDK/GNFingerprintQueryElement;
    .end local v4           #isInlineCoverArtEnabled:Z
    .end local v5           #coverArtSizePreference:Ljava/lang/String;
    .end local v6           #isFallbackGenreCoverEnabled:Z
    .end local v8           #isArtistBiographyExtendedEnabled:Z
    .end local v9           #isReviewExtendedEnabled:Z
    .end local v10           #isArtistImageExtendedEnabled:Z
    .end local v11           #retunMatchedPositionEnabled:Z
    .end local v12           #preferredLinkSource:Ljava/lang/String;
    .end local v14           #fingerprintData:Ljava/lang/String;
    .end local v16           #queryXML:Ljava/lang/String;
    :cond_0
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 49
    :cond_1
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 67
    .restart local v8       #isArtistBiographyExtendedEnabled:Z
    .restart local v9       #isReviewExtendedEnabled:Z
    .restart local v11       #retunMatchedPositionEnabled:Z
    .restart local v14       #fingerprintData:Ljava/lang/String;
    :cond_2
    new-instance v3, Lcom/gracenote/mmid/MobileSDK/GNMIDFileFingerprintQueryElement;

    invoke-direct {v3, v14}, Lcom/gracenote/mmid/MobileSDK/GNMIDFileFingerprintQueryElement;-><init>(Ljava/lang/String;)V

    .restart local v3       #fingerprint:Lcom/gracenote/mmid/MobileSDK/GNFingerprintQueryElement;
    goto :goto_2
.end method

.method getResultData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->resultData:Ljava/lang/String;

    return-object v0
.end method

.method protected parseAlbumCovertArtResponses(Lorg/w3c/dom/Node;)V
    .locals 57
    .parameter "responsesNode"

    .prologue
    .line 136
    invoke-static/range {p1 .. p1}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->parseResponse(Lorg/w3c/dom/Node;)[Ljava/lang/Object;

    move-result-object v43

    .line 137
    .local v43, results:[Ljava/lang/Object;
    const/16 v54, 0x0

    aget-object v4, v43, v54

    check-cast v4, Ljava/lang/String;

    .line 138
    .local v4, status:Ljava/lang/String;
    const/16 v54, 0x1

    aget-object v35, v43, v54

    check-cast v35, Ljava/lang/String;

    .line 139
    .local v35, errorMsgStr:Ljava/lang/String;
    const/16 v54, 0x2

    aget-object v42, v43, v54

    check-cast v42, Lorg/w3c/dom/Node;

    .line 143
    .local v42, responseNode:Lorg/w3c/dom/Node;
    const-string v54, "NO_MATCH"

    move-object/from16 v0, v54

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v54

    if-eqz v54, :cond_0

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    move-object/from16 v54, v0

    const/16 v55, 0x2329

    invoke-virtual/range {v54 .. v55}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->setStatusCode(I)V

    .line 320
    :goto_0
    return-void

    .line 146
    :cond_0
    const-string v54, "ERROR"

    move-object/from16 v0, v54

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v54

    if-eqz v54, :cond_1

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    move-object/from16 v54, v0

    new-instance v55, Ljava/lang/StringBuilder;

    const-string v56, "webservices error: "

    invoke-direct/range {v55 .. v56}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v55

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-virtual/range {v54 .. v55}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->setErrMessage(Ljava/lang/String;)V

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    move-object/from16 v54, v0

    const/16 v55, 0x1388

    invoke-virtual/range {v54 .. v55}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->setErrCode(I)V

    goto :goto_0

    .line 153
    :cond_1
    const-string v54, "ALBUM"

    move-object/from16 v0, v42

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->singleChildNodeNamed(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v26

    .line 154
    .local v26, albumNode:Lorg/w3c/dom/Node;
    const-string v54, "GN_ID"

    move-object/from16 v0, v26

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->singleChildNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 155
    .local v37, gnid:Ljava/lang/String;
    const-string v54, "ARTIST"

    move-object/from16 v0, v26

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->singleChildNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 157
    .local v7, artist:Ljava/lang/String;
    const/4 v8, 0x0

    .line 158
    .local v8, artistYomi:Ljava/lang/String;
    const/4 v9, 0x0

    .line 159
    .local v9, artistBetsumei:Ljava/lang/String;
    const-string v54, "ARTIST_PHONETIC"

    move-object/from16 v0, v26

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->childNodesNamed(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v28

    .line 160
    .local v28, artistPhoneticNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v54

    :cond_2
    :goto_1
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->hasNext()Z

    move-result v55

    if-nez v55, :cond_d

    .line 169
    const/16 v23, 0x0

    .line 170
    .local v23, albumReviewUrl:Ljava/lang/String;
    const/16 v24, 0x0

    .line 171
    .local v24, artistBiographyUrl:Ljava/lang/String;
    const/16 v25, 0x0

    .line 172
    .local v25, artistImageUrl:Ljava/lang/String;
    const-string v54, "URL"

    move-object/from16 v0, v26

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->childNodesNamed(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v51

    .line 173
    .local v51, urlNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    invoke-virtual/range {v51 .. v51}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v54

    :cond_3
    :goto_2
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->hasNext()Z

    move-result v55

    if-nez v55, :cond_f

    .line 184
    const-string v54, "TITLE"

    move-object/from16 v0, v26

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->singleChildNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 186
    .local v5, albumTitle:Ljava/lang/String;
    const/4 v6, 0x0

    .line 187
    .local v6, albumTitleYomi:Ljava/lang/String;
    const-string v54, "TITLE_PHONETIC"

    move-object/from16 v0, v26

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->childNodesNamed(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v27

    .line 188
    .local v27, albumTitlePhoneticNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v54

    :cond_4
    :goto_3
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->hasNext()Z

    move-result v55

    if-nez v55, :cond_12

    .line 195
    const-string v54, "TRACK_COUNT"

    move-object/from16 v0, v26

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->singleChildNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 197
    .local v20, albumTrackCount:Ljava/lang/String;
    const-string v54, "GENRE"

    move-object/from16 v0, v26

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->optionalSingleChildNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 198
    .local v16, genre:Ljava/lang/String;
    const/16 v17, 0x0

    .line 199
    .local v17, genreId:Ljava/lang/String;
    if-eqz v16, :cond_5

    .line 201
    const-string v54, "GENRE"

    move-object/from16 v0, v26

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->singleChildNodeNamed(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v36

    .line 202
    .local v36, genreNode:Lorg/w3c/dom/Node;
    const-string v54, "ID"

    move-object/from16 v0, v36

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->attributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 206
    .end local v36           #genreNode:Lorg/w3c/dom/Node;
    :cond_5
    const-string v54, "DATE"

    move-object/from16 v0, v26

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->optionalSingleChildNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 209
    .local v15, albumReleaseYear:Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Lcom/gracenote/mmid/MobileSDK/GNLinkData;->parseLinkData(Lorg/w3c/dom/Node;)[Lcom/gracenote/mmid/MobileSDK/GNLinkData;

    move-result-object v18

    .line 212
    .local v18, albumLinkData:[Lcom/gracenote/mmid/MobileSDK/GNLinkData;
    const-string v54, "TRACK"

    move-object/from16 v0, v26

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->singleChildNodeNamed(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v48

    .line 213
    .local v48, trackNode:Lorg/w3c/dom/Node;
    const-string v54, "TRACK_NUM"

    move-object/from16 v0, v48

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->singleChildNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 214
    .local v21, trackNum:Ljava/lang/String;
    const-string v54, "TITLE"

    move-object/from16 v0, v48

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->singleChildNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 217
    .local v10, trackTitle:Ljava/lang/String;
    const-string v54, "GN_ID"

    move-object/from16 v0, v48

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->singleChildNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 219
    .local v11, trackId:Ljava/lang/String;
    const/4 v12, 0x0

    .line 220
    .local v12, trackTitleYomi:Ljava/lang/String;
    const-string v54, "TITLE_PHONETIC"

    move-object/from16 v0, v48

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->childNodesNamed(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v49

    .line 221
    .local v49, trackTitlePhoneticNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    invoke-virtual/range {v49 .. v49}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v54

    :cond_6
    :goto_4
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->hasNext()Z

    move-result v55

    if-nez v55, :cond_13

    .line 232
    const/16 v45, 0x0

    .line 233
    .local v45, trackArtistBiography:Ljava/lang/String;
    const/16 v46, 0x0

    .line 237
    .local v46, trackArtistImage:Ljava/lang/String;
    const-string v54, "URL"

    move-object/from16 v0, v48

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->childNodesNamed(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v52

    .line 238
    .local v52, urlTrackNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    invoke-virtual/range {v52 .. v52}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v54

    :cond_7
    :goto_5
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->hasNext()Z

    move-result v55

    if-nez v55, :cond_14

    .line 247
    const-string v54, "MATCHED_POSITION"

    move-object/from16 v0, v48

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->optionalSingleChildNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 258
    .local v22, matchedPosition:Ljava/lang/String;
    const-string v54, "ARTIST"

    move-object/from16 v0, v48

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->optionalSingleChildNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 259
    .local v44, trackArtist:Ljava/lang/String;
    if-eqz v44, :cond_9

    .line 260
    move-object/from16 v7, v44

    .line 264
    const-string v54, "ARTIST_PHONETIC"

    move-object/from16 v0, v48

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->childNodesNamed(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v47

    .line 265
    .local v47, trackArtistPhoneticNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    invoke-virtual/range {v47 .. v47}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v54

    :cond_8
    :goto_6
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->hasNext()Z

    move-result v55

    if-nez v55, :cond_16

    .line 276
    .end local v47           #trackArtistPhoneticNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    move-object/from16 v54, v0

    const-string v55, "webservices.isInlineCoverArtEnabled"

    invoke-virtual/range {v54 .. v55}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getBooleanProperty(Ljava/lang/String;)Z

    move-result v38

    .line 277
    .local v38, isInlineCoverArtEnabled:Z
    if-eqz v38, :cond_a

    .line 280
    const-string v54, "DATA"

    move-object/from16 v0, v26

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->childNodesNamed(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v41

    .line 281
    .local v41, nodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v54

    const/16 v55, 0x1

    move/from16 v0, v54

    move/from16 v1, v55

    if-eq v0, v1, :cond_a

    .line 282
    const/16 v38, 0x0

    .line 286
    .end local v41           #nodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    :cond_a
    invoke-static/range {v48 .. v48}, Lcom/gracenote/mmid/MobileSDK/GNLinkData;->parseLinkData(Lorg/w3c/dom/Node;)[Lcom/gracenote/mmid/MobileSDK/GNLinkData;

    move-result-object v19

    .line 288
    .local v19, trackLinkData:[Lcom/gracenote/mmid/MobileSDK/GNLinkData;
    const/16 v32, 0x0

    .line 289
    .local v32, dataNode:Lorg/w3c/dom/Node;
    const/16 v31, 0x0

    .line 290
    .local v31, coverArtSize:Ljava/lang/String;
    const/16 v30, 0x0

    check-cast v30, [B

    .line 291
    .local v30, coverArtData:[B
    const/16 v39, 0x0

    .line 292
    .local v39, mimeType:Ljava/lang/String;
    if-eqz v38, :cond_b

    .line 293
    const-string v54, "DATA"

    move-object/from16 v0, v26

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->singleChildNodeNamed(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v32

    .line 295
    const-string v54, "TYPE"

    move-object/from16 v0, v32

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->attributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 296
    .local v50, type:Ljava/lang/String;
    const-string v54, "SIZE"

    move-object/from16 v0, v32

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->attributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 297
    const-string v54, "MIME_TYPE"

    move-object/from16 v0, v32

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->attributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 298
    const-string v54, "ENCODING"

    move-object/from16 v0, v32

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->attributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 299
    .local v34, encoding:Ljava/lang/String;
    const-string v54, "COVERART"

    move-object/from16 v0, v50

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v54

    if-nez v54, :cond_18

    const-string v54, "GENRE_COVERART"

    move-object/from16 v0, v50

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v54

    if-nez v54, :cond_18

    const/16 v54, 0x0

    :goto_7
    const-string v55, "can\'t handle DATA TYPE other than COVERART or GENRE_COVERART"

    invoke-static/range {v54 .. v55}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    .line 300
    const-string v54, "BASE64"

    move-object/from16 v0, v34

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v54

    const-string v55, "can\'t handle ENCODING other than BASE64"

    invoke-static/range {v54 .. v55}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    .line 301
    const-string v54, "DATA"

    move-object/from16 v0, v26

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->singleChildNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 302
    .local v29, base64Str:Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Lcom/gracenote/media/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object v30

    .line 305
    .end local v29           #base64Str:Ljava/lang/String;
    .end local v34           #encoding:Ljava/lang/String;
    .end local v50           #type:Ljava/lang/String;
    :cond_b
    const/4 v13, 0x0

    .line 306
    .local v13, coverArt:Lcom/gracenote/mmid/MobileSDK/GNCoverArt;
    if-eqz v38, :cond_c

    .line 307
    new-instance v13, Lcom/gracenote/mmid/MobileSDK/GNCoverArt;

    .end local v13           #coverArt:Lcom/gracenote/mmid/MobileSDK/GNCoverArt;
    move-object/from16 v0, v31

    move-object/from16 v1, v30

    move-object/from16 v2, v39

    invoke-direct {v13, v0, v1, v2}, Lcom/gracenote/mmid/MobileSDK/GNCoverArt;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    .line 309
    .restart local v13       #coverArt:Lcom/gracenote/mmid/MobileSDK/GNCoverArt;
    :cond_c
    move-object/from16 v14, v37

    .line 310
    .local v14, albumId:Ljava/lang/String;
    new-instance v3, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    invoke-direct/range {v3 .. v25}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gracenote/mmid/MobileSDK/GNCoverArt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/gracenote/mmid/MobileSDK/GNLinkData;[Lcom/gracenote/mmid/MobileSDK/GNLinkData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    .local v3, oneResponse:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    move-object/from16 v54, v0

    const/16 v55, 0x1

    move/from16 v0, v55

    new-array v0, v0, [Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    move-object/from16 v55, v0

    const/16 v56, 0x0

    aput-object v3, v55, v56

    invoke-virtual/range {v54 .. v55}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->setResponses([Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;)V

    goto/16 :goto_0

    .line 160
    .end local v3           #oneResponse:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;
    .end local v5           #albumTitle:Ljava/lang/String;
    .end local v6           #albumTitleYomi:Ljava/lang/String;
    .end local v10           #trackTitle:Ljava/lang/String;
    .end local v11           #trackId:Ljava/lang/String;
    .end local v12           #trackTitleYomi:Ljava/lang/String;
    .end local v13           #coverArt:Lcom/gracenote/mmid/MobileSDK/GNCoverArt;
    .end local v14           #albumId:Ljava/lang/String;
    .end local v15           #albumReleaseYear:Ljava/lang/String;
    .end local v16           #genre:Ljava/lang/String;
    .end local v17           #genreId:Ljava/lang/String;
    .end local v18           #albumLinkData:[Lcom/gracenote/mmid/MobileSDK/GNLinkData;
    .end local v19           #trackLinkData:[Lcom/gracenote/mmid/MobileSDK/GNLinkData;
    .end local v20           #albumTrackCount:Ljava/lang/String;
    .end local v21           #trackNum:Ljava/lang/String;
    .end local v22           #matchedPosition:Ljava/lang/String;
    .end local v23           #albumReviewUrl:Ljava/lang/String;
    .end local v24           #artistBiographyUrl:Ljava/lang/String;
    .end local v25           #artistImageUrl:Ljava/lang/String;
    .end local v27           #albumTitlePhoneticNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .end local v30           #coverArtData:[B
    .end local v31           #coverArtSize:Ljava/lang/String;
    .end local v32           #dataNode:Lorg/w3c/dom/Node;
    .end local v38           #isInlineCoverArtEnabled:Z
    .end local v39           #mimeType:Ljava/lang/String;
    .end local v44           #trackArtist:Ljava/lang/String;
    .end local v45           #trackArtistBiography:Ljava/lang/String;
    .end local v46           #trackArtistImage:Ljava/lang/String;
    .end local v48           #trackNode:Lorg/w3c/dom/Node;
    .end local v49           #trackTitlePhoneticNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .end local v51           #urlNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .end local v52           #urlTrackNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    :cond_d
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lorg/w3c/dom/Node;

    .line 161
    .local v40, node:Lorg/w3c/dom/Node;
    const-string v55, "DATASOURCE"

    move-object/from16 v0, v40

    move-object/from16 v1, v55

    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->attributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 162
    .local v33, dataSource:Ljava/lang/String;
    const-string v55, "aim-yomi"

    move-object/from16 v0, v33

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v55

    if-eqz v55, :cond_e

    .line 163
    invoke-static/range {v40 .. v40}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 164
    :cond_e
    const-string v55, "aim-betsumei"

    move-object/from16 v0, v33

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v55

    if-eqz v55, :cond_2

    .line 165
    invoke-static/range {v40 .. v40}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 173
    .end local v33           #dataSource:Ljava/lang/String;
    .end local v40           #node:Lorg/w3c/dom/Node;
    .restart local v23       #albumReviewUrl:Ljava/lang/String;
    .restart local v24       #artistBiographyUrl:Ljava/lang/String;
    .restart local v25       #artistImageUrl:Ljava/lang/String;
    .restart local v51       #urlNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    :cond_f
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lorg/w3c/dom/Node;

    .line 174
    .restart local v40       #node:Lorg/w3c/dom/Node;
    const-string v55, "TYPE"

    move-object/from16 v0, v40

    move-object/from16 v1, v55

    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->attributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 175
    .local v53, urlType:Ljava/lang/String;
    const-string v55, "REVIEW"

    move-object/from16 v0, v53

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v55

    if-eqz v55, :cond_10

    if-nez v23, :cond_10

    .line 176
    invoke-static/range {v40 .. v40}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_2

    .line 177
    :cond_10
    const-string v55, "ARTIST_BIOGRAPHY"

    move-object/from16 v0, v53

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v55

    if-eqz v55, :cond_11

    if-nez v24, :cond_11

    .line 178
    invoke-static/range {v40 .. v40}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_2

    .line 179
    :cond_11
    const-string v55, "ARTIST_IMAGE"

    move-object/from16 v0, v53

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v55

    if-eqz v55, :cond_3

    if-nez v25, :cond_3

    .line 180
    invoke-static/range {v40 .. v40}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_2

    .line 188
    .end local v40           #node:Lorg/w3c/dom/Node;
    .end local v53           #urlType:Ljava/lang/String;
    .restart local v5       #albumTitle:Ljava/lang/String;
    .restart local v6       #albumTitleYomi:Ljava/lang/String;
    .restart local v27       #albumTitlePhoneticNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    :cond_12
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lorg/w3c/dom/Node;

    .line 189
    .restart local v40       #node:Lorg/w3c/dom/Node;
    const-string v55, "DATASOURCE"

    move-object/from16 v0, v40

    move-object/from16 v1, v55

    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->attributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 190
    .restart local v33       #dataSource:Ljava/lang/String;
    const-string v55, "aim-yomi"

    move-object/from16 v0, v33

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v55

    if-eqz v55, :cond_4

    .line 191
    invoke-static/range {v40 .. v40}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    .line 221
    .end local v33           #dataSource:Ljava/lang/String;
    .end local v40           #node:Lorg/w3c/dom/Node;
    .restart local v10       #trackTitle:Ljava/lang/String;
    .restart local v11       #trackId:Ljava/lang/String;
    .restart local v12       #trackTitleYomi:Ljava/lang/String;
    .restart local v15       #albumReleaseYear:Ljava/lang/String;
    .restart local v16       #genre:Ljava/lang/String;
    .restart local v17       #genreId:Ljava/lang/String;
    .restart local v18       #albumLinkData:[Lcom/gracenote/mmid/MobileSDK/GNLinkData;
    .restart local v20       #albumTrackCount:Ljava/lang/String;
    .restart local v21       #trackNum:Ljava/lang/String;
    .restart local v48       #trackNode:Lorg/w3c/dom/Node;
    .restart local v49       #trackTitlePhoneticNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    :cond_13
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lorg/w3c/dom/Node;

    .line 222
    .restart local v40       #node:Lorg/w3c/dom/Node;
    const-string v55, "DATASOURCE"

    move-object/from16 v0, v40

    move-object/from16 v1, v55

    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->attributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 223
    .restart local v33       #dataSource:Ljava/lang/String;
    const-string v55, "aim-yomi"

    move-object/from16 v0, v33

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v55

    if-eqz v55, :cond_6

    .line 224
    invoke-static/range {v40 .. v40}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_4

    .line 238
    .end local v33           #dataSource:Ljava/lang/String;
    .end local v40           #node:Lorg/w3c/dom/Node;
    .restart local v45       #trackArtistBiography:Ljava/lang/String;
    .restart local v46       #trackArtistImage:Ljava/lang/String;
    .restart local v52       #urlTrackNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    :cond_14
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lorg/w3c/dom/Node;

    .line 239
    .restart local v40       #node:Lorg/w3c/dom/Node;
    const-string v55, "TYPE"

    move-object/from16 v0, v40

    move-object/from16 v1, v55

    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->attributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 240
    .restart local v53       #urlType:Ljava/lang/String;
    const-string v55, "ARTIST_BIOGRAPHY"

    move-object/from16 v0, v53

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v55

    if-eqz v55, :cond_15

    if-nez v45, :cond_15

    .line 241
    invoke-static/range {v40 .. v40}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v45, v24

    goto/16 :goto_5

    .line 242
    :cond_15
    const-string v55, "ARTIST_IMAGE"

    move-object/from16 v0, v53

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v55

    if-eqz v55, :cond_7

    if-nez v46, :cond_7

    .line 243
    invoke-static/range {v40 .. v40}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v46, v25

    goto/16 :goto_5

    .line 265
    .end local v40           #node:Lorg/w3c/dom/Node;
    .end local v53           #urlType:Ljava/lang/String;
    .restart local v22       #matchedPosition:Ljava/lang/String;
    .restart local v44       #trackArtist:Ljava/lang/String;
    .restart local v47       #trackArtistPhoneticNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    :cond_16
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lorg/w3c/dom/Node;

    .line 266
    .restart local v40       #node:Lorg/w3c/dom/Node;
    const-string v55, "DATASOURCE"

    move-object/from16 v0, v40

    move-object/from16 v1, v55

    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->attributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 267
    .restart local v33       #dataSource:Ljava/lang/String;
    const-string v55, "aim-yomi"

    move-object/from16 v0, v33

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v55

    if-eqz v55, :cond_17

    .line 268
    invoke-static/range {v40 .. v40}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_6

    .line 269
    :cond_17
    const-string v55, "aim-betsumei"

    move-object/from16 v0, v33

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v55

    if-eqz v55, :cond_8

    .line 270
    invoke-static/range {v40 .. v40}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_6

    .line 299
    .end local v33           #dataSource:Ljava/lang/String;
    .end local v40           #node:Lorg/w3c/dom/Node;
    .end local v47           #trackArtistPhoneticNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .restart local v19       #trackLinkData:[Lcom/gracenote/mmid/MobileSDK/GNLinkData;
    .restart local v30       #coverArtData:[B
    .restart local v31       #coverArtSize:Ljava/lang/String;
    .restart local v32       #dataNode:Lorg/w3c/dom/Node;
    .restart local v34       #encoding:Ljava/lang/String;
    .restart local v38       #isInlineCoverArtEnabled:Z
    .restart local v39       #mimeType:Ljava/lang/String;
    .restart local v50       #type:Ljava/lang/String;
    :cond_18
    const/16 v54, 0x1

    goto/16 :goto_7
.end method

.method protected parseResponses(Lorg/w3c/dom/Node;)V
    .locals 0
    .parameter "responsesNode"

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->parseAlbumCovertArtResponses(Lorg/w3c/dom/Node;)V

    .line 133
    return-void
.end method

.method public postResult(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .parameter "resultData"
    .parameter "httpStatusCode"
    .parameter "errorMessage"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->resultData:Ljava/lang/String;

    .line 103
    iput p2, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->httpStatusCode:I

    .line 105
    iget v1, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->httpStatusCode:I

    const/16 v2, 0x198

    if-ne v1, v2, :cond_0

    .line 107
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    const/16 v2, 0x1389

    invoke-virtual {v1, v2}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->setErrCode(I)V

    .line 108
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "webservices http status: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->httpStatusCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->setErrMessage(Ljava/lang/String;)V

    .line 127
    :goto_0
    return-void

    .line 109
    :cond_0
    iget v1, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->httpStatusCode:I

    const/16 v2, 0x1f4

    if-ne v1, v2, :cond_1

    .line 110
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    const/16 v2, 0x138c

    invoke-virtual {v1, v2}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->setErrCode(I)V

    .line 111
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    invoke-virtual {v1, p3}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->setErrMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_1
    iget v1, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->httpStatusCode:I

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_2

    .line 114
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    const/16 v2, 0x1388

    invoke-virtual {v1, v2}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->setErrCode(I)V

    .line 115
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "webservices http status: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->httpStatusCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->setErrMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_2
    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :goto_1
    const-string v2, "resultData is null"

    invoke-static {v1, v2}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->resultData:Ljava/lang/String;

    invoke-static {v1}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->parseDOM(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 119
    .local v0, rootNode:Lorg/w3c/dom/Node;
    if-nez v0, :cond_4

    .line 121
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    const/16 v2, 0x138a

    invoke-virtual {v1, v2}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->setErrCode(I)V

    .line 122
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    const-string v2, "webservices xml can\'t be parsed"

    invoke-virtual {v1, v2}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->setErrMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    .end local v0           #rootNode:Lorg/w3c/dom/Node;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 124
    .restart local v0       #rootNode:Lorg/w3c/dom/Node;
    :cond_4
    invoke-virtual {p0, v0}, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->parseResponses(Lorg/w3c/dom/Node;)V

    goto :goto_0
.end method
