.class Lcom/htc/music/browserlayer/DlnaBrowserActivity$5;
.super Landroid/os/CountDownTimer;
.source "DlnaBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/DlnaBrowserActivity;->showLoading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/DlnaBrowserActivity;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$5;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$5;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->showSpinner(Z)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$5;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->removeDialog(I)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$5;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mServerList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$5;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mServerList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$5;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->clearData()V

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$5;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    const v1, 0x7f07002f

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->showEmptyView(I)V

    :cond_1
    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
