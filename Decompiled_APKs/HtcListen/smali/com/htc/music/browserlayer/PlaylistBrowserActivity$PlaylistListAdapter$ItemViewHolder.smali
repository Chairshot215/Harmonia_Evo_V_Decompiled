.class Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter$ItemViewHolder;
.super Ljava/lang/Object;
.source "PlaylistBrowserActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcListItemSeparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter$ItemViewHolder;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

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
