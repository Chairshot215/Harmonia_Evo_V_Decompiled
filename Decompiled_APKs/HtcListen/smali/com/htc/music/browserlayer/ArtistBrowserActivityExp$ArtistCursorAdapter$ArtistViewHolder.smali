.class Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter$ArtistViewHolder;
.super Ljava/lang/Object;
.source "ArtistBrowserActivityExp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ArtistViewHolder"
.end annotation


# instance fields
.field icon:Lcom/htc/widget/HtcListItemTileImage;

.field text:Lcom/htc/widget/HtcListItem2LineText;

.field final synthetic this$1:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter$ArtistViewHolder;->this$1:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter$ArtistViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter$ArtistViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    return-void
.end method
