.class Lcom/htc/lmw/steps/ApplicationStorage$1;
.super Ljava/lang/Object;
.source "ApplicationStorage.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/lmw/steps/ApplicationStorage;->setupMoveUninstallBtns()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lmw/steps/ApplicationStorage;


# direct methods
.method constructor <init>(Lcom/htc/lmw/steps/ApplicationStorage;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/htc/lmw/steps/ApplicationStorage$1;->this$0:Lcom/htc/lmw/steps/ApplicationStorage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/htc/lmw/steps/ApplicationStorage$1;->this$0:Lcom/htc/lmw/steps/ApplicationStorage;

    #getter for: Lcom/htc/lmw/steps/ApplicationStorage;->MOVE_TO_SD_ID:I
    invoke-static {v1}, Lcom/htc/lmw/steps/ApplicationStorage;->access$000(Lcom/htc/lmw/steps/ApplicationStorage;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/htc/lmw/steps/ApplicationStorage$1;->this$0:Lcom/htc/lmw/steps/ApplicationStorage;

    invoke-virtual {v0, p2}, Lcom/htc/lmw/steps/ApplicationStorage;->onMoveToSdClick(Landroid/view/View;)V

    .line 81
    :goto_0
    iget-object v0, p0, Lcom/htc/lmw/steps/ApplicationStorage$1;->this$0:Lcom/htc/lmw/steps/ApplicationStorage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/lmw/steps/ApplicationStorage;->mIsBroatToBackground:Z
    invoke-static {v0, v1}, Lcom/htc/lmw/steps/ApplicationStorage;->access$102(Lcom/htc/lmw/steps/ApplicationStorage;Z)Z

    .line 82
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/htc/lmw/steps/ApplicationStorage$1;->this$0:Lcom/htc/lmw/steps/ApplicationStorage;

    invoke-virtual {v0, p2}, Lcom/htc/lmw/steps/ApplicationStorage;->onUninstallClick(Landroid/view/View;)V

    goto :goto_0
.end method
