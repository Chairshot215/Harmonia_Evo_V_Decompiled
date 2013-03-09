.class Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$13;
.super Ljava/lang/Object;
.source "DlnaBrowserActivityExp.java"

# interfaces
.implements Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;


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

    iput-object p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$13;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupExpand(I)V
    .locals 8

    const-wide/16 v6, 0x0

    iget-object v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$13;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetContainerID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->IsContainer()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$13;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    iget-object v4, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$13;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurStartIdx:J
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$100(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->cancelBrowse(Ljava/lang/Long;)V

    iget-object v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$13;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #setter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurServerID:Ljava/lang/String;
    invoke-static {v3, v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$202(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$13;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #setter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurContainID:Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$302(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$13;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetContainerName()Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurContainName:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$402(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$13;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #setter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurItem:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;
    invoke-static {v3, v2}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$502(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;)Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;

    iget-object v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$13;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    invoke-virtual {v3, v1, v0, v6, v7}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->browse(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$13;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    iget-object v4, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$13;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurStartIdx:J
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$100(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->cancelBrowse(Ljava/lang/Long;)V

    iget-object v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$13;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #setter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurServerID:Ljava/lang/String;
    invoke-static {v3, v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$202(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$13;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetName()Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurServerName:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$602(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$13;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetImgPath()Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurServerImg:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$702(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$13;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    const-string v4, "0"

    #setter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurContainID:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$302(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$13;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #setter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurItem:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;
    invoke-static {v3, v2}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$502(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;)Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;

    iget-object v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$13;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    iget-object v4, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$13;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurContainID:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$300(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4, v6, v7}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->browse(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method
