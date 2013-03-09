.class Lcom/htc/fusion/fx/controls/TextInputWorker$2$1;
.super Landroid/os/CountDownTimer;
.source "TextInputWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fusion/fx/controls/TextInputWorker$2;->onFocusChange(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/fusion/fx/controls/TextInputWorker$2;


# direct methods
.method constructor <init>(Lcom/htc/fusion/fx/controls/TextInputWorker$2;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$2$1;->this$1:Lcom/htc/fusion/fx/controls/TextInputWorker$2;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$2$1;->this$1:Lcom/htc/fusion/fx/controls/TextInputWorker$2;

    iget-object v0, v0, Lcom/htc/fusion/fx/controls/TextInputWorker$2;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->isTextEditEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$2$1;->this$1:Lcom/htc/fusion/fx/controls/TextInputWorker$2;

    iget-object v0, v0, Lcom/htc/fusion/fx/controls/TextInputWorker$2;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputWorker:Lcom/htc/fusion/fx/controls/TextInputWorker;
    invoke-static {v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$400(Lcom/htc/fusion/fx/controls/TextInputWorker;)Lcom/htc/fusion/fx/controls/TextInputWorker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->exitInputMode()V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
