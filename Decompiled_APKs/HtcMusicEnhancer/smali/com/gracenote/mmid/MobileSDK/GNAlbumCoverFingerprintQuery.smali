.class Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverFingerprintQuery;
.super Lcom/gracenote/mmid/MobileSDK/GNQuery;
.source "GNAlbumCoverFingerprintQuery.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private artistBiographyExtendedEnabled:Z

.field private artistImageExtendedEnabled:Z

.field private coverArtSizePreference:Ljava/lang/String;

.field private fallbackGenreCoverEnabled:Z

.field private fingerprint:Lcom/gracenote/mmid/MobileSDK/GNFingerprintQueryElement;

.field private inlineCoverArtEnabled:Z

.field private linkExtendedEnabled:Z

.field private preferredLinkSource:Ljava/lang/String;

.field private retunMatchedPositionEnabled:Z

.field private reviewExtendedEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverFingerprintQuery;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverFingerprintQuery;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/gracenote/mmid/MobileSDK/GNFingerprintQueryElement;ZLjava/lang/String;ZZZZZZLjava/lang/String;)V
    .locals 1
    .parameter "inFingerprint"
    .parameter "inInlineCoverArtArtEnabled"
    .parameter "inCoverArtSizePreference"
    .parameter "inFallbackGenreCoverEnabled"
    .parameter "inLinkExtendedEnabled"
    .parameter "inArtistBiographyExtendedEnabled"
    .parameter "inReviewExtendedEnabled"
    .parameter "inArtistImageExtendedEnabled"
    .parameter "inRetunMatchedPositionEnabled"
    .parameter "inPreferredLinkSource"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/gracenote/mmid/MobileSDK/GNQuery;-><init>()V

    .line 27
    sget-boolean v0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverFingerprintQuery;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 28
    :cond_0
    iput-object p1, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverFingerprintQuery;->fingerprint:Lcom/gracenote/mmid/MobileSDK/GNFingerprintQueryElement;

    .line 29
    iput-boolean p2, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverFingerprintQuery;->inlineCoverArtEnabled:Z

    .line 30
    iput-object p3, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverFingerprintQuery;->coverArtSizePreference:Ljava/lang/String;

    .line 31
    iput-boolean p4, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverFingerprintQuery;->fallbackGenreCoverEnabled:Z

    .line 32
    iput-boolean p5, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverFingerprintQuery;->linkExtendedEnabled:Z

    .line 33
    iput-object p10, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverFingerprintQuery;->preferredLinkSource:Ljava/lang/String;

    .line 34
    iput-boolean p6, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverFingerprintQuery;->artistBiographyExtendedEnabled:Z

    .line 35
    iput-boolean p7, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverFingerprintQuery;->reviewExtendedEnabled:Z

    .line 36
    iput-boolean p8, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverFingerprintQuery;->artistImageExtendedEnabled:Z

    .line 37
    iput-boolean p9, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverFingerprintQuery;->retunMatchedPositionEnabled:Z

    .line 38
    return-void
.end method

.method private coverFormatXML()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverFingerprintQuery;->inlineCoverArtEnabled:Z

    if-eqz v0, :cond_0

    .line 66
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
    .line 77
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverFingerprintQuery;->coverArtSizePreference:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<OPTION>\n  <PARAMETER>COVER_SIZE</PARAMETER>\n  <VALUE>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverFingerprintQuery;->coverArtSizePreference:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 80
    const-string v1, "</VALUE>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</OPTION>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private formatReturnMatachedPositionXML()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverFingerprintQuery;->retunMatchedPositionEnabled:Z

    if-eqz v0, :cond_0

    .line 54
    const-string v0, "<OPTION>\n<PARAMETER>RETURN_MATCHED_POSITION</PARAMETER>\n<VALUE>YES</VALUE>\n</OPTION>\n"

    .line 57
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private formatSelectExtendedXML()Ljava/lang/String;
    .locals 3

    .prologue
    .line 101
    const-string v0, ""

    .line 103
    .local v0, extendedOptionsString:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverFingerprintQuery;->linkExtendedEnabled:Z

    if-eqz v1, :cond_0

    .line 104
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ",LINK"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverFingerprintQuery;->artistBiographyExtendedEnabled:Z

    if-eqz v1, :cond_1

    .line 112
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    const-string v2, ",ARTIST_BIOGRAPHY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 113
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverFingerprintQuery;->reviewExtendedEnabled:Z

    if-eqz v1, :cond_2

    .line 121
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ",REVIEW"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    :cond_2
    :goto_2
    iget-boolean v1, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverFingerprintQuery;->artistImageExtendedEnabled:Z

    if-eqz v1, :cond_3

    .line 129
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ",ARTIST_IMAGE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    :cond_3
    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<OPTION>\n<PARAMETER>SELECT_EXTENDED</PARAMETER>\n<VALUE>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</VALUE>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 139
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</OPTION>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 137
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 141
    :goto_4
    return-object v1

    .line 107
    :cond_4
    const-string v0, "LINK"

    goto/16 :goto_0

    .line 116
    :cond_5
    const-string v0, "ARTIST_BIOGRAPHY"

    goto :goto_1

    .line 124
    :cond_6
    const-string v0, "REVIEW"

    goto :goto_2

    .line 132
    :cond_7
    const-string v0, "ARTIST_IMAGE"

    goto :goto_3

    .line 141
    :cond_8
    const-string v1, ""

    goto :goto_4
.end method

.method private genreCoverXML()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverFingerprintQuery;->fallbackGenreCoverEnabled:Z

    if-eqz v0, :cond_0

    .line 91
    const-string v0, "<OPTION>\n<PARAMETER>FALLBACK_GENRECOVER</PARAMETER>\n<VALUE>YES</VALUE>\n</OPTION>\n"

    .line 95
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private preferredLinkSourceXML()Ljava/lang/String;
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverFingerprintQuery;->preferredLinkSource:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<OPTION>\n  <PARAMETER>PREFER_XID</PARAMETER>\n  <VALUE>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverFingerprintQuery;->preferredLinkSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 163
    const-string v1, "</VALUE>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</OPTION>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method formatXML()Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n<QUERY CMD=\"ALBUM_FINGERPRINT\">\n<MODE>SINGLE_BEST_COVER</MODE>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverFingerprintQuery;->fingerprint:Lcom/gracenote/mmid/MobileSDK/GNFingerprintQueryElement;

    invoke-virtual {v1}, Lcom/gracenote/mmid/MobileSDK/GNFingerprintQueryElement;->formatXML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverFingerprintQuery;->coverFormatXML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 44
    invoke-direct {p0}, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverFingerprintQuery;->coverSizeXML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverFingerprintQuery;->genreCoverXML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 45
    invoke-direct {p0}, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverFingerprintQuery;->formatSelectExtendedXML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverFingerprintQuery;->preferredLinkSourceXML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 46
    invoke-direct {p0}, Lcom/gracenote/mmid/MobileSDK/GNAlbumCoverFingerprintQuery;->formatReturnMatachedPositionXML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 47
    const-string v1, "</QUERY>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
