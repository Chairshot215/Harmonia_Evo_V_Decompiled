.class Lcom/htc/WifiRouter/UserManagement$13;
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
    .line 1005
    iput-object p1, p0, Lcom/htc/WifiRouter/UserManagement$13;->this$0:Lcom/htc/WifiRouter/UserManagement;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 8
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
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1009
    move v3, p3

    .line 1010
    .local v3, selectedPosition:I
    invoke-virtual {p1, p3}, Lcom/htc/widget/HtcAdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1011
    .local v2, macAddress:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/WifiRouter/UserManagement$13;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->dialogIsOn:Z
    invoke-static {v4}, Lcom/htc/WifiRouter/UserManagement;->access$3300(Lcom/htc/WifiRouter/UserManagement;)Z

    move-result v4

    if-ne v4, v6, :cond_0

    .line 1064
    :goto_0
    return-void

    .line 1012
    :cond_0
    iget-object v4, p0, Lcom/htc/WifiRouter/UserManagement$13;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #setter for: Lcom/htc/WifiRouter/UserManagement;->dialogIsOn:Z
    invoke-static {v4, v6}, Lcom/htc/WifiRouter/UserManagement;->access$3302(Lcom/htc/WifiRouter/UserManagement;Z)Z

    .line 1013
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v5, p0, Lcom/htc/WifiRouter/UserManagement$13;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/WifiRouter/UserManagement;->access$3000(Lcom/htc/WifiRouter/UserManagement;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090054

    invoke-virtual {v4, v5, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    .line 1017
    .local v1, mBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v4, 0x7f090050

    new-instance v5, Lcom/htc/WifiRouter/UserManagement$13$1;

    invoke-direct {v5, p0, v3}, Lcom/htc/WifiRouter/UserManagement$13$1;-><init>(Lcom/htc/WifiRouter/UserManagement$13;I)V

    invoke-virtual {v1, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1038
    const v4, 0x7f090051

    new-instance v5, Lcom/htc/WifiRouter/UserManagement$13$2;

    invoke-direct {v5, p0, v3}, Lcom/htc/WifiRouter/UserManagement$13$2;-><init>(Lcom/htc/WifiRouter/UserManagement$13;I)V

    invoke-virtual {v1, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1060
    iget-object v4, p0, Lcom/htc/WifiRouter/UserManagement$13;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->mLayoutFactory:Landroid/view/LayoutInflater;
    invoke-static {v4}, Lcom/htc/WifiRouter/UserManagement;->access$3600(Lcom/htc/WifiRouter/UserManagement;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030003

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1061
    .local v0, contentView:Landroid/widget/LinearLayout;
    const v4, 0x7f0b0004

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1062
    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1063
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/WifiRouter/UserManagement$13;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;
    invoke-static {v5}, Lcom/htc/WifiRouter/UserManagement;->access$3400(Lcom/htc/WifiRouter/UserManagement;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0
.end method
