.class Lcom/htc/music/browserlayer/DlnaBrowserActivity$6;
.super Landroid/os/Handler;
.source "DlnaBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/DlnaBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$6;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$6;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;
    invoke-static {v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->access$100(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$6;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;
    invoke-static {v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->access$100(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;->notifyDataSetChanged()V

    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$6;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mServerList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$6;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mInitial:Z
    invoke-static {v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->access$200(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$6;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mInitial:Z
    invoke-static {v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->access$200(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$6;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->clearData()V

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$6;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    const v1, 0x20c00a3

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->showEmptyView(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$6;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->clearData()V

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$6;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    const v1, 0x7f07002f

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->showEmptyView(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$6;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mServerList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$6;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->hideEmptyErrorView()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$6;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mServerList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$6;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mServerList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$6;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->clearData()V

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$6;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->showEmptyView()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$6;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->showSpinner(Z)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
