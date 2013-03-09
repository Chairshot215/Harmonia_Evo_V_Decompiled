.class Lcom/htc/fusion/fx/controls/TextInputWorker$1;
.super Ljava/lang/Object;
.source "TextInputWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fusion/fx/controls/TextInputWorker;->initialize(FFZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

.field final synthetic val$positionX:F

.field final synthetic val$positionY:F

.field final synthetic val$textEditEnabled:Z


# direct methods
.method constructor <init>(Lcom/htc/fusion/fx/controls/TextInputWorker;FFZ)V
    .locals 0

    iput-object p1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$1;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    iput p2, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$1;->val$positionX:F

    iput p3, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$1;->val$positionY:F

    iput-boolean p4, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$1;->val$textEditEnabled:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$1;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    iget v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$1;->val$positionX:F

    iget v2, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$1;->val$positionY:F

    iget-boolean v3, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$1;->val$textEditEnabled:Z

    #calls: Lcom/htc/fusion/fx/controls/TextInputWorker;->initialize_OnUiThread(FFZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$000(Lcom/htc/fusion/fx/controls/TextInputWorker;FFZ)V

    return-void
.end method
