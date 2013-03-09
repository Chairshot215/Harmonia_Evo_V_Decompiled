.class Lcom/htc/music/NowPlayingViewHelper$3;
.super Ljava/lang/Object;
.source "NowPlayingViewHelper.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/NowPlayingViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/NowPlayingViewHelper;


# direct methods
.method constructor <init>(Lcom/htc/music/NowPlayingViewHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper$3;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    .locals 6

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$3;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    iget-boolean v0, v0, Lcom/htc/music/NowPlayingViewHelper;->mIsPluginModeNowPlaying:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$3;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    #calls: Lcom/htc/music/NowPlayingViewHelper;->onListItemLongClick_Plugin(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    invoke-static/range {v0 .. v5}, Lcom/htc/music/NowPlayingViewHelper;->access$600(Lcom/htc/music/NowPlayingViewHelper;Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$3;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    #calls: Lcom/htc/music/NowPlayingViewHelper;->onListItemLongClick_Local(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    invoke-static/range {v0 .. v5}, Lcom/htc/music/NowPlayingViewHelper;->access$700(Lcom/htc/music/NowPlayingViewHelper;Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_0
.end method
