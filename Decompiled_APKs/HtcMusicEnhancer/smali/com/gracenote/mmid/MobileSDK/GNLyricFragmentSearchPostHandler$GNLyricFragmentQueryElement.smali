.class Lcom/gracenote/mmid/MobileSDK/GNLyricFragmentSearchPostHandler$GNLyricFragmentQueryElement;
.super Lcom/gracenote/mmid/MobileSDK/GNQuery;
.source "GNLyricFragmentSearchPostHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gracenote/mmid/MobileSDK/GNLyricFragmentSearchPostHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GNLyricFragmentQueryElement"
.end annotation


# instance fields
.field protected artist:Ljava/lang/String;

.field protected lyricFragment:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "inLyricFragment"
    .parameter "inArtist"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/gracenote/mmid/MobileSDK/GNQuery;-><init>()V

    .line 67
    invoke-static {p1}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNLyricFragmentSearchPostHandler$GNLyricFragmentQueryElement;->lyricFragment:Ljava/lang/String;

    .line 68
    invoke-static {p2}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNLyricFragmentSearchPostHandler$GNLyricFragmentQueryElement;->artist:Ljava/lang/String;

    .line 69
    return-void
.end method


# virtual methods
.method formatXML()Ljava/lang/String;
    .locals 4

    .prologue
    .line 74
    const-string v0, "<QUERY CMD=\"LYRIC_SEARCH\">\n<TEXT TYPE=\"ARTIST\">%s</TEXT>\n<TEXT TYPE=\"LYRIC_FRAGMENT\">%s</TEXT>\n</QUERY>\n"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 78
    iget-object v3, p0, Lcom/gracenote/mmid/MobileSDK/GNLyricFragmentSearchPostHandler$GNLyricFragmentQueryElement;->artist:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/gracenote/mmid/MobileSDK/GNLyricFragmentSearchPostHandler$GNLyricFragmentQueryElement;->lyricFragment:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 73
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 72
    return-object v0
.end method
