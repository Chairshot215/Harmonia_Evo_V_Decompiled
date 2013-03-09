.class Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "LocalMusicSearchActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcListItemSeparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

.field listItemText:Lcom/htc/widget/HtcListItem2LineText;

.field viewType:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldDrawOnThis()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public shouldSeparate(Ljava/lang/Object;)Z
    .locals 3

    move-object v0, p1

    check-cast v0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;

    iget v1, v0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter$ViewHolder;->viewType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
