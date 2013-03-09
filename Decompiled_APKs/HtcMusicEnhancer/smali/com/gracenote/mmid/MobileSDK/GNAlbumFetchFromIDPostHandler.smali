.class Lcom/gracenote/mmid/MobileSDK/GNAlbumFetchFromIDPostHandler;
.super Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;
.source "GNAlbumFetchFromIDPostHandler.java"


# instance fields
.field private gnId:Ljava/lang/String;

.field private status:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNSearchResult;Lcom/gracenote/mmid/MobileSDK/FPXCallback;Ljava/lang/String;)V
    .locals 0
    .parameter "inConfig"
    .parameter "inResultReady"
    .parameter "inResult"
    .parameter "inCallback"
    .parameter "inGnId"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNSearchResult;Lcom/gracenote/mmid/MobileSDK/FPXCallback;)V

    .line 19
    iput-object p5, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumFetchFromIDPostHandler;->gnId:Ljava/lang/String;

    .line 20
    return-void
.end method

.method private parseAlbum(Lorg/w3c/dom/Node;Ljava/util/ArrayList;)V
    .locals 40
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
    .line 85
    .local p2, responses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;>;"
    const-string v4, "GN_ID"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->singleChildNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 86
    .local v7, gnid:Ljava/lang/String;
    const-string v4, "ARTIST"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->singleChildNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 88
    .local v8, artist:Ljava/lang/String;
    const/4 v9, 0x0

    .line 89
    .local v9, artistYomi:Ljava/lang/String;
    const/4 v10, 0x0

    .line 90
    .local v10, artistBetsumei:Ljava/lang/String;
    const-string v4, "ARTIST_PHONETIC"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->childNodesNamed(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v23

    .line 91
    .local v23, artistPhoneticNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_7

    .line 100
    const-string v4, "TITLE"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->singleChildNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 102
    .local v11, albumTitle:Ljava/lang/String;
    const/4 v12, 0x0

    .line 103
    .local v12, albumTitleYomi:Ljava/lang/String;
    const-string v4, "TITLE_PHONETIC"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->childNodesNamed(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v22

    .line 104
    .local v22, albumTitlePhoneticNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_9

    .line 111
    const/16 v19, 0x0

    .line 112
    .local v19, albumReviewUrl:Ljava/lang/String;
    const/16 v20, 0x0

    .line 113
    .local v20, artistBiographyUrl:Ljava/lang/String;
    const/16 v21, 0x0

    .line 114
    .local v21, artistImageUrl:Ljava/lang/String;
    const-string v4, "URL"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->childNodesNamed(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v37

    .line 115
    .local v37, urlNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_a

    .line 126
    const-string v4, "TRACK_COUNT"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->singleChildNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 128
    .local v17, albumTrackCount:Ljava/lang/String;
    const-string v4, "GENRE"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->optionalSingleChildNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 129
    .local v14, genre:Ljava/lang/String;
    const/4 v15, 0x0

    .line 130
    .local v15, genreId:Ljava/lang/String;
    if-eqz v14, :cond_3

    .line 132
    const-string v4, "GENRE"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->singleChildNodeNamed(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v30

    .line 134
    .local v30, genreNode:Lorg/w3c/dom/Node;
    const-string v4, "ID"

    move-object/from16 v0, v30

    invoke-static {v0, v4}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->attributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 138
    .end local v30           #genreNode:Lorg/w3c/dom/Node;
    :cond_3
    const-string v4, "DATE"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->optionalSingleChildNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 141
    .local v13, albumReleaseYear:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/gracenote/mmid/MobileSDK/GNLinkData;->parseLinkData(Lorg/w3c/dom/Node;)[Lcom/gracenote/mmid/MobileSDK/GNLinkData;

    move-result-object v16

    .line 144
    .local v16, albumLinkData:[Lcom/gracenote/mmid/MobileSDK/GNLinkData;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    const-string v6, "webservices.isInlineCoverArtEnabled"

    invoke-virtual {v4, v6}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getBooleanProperty(Ljava/lang/String;)Z

    move-result v31

    .line 145
    .local v31, isInlineCoverArtEnabled:Z
    if-eqz v31, :cond_4

    .line 148
    const-string v4, "DATA"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->childNodesNamed(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v34

    .line 149
    .local v34, nodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x1

    if-eq v4, v6, :cond_4

    .line 150
    const/16 v31, 0x0

    .line 154
    .end local v34           #nodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    :cond_4
    const/16 v27, 0x0

    .line 155
    .local v27, dataNode:Lorg/w3c/dom/Node;
    const/16 v26, 0x0

    .line 156
    .local v26, coverArtSize:Ljava/lang/String;
    const/16 v25, 0x0

    check-cast v25, [B

    .line 157
    .local v25, coverArtData:[B
    const/16 v32, 0x0

    .line 158
    .local v32, mimeType:Ljava/lang/String;
    if-eqz v31, :cond_5

    .line 159
    const-string v4, "DATA"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->singleChildNodeNamed(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v27

    .line 161
    const-string v4, "TYPE"

    move-object/from16 v0, v27

    invoke-static {v0, v4}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->attributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 162
    .local v36, type:Ljava/lang/String;
    const-string v4, "SIZE"

    move-object/from16 v0, v27

    invoke-static {v0, v4}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->attributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 163
    const-string v4, "MIME_TYPE"

    move-object/from16 v0, v27

    invoke-static {v0, v4}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->attributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 164
    const-string v4, "ENCODING"

    move-object/from16 v0, v27

    invoke-static {v0, v4}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->attributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 165
    .local v29, encoding:Ljava/lang/String;
    const-string v4, "COVERART"

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string v4, "GENRE_COVERART"

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    const/4 v4, 0x0

    :goto_3
    const-string v6, "can\'t handle DATA TYPE other than COVERART or GENRE_COVERART"

    invoke-static {v4, v6}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    .line 166
    const-string v4, "BASE64"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "can\'t handle ENCODING other than BASE64"

    invoke-static {v4, v6}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    .line 167
    const-string v4, "DATA"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->singleChildNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 168
    .local v24, base64Str:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/gracenote/media/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object v25

    .line 171
    .end local v24           #base64Str:Ljava/lang/String;
    .end local v29           #encoding:Ljava/lang/String;
    .end local v36           #type:Ljava/lang/String;
    :cond_5
    const/16 v18, 0x0

    .line 172
    .local v18, coverArt:Lcom/gracenote/mmid/MobileSDK/GNCoverArt;
    if-eqz v31, :cond_6

    .line 173
    new-instance v18, Lcom/gracenote/mmid/MobileSDK/GNCoverArt;

    .end local v18           #coverArt:Lcom/gracenote/mmid/MobileSDK/GNCoverArt;
    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/gracenote/mmid/MobileSDK/GNCoverArt;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    .line 177
    .restart local v18       #coverArt:Lcom/gracenote/mmid/MobileSDK/GNCoverArt;
    :cond_6
    const-string v4, "TRACK"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->childNodesNamed(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v35

    .line 178
    .local v35, trackNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v39

    :goto_4
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_e

    .line 187
    return-void

    .line 91
    .end local v11           #albumTitle:Ljava/lang/String;
    .end local v12           #albumTitleYomi:Ljava/lang/String;
    .end local v13           #albumReleaseYear:Ljava/lang/String;
    .end local v14           #genre:Ljava/lang/String;
    .end local v15           #genreId:Ljava/lang/String;
    .end local v16           #albumLinkData:[Lcom/gracenote/mmid/MobileSDK/GNLinkData;
    .end local v17           #albumTrackCount:Ljava/lang/String;
    .end local v18           #coverArt:Lcom/gracenote/mmid/MobileSDK/GNCoverArt;
    .end local v19           #albumReviewUrl:Ljava/lang/String;
    .end local v20           #artistBiographyUrl:Ljava/lang/String;
    .end local v21           #artistImageUrl:Ljava/lang/String;
    .end local v22           #albumTitlePhoneticNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .end local v25           #coverArtData:[B
    .end local v26           #coverArtSize:Ljava/lang/String;
    .end local v27           #dataNode:Lorg/w3c/dom/Node;
    .end local v31           #isInlineCoverArtEnabled:Z
    .end local v32           #mimeType:Ljava/lang/String;
    .end local v35           #trackNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .end local v37           #urlNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lorg/w3c/dom/Node;

    .line 92
    .local v33, node:Lorg/w3c/dom/Node;
    const-string v6, "DATASOURCE"

    move-object/from16 v0, v33

    invoke-static {v0, v6}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->attributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 93
    .local v28, dataSource:Ljava/lang/String;
    const-string v6, "aim-yomi"

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 94
    invoke-static/range {v33 .. v33}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 95
    :cond_8
    const-string v6, "aim-betsumei"

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 96
    invoke-static/range {v33 .. v33}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 104
    .end local v28           #dataSource:Ljava/lang/String;
    .end local v33           #node:Lorg/w3c/dom/Node;
    .restart local v11       #albumTitle:Ljava/lang/String;
    .restart local v12       #albumTitleYomi:Ljava/lang/String;
    .restart local v22       #albumTitlePhoneticNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lorg/w3c/dom/Node;

    .line 105
    .restart local v33       #node:Lorg/w3c/dom/Node;
    const-string v6, "DATASOURCE"

    move-object/from16 v0, v33

    invoke-static {v0, v6}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->attributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 106
    .restart local v28       #dataSource:Ljava/lang/String;
    const-string v6, "aim-yomi"

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 107
    invoke-static/range {v33 .. v33}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 115
    .end local v28           #dataSource:Ljava/lang/String;
    .end local v33           #node:Lorg/w3c/dom/Node;
    .restart local v19       #albumReviewUrl:Ljava/lang/String;
    .restart local v20       #artistBiographyUrl:Ljava/lang/String;
    .restart local v21       #artistImageUrl:Ljava/lang/String;
    .restart local v37       #urlNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    :cond_a
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lorg/w3c/dom/Node;

    .line 116
    .restart local v33       #node:Lorg/w3c/dom/Node;
    const-string v6, "TYPE"

    move-object/from16 v0, v33

    invoke-static {v0, v6}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->attributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 117
    .local v38, urlType:Ljava/lang/String;
    const-string v6, "REVIEW"

    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    if-nez v19, :cond_b

    .line 118
    invoke-static/range {v33 .. v33}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_2

    .line 119
    :cond_b
    const-string v6, "ARTIST_BIOGRAPHY"

    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    if-nez v20, :cond_c

    .line 120
    invoke-static/range {v33 .. v33}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_2

    .line 121
    :cond_c
    const-string v6, "ARTIST_IMAGE"

    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v21, :cond_2

    .line 122
    invoke-static/range {v33 .. v33}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_2

    .line 165
    .end local v33           #node:Lorg/w3c/dom/Node;
    .end local v38           #urlType:Ljava/lang/String;
    .restart local v13       #albumReleaseYear:Ljava/lang/String;
    .restart local v14       #genre:Ljava/lang/String;
    .restart local v15       #genreId:Ljava/lang/String;
    .restart local v16       #albumLinkData:[Lcom/gracenote/mmid/MobileSDK/GNLinkData;
    .restart local v17       #albumTrackCount:Ljava/lang/String;
    .restart local v25       #coverArtData:[B
    .restart local v26       #coverArtSize:Ljava/lang/String;
    .restart local v27       #dataNode:Lorg/w3c/dom/Node;
    .restart local v29       #encoding:Ljava/lang/String;
    .restart local v31       #isInlineCoverArtEnabled:Z
    .restart local v32       #mimeType:Ljava/lang/String;
    .restart local v36       #type:Ljava/lang/String;
    :cond_d
    const/4 v4, 0x1

    goto/16 :goto_3

    .line 178
    .end local v29           #encoding:Ljava/lang/String;
    .end local v36           #type:Ljava/lang/String;
    .restart local v18       #coverArt:Lcom/gracenote/mmid/MobileSDK/GNCoverArt;
    .restart local v35       #trackNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    :cond_e
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Node;

    .local v5, trackNode:Lorg/w3c/dom/Node;
    move-object/from16 v4, p0

    move-object/from16 v6, p2

    .line 179
    invoke-direct/range {v4 .. v21}, Lcom/gracenote/mmid/MobileSDK/GNAlbumFetchFromIDPostHandler;->parseTrack(Lorg/w3c/dom/Node;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/gracenote/mmid/MobileSDK/GNLinkData;Ljava/lang/String;Lcom/gracenote/mmid/MobileSDK/GNCoverArt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method private parseAlbumSearchResponses(Lorg/w3c/dom/Node;)V
    .locals 11
    .parameter "responsesNode"

    .prologue
    .line 57
    invoke-static {p1}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->parseResponse(Lorg/w3c/dom/Node;)[Ljava/lang/Object;

    move-result-object v6

    .line 58
    .local v6, results:[Ljava/lang/Object;
    const/4 v8, 0x0

    aget-object v7, v6, v8

    check-cast v7, Ljava/lang/String;

    .line 59
    .local v7, status:Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v2, v6, v8

    check-cast v2, Ljava/lang/String;

    .line 60
    .local v2, errorMsgStr:Ljava/lang/String;
    const/4 v8, 0x2

    aget-object v3, v6, v8

    check-cast v3, Lorg/w3c/dom/Node;

    .line 64
    .local v3, responseNode:Lorg/w3c/dom/Node;
    const-string v8, "NO_MATCH"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 65
    iget-object v8, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    const/16 v9, 0x232c

    invoke-virtual {v8, v9}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->setStatusCode(I)V

    .line 82
    :goto_0
    return-void

    .line 67
    :cond_0
    const-string v8, "ERROR"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 68
    iget-object v8, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "webservices error: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->setErrMessage(Ljava/lang/String;)V

    .line 69
    iget-object v8, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    const/16 v9, 0x1388

    invoke-virtual {v8, v9}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->setErrCode(I)V

    goto :goto_0

    .line 72
    :cond_1
    iput-object v7, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumFetchFromIDPostHandler;->status:Ljava/lang/String;

    .line 75
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v4, responses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;>;"
    const-string v8, "ALBUM"

    invoke-static {v3, v8}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->childNodesNamed(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 77
    .local v1, albumNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_2

    .line 80
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    .line 81
    .local v5, responsesArr:[Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;
    iget-object v8, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    invoke-virtual {v8, v5}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->setResponses([Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;)V

    goto :goto_0

    .line 77
    .end local v5           #responsesArr:[Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 78
    .local v0, albumNode:Lorg/w3c/dom/Node;
    invoke-direct {p0, v0, v4}, Lcom/gracenote/mmid/MobileSDK/GNAlbumFetchFromIDPostHandler;->parseAlbum(Lorg/w3c/dom/Node;Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method private parseTrack(Lorg/w3c/dom/Node;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/gracenote/mmid/MobileSDK/GNLinkData;Ljava/lang/String;Lcom/gracenote/mmid/MobileSDK/GNCoverArt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    .parameter "coverArt"
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
            "Lcom/gracenote/mmid/MobileSDK/GNCoverArt;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 208
    .local p2, responses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;>;"
    const-string v2, "TRACK_NUM"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->singleChildNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 209
    .local v19, trackNum:Ljava/lang/String;
    const-string v2, "TITLE"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->singleChildNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 212
    .local v8, trackTitle:Ljava/lang/String;
    const-string v2, "GN_ID"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->singleChildNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 214
    .local v9, trackId:Ljava/lang/String;
    const/4 v10, 0x0

    .line 215
    .local v10, trackTitleYomi:Ljava/lang/String;
    const-string v2, "TITLE_PHONETIC"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->childNodesNamed(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v30

    .line 216
    .local v30, trackTitlePhoneticNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 224
    const-string v2, "ARTIST"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->optionalSingleChildNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 225
    .local v27, trackArtist:Ljava/lang/String;
    if-eqz v27, :cond_2

    .line 226
    move-object/from16 p4, v27

    .line 230
    const-string v2, "ARTIST_PHONETIC"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->childNodesNamed(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v24

    .line 231
    .local v24, artistPhoneticNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_5

    .line 245
    .end local v24           #artistPhoneticNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    :cond_2
    const/16 v28, 0x0

    .line 246
    .local v28, trackArtistBiography:Ljava/lang/String;
    const/16 v29, 0x0

    .line 250
    .local v29, trackArtistImage:Ljava/lang/String;
    const-string v2, "URL"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->childNodesNamed(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v31

    .line 251
    .local v31, urlTrackNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_7

    .line 261
    const/16 v20, 0x0

    .line 264
    .local v20, matchedPosition:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/gracenote/mmid/MobileSDK/GNLinkData;->parseLinkData(Lorg/w3c/dom/Node;)[Lcom/gracenote/mmid/MobileSDK/GNLinkData;

    move-result-object v17

    .line 269
    .local v17, trackLinkData:[Lcom/gracenote/mmid/MobileSDK/GNLinkData;
    move-object/from16 v12, p3

    .line 270
    .local v12, albumId:Ljava/lang/String;
    new-instance v1, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gracenote/mmid/MobileSDK/GNAlbumFetchFromIDPostHandler;->status:Ljava/lang/String;

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v11, p14

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    move-object/from16 v16, p12

    move-object/from16 v18, p13

    move-object/from16 v21, p15

    move-object/from16 v22, p16

    move-object/from16 v23, p17

    invoke-direct/range {v1 .. v23}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gracenote/mmid/MobileSDK/GNCoverArt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/gracenote/mmid/MobileSDK/GNLinkData;[Lcom/gracenote/mmid/MobileSDK/GNLinkData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    .local v1, oneResponse:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    return-void

    .line 216
    .end local v1           #oneResponse:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;
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

    .line 217
    .local v26, node:Lorg/w3c/dom/Node;
    const-string v3, "DATASOURCE"

    move-object/from16 v0, v26

    invoke-static {v0, v3}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->attributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 218
    .local v25, dataSource:Ljava/lang/String;
    const-string v3, "aim-yomi"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 219
    invoke-static/range {v26 .. v26}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 231
    .end local v25           #dataSource:Ljava/lang/String;
    .end local v26           #node:Lorg/w3c/dom/Node;
    .restart local v24       #artistPhoneticNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .restart local v27       #trackArtist:Ljava/lang/String;
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/w3c/dom/Node;

    .line 232
    .restart local v26       #node:Lorg/w3c/dom/Node;
    const-string v3, "DATASOURCE"

    move-object/from16 v0, v26

    invoke-static {v0, v3}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->attributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 233
    .restart local v25       #dataSource:Ljava/lang/String;
    const-string v3, "aim-yomi"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 234
    invoke-static/range {v26 .. v26}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p5

    goto/16 :goto_1

    .line 235
    :cond_6
    const-string v3, "aim-betsumei"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 236
    invoke-static/range {v26 .. v26}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p6

    goto/16 :goto_1

    .line 251
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

    .line 252
    .restart local v26       #node:Lorg/w3c/dom/Node;
    const-string v3, "TYPE"

    move-object/from16 v0, v26

    invoke-static {v0, v3}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->attributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 253
    .local v32, urlType:Ljava/lang/String;
    const-string v3, "ARTIST_BIOGRAPHY"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-nez v28, :cond_8

    .line 254
    invoke-static/range {v26 .. v26}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p16

    move-object/from16 v28, p16

    goto/16 :goto_2

    .line 255
    :cond_8
    const-string v3, "ARTIST_IMAGE"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v29, :cond_3

    .line 256
    invoke-static/range {v26 .. v26}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p17

    move-object/from16 v29, p17

    goto/16 :goto_2
.end method


# virtual methods
.method public formatXML()Ljava/lang/String;
    .locals 15

    .prologue
    .line 23
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    const-string v5, "clientId"

    invoke-virtual {v1, v5}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 24
    .local v10, clientId:Ljava/lang/String;
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    const-string v5, "userId"

    invoke-virtual {v1, v5}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getProtectedProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 25
    .local v13, userId:Ljava/lang/String;
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    const-string v5, "lang"

    invoke-virtual {v1, v5}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 26
    .local v11, lang:Ljava/lang/String;
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    const-string v5, "version"

    invoke-virtual {v1, v5}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 28
    .local v14, version:Ljava/lang/String;
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string v5, "result is null"

    invoke-static {v1, v5}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    .line 30
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    const-string v5, "webservices.isInlineCoverArtEnabled"

    invoke-virtual {v1, v5}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getBooleanProperty(Ljava/lang/String;)Z

    move-result v2

    .line 31
    .local v2, isInlineCoverArtEnabled:Z
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    const-string v5, "webservices.coverArtSizePreference"

    invoke-virtual {v1, v5}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 32
    .local v3, coverArtSizePreference:Ljava/lang/String;
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    const-string v5, "preferredLinkSource"

    invoke-virtual {v1, v5}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 34
    .local v9, preferredLinkSource:Ljava/lang/String;
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    const-string v5, "Content.contributor.biography"

    invoke-virtual {v1, v5}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getBooleanProperty(Ljava/lang/String;)Z

    move-result v6

    .line 35
    .local v6, isArtistBiographyExtendedEnabled:Z
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    const-string v5, "Content.review"

    invoke-virtual {v1, v5}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getBooleanProperty(Ljava/lang/String;)Z

    move-result v7

    .line 36
    .local v7, isReviewExtendedEnabled:Z
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    const-string v5, "Content.contributor.images"

    invoke-virtual {v1, v5}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getBooleanProperty(Ljava/lang/String;)Z

    move-result v8

    .line 38
    .local v8, isArtistImageExtendedEnabled:Z
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverArtPostHandler;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    const-string v5, "isGenreCoverArtEnabled"

    invoke-virtual {v1, v5}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getBooleanProperty(Ljava/lang/String;)Z

    move-result v4

    .line 40
    .local v4, isFallbackGenreCoverEnabled:Z
    new-instance v0, Lcom/gracenote/mmid/MobileSDK/GNAlbumFetchQuery;

    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumFetchFromIDPostHandler;->gnId:Ljava/lang/String;

    .line 41
    const/4 v5, 0x1

    .line 40
    invoke-direct/range {v0 .. v9}, Lcom/gracenote/mmid/MobileSDK/GNAlbumFetchQuery;-><init>(Ljava/lang/String;ZLjava/lang/String;ZZZZZLjava/lang/String;)V

    .line 43
    .local v0, query:Lcom/gracenote/mmid/MobileSDK/GNAlbumFetchQuery;
    invoke-static {v10, v13, v14, v11, v0}, Lcom/gracenote/mmid/MobileSDK/GNQuery;->formatAuthQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gracenote/mmid/MobileSDK/GNQuery;)Ljava/lang/String;

    move-result-object v12

    .line 44
    .local v12, queryXML:Ljava/lang/String;
    return-object v12

    .line 28
    .end local v0           #query:Lcom/gracenote/mmid/MobileSDK/GNAlbumFetchQuery;
    .end local v2           #isInlineCoverArtEnabled:Z
    .end local v3           #coverArtSizePreference:Ljava/lang/String;
    .end local v4           #isFallbackGenreCoverEnabled:Z
    .end local v6           #isArtistBiographyExtendedEnabled:Z
    .end local v7           #isReviewExtendedEnabled:Z
    .end local v8           #isArtistImageExtendedEnabled:Z
    .end local v9           #preferredLinkSource:Ljava/lang/String;
    .end local v12           #queryXML:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected parseResponses(Lorg/w3c/dom/Node;)V
    .locals 0
    .parameter "responsesNode"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/gracenote/mmid/MobileSDK/GNAlbumFetchFromIDPostHandler;->parseAlbumSearchResponses(Lorg/w3c/dom/Node;)V

    .line 52
    return-void
.end method
