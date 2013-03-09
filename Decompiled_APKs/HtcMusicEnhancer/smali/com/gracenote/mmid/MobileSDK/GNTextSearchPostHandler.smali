.class Lcom/gracenote/mmid/MobileSDK/GNTextSearchPostHandler;
.super Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;
.source "GNTextSearchPostHandler.java"


# instance fields
.field private album:Ljava/lang/String;

.field private artist:Ljava/lang/String;

.field private coverArtPost:Z

.field private status:Ljava/lang/String;

.field private track:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNSearchResult;Lcom/gracenote/mmid/MobileSDK/FPXCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "inConfig"
    .parameter "inResultReady"
    .parameter "inResult"
    .parameter "inCallback"
    .parameter "inArtist"
    .parameter "inAlbum"
    .parameter "inTrack"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNSearchResult;Lcom/gracenote/mmid/MobileSDK/FPXCallback;)V

    .line 22
    iput-object p5, p0, Lcom/gracenote/mmid/MobileSDK/GNTextSearchPostHandler;->artist:Ljava/lang/String;

    .line 23
    iput-object p6, p0, Lcom/gracenote/mmid/MobileSDK/GNTextSearchPostHandler;->album:Ljava/lang/String;

    .line 24
    iput-object p7, p0, Lcom/gracenote/mmid/MobileSDK/GNTextSearchPostHandler;->track:Ljava/lang/String;

    .line 25
    return-void
.end method

.method private parseAlbum(Lorg/w3c/dom/Node;Ljava/util/ArrayList;)V
    .locals 27
    .parameter "albumNode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p2, responses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;>;"
    const-string v1, "GN_ID"

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->singleChildNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, gnid:Ljava/lang/String;
    const-string v1, "ARTIST"

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->singleChildNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 108
    .local v5, artist:Ljava/lang/String;
    const/4 v6, 0x0

    .line 109
    .local v6, artistYomi:Ljava/lang/String;
    const/4 v7, 0x0

    .line 110
    .local v7, artistBetsumei:Ljava/lang/String;
    const-string v1, "ARTIST_PHONETIC"

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->childNodesNamed(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    .line 111
    .local v19, artistPhoneticNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 120
    const-string v1, "TITLE"

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->singleChildNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 122
    .local v8, albumTitle:Ljava/lang/String;
    const/4 v9, 0x0

    .line 123
    .local v9, albumTitleYomi:Ljava/lang/String;
    const-string v1, "TITLE_PHONETIC"

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->childNodesNamed(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v18

    .line 124
    .local v18, albumTitlePhoneticNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_6

    .line 131
    const/4 v15, 0x0

    .line 132
    .local v15, albumReviewUrl:Ljava/lang/String;
    const/16 v16, 0x0

    .line 133
    .local v16, artistBiographyUrl:Ljava/lang/String;
    const/16 v17, 0x0

    .line 134
    .local v17, artistImageUrl:Ljava/lang/String;
    const-string v1, "URL"

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->childNodesNamed(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v24

    .line 135
    .local v24, urlNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_7

    .line 146
    const-string v1, "TRACK_COUNT"

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->singleChildNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 148
    .local v14, albumTrackCount:Ljava/lang/String;
    const-string v1, "GENRE"

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->optionalSingleChildNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 149
    .local v11, genre:Ljava/lang/String;
    const/4 v12, 0x0

    .line 150
    .local v12, genreId:Ljava/lang/String;
    if-eqz v11, :cond_3

    .line 152
    const-string v1, "GENRE"

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->singleChildNodeNamed(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v21

    .line 153
    .local v21, genreNode:Lorg/w3c/dom/Node;
    const-string v1, "ID"

    move-object/from16 v0, v21

    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->attributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 157
    .end local v21           #genreNode:Lorg/w3c/dom/Node;
    :cond_3
    const-string v1, "DATE"

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->optionalSingleChildNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 160
    .local v10, albumReleaseYear:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/gracenote/mmid/MobileSDK/GNLinkData;->parseLinkData(Lorg/w3c/dom/Node;)[Lcom/gracenote/mmid/MobileSDK/GNLinkData;

    move-result-object v13

    .line 163
    .local v13, albumLinkData:[Lcom/gracenote/mmid/MobileSDK/GNLinkData;
    const-string v1, "TRACK"

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->childNodesNamed(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v23

    .line 164
    .local v23, trackNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :goto_3
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_a

    .line 173
    return-void

    .line 111
    .end local v8           #albumTitle:Ljava/lang/String;
    .end local v9           #albumTitleYomi:Ljava/lang/String;
    .end local v10           #albumReleaseYear:Ljava/lang/String;
    .end local v11           #genre:Ljava/lang/String;
    .end local v12           #genreId:Ljava/lang/String;
    .end local v13           #albumLinkData:[Lcom/gracenote/mmid/MobileSDK/GNLinkData;
    .end local v14           #albumTrackCount:Ljava/lang/String;
    .end local v15           #albumReviewUrl:Ljava/lang/String;
    .end local v16           #artistBiographyUrl:Ljava/lang/String;
    .end local v17           #artistImageUrl:Ljava/lang/String;
    .end local v18           #albumTitlePhoneticNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .end local v23           #trackNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .end local v24           #urlNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/w3c/dom/Node;

    .line 112
    .local v22, node:Lorg/w3c/dom/Node;
    const-string v3, "DATASOURCE"

    move-object/from16 v0, v22

    invoke-static {v0, v3}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->attributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 113
    .local v20, dataSource:Ljava/lang/String;
    const-string v3, "aim-yomi"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 114
    invoke-static/range {v22 .. v22}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 115
    :cond_5
    const-string v3, "aim-betsumei"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    invoke-static/range {v22 .. v22}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 124
    .end local v20           #dataSource:Ljava/lang/String;
    .end local v22           #node:Lorg/w3c/dom/Node;
    .restart local v8       #albumTitle:Ljava/lang/String;
    .restart local v9       #albumTitleYomi:Ljava/lang/String;
    .restart local v18       #albumTitlePhoneticNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/w3c/dom/Node;

    .line 125
    .restart local v22       #node:Lorg/w3c/dom/Node;
    const-string v3, "DATASOURCE"

    move-object/from16 v0, v22

    invoke-static {v0, v3}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->attributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 126
    .restart local v20       #dataSource:Ljava/lang/String;
    const-string v3, "aim-yomi"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 127
    invoke-static/range {v22 .. v22}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 135
    .end local v20           #dataSource:Ljava/lang/String;
    .end local v22           #node:Lorg/w3c/dom/Node;
    .restart local v15       #albumReviewUrl:Ljava/lang/String;
    .restart local v16       #artistBiographyUrl:Ljava/lang/String;
    .restart local v17       #artistImageUrl:Ljava/lang/String;
    .restart local v24       #urlNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/w3c/dom/Node;

    .line 136
    .restart local v22       #node:Lorg/w3c/dom/Node;
    const-string v3, "TYPE"

    move-object/from16 v0, v22

    invoke-static {v0, v3}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->attributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 137
    .local v25, urlType:Ljava/lang/String;
    const-string v3, "REVIEW"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-nez v15, :cond_8

    .line 138
    invoke-static/range {v22 .. v22}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_2

    .line 139
    :cond_8
    const-string v3, "ARTIST_BIOGRAPHY"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    if-nez v16, :cond_9

    .line 140
    invoke-static/range {v22 .. v22}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_2

    .line 141
    :cond_9
    const-string v3, "ARTIST_IMAGE"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v17, :cond_2

    .line 142
    invoke-static/range {v22 .. v22}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_2

    .line 164
    .end local v22           #node:Lorg/w3c/dom/Node;
    .end local v25           #urlType:Ljava/lang/String;
    .restart local v10       #albumReleaseYear:Ljava/lang/String;
    .restart local v11       #genre:Ljava/lang/String;
    .restart local v12       #genreId:Ljava/lang/String;
    .restart local v13       #albumLinkData:[Lcom/gracenote/mmid/MobileSDK/GNLinkData;
    .restart local v14       #albumTrackCount:Ljava/lang/String;
    .restart local v23       #trackNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    :cond_a
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Node;

    .local v2, trackNode:Lorg/w3c/dom/Node;
    move-object/from16 v1, p0

    move-object/from16 v3, p2

    .line 165
    invoke-direct/range {v1 .. v17}, Lcom/gracenote/mmid/MobileSDK/GNTextSearchPostHandler;->parseTrack(Lorg/w3c/dom/Node;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/gracenote/mmid/MobileSDK/GNLinkData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private parseAlbumSearchResponses(Lorg/w3c/dom/Node;)V
    .locals 11
    .parameter "responsesNode"

    .prologue
    .line 77
    invoke-static {p1}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->parseResponse(Lorg/w3c/dom/Node;)[Ljava/lang/Object;

    move-result-object v6

    .line 78
    .local v6, results:[Ljava/lang/Object;
    const/4 v8, 0x0

    aget-object v7, v6, v8

    check-cast v7, Ljava/lang/String;

    .line 79
    .local v7, status:Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v2, v6, v8

    check-cast v2, Ljava/lang/String;

    .line 80
    .local v2, errorMsgStr:Ljava/lang/String;
    const/4 v8, 0x2

    aget-object v3, v6, v8

    check-cast v3, Lorg/w3c/dom/Node;

    .line 84
    .local v3, responseNode:Lorg/w3c/dom/Node;
    const-string v8, "NO_MATCH"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 85
    iget-object v8, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    const/16 v9, 0x232a

    invoke-virtual {v8, v9}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->setStatusCode(I)V

    .line 102
    :goto_0
    return-void

    .line 87
    :cond_0
    const-string v8, "ERROR"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 88
    iget-object v8, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "webservices error: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->setErrMessage(Ljava/lang/String;)V

    .line 89
    iget-object v8, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    const/16 v9, 0x1388

    invoke-virtual {v8, v9}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->setErrCode(I)V

    goto :goto_0

    .line 92
    :cond_1
    iput-object v7, p0, Lcom/gracenote/mmid/MobileSDK/GNTextSearchPostHandler;->status:Ljava/lang/String;

    .line 95
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v4, responses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;>;"
    const-string v8, "ALBUM"

    invoke-static {v3, v8}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->childNodesNamed(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 97
    .local v1, albumNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_2

    .line 100
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    .line 101
    .local v5, responsesArr:[Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;
    iget-object v8, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    invoke-virtual {v8, v5}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->setResponses([Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;)V

    goto :goto_0

    .line 97
    .end local v5           #responsesArr:[Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 98
    .local v0, albumNode:Lorg/w3c/dom/Node;
    invoke-direct {p0, v0, v4}, Lcom/gracenote/mmid/MobileSDK/GNTextSearchPostHandler;->parseAlbum(Lorg/w3c/dom/Node;Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method private parseTrack(Lorg/w3c/dom/Node;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/gracenote/mmid/MobileSDK/GNLinkData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 33
    .parameter "trackNode"
    .parameter
    .parameter "gnid"
    .parameter "artist"
    .parameter "artistYomi"
    .parameter "artistBetsumei"
    .parameter "albumTitle"
    .parameter "albumTitleYomi"
    .parameter "albumReleaseYear"
    .parameter "genre"
    .parameter "genreId"
    .parameter "albumLinkData"
    .parameter "albumTrackCount"
    .parameter "albumReviewUrl"
    .parameter "artistBiographyUrl"
    .parameter "artistImageUrl"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Lcom/gracenote/mmid/MobileSDK/GNLinkData;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 193
    .local p2, responses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;>;"
    const-string v2, "TRACK_NUM"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->singleChildNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 194
    .local v19, trackNum:Ljava/lang/String;
    const-string v2, "TITLE"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->singleChildNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 197
    .local v8, trackTitle:Ljava/lang/String;
    const-string v2, "GN_ID"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->singleChildNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 200
    .local v9, trackId:Ljava/lang/String;
    const/4 v10, 0x0

    .line 201
    .local v10, trackTitleYomi:Ljava/lang/String;
    const-string v2, "TITLE_PHONETIC"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->childNodesNamed(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v30

    .line 202
    .local v30, trackTitlePhoneticNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 210
    const-string v2, "ARTIST"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->optionalSingleChildNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 211
    .local v27, trackArtist:Ljava/lang/String;
    if-eqz v27, :cond_2

    .line 212
    move-object/from16 p4, v27

    .line 216
    const-string v2, "ARTIST_PHONETIC"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->childNodesNamed(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v24

    .line 217
    .local v24, artistPhoneticNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_5

    .line 231
    .end local v24           #artistPhoneticNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    :cond_2
    const/16 v28, 0x0

    .line 232
    .local v28, trackArtistBiography:Ljava/lang/String;
    const/16 v29, 0x0

    .line 236
    .local v29, trackArtistImage:Ljava/lang/String;
    const-string v2, "URL"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->childNodesNamed(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v31

    .line 237
    .local v31, urlTrackNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_7

    .line 247
    const/16 v20, 0x0

    .line 250
    .local v20, matchedPosition:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/gracenote/mmid/MobileSDK/GNLinkData;->parseLinkData(Lorg/w3c/dom/Node;)[Lcom/gracenote/mmid/MobileSDK/GNLinkData;

    move-result-object v17

    .line 253
    .local v17, trackLinkData:[Lcom/gracenote/mmid/MobileSDK/GNLinkData;
    const/4 v11, 0x0

    .line 254
    .local v11, coverArt:Lcom/gracenote/mmid/MobileSDK/GNCoverArt;
    move-object/from16 v12, p3

    .line 255
    .local v12, albumId:Ljava/lang/String;
    new-instance v1, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gracenote/mmid/MobileSDK/GNTextSearchPostHandler;->status:Ljava/lang/String;

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    move-object/from16 v16, p12

    move-object/from16 v18, p13

    move-object/from16 v21, p14

    move-object/from16 v22, p15

    move-object/from16 v23, p16

    invoke-direct/range {v1 .. v23}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gracenote/mmid/MobileSDK/GNCoverArt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/gracenote/mmid/MobileSDK/GNLinkData;[Lcom/gracenote/mmid/MobileSDK/GNLinkData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    .local v1, oneResponse:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    return-void

    .line 202
    .end local v1           #oneResponse:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;
    .end local v11           #coverArt:Lcom/gracenote/mmid/MobileSDK/GNCoverArt;
    .end local v12           #albumId:Ljava/lang/String;
    .end local v17           #trackLinkData:[Lcom/gracenote/mmid/MobileSDK/GNLinkData;
    .end local v20           #matchedPosition:Ljava/lang/String;
    .end local v27           #trackArtist:Ljava/lang/String;
    .end local v28           #trackArtistBiography:Ljava/lang/String;
    .end local v29           #trackArtistImage:Ljava/lang/String;
    .end local v31           #urlTrackNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/w3c/dom/Node;

    .line 203
    .local v26, node:Lorg/w3c/dom/Node;
    const-string v3, "DATASOURCE"

    move-object/from16 v0, v26

    invoke-static {v0, v3}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->attributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 204
    .local v25, dataSource:Ljava/lang/String;
    const-string v3, "aim-yomi"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 205
    invoke-static/range {v26 .. v26}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 217
    .end local v25           #dataSource:Ljava/lang/String;
    .end local v26           #node:Lorg/w3c/dom/Node;
    .restart local v24       #artistPhoneticNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .restart local v27       #trackArtist:Ljava/lang/String;
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/w3c/dom/Node;

    .line 218
    .restart local v26       #node:Lorg/w3c/dom/Node;
    const-string v3, "DATASOURCE"

    move-object/from16 v0, v26

    invoke-static {v0, v3}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->attributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 219
    .restart local v25       #dataSource:Ljava/lang/String;
    const-string v3, "aim-yomi"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 220
    invoke-static/range {v26 .. v26}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p5

    goto/16 :goto_1

    .line 221
    :cond_6
    const-string v3, "aim-betsumei"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 222
    invoke-static/range {v26 .. v26}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p6

    goto/16 :goto_1

    .line 237
    .end local v24           #artistPhoneticNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .end local v25           #dataSource:Ljava/lang/String;
    .end local v26           #node:Lorg/w3c/dom/Node;
    .restart local v28       #trackArtistBiography:Ljava/lang/String;
    .restart local v29       #trackArtistImage:Ljava/lang/String;
    .restart local v31       #urlTrackNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/w3c/dom/Node;

    .line 238
    .restart local v26       #node:Lorg/w3c/dom/Node;
    const-string v3, "TYPE"

    move-object/from16 v0, v26

    invoke-static {v0, v3}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->attributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 239
    .local v32, urlType:Ljava/lang/String;
    const-string v3, "ARTIST_BIOGRAPHY"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-nez v28, :cond_8

    .line 240
    invoke-static/range {v26 .. v26}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p15

    move-object/from16 v28, p15

    goto/16 :goto_2

    .line 241
    :cond_8
    const-string v3, "ARTIST_IMAGE"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v29, :cond_3

    .line 242
    invoke-static/range {v26 .. v26}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p16

    move-object/from16 v29, p16

    goto/16 :goto_2
.end method


# virtual methods
.method public formatXML()Ljava/lang/String;
    .locals 19

    .prologue
    .line 28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    const-string v4, "clientId"

    invoke-virtual {v3, v4}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 29
    .local v14, clientId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    const-string v4, "userId"

    invoke-virtual {v3, v4}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getProtectedProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 30
    .local v17, userId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    const-string v4, "lang"

    invoke-virtual {v3, v4}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 31
    .local v15, lang:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    const-string v4, "version"

    invoke-virtual {v3, v4}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 33
    .local v18, version:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    const-string v4, "result is null"

    invoke-static {v3, v4}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    .line 35
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    const-string v4, "webservices.isInlineCoverArtEnabled"

    invoke-virtual {v3, v4}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getBooleanProperty(Ljava/lang/String;)Z

    move-result v6

    .line 36
    .local v6, isInlineCoverArtEnabled:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    const-string v4, "webservices.coverArtSizePreference"

    invoke-virtual {v3, v4}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 38
    .local v7, coverArtSizePreference:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    const-string v4, "isGenreCoverArtEnabled"

    invoke-virtual {v3, v4}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getBooleanProperty(Ljava/lang/String;)Z

    move-result v8

    .line 41
    .local v8, isFallbackGenreCoverEnabled:Z
    const/4 v10, 0x0

    .line 42
    .local v10, isArtistBiographyExtendedEnabled:Z
    const/4 v11, 0x0

    .line 43
    .local v11, isReviewExtendedEnabled:Z
    const/4 v12, 0x0

    .line 45
    .local v12, isArtistImageExtendedEnabled:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    const-string v4, "preferredLinkSource"

    invoke-virtual {v3, v4}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 47
    .local v13, preferredLinkSource:Ljava/lang/String;
    new-instance v2, Lcom/gracenote/mmid/MobileSDK/GNAlbumSearchQuery;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gracenote/mmid/MobileSDK/GNTextSearchPostHandler;->artist:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gracenote/mmid/MobileSDK/GNTextSearchPostHandler;->album:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/gracenote/mmid/MobileSDK/GNTextSearchPostHandler;->track:Ljava/lang/String;

    .line 48
    const/4 v9, 0x1

    .line 47
    invoke-direct/range {v2 .. v13}, Lcom/gracenote/mmid/MobileSDK/GNAlbumSearchQuery;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZZZZLjava/lang/String;)V

    .line 55
    .local v2, query:Lcom/gracenote/mmid/MobileSDK/GNAlbumSearchQuery;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/gracenote/mmid/MobileSDK/GNTextSearchPostHandler;->coverArtPost:Z

    .line 56
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v14, v0, v1, v15, v2}, Lcom/gracenote/mmid/MobileSDK/GNQuery;->formatAuthQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gracenote/mmid/MobileSDK/GNQuery;)Ljava/lang/String;

    move-result-object v16

    .line 57
    .local v16, queryXML:Ljava/lang/String;
    return-object v16

    .line 33
    .end local v2           #query:Lcom/gracenote/mmid/MobileSDK/GNAlbumSearchQuery;
    .end local v6           #isInlineCoverArtEnabled:Z
    .end local v7           #coverArtSizePreference:Ljava/lang/String;
    .end local v8           #isFallbackGenreCoverEnabled:Z
    .end local v10           #isArtistBiographyExtendedEnabled:Z
    .end local v11           #isReviewExtendedEnabled:Z
    .end local v12           #isArtistImageExtendedEnabled:Z
    .end local v13           #preferredLinkSource:Ljava/lang/String;
    .end local v16           #queryXML:Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected parseResponses(Lorg/w3c/dom/Node;)V
    .locals 2
    .parameter "responsesNode"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/gracenote/mmid/MobileSDK/GNTextSearchPostHandler;->coverArtPost:Z

    if-eqz v0, :cond_1

    .line 64
    invoke-super {p0, p1}, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->parseAlbumCovertArtResponses(Lorg/w3c/dom/Node;)V

    .line 65
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    invoke-virtual {v0}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->isFingerprintSearchNoMatchStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    const/16 v1, 0x232a

    invoke-virtual {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->setStatusCode(I)V

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    invoke-direct {p0, p1}, Lcom/gracenote/mmid/MobileSDK/GNTextSearchPostHandler;->parseAlbumSearchResponses(Lorg/w3c/dom/Node;)V

    goto :goto_0
.end method
