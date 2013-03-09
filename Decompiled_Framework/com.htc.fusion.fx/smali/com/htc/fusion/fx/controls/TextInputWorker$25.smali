.class Lcom/htc/fusion/fx/controls/TextInputWorker$25;
.super Ljava/lang/Object;
.source "TextInputWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fusion/fx/controls/TextInputWorker;->setAutoText(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

.field final synthetic val$autoText:Z


# direct methods
.method constructor <init>(Lcom/htc/fusion/fx/controls/TextInputWorker;Z)V
    .locals 0

    iput-object p1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$25;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    iput-boolean p2, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$25;->val$autoText:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$25;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;
    invoke-static {v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$100(Lcom/htc/fusion/fx/controls/TextInputWorker;)Lcom/htc/fusion/fx/controls/TextInputStreaming;

    move-result-object v0

    new-instance v1, Landroid/text/method/TextKeyListener;

    iget-object v2, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$25;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mCapOption:Landroid/text/method/TextKeyListener$Capitalize;
    invoke-static {v2}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$1300(Lcom/htc/fusion/fx/controls/TextInputWorker;)Landroid/text/method/TextKeyListener$Capitalize;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$25;->val$autoText:Z

    invoke-direct {v1, v2, v3}, Landroid/text/method/TextKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->setKeyListener(Landroid/text/method/KeyListener;)V

    return-void
.end method
