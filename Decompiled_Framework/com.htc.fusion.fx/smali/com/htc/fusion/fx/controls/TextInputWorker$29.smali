.class Lcom/htc/fusion/fx/controls/TextInputWorker$29;
.super Ljava/lang/Object;
.source "TextInputWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fusion/fx/controls/TextInputWorker;->setMaxLength(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

.field final synthetic val$maxlength:I


# direct methods
.method constructor <init>(Lcom/htc/fusion/fx/controls/TextInputWorker;I)V
    .locals 0

    iput-object p1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$29;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    iput p2, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$29;->val$maxlength:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$29;->val$maxlength:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$29;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;
    invoke-static {v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$700(Lcom/htc/fusion/fx/controls/TextInputWorker;)Lcom/htc/fusion/fx/controls/TextInputInfo;

    move-result-object v0

    iget v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$29;->val$maxlength:I

    iput v1, v0, Lcom/htc/fusion/fx/controls/TextInputInfo;->maxlength:I

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$29;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;
    invoke-static {v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$100(Lcom/htc/fusion/fx/controls/TextInputWorker;)Lcom/htc/fusion/fx/controls/TextInputStreaming;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    iget v4, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$29;->val$maxlength:I

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->setFilters([Landroid/text/InputFilter;)V

    :cond_0
    return-void
.end method
