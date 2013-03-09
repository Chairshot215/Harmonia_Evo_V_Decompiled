.class Lcom/htc/fusion/fx/controls/TextInputWorker$13;
.super Ljava/lang/Object;
.source "TextInputWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fusion/fx/controls/TextInputWorker;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

.field final synthetic val$javaview:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/htc/fusion/fx/controls/TextInputWorker;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$13;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    iput-object p2, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$13;->val$javaview:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$13;->val$javaview:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$13;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;
    invoke-static {v1}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$100(Lcom/htc/fusion/fx/controls/TextInputWorker;)Lcom/htc/fusion/fx/controls/TextInputStreaming;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$13;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    const/4 v1, 0x0

    #setter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;
    invoke-static {v0, v1}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$102(Lcom/htc/fusion/fx/controls/TextInputWorker;Lcom/htc/fusion/fx/controls/TextInputStreaming;)Lcom/htc/fusion/fx/controls/TextInputStreaming;

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$13;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    const/4 v1, 0x0

    #setter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mInitialized:Z
    invoke-static {v0, v1}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$1202(Lcom/htc/fusion/fx/controls/TextInputWorker;Z)Z

    return-void
.end method
