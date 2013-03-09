.class public Lcom/htc/dlnamiddlelayer/provider/DLNAUriMatch;
.super Ljava/lang/Object;
.source "DLNAUriMatch.java"


# static fields
.field static final ACCESS:I = 0x191

.field static final ACCESS_TABLE:Ljava/lang/String; = "access"

.field static final ALBUM:I = 0x1

.field static final ALBUM_TABLE:Ljava/lang/String; = "album"

.field static final AUDIO:I = 0x65

.field static final AUDIO_TABLE:Ljava/lang/String; = "audio"

.field static final DMC_URI_MATCHER:Landroid/content/UriMatcher; = null

.field static final GALLERY_DISABLE_DMC:I = 0x7d3

.field static final GALLERY_ENABLE_DMC:I = 0x7d2

.field static final GALLERY_LAUNCH_DMC:I = 0x7d1

.field static final MUSIC_DISABLE_DMC:I = 0x3eb

.field static final MUSIC_ENABLE_DMC:I = 0x3ea

.field static final MUSIC_LAUNCH_DMC:I = 0x3e9

.field static final SERVER:I = 0x12d

.field static final SERVER_TABLE:Ljava/lang/String; = "server"

.field static final URI_MATCHER:Landroid/content/UriMatcher; = null

.field static final VIDEO:I = 0xc9

.field static final VIDEO_TABLE:Ljava/lang/String; = "video"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 22
    new-instance v0, Landroid/content/UriMatcher;

    invoke-direct {v0, v4}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/htc/dlnamiddlelayer/provider/DLNAUriMatch;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 26
    sget-object v0, Lcom/htc/dlnamiddlelayer/provider/DLNAUriMatch;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "dlna"

    const-string v2, "images"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 27
    sget-object v0, Lcom/htc/dlnamiddlelayer/provider/DLNAUriMatch;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "dlna"

    const-string v2, "audios"

    const/16 v3, 0x65

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 28
    sget-object v0, Lcom/htc/dlnamiddlelayer/provider/DLNAUriMatch;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "dlna"

    const-string v2, "videos"

    const/16 v3, 0xc9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 29
    sget-object v0, Lcom/htc/dlnamiddlelayer/provider/DLNAUriMatch;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "dlna"

    const-string v2, "server"

    const/16 v3, 0x12d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 30
    sget-object v0, Lcom/htc/dlnamiddlelayer/provider/DLNAUriMatch;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "dlna"

    const-string v2, "access"

    const/16 v3, 0x191

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 40
    new-instance v0, Landroid/content/UriMatcher;

    invoke-direct {v0, v4}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/htc/dlnamiddlelayer/provider/DLNAUriMatch;->DMC_URI_MATCHER:Landroid/content/UriMatcher;

    .line 44
    sget-object v0, Lcom/htc/dlnamiddlelayer/provider/DLNAUriMatch;->DMC_URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "dlna"

    const-string v2, "music_launch_dmc"

    const/16 v3, 0x3e9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 45
    sget-object v0, Lcom/htc/dlnamiddlelayer/provider/DLNAUriMatch;->DMC_URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "dlna"

    const-string v2, "music_enable_dmc"

    const/16 v3, 0x3ea

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 46
    sget-object v0, Lcom/htc/dlnamiddlelayer/provider/DLNAUriMatch;->DMC_URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "dlna"

    const-string v2, "music_disable_dmc"

    const/16 v3, 0x3eb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 47
    sget-object v0, Lcom/htc/dlnamiddlelayer/provider/DLNAUriMatch;->DMC_URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "dlna"

    const-string v2, "gallery_launch_dmc"

    const/16 v3, 0x7d1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 48
    sget-object v0, Lcom/htc/dlnamiddlelayer/provider/DLNAUriMatch;->DMC_URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "dlna"

    const-string v2, "gallery_enable_dmc"

    const/16 v3, 0x7d2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 49
    sget-object v0, Lcom/htc/dlnamiddlelayer/provider/DLNAUriMatch;->DMC_URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "dlna"

    const-string v2, "gallery_disable_dmc"

    const/16 v3, 0x7d3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static GetDMCRequestType(Landroid/net/Uri;)I
    .locals 1
    .parameter "uri"

    .prologue
    .line 85
    sget-object v0, Lcom/htc/dlnamiddlelayer/provider/DLNAUriMatch;->DMC_URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method static GetTableName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    .line 54
    sget-object v2, Lcom/htc/dlnamiddlelayer/provider/DLNAUriMatch;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 55
    .local v0, match:I
    const-string v1, ""

    .line 57
    .local v1, s:Ljava/lang/String;
    sparse-switch v0, :sswitch_data_0

    .line 80
    :goto_0
    return-object v1

    .line 60
    :sswitch_0
    const-string v1, "album"

    .line 61
    goto :goto_0

    .line 64
    :sswitch_1
    const-string v1, "audio"

    .line 65
    goto :goto_0

    .line 68
    :sswitch_2
    const-string v1, "video"

    .line 69
    goto :goto_0

    .line 72
    :sswitch_3
    const-string v1, "server"

    .line 73
    goto :goto_0

    .line 76
    :sswitch_4
    const-string v1, "access"

    goto :goto_0

    .line 57
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x65 -> :sswitch_1
        0xc9 -> :sswitch_2
        0x12d -> :sswitch_3
        0x191 -> :sswitch_4
    .end sparse-switch
.end method
