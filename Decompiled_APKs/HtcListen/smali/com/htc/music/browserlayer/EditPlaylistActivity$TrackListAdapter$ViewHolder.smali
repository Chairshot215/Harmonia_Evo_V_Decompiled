.class Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "EditPlaylistActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcListItemSeparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field buffer1:Landroid/database/CharArrayBuffer;

.field buffer2:[C

.field listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

.field listItemFrontCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

.field listItemRearIcon:Lcom/htc/widget/HtcListItemImageButton;

.field listItemText:Lcom/htc/widget/HtcListItem2LineText;

.field final synthetic this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter$ViewHolder;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

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
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
