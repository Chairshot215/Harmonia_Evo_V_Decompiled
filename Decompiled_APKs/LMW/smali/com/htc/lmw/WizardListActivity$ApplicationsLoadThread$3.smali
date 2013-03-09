.class Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread$3;
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
    .line 378
    iput-object p1, p0, Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread$3;->this$1:Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread$3;->this$1:Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread;

    iget-object v0, v0, Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread;->this$0:Lcom/htc/lmw/WizardListActivity;

    invoke-virtual {v0}, Lcom/htc/lmw/WizardListActivity;->dismissLoadingDialog()V

    .line 382
    iget-object v0, p0, Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread$3;->this$1:Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread;

    iget-object v0, v0, Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread;->this$0:Lcom/htc/lmw/WizardListActivity;

    iget-object v0, v0, Lcom/htc/lmw/WizardListActivity;->listAdapter:Lcom/htc/lmw/AppAdapter;

    iget-object v1, p0, Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread$3;->this$1:Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread;

    iget-object v1, v1, Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread;->this$0:Lcom/htc/lmw/WizardListActivity;

    iget-object v1, v1, Lcom/htc/lmw/WizardListActivity;->apps:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/htc/lmw/AppAdapter;->setApplications(Ljava/util/List;)V

    .line 383
    return-void
.end method
