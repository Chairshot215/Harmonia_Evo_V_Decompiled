.class Lcom/gracenote/mmid/MobileSDK/GNAlbumSearchQuery;
.super Lcom/gracenote/mmid/MobileSDK/GNQuery;
.source "GNAlbumSearchQuery.java"


# instance fields
.field private album:Ljava/lang/String;

.field private artist:Ljava/lang/String;

.field private artistBiographyExtendedEnabled:Z

.field private artistImageExtendedEnabled:Z

.field private coverArtSizePreference:Ljava/lang/String;

.field private fallbackGenreCoverEnabled:Z

.field private inlineCoverArtEnabled:Z

.field private linkExtendedEnabled:Z

.field private preferredLinkSource:Ljava/lang/String;

.field private reviewExtendedEnabled:Z

.field private searchCmdMode:Ljava/lang/String;

.field private track:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZZZZLjava/lang/String;)V
    .locals 1
    .parameter "inArtist"
    .parameter "inAlbum"
    .parameter "inTrack"
    .parameter "inInlineCoverArtArtEnabled"
    .parameter "inCoverArtSizePreference"
    .parameter "inFallbackGenreCoverEnabled"
    .parameter "inLinkExtendedEnabled"
    .parameter "inArtistBiographyExtendedEnabled"
    .parameter "inReviewExtendedEnabled"
    .parameter "inArtistImageExtendedEnabled"
    .parameter "inPreferredLinkSource"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/gracenote/mmid/MobileSDK/GNQuery;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumSearchQuery;->artist:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumSearchQuery;->album:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumSearchQuery;->track:Ljava/lang/String;

    .line 38
    iput-boolean p4, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumSearchQuery;->inlineCoverArtEnabled:Z

    .line 39
    iput-object p5, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumSearchQuery;->coverArtSizePreference:Ljava/lang/String;

    .line 40
    iput-boolean p6, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumSearchQuery;->fallbackGenreCoverEnabled:Z

    .line 41
    iput-boolean p7, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumSearchQuery;->linkExtendedEnabled:Z

    .line 42
    iput-boolean p8, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumSearchQuery;->artistBiographyExtendedEnabled:Z

    .line 43
    iput-boolean p9, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumSearchQuery;->reviewExtendedEnabled:Z

    .line 44
    iput-boolean p10, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumSearchQuery;->artistImageExtendedEnabled:Z

    .line 45
    iput-object p11, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumSearchQuery;->preferredLinkSource:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumSearchQuery;->searchCmdMode:Ljava/lang/String;

    .line 59
    return-void
.end method

.method private coverFormatXML()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumSearchQuery;->inlineCoverArtEnabled:Z

    if-eqz v0, :cond_0

    .line 95
    const-string v0, "<OPTION>\n<PARAMETER>COVER_FORMAT</PARAMETER>\n<VALUE>DATA</VALUE>\n</OPTION>\n"

    .line 100
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private coverSizeXML()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumSearchQuery;->coverArtSizePreference:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<OPTION>\n  <PARAMETER>COVER_SIZE</PARAMETER>\n  <VALUE>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumSearchQuery;->coverArtSizePreference:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</VALUE>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 110
    const-string v1, "</OPTION>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private formatSelectExtendedXML()Ljava/lang/String;
    .locals 3

    .prologue
    .line 133
    const-string v0, ""

    .line 135
    .local v0, extendedOptionsString:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumSearchQuery;->linkExtendedEnabled:Z

    if-eqz v1, :cond_0

    .line 136
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ",LINK"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumSearchQuery;->artistBiographyExtendedEnabled:Z

    if-eqz v1, :cond_1

    .line 144
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    const-string v2, ",ARTIST_BIOGRAPHY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 145
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumSearchQuery;->reviewExtendedEnabled:Z

    if-eqz v1, :cond_2

    .line 153
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ",REVIEW"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    :cond_2
    :goto_2
    iget-boolean v1, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumSearchQuery;->artistImageExtendedEnabled:Z

    if-eqz v1, :cond_3

    .line 161
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ",ARTIST_IMAGE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    :cond_3
    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<OPTION>\n<PARAMETER>SELECT_EXTENDED</PARAMETER>\n<VALUE>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</VALUE>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 171
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</OPTION>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 169
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 173
    :goto_4
    return-object v1

    .line 139
    :cond_4
    const-string v0, "LINK"

    goto/16 :goto_0

    .line 148
    :cond_5
    const-string v0, "ARTIST_BIOGRAPHY"

    goto :goto_1

    .line 156
    :cond_6
    const-string v0, "REVIEW"

    goto :goto_2

    .line 164
    :cond_7
    const-string v0, "ARTIST_IMAGE"

    goto :goto_3

    .line 173
    :cond_8
    const-string v1, ""

    goto :goto_4
.end method

.method private genreCoverXML()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumSearchQuery;->fallbackGenreCoverEnabled:Z

    if-eqz v0, :cond_0

    .line 122
    const-string v0, "<OPTION>\n<PARAMETER>FALLBACK_GENRECOVER</PARAMETER>\n<VALUE>YES</VALUE>\n</OPTION>\n"

    .line 127
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private preferredLinkSourceXML()Ljava/lang/String;
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumSearchQuery;->preferredLinkSource:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<OPTION>\n  <PARAMETER>PREFER_XID</PARAMETER>\n  <VALUE>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumSearchQuery;->preferredLinkSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</VALUE>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 199
    const-string v1, "</OPTION>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method formatXML()Ljava/lang/String;
    .locals 9

    .prologue
    .line 62
    const-string v3, ""

    .line 63
    .local v3, coverFormat:Ljava/lang/String;
    const-string v2, ""

    .line 64
    .local v2, coverArtSizePreference:Ljava/lang/String;
    const-string v4, ""

    .line 65
    .local v4, fallbackGenreCover:Ljava/lang/String;
    iget-object v6, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumSearchQuery;->searchCmdMode:Ljava/lang/String;

    const-string v7, "SINGLE_BEST_COVER"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 66
    invoke-direct {p0}, Lcom/gracenote/mmid/MobileSDK/GNAlbumSearchQuery;->coverFormatXML()Ljava/lang/String;

    move-result-object v3

    .line 67
    invoke-direct {p0}, Lcom/gracenote/mmid/MobileSDK/GNAlbumSearchQuery;->coverSizeXML()Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-direct {p0}, Lcom/gracenote/mmid/MobileSDK/GNAlbumSearchQuery;->genreCoverXML()Ljava/lang/String;

    move-result-object v4

    .line 71
    :cond_0
    iget-object v6, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumSearchQuery;->artist:Ljava/lang/String;

    if-nez v6, :cond_1

    const-string v1, ""

    .line 72
    .local v1, artistStr:Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumSearchQuery;->album:Ljava/lang/String;

    if-nez v6, :cond_2

    const-string v0, ""

    .line 73
    .local v0, albumStr:Ljava/lang/String;
    :goto_1
    iget-object v6, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumSearchQuery;->track:Ljava/lang/String;

    if-nez v6, :cond_3

    const-string v5, ""

    .line 76
    .local v5, trackStr:Ljava/lang/String;
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v6, "  <QUERY CMD=\"ALBUM_SEARCH\">\n"

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    iget-object v6, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumSearchQuery;->searchCmdMode:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "    <MODE>"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumSearchQuery;->searchCmdMode:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "</MODE>"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_3
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 78
    const-string v7, "    <TEXT TYPE=\"ARTIST\">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</TEXT>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 79
    const-string v7, "    <TEXT TYPE=\"ALBUM_TITLE\">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</TEXT>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 80
    const-string v7, "    <TEXT TYPE=\"TRACK_TITLE\">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</TEXT>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 81
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 82
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 83
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 84
    invoke-direct {p0}, Lcom/gracenote/mmid/MobileSDK/GNAlbumSearchQuery;->formatSelectExtendedXML()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 85
    invoke-direct {p0}, Lcom/gracenote/mmid/MobileSDK/GNAlbumSearchQuery;->preferredLinkSourceXML()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 86
    const-string v7, "  </QUERY>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 76
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 75
    return-object v6

    .line 71
    .end local v0           #albumStr:Ljava/lang/String;
    .end local v1           #artistStr:Ljava/lang/String;
    .end local v5           #trackStr:Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumSearchQuery;->artist:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 72
    .restart local v1       #artistStr:Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumSearchQuery;->album:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 73
    .restart local v0       #albumStr:Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumSearchQuery;->track:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 77
    .restart local v5       #trackStr:Ljava/lang/String;
    :cond_4
    const-string v6, ""

    goto/16 :goto_3
.end method
