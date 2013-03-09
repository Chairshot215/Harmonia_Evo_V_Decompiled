.class Lcom/htc/WifiRouter/UserManagement$12;
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
    .line 923
    iput-object p1, p0, Lcom/htc/WifiRouter/UserManagement$12;->this$0:Lcom/htc/WifiRouter/UserManagement;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 11
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
    .line 927
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    move v6, p3

    .line 928
    .local v6, selectedPosition:I
    invoke-virtual {p1, p3}, Lcom/htc/widget/HtcAdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 929
    .local v4, macAddress:Ljava/lang/String;
    const/high16 v7, 0x7f0b

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 930
    .local v5, name:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/WifiRouter/UserManagement$12;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->dialogIsOn:Z
    invoke-static {v7}, Lcom/htc/WifiRouter/UserManagement;->access$3300(Lcom/htc/WifiRouter/UserManagement;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 1002
    :goto_0
    return-void

    .line 931
    :cond_0
    iget-object v7, p0, Lcom/htc/WifiRouter/UserManagement$12;->this$0:Lcom/htc/WifiRouter/UserManagement;

    const/4 v8, 0x1

    #setter for: Lcom/htc/WifiRouter/UserManagement;->dialogIsOn:Z
    invoke-static {v7, v8}, Lcom/htc/WifiRouter/UserManagement;->access$3302(Lcom/htc/WifiRouter/UserManagement;Z)Z

    .line 932
    new-instance v7, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v8, p0, Lcom/htc/WifiRouter/UserManagement$12;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/htc/WifiRouter/UserManagement;->access$3000(Lcom/htc/WifiRouter/UserManagement;)Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f090054

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    .line 936
    .local v3, mBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v7, 0x7f09004f

    new-instance v8, Lcom/htc/WifiRouter/UserManagement$12$1;

    invoke-direct {v8, p0, v6}, Lcom/htc/WifiRouter/UserManagement$12$1;-><init>(Lcom/htc/WifiRouter/UserManagement$12;I)V

    invoke-virtual {v3, v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 957
    const v7, 0x7f090051

    new-instance v8, Lcom/htc/WifiRouter/UserManagement$12$2;

    invoke-direct {v8, p0, v6}, Lcom/htc/WifiRouter/UserManagement$12$2;-><init>(Lcom/htc/WifiRouter/UserManagement$12;I)V

    invoke-virtual {v3, v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 979
    iget-object v7, p0, Lcom/htc/WifiRouter/UserManagement$12;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->mLayoutFactory:Landroid/view/LayoutInflater;
    invoke-static {v7}, Lcom/htc/WifiRouter/UserManagement;->access$3600(Lcom/htc/WifiRouter/UserManagement;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030004

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 980
    .local v2, contentView:Landroid/widget/LinearLayout;
    const v7, 0x7f0b0004

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 981
    const v7, 0x7f0b000d

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 982
    .local v1, clientStatus:Landroid/widget/TextView;
    const v7, 0x7f0b0007

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 983
    .local v0, clientIp:Landroid/widget/TextView;
    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 984
    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/WifiRouter/UserManagement$12;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;
    invoke-static {v8}, Lcom/htc/WifiRouter/UserManagement;->access$3400(Lcom/htc/WifiRouter/UserManagement;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 989
    iget-object v7, p0, Lcom/htc/WifiRouter/UserManagement$12;->this$0:Lcom/htc/WifiRouter/UserManagement;

    const/4 v8, 0x1

    #calls: Lcom/htc/WifiRouter/UserManagement;->updateIPtable(Z)V
    invoke-static {v7, v8}, Lcom/htc/WifiRouter/UserManagement;->access$400(Lcom/htc/WifiRouter/UserManagement;Z)V

    .line 990
    iget-object v7, p0, Lcom/htc/WifiRouter/UserManagement$12;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->ClientInfo:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/WifiRouter/UserManagement;->access$300(Lcom/htc/WifiRouter/UserManagement;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 991
    iget-object v7, p0, Lcom/htc/WifiRouter/UserManagement$12;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->ClientInfo:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/WifiRouter/UserManagement;->access$300(Lcom/htc/WifiRouter/UserManagement;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/WifiRouter/UserManagement$12;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->ClientInfo:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/htc/WifiRouter/UserManagement;->access$300(Lcom/htc/WifiRouter/UserManagement;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 996
    :goto_1
    sget-object v7, Lcom/htc/WifiRouter/WifiRouter;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 997
    const v7, 0x7f09005a

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 993
    :cond_1
    const v7, 0x7f090059

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 999
    :cond_2
    const v7, 0x7f090058

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0
.end method
