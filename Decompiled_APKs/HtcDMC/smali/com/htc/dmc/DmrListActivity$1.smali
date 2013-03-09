.class Lcom/htc/dmc/DmrListActivity$1;
.super Landroid/os/CountDownTimer;
.source "DmrListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/dmc/DmrListActivity;->showLoading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dmc/DmrListActivity;


# direct methods
.method constructor <init>(Lcom/htc/dmc/DmrListActivity;JJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 671
    iput-object p1, p0, Lcom/htc/dmc/DmrListActivity$1;->this$0:Lcom/htc/dmc/DmrListActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 677
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity$1;->this$0:Lcom/htc/dmc/DmrListActivity;

    invoke-virtual {v0, v1}, Lcom/htc/dmc/DmrListActivity;->showSpinner(Z)V

    .line 678
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity$1;->this$0:Lcom/htc/dmc/DmrListActivity;

    #setter for: Lcom/htc/dmc/DmrListActivity;->mShowSpinner:Z
    invoke-static {v0, v1}, Lcom/htc/dmc/DmrListActivity;->access$002(Lcom/htc/dmc/DmrListActivity;Z)Z

    .line 679
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .parameter "millisUntilFinished"

    .prologue
    .line 674
    return-void
.end method
