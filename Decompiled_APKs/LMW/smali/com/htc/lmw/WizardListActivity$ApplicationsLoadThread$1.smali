.class Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread$1;
.super Ljava/lang/Object;
.source "WizardListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread;


# direct methods
.method constructor <init>(Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread;)V
    .locals 0
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread$1;->this$1:Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 320
    iget-object v1, p0, Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread$1;->this$1:Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread;

    iget-object v1, v1, Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread;->this$0:Lcom/htc/lmw/WizardListActivity;

    #calls: Lcom/htc/lmw/WizardListActivity;->changingNextButtonState()V
    invoke-static {v1}, Lcom/htc/lmw/WizardListActivity;->access$100(Lcom/htc/lmw/WizardListActivity;)V

    .line 321
    iget-object v1, p0, Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread$1;->this$1:Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread;

    iget-object v1, v1, Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread;->this$0:Lcom/htc/lmw/WizardListActivity;

    #getter for: Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/htc/lmw/WizardListActivity;->access$400(Lcom/htc/lmw/WizardListActivity;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f07000f

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 322
    .local v0, noItems:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 323
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 324
    :cond_0
    iget-object v1, p0, Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread$1;->this$1:Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread;

    iget-object v1, v1, Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread;->this$0:Lcom/htc/lmw/WizardListActivity;

    invoke-virtual {v1}, Lcom/htc/lmw/WizardListActivity;->dismissLoadingDialog()V

    .line 325
    return-void
.end method
