.class Lcom/htc/usage/DataUsageSummary$ConfirmCancelLimitFragment$1$1;
.super Landroid/os/AsyncTask;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/usage/DataUsageSummary$ConfirmCancelLimitFragment$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/usage/DataUsageSummary$ConfirmCancelLimitFragment$1;

.field final synthetic val$target:Lcom/htc/usage/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/htc/usage/DataUsageSummary$ConfirmCancelLimitFragment$1;Lcom/htc/usage/DataUsageSummary;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1796
    iput-object p1, p0, Lcom/htc/usage/DataUsageSummary$ConfirmCancelLimitFragment$1$1;->this$1:Lcom/htc/usage/DataUsageSummary$ConfirmCancelLimitFragment$1;

    iput-object p2, p0, Lcom/htc/usage/DataUsageSummary$ConfirmCancelLimitFragment$1$1;->val$target:Lcom/htc/usage/DataUsageSummary;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1796
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/usage/DataUsageSummary$ConfirmCancelLimitFragment$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter "params"

    .prologue
    .line 1799
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary$ConfirmCancelLimitFragment$1$1;->val$target:Lcom/htc/usage/DataUsageSummary;

    const/4 v1, 0x0

    #calls: Lcom/htc/usage/DataUsageSummary;->setRestrictBackground(Z)V
    invoke-static {v0, v1}, Lcom/htc/usage/DataUsageSummary;->access$4500(Lcom/htc/usage/DataUsageSummary;Z)V

    .line 1800
    const/4 v0, 0x0

    return-object v0
.end method
