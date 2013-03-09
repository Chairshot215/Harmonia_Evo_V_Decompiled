.class Lcom/gracenote/mmid/MobileSDK/GNLyricFragmentSearchPostHandler;
.super Ljava/lang/Object;
.source "GNLyricFragmentSearchPostHandler.java"

# interfaces
.implements Lcom/gracenote/mmid/MobileSDK/GNPostHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gracenote/mmid/MobileSDK/GNLyricFragmentSearchPostHandler$GNLyricFragmentQueryElement;
    }
.end annotation


# instance fields
.field protected artist:Ljava/lang/String;

.field private callback:Lcom/gracenote/mmid/MobileSDK/FPXCallback;

.field protected config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

.field protected httpStatusCode:I

.field protected lyricFragment:Ljava/lang/String;

.field protected result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

.field protected resultData:Ljava/lang/String;

.field protected resultReady:Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;


# direct methods
.method constructor <init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNSearchResult;Lcom/gracenote/mmid/MobileSDK/FPXCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "inConfig"
    .parameter "inResultReady"
    .parameter "inResult"
    .parameter "inCallback"
    .parameter "inLyricFragment"
    .parameter "inArtist"

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/gracenote/mmid/MobileSDK/GNLyricFragmentSearchPostHandler;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNLyricFragmentSearchPostHandler;->resultData:Ljava/lang/String;

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/gracenote/mmid/MobileSDK/GNLyricFragmentSearchPostHandler;->httpStatusCode:I

    .line 34
    iput-object p2, p0, Lcom/gracenote/mmid/MobileSDK/GNLyricFragmentSearchPostHandler;->resultReady:Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;

    .line 35
    iput-object p3, p0, Lcom/gracenote/mmid/MobileSDK/GNLyricFragmentSearchPostHandler;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    .line 36
    iput-object p4, p0, Lcom/gracenote/mmid/MobileSDK/GNLyricFragmentSearchPostHandler;->callback:Lcom/gracenote/mmid/MobileSDK/FPXCallback;

    .line 37
    iput-object p5, p0, Lcom/gracenote/mmid/MobileSDK/GNLyricFragmentSearchPostHandler;->lyricFragment:Ljava/lang/String;

    .line 38
    iput-object p6, p0, Lcom/gracenote/mmid/MobileSDK/GNLyricFragmentSearchPostHandler;->artist:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public doPost(Ljava/lang/String;)V
    .locals 6
    .parameter "queryXML"

    .prologue
    .line 83
    new-instance v0, Lcom/gracenote/mmid/MobileSDK/FpxWebService;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/gracenote/mmid/MobileSDK/GNLyricFragmentSearchPostHandler;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    iget-object v5, p0, Lcom/gracenote/mmid/MobileSDK/GNLyricFragmentSearchPostHandler;->callback:Lcom/gracenote/mmid/MobileSDK/FPXCallback;

    move-object v1, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/gracenote/mmid/MobileSDK/FpxWebService;-><init>(Ljava/lang/String;ZLcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNPostHandler;Lcom/gracenote/mmid/MobileSDK/FPXCallback;)V

    .line 85
    .local v0, myService:Lcom/gracenote/mmid/MobileSDK/FpxWebService;
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/gracenote/mmid/MobileSDK/FpxWebService;->setTimerAndWebservicesBlockingPost(I)V

    .line 86
    invoke-virtual {v0}, Lcom/gracenote/mmid/MobileSDK/FpxWebService;->webservicesBlockingPost()V

    .line 87
    invoke-virtual {v0}, Lcom/gracenote/mmid/MobileSDK/FpxWebService;->cancelTimer()V

    .line 88
    return-void
.end method

.method public formatXML()Ljava/lang/String;
    .locals 8

    .prologue
    .line 46
    iget-object v6, p0, Lcom/gracenote/mmid/MobileSDK/GNLyricFragmentSearchPostHandler;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    const-string v7, "clientId"

    invoke-virtual {v6, v7}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, clientId:Ljava/lang/String;
    iget-object v6, p0, Lcom/gracenote/mmid/MobileSDK/GNLyricFragmentSearchPostHandler;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    const-string v7, "userId"

    invoke-virtual {v6, v7}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getProtectedProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 48
    .local v4, userId:Ljava/lang/String;
    iget-object v6, p0, Lcom/gracenote/mmid/MobileSDK/GNLyricFragmentSearchPostHandler;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    const-string v7, "lang"

    invoke-virtual {v6, v7}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, lang:Ljava/lang/String;
    iget-object v6, p0, Lcom/gracenote/mmid/MobileSDK/GNLyricFragmentSearchPostHandler;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    const-string v7, "version"

    invoke-virtual {v6, v7}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 51
    .local v5, version:Ljava/lang/String;
    iget-object v6, p0, Lcom/gracenote/mmid/MobileSDK/GNLyricFragmentSearchPostHandler;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    const-string v7, "result is null"

    invoke-static {v6, v7}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    .line 55
    new-instance v2, Lcom/gracenote/mmid/MobileSDK/GNLyricFragmentSearchPostHandler$GNLyricFragmentQueryElement;

    iget-object v6, p0, Lcom/gracenote/mmid/MobileSDK/GNLyricFragmentSearchPostHandler;->lyricFragment:Ljava/lang/String;

    iget-object v7, p0, Lcom/gracenote/mmid/MobileSDK/GNLyricFragmentSearchPostHandler;->artist:Ljava/lang/String;

    invoke-direct {v2, v6, v7}, Lcom/gracenote/mmid/MobileSDK/GNLyricFragmentSearchPostHandler$GNLyricFragmentQueryElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .local v2, query:Lcom/gracenote/mmid/MobileSDK/GNQuery;
    invoke-static {v0, v4, v5, v1, v2}, Lcom/gracenote/mmid/MobileSDK/GNQuery;->formatAuthQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gracenote/mmid/MobileSDK/GNQuery;)Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, queryXML:Ljava/lang/String;
    return-object v3

    .line 51
    .end local v2           #query:Lcom/gracenote/mmid/MobileSDK/GNQuery;
    .end local v3           #queryXML:Ljava/lang/String;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method getResultData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNLyricFragmentSearchPostHandler;->resultData:Ljava/lang/String;

    return-object v0
.end method

.method protected parseResponses(Lorg/w3c/dom/Node;)V
    .locals 34
    .parameter "responsesNode"

    .prologue
    .line 127
    invoke-static/range {p1 .. p1}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->parseResponse(Lorg/w3c/dom/Node;)[Ljava/lang/Object;

    move-result-object v32

    .line 128
    .local v32, results:[Ljava/lang/Object;
    const/4 v4, 0x0

    aget-object v2, v32, v4

    check-cast v2, Ljava/lang/String;

    .line 129
    .local v2, status:Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v25, v32, v4

    check-cast v25, Ljava/lang/String;

    .line 130
    .local v25, errorMsgStr:Ljava/lang/String;
    const/4 v4, 0x2

    aget-object v29, v32, v4

    check-cast v29, Lorg/w3c/dom/Node;

    .line 134
    .local v29, responseNode:Lorg/w3c/dom/Node;
    const-string v4, "NO_MATCH"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 135
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gracenote/mmid/MobileSDK/GNLyricFragmentSearchPostHandler;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    const/16 v6, 0x232b

    invoke-virtual {v4, v6}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->setStatusCode(I)V

    .line 197
    :goto_0
    return-void

    .line 137
    :cond_0
    const-string v4, "ERROR"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 138
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gracenote/mmid/MobileSDK/GNLyricFragmentSearchPostHandler;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "webservices error: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->setErrMessage(Ljava/lang/String;)V

    .line 139
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gracenote/mmid/MobileSDK/GNLyricFragmentSearchPostHandler;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    const/16 v6, 0x1388

    invoke-virtual {v4, v6}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->setErrCode(I)V

    goto :goto_0

    .line 145
    :cond_1
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v30, responses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;>;"
    const-string v4, "LYRIC"

    move-object/from16 v0, v29

    invoke-static {v0, v4}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->childNodesNamed(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v28

    .line 149
    .local v28, lyricNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v33

    :goto_1
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 195
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v31

    check-cast v31, [Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    .line 196
    .local v31, responsesArr:[Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gracenote/mmid/MobileSDK/GNLyricFragmentSearchPostHandler;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->setResponses([Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;)V

    goto :goto_0

    .line 149
    .end local v31           #responsesArr:[Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;
    :cond_2
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lorg/w3c/dom/Node;

    .line 150
    .local v27, lyricNode:Lorg/w3c/dom/Node;
    const-string v4, "GN_ID"

    move-object/from16 v0, v27

    invoke-static {v0, v4}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->singleChildNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 151
    .local v26, lyricId:Ljava/lang/String;
    const-string v4, "ARTIST"

    move-object/from16 v0, v27

    invoke-static {v0, v4}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->singleChildNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 152
    .local v5, artist:Ljava/lang/String;
    const-string v4, "TITLE"

    move-object/from16 v0, v27

    invoke-static {v0, v4}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->singleChildNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 154
    .local v8, trackTitle:Ljava/lang/String;
    const-string v9, ""

    .line 159
    .local v9, trackId:Ljava/lang/String;
    const/4 v3, 0x0

    .line 160
    .local v3, album:Ljava/lang/String;
    const-string v4, "ALBUM"

    move-object/from16 v0, v27

    invoke-static {v0, v4}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->childNodesNamed(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v24

    .line 161
    .local v24, albumNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_3

    .line 162
    const-string v4, "ALBUM"

    move-object/from16 v0, v27

    invoke-static {v0, v4}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->singleChildNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 164
    :cond_3
    const/4 v12, 0x0

    .line 166
    .local v12, albumId:Ljava/lang/String;
    const/16 v16, 0x0

    check-cast v16, [Lcom/gracenote/mmid/MobileSDK/GNLinkData;

    .line 167
    .local v16, albumLinkData:[Lcom/gracenote/mmid/MobileSDK/GNLinkData;
    const/16 v17, 0x0

    check-cast v17, [Lcom/gracenote/mmid/MobileSDK/GNLinkData;

    .line 169
    .local v17, trackLinkData:[Lcom/gracenote/mmid/MobileSDK/GNLinkData;
    const/4 v13, 0x0

    .line 170
    .local v13, albumReleaseYear:Ljava/lang/String;
    const/16 v18, 0x0

    .line 171
    .local v18, albumTrackCount:Ljava/lang/String;
    const/16 v19, 0x0

    .line 174
    .local v19, trackNumber:Ljava/lang/String;
    const/16 v20, 0x0

    .line 176
    .local v20, matchedPosition:Ljava/lang/String;
    const/16 v21, 0x0

    .line 178
    .local v21, albumReviewUrl:Ljava/lang/String;
    const/16 v22, 0x0

    .line 180
    .local v22, artistBiographyUrl:Ljava/lang/String;
    const/16 v23, 0x0

    .line 184
    .local v23, artistImageUrl:Ljava/lang/String;
    new-instance v1, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;

    .line 185
    const/4 v4, 0x0

    .line 186
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 187
    const/4 v10, 0x0

    .line 188
    const/4 v11, 0x0

    .line 191
    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 184
    invoke-direct/range {v1 .. v23}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gracenote/mmid/MobileSDK/GNCoverArt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/gracenote/mmid/MobileSDK/GNLinkData;[Lcom/gracenote/mmid/MobileSDK/GNLinkData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .local v1, oneResponse:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;
    move-object/from16 v0, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public postResult(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .parameter "resultData"
    .parameter "httpStatusCode"
    .parameter "errorMessage"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/gracenote/mmid/MobileSDK/GNLyricFragmentSearchPostHandler;->resultData:Ljava/lang/String;

    .line 98
    iput p2, p0, Lcom/gracenote/mmid/MobileSDK/GNLyricFragmentSearchPostHandler;->httpStatusCode:I

    .line 100
    iget v1, p0, Lcom/gracenote/mmid/MobileSDK/GNLyricFragmentSearchPostHandler;->httpStatusCode:I

    const/16 v2, 0x198

    if-ne v1, v2, :cond_0

    .line 102
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNLyricFragmentSearchPostHandler;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    const/16 v2, 0x1389

    invoke-virtual {v1, v2}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->setErrCode(I)V

    .line 103
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNLyricFragmentSearchPostHandler;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "webservices http status: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/gracenote/mmid/MobileSDK/GNLyricFragmentSearchPostHandler;->httpStatusCode:I

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

    .line 122
    :goto_0
    return-void

    .line 104
    :cond_0
    iget v1, p0, Lcom/gracenote/mmid/MobileSDK/GNLyricFragmentSearchPostHandler;->httpStatusCode:I

    const/16 v2, 0x1f4

    if-ne v1, v2, :cond_1

    .line 105
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNLyricFragmentSearchPostHandler;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    const/16 v2, 0x138c

    invoke-virtual {v1, v2}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->setErrCode(I)V

    .line 106
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNLyricFragmentSearchPostHandler;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    invoke-virtual {v1, p3}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->setErrMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_1
    iget v1, p0, Lcom/gracenote/mmid/MobileSDK/GNLyricFragmentSearchPostHandler;->httpStatusCode:I

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_2

    .line 109
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNLyricFragmentSearchPostHandler;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    const/16 v2, 0x1388

    invoke-virtual {v1, v2}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->setErrCode(I)V

    .line 110
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNLyricFragmentSearchPostHandler;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "webservices http status: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/gracenote/mmid/MobileSDK/GNLyricFragmentSearchPostHandler;->httpStatusCode:I

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

    .line 112
    :cond_2
    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :goto_1
    const-string v2, "resultData is null"

    invoke-static {v1, v2}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNLyricFragmentSearchPostHandler;->resultData:Ljava/lang/String;

    invoke-static {v1}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->parseDOM(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 114
    .local v0, rootNode:Lorg/w3c/dom/Node;
    if-nez v0, :cond_4

    .line 116
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNLyricFragmentSearchPostHandler;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    const/16 v2, 0x138a

    invoke-virtual {v1, v2}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->setErrCode(I)V

    .line 117
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNLyricFragmentSearchPostHandler;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    const-string v2, "webservices xml can\'t be parsed"

    invoke-virtual {v1, v2}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->setErrMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 112
    .end local v0           #rootNode:Lorg/w3c/dom/Node;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 119
    .restart local v0       #rootNode:Lorg/w3c/dom/Node;
    :cond_4
    invoke-virtual {p0, v0}, Lcom/gracenote/mmid/MobileSDK/GNLyricFragmentSearchPostHandler;->parseResponses(Lorg/w3c/dom/Node;)V

    goto :goto_0
.end method
