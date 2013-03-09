.class Lcom/gracenote/mmid/MobileSDK/GNAlbumFetchQuery;
.super Lcom/gracenote/mmid/MobileSDK/GNQuery;
.source "GNAlbumFetchQuery.java"


# instance fields
.field private artistBiographyExtendedEnabled:Z

.field private artistImageExtendedEnabled:Z

.field private coverArtSizePreference:Ljava/lang/String;

.field private fallbackGenreCoverEnabled:Z

.field private gnId:Ljava/lang/String;

.field private inlineCoverArtEnabled:Z

.field private linkExtendedEnabled:Z

.field private preferredLinkSource:Ljava/lang/String;

.field private reviewExtendedEnabled:Z


# direct methods
.method constructor <init>(Ljava/lang/String;ZLjava/lang/String;ZZZZZLjava/lang/String;)V
    .locals 0
    .parameter "inGnId"
    .parameter "inInlineCoverArtArtEnabled"
    .parameter "inCoverArtSizePreference"
    .parameter "inFallbackGenreCoverEnabled"
    .parameter "inLinkExtendedEnabled"
    .parameter "inArtistBiographyExtendedEnabled"
    .parameter "inReviewExtendedEnabled"
    .parameter "inArtistImageExtendedEnabled"
    .parameter "inPreferredLinkSource"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/gracenote/mmid/MobileSDK/GNQuery;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumFetchQuery;->gnId:Ljava/lang/String;

    .line 27
    iput-boolean p2, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumFetchQuery;->inlineCoverArtEnabled:Z

    .line 28
    iput-object p3, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumFetchQuery;->coverArtSizePreference:Ljava/lang/String;

    .line 29
    iput-boolean p4, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumFetchQuery;->fallbackGenreCoverEnabled:Z

    .line 30
    iput-boolean p5, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumFetchQuery;->linkExtendedEnabled:Z

    .line 31
    iput-boolean p6, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumFetchQuery;->artistBiographyExtendedEnabled:Z

    .line 32
    iput-boolean p7, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumFetchQuery;->reviewExtendedEnabled:Z

    .line 33
    iput-boolean p8, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumFetchQuery;->artistImageExtendedEnabled:Z

    .line 34
    iput-object p9, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumFetchQuery;->preferredLinkSource:Ljava/lang/String;

    .line 37
    return-void
.end method

.method private coverFormatXML()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumFetchQuery;->inlineCoverArtEnabled:Z

    if-eqz v0, :cond_0

    .line 64
    const-string v0, "<OPTION>\n<PARAMETER>COVER_FORMAT</PARAMETER>\n<VALUE>DATA</VALUE>\n</OPTION>\n"

    .line 69
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private coverSizeXML()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumFetchQuery;->coverArtSizePreference:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<OPTION>\n  <PARAMETER>COVER_SIZE</PARAMETER>\n  <VALUE>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumFetchQuery;->coverArtSizePreference:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</VALUE>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 91
    const-string v1, "</OPTION>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private formatReturnCoverXML()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumFetchQuery;->inlineCoverArtEnabled:Z

    if-eqz v0, :cond_0

    .line 76
    const-string v0, "<OPTION>\n<PARAMETER>RETURN_COVER</PARAMETER>\n<VALUE>YES</VALUE>\n</OPTION>\n"

    .line 81
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private formatSelectExtendedXML()Ljava/lang/String;
    .locals 3

    .prologue
    .line 114
    const-string v0, ""

    .line 116
    .local v0, extendedOptionsString:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumFetchQuery;->linkExtendedEnabled:Z

    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ",LINK"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumFetchQuery;->artistBiographyExtendedEnabled:Z

    if-eqz v1, :cond_1

    .line 125
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    const-string v2, ",ARTIST_BIOGRAPHY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 126
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumFetchQuery;->reviewExtendedEnabled:Z

    if-eqz v1, :cond_2

    .line 134
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ",REVIEW"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    :cond_2
    :goto_2
    iget-boolean v1, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumFetchQuery;->artistImageExtendedEnabled:Z

    if-eqz v1, :cond_3

    .line 142
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ",ARTIST_IMAGE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    :cond_3
    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<OPTION>\n<PARAMETER>SELECT_EXTENDED</PARAMETER>\n<VALUE>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</VALUE>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 152
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</OPTION>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 150
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 154
    :goto_4
    return-object v1

    .line 120
    :cond_4
    const-string v0, "LINK"

    goto/16 :goto_0

    .line 129
    :cond_5
    const-string v0, "ARTIST_BIOGRAPHY"

    goto :goto_1

    .line 137
    :cond_6
    const-string v0, "REVIEW"

    goto :goto_2

    .line 145
    :cond_7
    const-string v0, "ARTIST_IMAGE"

    goto :goto_3

    .line 154
    :cond_8
    const-string v1, ""

    goto :goto_4
.end method

.method private genreCoverXML()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumFetchQuery;->fallbackGenreCoverEnabled:Z

    if-eqz v0, :cond_0

    .line 103
    const-string v0, "<OPTION>\n<PARAMETER>FALLBACK_GENRECOVER</PARAMETER>\n<VALUE>YES</VALUE>\n</OPTION>\n"

    .line 108
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private preferredLinkSourceXML()Ljava/lang/String;
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumFetchQuery;->preferredLinkSource:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<OPTION>\n  <PARAMETER>PREFER_XID</PARAMETER>\n  <VALUE>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumFetchQuery;->preferredLinkSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</VALUE>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 181
    const-string v1, "</OPTION>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method formatXML()Ljava/lang/String;
    .locals 6

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/gracenote/mmid/MobileSDK/GNAlbumFetchQuery;->coverFormatXML()Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, coverFormat:Ljava/lang/String;
    invoke-direct {p0}, Lcom/gracenote/mmid/MobileSDK/GNAlbumFetchQuery;->coverSizeXML()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, coverArtSizePreference:Ljava/lang/String;
    invoke-direct {p0}, Lcom/gracenote/mmid/MobileSDK/GNAlbumFetchQuery;->genreCoverXML()Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, fallbackGenreCover:Ljava/lang/String;
    iget-object v4, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumFetchQuery;->gnId:Ljava/lang/String;

    if-nez v4, :cond_0

    const-string v3, ""

    .line 47
    .local v3, gnIdStr:Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  <QUERY CMD=\"ALBUM_FETCH\">\n    <GN_ID>"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</GN_ID>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 49
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 50
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 51
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 52
    invoke-direct {p0}, Lcom/gracenote/mmid/MobileSDK/GNAlbumFetchQuery;->formatSelectExtendedXML()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 53
    invoke-direct {p0}, Lcom/gracenote/mmid/MobileSDK/GNAlbumFetchQuery;->formatReturnCoverXML()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 54
    invoke-direct {p0}, Lcom/gracenote/mmid/MobileSDK/GNAlbumFetchQuery;->preferredLinkSourceXML()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 55
    const-string v5, "  </QUERY>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 47
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 46
    return-object v4

    .line 44
    .end local v3           #gnIdStr:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumFetchQuery;->gnId:Ljava/lang/String;

    goto :goto_0
.end method
