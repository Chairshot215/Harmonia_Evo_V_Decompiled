.class Lcom/htc/WifiRouter/UserManagement$11;
.super Ljava/lang/Object;
.source "UserManagement.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/WifiRouter/UserManagement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/WifiRouter/UserManagement;


# direct methods
.method constructor <init>(Lcom/htc/WifiRouter/UserManagement;)V
    .locals 0
    .parameter

    .prologue
    .line 866
    iput-object p1, p0, Lcom/htc/WifiRouter/UserManagement$11;->this$0:Lcom/htc/WifiRouter/UserManagement;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    const/4 v6, 0x1

    .line 870
    move v2, p3

    .line 871
    .local v2, selectedPosition:I
    invoke-virtual {p1, p3}, Lcom/htc/widget/HtcAdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 872
    .local v1, macAddress:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/WifiRouter/UserManagement$11;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->dialogIsOn:Z
    invoke-static {v3}, Lcom/htc/WifiRouter/UserManagement;->access$3300(Lcom/htc/WifiRouter/UserManagement;)Z

    move-result v3

    if-ne v3, v6, :cond_0

    .line 894
    :goto_0
    return-void

    .line 873
    :cond_0
    iget-object v3, p0, Lcom/htc/WifiRouter/UserManagement$11;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #setter for: Lcom/htc/WifiRouter/UserManagement;->dialogIsOn:Z
    invoke-static {v3, v6}, Lcom/htc/WifiRouter/UserManagement;->access$3302(Lcom/htc/WifiRouter/UserManagement;Z)Z

    .line 874
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v4, p0, Lcom/htc/WifiRouter/UserManagement$11;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/WifiRouter/UserManagement;->access$3000(Lcom/htc/WifiRouter/UserManagement;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090060

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090054

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 879
    .local v0, mBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v3, 0x7f090050

    new-instance v4, Lcom/htc/WifiRouter/UserManagement$11$1;

    invoke-direct {v4, p0, v1}, Lcom/htc/WifiRouter/UserManagement$11$1;-><init>(Lcom/htc/WifiRouter/UserManagement$11;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 886
    const v3, 0x7f09004f

    new-instance v4, Lcom/htc/WifiRouter/UserManagement$11$2;

    invoke-direct {v4, p0, v1}, Lcom/htc/WifiRouter/UserManagement$11$2;-><init>(Lcom/htc/WifiRouter/UserManagement$11;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 893
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/WifiRouter/UserManagement$11;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;
    invoke-static {v4}, Lcom/htc/WifiRouter/UserManagement;->access$3400(Lcom/htc/WifiRouter/UserManagement;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0
.end method
