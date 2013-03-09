.class Lcom/htc/usage/DataUsageSummary$ConfirmCancelLimitFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/usage/DataUsageSummary$ConfirmCancelLimitFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/usage/DataUsageSummary$ConfirmCancelLimitFragment;


# direct methods
.method constructor <init>(Lcom/htc/usage/DataUsageSummary$ConfirmCancelLimitFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1789
    iput-object p1, p0, Lcom/htc/usage/DataUsageSummary$ConfirmCancelLimitFragment$1;->this$0:Lcom/htc/usage/DataUsageSummary$ConfirmCancelLimitFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1791
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/htc/usage/DataUsageSummary$ConfirmCancelLimitFragment;->access$4302(Z)Z

    .line 1792
    iget-object v1, p0, Lcom/htc/usage/DataUsageSummary$ConfirmCancelLimitFragment$1;->this$0:Lcom/htc/usage/DataUsageSummary$ConfirmCancelLimitFragment;

    invoke-virtual {v1}, Lcom/htc/usage/DataUsageSummary$ConfirmCancelLimitFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/htc/usage/DataUsageSummary;

    .line 1793
    .local v0, target:Lcom/htc/usage/DataUsageSummary;
    if-eqz v0, :cond_1

    .line 1794
    const-wide/16 v1, -0x1

    #calls: Lcom/htc/usage/DataUsageSummary;->setPolicyLimitBytes(J)V
    invoke-static {v0, v1, v2}, Lcom/htc/usage/DataUsageSummary;->access$3800(Lcom/htc/usage/DataUsageSummary;J)V

    .line 1795
    #calls: Lcom/htc/usage/DataUsageSummary;->getRestrictBackground()Z
    invoke-static {v0}, Lcom/htc/usage/DataUsageSummary;->access$4400(Lcom/htc/usage/DataUsageSummary;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1796
    new-instance v1, Lcom/htc/usage/DataUsageSummary$ConfirmCancelLimitFragment$1$1;

    invoke-direct {v1, p0, v0}, Lcom/htc/usage/DataUsageSummary$ConfirmCancelLimitFragment$1$1;-><init>(Lcom/htc/usage/DataUsageSummary$ConfirmCancelLimitFragment$1;Lcom/htc/usage/DataUsageSummary;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/htc/usage/DataUsageSummary$ConfirmCancelLimitFragment$1$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1805
    :cond_0
    iget-object v1, p0, Lcom/htc/usage/DataUsageSummary$ConfirmCancelLimitFragment$1;->this$0:Lcom/htc/usage/DataUsageSummary$ConfirmCancelLimitFragment;

    invoke-virtual {v1}, Lcom/htc/usage/DataUsageSummary$ConfirmCancelLimitFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x4

    #getter for: Lcom/htc/usage/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;
    invoke-static {v0}, Lcom/htc/usage/DataUsageSummary;->access$1100(Lcom/htc/usage/DataUsageSummary;)Landroid/net/NetworkTemplate;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/usage/net/AllAppLoader;->buildArgs(Landroid/net/NetworkTemplate;)Landroid/os/Bundle;

    move-result-object v3

    #getter for: Lcom/htc/usage/DataUsageSummary;->mAllAppLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    invoke-static {v0}, Lcom/htc/usage/DataUsageSummary;->access$4600(Lcom/htc/usage/DataUsageSummary;)Landroid/app/LoaderManager$LoaderCallbacks;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 1807
    :cond_1
    return-void
.end method
