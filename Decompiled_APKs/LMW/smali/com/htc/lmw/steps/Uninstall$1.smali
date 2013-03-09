.class Lcom/htc/lmw/steps/Uninstall$1;
.super Ljava/lang/Object;
.source "Uninstall.java"

# interfaces
.implements Lcom/htc/lmw/ExternalStorageObserver$IStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/lmw/steps/Uninstall;->registerStorageProgressUpdater()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lmw/steps/Uninstall;


# direct methods
.method constructor <init>(Lcom/htc/lmw/steps/Uninstall;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/htc/lmw/steps/Uninstall$1;->this$0:Lcom/htc/lmw/steps/Uninstall;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Landroid/content/Intent;)V
    .locals 3
    .parameter "currentState"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/htc/lmw/steps/Uninstall$1;->this$0:Lcom/htc/lmw/steps/Uninstall;

    iget-object v0, v0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-static {}, Lcom/htc/lmw/Wizard;->getInstance()Lcom/htc/lmw/Wizard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/lmw/Wizard;->getCurrentStep()I

    move-result v1

    invoke-static {v0, v1}, Lcom/htc/lmw/Customize;->getWizardNextButton(Landroid/app/Activity;I)Landroid/widget/Button;

    .line 135
    iget-object v0, p0, Lcom/htc/lmw/steps/Uninstall$1;->this$0:Lcom/htc/lmw/steps/Uninstall;

    iget-object v1, p0, Lcom/htc/lmw/steps/Uninstall$1;->this$0:Lcom/htc/lmw/steps/Uninstall;

    #calls: Lcom/htc/lmw/steps/Uninstall;->selectedAppsSize()J
    invoke-static {v1}, Lcom/htc/lmw/steps/Uninstall;->access$000(Lcom/htc/lmw/steps/Uninstall;)J

    move-result-wide v1

    #calls: Lcom/htc/lmw/steps/Uninstall;->isNotEnoughMemory(J)Z
    invoke-static {v0, v1, v2}, Lcom/htc/lmw/steps/Uninstall;->access$100(Lcom/htc/lmw/steps/Uninstall;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/htc/lmw/steps/Uninstall$1;->this$0:Lcom/htc/lmw/steps/Uninstall;

    const/4 v1, 0x0

    #calls: Lcom/htc/lmw/steps/Uninstall;->setNextButtonEnabled(Z)V
    invoke-static {v0, v1}, Lcom/htc/lmw/steps/Uninstall;->access$200(Lcom/htc/lmw/steps/Uninstall;Z)V

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/htc/lmw/steps/Uninstall$1;->this$0:Lcom/htc/lmw/steps/Uninstall;

    const/4 v1, 0x1

    #calls: Lcom/htc/lmw/steps/Uninstall;->setNextButtonEnabled(Z)V
    invoke-static {v0, v1}, Lcom/htc/lmw/steps/Uninstall;->access$300(Lcom/htc/lmw/steps/Uninstall;Z)V

    goto :goto_0
.end method
