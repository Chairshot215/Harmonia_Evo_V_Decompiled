.class Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$1;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$1;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$1;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;
    invoke-static {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$3700(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/browserlayer/TrackBrowserActivity;

    move-result-object v1

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1500(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$1;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;
    invoke-static {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$3700(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/browserlayer/TrackBrowserActivity;

    move-result-object v1

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1500(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast p1, Lcom/htc/widget/HtcListItemCheckBox;

    invoke-virtual {p1}, Lcom/htc/widget/HtcListItemCheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "[PluginNowPlayingListActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uncheck position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$1;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;
    invoke-static {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$3700(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/browserlayer/TrackBrowserActivity;

    move-result-object v1

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1500(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "[PluginNowPlayingListActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Check position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$1;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;
    invoke-static {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$3700(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/browserlayer/TrackBrowserActivity;

    move-result-object v1

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1500(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
