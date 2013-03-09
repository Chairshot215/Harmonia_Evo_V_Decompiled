.class Lcom/htc/fusion/fx/controls/TextInputWorker$36;
.super Ljava/lang/Object;
.source "TextInputWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fusion/fx/controls/TextInputWorker;->setPadding(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

.field final synthetic val$bottom:I

.field final synthetic val$left:I

.field final synthetic val$right:I

.field final synthetic val$top:I


# direct methods
.method constructor <init>(Lcom/htc/fusion/fx/controls/TextInputWorker;IIII)V
    .locals 0

    iput-object p1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$36;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    iput p2, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$36;->val$left:I

    iput p3, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$36;->val$top:I

    iput p4, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$36;->val$right:I

    iput p5, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$36;->val$bottom:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$36;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    iget v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$36;->val$left:I

    iget v2, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$36;->val$top:I

    iget v3, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$36;->val$right:I

    iget v4, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$36;->val$bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/fusion/fx/controls/TextInputWorker;->setPadding(IIII)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
