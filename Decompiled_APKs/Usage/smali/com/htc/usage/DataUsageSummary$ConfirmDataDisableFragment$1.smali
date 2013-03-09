.class Lcom/htc/usage/DataUsageSummary$ConfirmDataDisableFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/usage/DataUsageSummary$ConfirmDataDisableFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/usage/DataUsageSummary$ConfirmDataDisableFragment;


# direct methods
.method constructor <init>(Lcom/htc/usage/DataUsageSummary$ConfirmDataDisableFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 2031
    iput-object p1, p0, Lcom/htc/usage/DataUsageSummary$ConfirmDataDisableFragment$1;->this$0:Lcom/htc/usage/DataUsageSummary$ConfirmDataDisableFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2033
    iget-object v1, p0, Lcom/htc/usage/DataUsageSummary$ConfirmDataDisableFragment$1;->this$0:Lcom/htc/usage/DataUsageSummary$ConfirmDataDisableFragment;

    invoke-virtual {v1}, Lcom/htc/usage/DataUsageSummary$ConfirmDataDisableFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/htc/usage/DataUsageSummary;

    .line 2034
    .local v0, target:Lcom/htc/usage/DataUsageSummary;
    if-eqz v0, :cond_0

    .line 2036
    const/4 v1, 0x0

    #calls: Lcom/htc/usage/DataUsageSummary;->setMobileNetworkEnabled(Z)V
    invoke-static {v0, v1}, Lcom/htc/usage/DataUsageSummary;->access$2000(Lcom/htc/usage/DataUsageSummary;Z)V

    .line 2038
    :cond_0
    return-void
.end method
