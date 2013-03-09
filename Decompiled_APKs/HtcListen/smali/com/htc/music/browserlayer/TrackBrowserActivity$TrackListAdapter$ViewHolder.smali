.class Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;
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

.field listItemRearButton:Lcom/htc/widget/HtcListItemImageButton;

.field listItemRearIcon:Lcom/htc/widget/HtcListItemImageButton;

.field listItemText:Lcom/htc/widget/HtcListItem2LineText;

.field final synthetic this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
