.class Lcom/htc/lmw/WizardListActivity$1;
.super Ljava/lang/Object;
.source "WizardListActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/lmw/WizardListActivity;->onPostCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lmw/WizardListActivity;


# direct methods
.method constructor <init>(Lcom/htc/lmw/WizardListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/htc/lmw/WizardListActivity$1;->this$0:Lcom/htc/lmw/WizardListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    iget-object v1, p0, Lcom/htc/lmw/WizardListActivity$1;->this$0:Lcom/htc/lmw/WizardListActivity;

    iget-object v1, v1, Lcom/htc/lmw/WizardListActivity;->listAdapter:Lcom/htc/lmw/AppAdapter;

    invoke-virtual {v1, p3}, Lcom/htc/lmw/AppAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lmw/AppInfo;

    .line 88
    .local v0, app:Lcom/htc/lmw/AppInfo;
    if-eqz v0, :cond_0

    .line 90
    iget-boolean v1, v0, Lcom/htc/lmw/AppInfo;->checked:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lcom/htc/lmw/AppInfo;->checked:Z

    .line 92
    iget-boolean v1, v0, Lcom/htc/lmw/AppInfo;->checked:Z

    if-eqz v1, :cond_2

    .line 94
    iget-object v1, p0, Lcom/htc/lmw/WizardListActivity$1;->this$0:Lcom/htc/lmw/WizardListActivity;

    iget-wide v2, v0, Lcom/htc/lmw/AppInfo;->size:J

    invoke-static {v1, v2, v3}, Lcom/htc/lmw/WizardListActivity;->access$014(Lcom/htc/lmw/WizardListActivity;J)J

    .line 100
    :goto_1
    iget-object v1, p0, Lcom/htc/lmw/WizardListActivity$1;->this$0:Lcom/htc/lmw/WizardListActivity;

    invoke-virtual {v1}, Lcom/htc/lmw/WizardListActivity;->updateMemoryInfo()V

    .line 101
    iget-object v1, p0, Lcom/htc/lmw/WizardListActivity$1;->this$0:Lcom/htc/lmw/WizardListActivity;

    #calls: Lcom/htc/lmw/WizardListActivity;->changingNextButtonState()V
    invoke-static {v1}, Lcom/htc/lmw/WizardListActivity;->access$100(Lcom/htc/lmw/WizardListActivity;)V

    .line 103
    :cond_0
    return-void

    .line 90
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 98
    :cond_2
    iget-object v1, p0, Lcom/htc/lmw/WizardListActivity$1;->this$0:Lcom/htc/lmw/WizardListActivity;

    iget-wide v2, v0, Lcom/htc/lmw/AppInfo;->size:J

    invoke-static {v1, v2, v3}, Lcom/htc/lmw/WizardListActivity;->access$022(Lcom/htc/lmw/WizardListActivity;J)J

    goto :goto_1
.end method
