.class Lcom/htc/fusion/fx/controls/TextInputWorker$51;
.super Ljava/lang/Object;
.source "TextInputWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fusion/fx/controls/TextInputWorker;->addTextChangedListener(Landroid/text/TextWatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

.field final synthetic val$textWatcher:Landroid/text/TextWatcher;


# direct methods
.method constructor <init>(Lcom/htc/fusion/fx/controls/TextInputWorker;Landroid/text/TextWatcher;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$51;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    iput-object p2, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$51;->val$textWatcher:Landroid/text/TextWatcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$51;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;
    invoke-static {v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$100(Lcom/htc/fusion/fx/controls/TextInputWorker;)Lcom/htc/fusion/fx/controls/TextInputStreaming;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$51;->val$textWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
