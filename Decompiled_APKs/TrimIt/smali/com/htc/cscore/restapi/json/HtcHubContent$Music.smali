.class public Lcom/htc/cscore/restapi/json/HtcHubContent$Music;
.super Lcom/htc/cscore/restapi/json/HtcHubContent$HtcHubItem;
.source "HtcHubContent.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/json/HtcHubContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Music"
.end annotation


# instance fields
.field public ASIN:Ljava/lang/String;

.field public AlbumID:Ljava/lang/String;

.field public Artist:Ljava/lang/String;

.field public ArtistID:Ljava/lang/String;

.field public Rating:Ljava/lang/String;

.field public ReleaseDate:Ljava/lang/String;

.field public Tracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/restapi/json/HtcHubContent$MusicTrack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/htc/cscore/restapi/json/HtcHubContent$HtcHubItem;-><init>()V

    return-void
.end method
