.class Lcom/htc/fusion/fx/controls/TextInputWorker$52;
.super Ljava/lang/Object;
.source "TextInputWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fusion/fx/controls/TextInputWorker;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

.field final synthetic val$text:Ljava/lang/CharSequence;

.field final synthetic val$type:Landroid/widget/TextView$BufferType;


# direct methods
.method constructor <init>(Lcom/htc/fusion/fx/controls/TextInputWorker;Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$52;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    iput-object p2, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$52;->val$text:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$52;->val$type:Landroid/widget/TextView$BufferType;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$52;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$52;->val$text:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$52;->val$type:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Lcom/htc/fusion/fx/controls/TextInputWorker;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
