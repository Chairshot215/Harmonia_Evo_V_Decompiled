.class Lcom/htc/fusion/fx/controls/TextInputWorker$33;
.super Ljava/lang/Object;
.source "TextInputWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fusion/fx/controls/TextInputWorker;->setSelection(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

.field final synthetic val$start:I

.field final synthetic val$stop:I


# direct methods
.method constructor <init>(Lcom/htc/fusion/fx/controls/TextInputWorker;II)V
    .locals 0

    iput-object p1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$33;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    iput p2, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$33;->val$start:I

    iput p3, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$33;->val$stop:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$33;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;
    invoke-static {v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$100(Lcom/htc/fusion/fx/controls/TextInputWorker;)Lcom/htc/fusion/fx/controls/TextInputStreaming;

    move-result-object v0

    iget v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$33;->val$start:I

    iget v2, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$33;->val$stop:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->setSelection(II)V

    return-void
.end method
