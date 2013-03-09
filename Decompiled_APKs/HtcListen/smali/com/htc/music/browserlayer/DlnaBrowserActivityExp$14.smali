.class Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$14;
.super Ljava/lang/Object;
.source "DlnaBrowserActivityExp.java"

# interfaces
.implements Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$14;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupCollapse(I)V
    .locals 3

    const-string v0, "DLNA"

    const-string v1, "onGroupCollapse"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$14;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;
    invoke-static {v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$800(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Lcom/htc/widget/MoreExpandableHtcListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->getCurrentExpanded()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$14;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->setTitle(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$14;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$14;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurStartIdx:J
    invoke-static {v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$100(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->cancelBrowse(Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$14;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->showSpinner(Z)V

    return-void
.end method
