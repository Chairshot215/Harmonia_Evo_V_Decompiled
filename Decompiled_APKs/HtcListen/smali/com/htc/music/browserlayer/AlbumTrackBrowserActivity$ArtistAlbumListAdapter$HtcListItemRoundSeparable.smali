.class Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$HtcListItemRoundSeparable;
.super Ljava/lang/Object;
.source "AlbumTrackBrowserActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcListItemSeparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HtcListItemRoundSeparable"
.end annotation


# instance fields
.field mDraw:Z

.field mSeparate:Z

.field final synthetic this$1:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;


# direct methods
.method public constructor <init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$HtcListItemRoundSeparable;->this$1:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$HtcListItemRoundSeparable;->mSeparate:Z

    iput-boolean p3, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$HtcListItemRoundSeparable;->mDraw:Z

    return-void
.end method


# virtual methods
.method public shouldDrawOnThis()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$HtcListItemRoundSeparable;->mDraw:Z

    return v0
.end method

.method public shouldSeparate(Ljava/lang/Object;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$HtcListItemRoundSeparable;->mSeparate:Z

    return v0
.end method
