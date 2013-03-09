.class Lcom/htc/fusion/fx/controls/TextInputWorker$4;
.super Ljava/lang/Object;
.source "TextInputWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fusion/fx/controls/TextInputWorker;->setEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/htc/fusion/fx/controls/TextInputWorker;Z)V
    .locals 0

    iput-object p1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$4;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    iput-boolean p2, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$4;->val$enabled:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$4;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;
    invoke-static {v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$100(Lcom/htc/fusion/fx/controls/TextInputWorker;)Lcom/htc/fusion/fx/controls/TextInputStreaming;

    move-result-object v0

    iget-boolean v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$4;->val$enabled:Z

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->setEnabled(Z)V

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$4;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInput:Lcom/htc/fusion/fx/controls/FxTextInput;
    invoke-static {v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$300(Lcom/htc/fusion/fx/controls/TextInputWorker;)Lcom/htc/fusion/fx/controls/FxTextInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxTextInput;->isInInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$4;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #calls: Lcom/htc/fusion/fx/controls/TextInputWorker;->exitInputMode_OnUiThread()V
    invoke-static {v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$800(Lcom/htc/fusion/fx/controls/TextInputWorker;)V

    :cond_0
    return-void
.end method
