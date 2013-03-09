.class Lcom/htc/lmw/steps/MoveToSdCard$1;
.super Ljava/lang/Object;
.source "MoveToSdCard.java"

# interfaces
.implements Lcom/htc/lmw/ExternalStorageObserver$IStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/lmw/steps/MoveToSdCard;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lmw/steps/MoveToSdCard;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/htc/lmw/steps/MoveToSdCard;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/htc/lmw/steps/MoveToSdCard$1;->this$0:Lcom/htc/lmw/steps/MoveToSdCard;

    iput-object p2, p0, Lcom/htc/lmw/steps/MoveToSdCard$1;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Landroid/content/Intent;)V
    .locals 4
    .parameter "currentState"

    .prologue
    .line 86
    invoke-static {}, Lcom/htc/lmw/ExternalStorageObserver;->isMediaMounted()Z

    move-result v0

    .line 87
    .local v0, state:Z
    if-nez v0, :cond_0

    .line 88
    iget-object v1, p0, Lcom/htc/lmw/steps/MoveToSdCard$1;->val$context:Landroid/content/Context;

    const v2, 0x7f050057

    invoke-static {v2}, Lcom/htc/lmw/Customize;->convertStringId(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/htc/lmw/steps/MoveToSdCard$1;->this$0:Lcom/htc/lmw/steps/MoveToSdCard;

    #getter for: Lcom/htc/lmw/WizardListActivity;->apps:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/lmw/steps/MoveToSdCard;->access$000(Lcom/htc/lmw/steps/MoveToSdCard;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/lmw/steps/MoveToSdCard$1;->this$0:Lcom/htc/lmw/steps/MoveToSdCard;

    #getter for: Lcom/htc/lmw/WizardListActivity;->apps:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/lmw/steps/MoveToSdCard;->access$100(Lcom/htc/lmw/steps/MoveToSdCard;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    .line 94
    :cond_2
    iget-object v1, p0, Lcom/htc/lmw/steps/MoveToSdCard$1;->this$0:Lcom/htc/lmw/steps/MoveToSdCard;

    invoke-virtual {v1, v0}, Lcom/htc/lmw/steps/MoveToSdCard;->setNextButtonEnabled(Z)V

    .line 95
    return-void
.end method
