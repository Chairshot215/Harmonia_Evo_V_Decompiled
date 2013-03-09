.class Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread$2;
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
    .line 332
    iput-object p1, p0, Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread$2;->this$1:Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 336
    invoke-static {}, Lcom/htc/lmw/Wizard;->getInstance()Lcom/htc/lmw/Wizard;

    move-result-object v1

    .line 338
    .local v1, wizard:Lcom/htc/lmw/Wizard;
    invoke-virtual {v1}, Lcom/htc/lmw/Wizard;->isLowMemory()Z

    move-result v2

    if-nez v2, :cond_3

    .line 340
    iget-object v2, p0, Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread$2;->this$1:Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread;

    iget-object v2, v2, Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread;->this$0:Lcom/htc/lmw/WizardListActivity;

    iget-object v2, v2, Lcom/htc/lmw/WizardListActivity;->selectedPackages:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread$2;->this$1:Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread;

    iget-object v2, v2, Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread;->this$0:Lcom/htc/lmw/WizardListActivity;

    iget-object v2, v2, Lcom/htc/lmw/WizardListActivity;->selectedPackages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 342
    :cond_0
    iget-object v2, p0, Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread$2;->this$1:Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread;

    iget-object v2, v2, Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread;->this$0:Lcom/htc/lmw/WizardListActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/lmw/WizardListActivity;->setNextButtonEnabled(Z)V

    .line 353
    :goto_0
    iget-object v2, p0, Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread$2;->this$1:Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread;

    iget-object v2, v2, Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread;->this$0:Lcom/htc/lmw/WizardListActivity;

    #getter for: Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/htc/lmw/WizardListActivity;->access$600(Lcom/htc/lmw/WizardListActivity;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f07000f

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 354
    .local v0, noItems:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 355
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 356
    :cond_1
    return-void

    .line 346
    .end local v0           #noItems:Landroid/view/View;
    :cond_2
    iget-object v2, p0, Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread$2;->this$1:Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread;

    iget-object v2, v2, Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread;->this$0:Lcom/htc/lmw/WizardListActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/lmw/WizardListActivity;->setNextButtonEnabled(Z)V

    goto :goto_0

    .line 351
    :cond_3
    iget-object v2, p0, Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread$2;->this$1:Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread;

    iget-object v2, v2, Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread;->this$0:Lcom/htc/lmw/WizardListActivity;

    #calls: Lcom/htc/lmw/WizardListActivity;->changingNextButtonState()V
    invoke-static {v2}, Lcom/htc/lmw/WizardListActivity;->access$100(Lcom/htc/lmw/WizardListActivity;)V

    goto :goto_0
.end method
