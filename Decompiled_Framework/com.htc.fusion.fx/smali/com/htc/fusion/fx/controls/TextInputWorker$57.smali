.class Lcom/htc/fusion/fx/controls/TextInputWorker$57;
.super Ljava/lang/Object;
.source "TextInputWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fusion/fx/controls/TextInputWorker;->append(Ljava/lang/CharSequence;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

.field final synthetic val$end:I

.field final synthetic val$start:I

.field final synthetic val$text:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/htc/fusion/fx/controls/TextInputWorker;Ljava/lang/CharSequence;II)V
    .locals 0

    iput-object p1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$57;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    iput-object p2, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$57;->val$text:Ljava/lang/CharSequence;

    iput p3, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$57;->val$start:I

    iput p4, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$57;->val$end:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$57;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;
    invoke-static {v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$100(Lcom/htc/fusion/fx/controls/TextInputWorker;)Lcom/htc/fusion/fx/controls/TextInputStreaming;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$57;->val$text:Ljava/lang/CharSequence;

    iget v2, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$57;->val$start:I

    iget v3, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$57;->val$end:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->append(Ljava/lang/CharSequence;II)V

    return-void
.end method
