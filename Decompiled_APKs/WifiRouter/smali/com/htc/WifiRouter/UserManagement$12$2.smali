.class Lcom/htc/WifiRouter/UserManagement$12$2;
.super Ljava/lang/Object;
.source "UserManagement.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/WifiRouter/UserManagement$12;->onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/WifiRouter/UserManagement$12;

.field final synthetic val$selectedPosition:I


# direct methods
.method constructor <init>(Lcom/htc/WifiRouter/UserManagement$12;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 957
    iput-object p1, p0, Lcom/htc/WifiRouter/UserManagement$12$2;->this$1:Lcom/htc/WifiRouter/UserManagement$12;

    iput p2, p0, Lcom/htc/WifiRouter/UserManagement$12$2;->val$selectedPosition:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 961
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v2, p0, Lcom/htc/WifiRouter/UserManagement$12$2;->this$1:Lcom/htc/WifiRouter/UserManagement$12;

    iget-object v2, v2, Lcom/htc/WifiRouter/UserManagement$12;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/WifiRouter/UserManagement;->access$3000(Lcom/htc/WifiRouter/UserManagement;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090056

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/WifiRouter/UserManagement$12$2;->this$1:Lcom/htc/WifiRouter/UserManagement$12;

    iget-object v2, v2, Lcom/htc/WifiRouter/UserManagement$12;->this$0:Lcom/htc/WifiRouter/UserManagement;

    const v3, 0x7f090057

    invoke-virtual {v2, v3}, Lcom/htc/WifiRouter/UserManagement;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090054

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 966
    .local v0, mBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x7f090052

    new-instance v2, Lcom/htc/WifiRouter/UserManagement$12$2$1;

    invoke-direct {v2, p0}, Lcom/htc/WifiRouter/UserManagement$12$2$1;-><init>(Lcom/htc/WifiRouter/UserManagement$12$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 976
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 977
    return-void
.end method
