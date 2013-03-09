.class Lcom/htc/WifiRouter/UserManagement$13$1;
.super Ljava/lang/Object;
.source "UserManagement.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/WifiRouter/UserManagement$13;->onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/WifiRouter/UserManagement$13;

.field final synthetic val$selectedPosition:I


# direct methods
.method constructor <init>(Lcom/htc/WifiRouter/UserManagement$13;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1017
    iput-object p1, p0, Lcom/htc/WifiRouter/UserManagement$13$1;->this$1:Lcom/htc/WifiRouter/UserManagement$13;

    iput p2, p0, Lcom/htc/WifiRouter/UserManagement$13$1;->val$selectedPosition:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1021
    sget-object v1, Lcom/htc/WifiRouter/UserManagement;->mWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 1022
    iget-object v1, p0, Lcom/htc/WifiRouter/UserManagement$13$1;->this$1:Lcom/htc/WifiRouter/UserManagement$13;

    iget-object v1, v1, Lcom/htc/WifiRouter/UserManagement$13;->this$0:Lcom/htc/WifiRouter/UserManagement;

    iget v2, p0, Lcom/htc/WifiRouter/UserManagement$13$1;->val$selectedPosition:I

    #calls: Lcom/htc/WifiRouter/UserManagement;->addToWlistFromBlist(I)V
    invoke-static {v1, v2}, Lcom/htc/WifiRouter/UserManagement;->access$3700(Lcom/htc/WifiRouter/UserManagement;I)V

    .line 1036
    :goto_0
    return-void

    .line 1024
    :cond_0
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v2, p0, Lcom/htc/WifiRouter/UserManagement$13$1;->this$1:Lcom/htc/WifiRouter/UserManagement$13;

    iget-object v2, v2, Lcom/htc/WifiRouter/UserManagement$13;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/WifiRouter/UserManagement;->access$3000(Lcom/htc/WifiRouter/UserManagement;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090056

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/WifiRouter/UserManagement$13$1;->this$1:Lcom/htc/WifiRouter/UserManagement$13;

    iget-object v2, v2, Lcom/htc/WifiRouter/UserManagement$13;->this$0:Lcom/htc/WifiRouter/UserManagement;

    const v3, 0x7f09005d

    invoke-virtual {v2, v3}, Lcom/htc/WifiRouter/UserManagement;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090054

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 1028
    .local v0, mBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x7f090052

    new-instance v2, Lcom/htc/WifiRouter/UserManagement$13$1$1;

    invoke-direct {v2, p0}, Lcom/htc/WifiRouter/UserManagement$13$1$1;-><init>(Lcom/htc/WifiRouter/UserManagement$13$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1034
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0
.end method
