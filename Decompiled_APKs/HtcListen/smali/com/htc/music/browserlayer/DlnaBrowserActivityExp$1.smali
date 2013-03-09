.class Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$1;
.super Landroid/os/CountDownTimer;
.source "DlnaBrowserActivityExp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->showLoading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$1;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$1;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->showSpinner(Z)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$1;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->removeDialog(I)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$1;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$1;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$1;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->clearData()V

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$1;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    const v1, 0x7f07002f

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->showEmptyView(I)V

    :cond_1
    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
