.class Lcom/htc/fusion/fx/controls/TextInputWorker$11;
.super Ljava/lang/Object;
.source "TextInputWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fusion/fx/controls/TextInputWorker;->enterInputMode(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

.field final synthetic val$positionX:F

.field final synthetic val$positionY:F


# direct methods
.method constructor <init>(Lcom/htc/fusion/fx/controls/TextInputWorker;FF)V
    .locals 0

    iput-object p1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$11;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    iput p2, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$11;->val$positionX:F

    iput p3, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$11;->val$positionY:F

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$11;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    iget v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$11;->val$positionX:F

    iget v2, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$11;->val$positionY:F

    #calls: Lcom/htc/fusion/fx/controls/TextInputWorker;->enterInputMode_OnUiThread(FF)V
    invoke-static {v0, v1, v2}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$1000(Lcom/htc/fusion/fx/controls/TextInputWorker;FF)V

    return-void
.end method
