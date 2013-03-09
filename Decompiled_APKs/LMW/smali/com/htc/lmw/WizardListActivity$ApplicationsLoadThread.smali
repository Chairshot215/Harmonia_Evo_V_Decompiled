.class public Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread;
.super Ljava/lang/Thread;
.source "WizardListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lmw/WizardListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ApplicationsLoadThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lmw/WizardListActivity;


# direct methods
.method protected constructor <init>(Lcom/htc/lmw/WizardListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread;->this$0:Lcom/htc/lmw/WizardListActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 306
    iget-object v4, p0, Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread;->this$0:Lcom/htc/lmw/WizardListActivity;

    iget-object v5, p0, Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread;->this$0:Lcom/htc/lmw/WizardListActivity;

    iget-object v6, p0, Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread;->this$0:Lcom/htc/lmw/WizardListActivity;

    iget-object v6, v6, Lcom/htc/lmw/WizardListActivity;->apps:Ljava/util/List;

    #calls: Lcom/htc/lmw/WizardListActivity;->getSelectedPackages(Ljava/util/List;)Ljava/util/ArrayList;
    invoke-static {v5, v6}, Lcom/htc/lmw/WizardListActivity;->access$200(Lcom/htc/lmw/WizardListActivity;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, v4, Lcom/htc/lmw/WizardListActivity;->selectedPackages:Ljava/util/List;

    .line 309
    iget-object v4, p0, Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread;->this$0:Lcom/htc/lmw/WizardListActivity;

    iget-object v5, p0, Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread;->this$0:Lcom/htc/lmw/WizardListActivity;

    invoke-virtual {v5}, Lcom/htc/lmw/WizardListActivity;->loadApplications()Ljava/util/List;

    move-result-object v5

    iput-object v5, v4, Lcom/htc/lmw/WizardListActivity;->apps:Ljava/util/List;

    .line 310
    iget-object v4, p0, Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread;->this$0:Lcom/htc/lmw/WizardListActivity;

    #calls: Lcom/htc/lmw/WizardListActivity;->prepareUinstallAppsForCriticalMode()V
    invoke-static {v4}, Lcom/htc/lmw/WizardListActivity;->access$300(Lcom/htc/lmw/WizardListActivity;)V

    .line 313
    iget-object v4, p0, Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread;->this$0:Lcom/htc/lmw/WizardListActivity;

    iget-object v4, v4, Lcom/htc/lmw/WizardListActivity;->apps:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread;->this$0:Lcom/htc/lmw/WizardListActivity;

    iget-object v4, v4, Lcom/htc/lmw/WizardListActivity;->apps:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 316
    :cond_0
    iget-object v4, p0, Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread;->this$0:Lcom/htc/lmw/WizardListActivity;

    #getter for: Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/htc/lmw/WizardListActivity;->access$500(Lcom/htc/lmw/WizardListActivity;)Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread$1;

    invoke-direct {v5, p0}, Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread$1;-><init>(Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 385
    :goto_0
    return-void

    .line 331
    :cond_1
    iget-object v4, p0, Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread;->this$0:Lcom/htc/lmw/WizardListActivity;

    #getter for: Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/htc/lmw/WizardListActivity;->access$700(Lcom/htc/lmw/WizardListActivity;)Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread$2;

    invoke-direct {v5, p0}, Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread$2;-><init>(Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 361
    iget-object v4, p0, Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread;->this$0:Lcom/htc/lmw/WizardListActivity;

    iget-object v5, v4, Lcom/htc/lmw/WizardListActivity;->apps:Ljava/util/List;

    iget-object v4, p0, Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread;->this$0:Lcom/htc/lmw/WizardListActivity;

    #getter for: Lcom/htc/lmw/WizardListActivity;->currentSort:I
    invoke-static {v4}, Lcom/htc/lmw/WizardListActivity;->access$800(Lcom/htc/lmw/WizardListActivity;)I

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Lcom/htc/lmw/AppInfo;->alphaComparator:Ljava/util/Comparator;

    :goto_1
    invoke-static {v5, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 364
    iget-object v4, p0, Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread;->this$0:Lcom/htc/lmw/WizardListActivity;

    iget-object v4, v4, Lcom/htc/lmw/WizardListActivity;->selectedPackages:Ljava/util/List;

    if-eqz v4, :cond_5

    .line 366
    iget-object v4, p0, Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread;->this$0:Lcom/htc/lmw/WizardListActivity;

    iget-object v4, v4, Lcom/htc/lmw/WizardListActivity;->selectedPackages:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 368
    .local v3, selectedPackage:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread;->this$0:Lcom/htc/lmw/WizardListActivity;

    iget-object v4, v4, Lcom/htc/lmw/WizardListActivity;->apps:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lmw/AppInfo;

    .line 370
    .local v0, app:Lcom/htc/lmw/AppInfo;
    iget-object v4, v0, Lcom/htc/lmw/AppInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 371
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/htc/lmw/AppInfo;->checked:Z

    goto :goto_2

    .line 361
    .end local v0           #app:Lcom/htc/lmw/AppInfo;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #selectedPackage:Ljava/lang/String;
    :cond_4
    sget-object v4, Lcom/htc/lmw/AppInfo;->sizeComparator:Ljava/util/Comparator;

    goto :goto_1

    .line 377
    :cond_5
    iget-object v4, p0, Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread;->this$0:Lcom/htc/lmw/WizardListActivity;

    #getter for: Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/htc/lmw/WizardListActivity;->access$900(Lcom/htc/lmw/WizardListActivity;)Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread$3;

    invoke-direct {v5, p0}, Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread$3;-><init>(Lcom/htc/lmw/WizardListActivity$ApplicationsLoadThread;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
