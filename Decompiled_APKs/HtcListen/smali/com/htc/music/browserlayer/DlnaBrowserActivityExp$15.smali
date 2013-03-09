.class Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$15;
.super Ljava/lang/Object;
.source "DlnaBrowserActivityExp.java"

# interfaces
.implements Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;


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

    iput-object p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$15;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Lcom/htc/widget/MoreExpandableHtcListView;Landroid/view/View;IIJ)Z
    .locals 7

    invoke-static {p3, p4}, Lcom/htc/widget/MoreExpandableItemInfo;->getPosition(II)I

    move-result v3

    iget-object v4, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$15;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetFileType()I

    move-result v4

    const/16 v5, 0xb

    if-ne v4, v5, :cond_0

    const-string v4, "DLNA"

    const-string v5, "onChildClick, music folder"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$15;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    iget-object v5, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$15;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurStartIdx:J
    invoke-static {v5}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$100(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->cancelBrowse(Ljava/lang/Long;)V

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$15;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    invoke-virtual {v4, v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->getFilePath(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v4, "ServerName"

    iget-object v5, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$15;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurServerName:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$600(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "ServerID"

    iget-object v5, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$15;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurServerID:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$200(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "ContainerID"

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetParentID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "ContainerName"

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetContainerName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "IconPath"

    iget-object v5, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$15;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurServerImg:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$700(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "FilePath"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "startIdx"

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetStartIdx()J

    move-result-wide v5

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "InnerActivityType"

    const/4 v5, 0x6

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$15;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$15;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    invoke-virtual {v4, v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->startActivity(Landroid/content/Intent;)V

    :cond_0
    const/4 v4, 0x0

    return v4
.end method
