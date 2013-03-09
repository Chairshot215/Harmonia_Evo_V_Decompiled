.class Lcom/htc/WifiRouter/UserManagement$15;
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
    .line 1076
    iput-object p1, p0, Lcom/htc/WifiRouter/UserManagement$15;->this$0:Lcom/htc/WifiRouter/UserManagement;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 10
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
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1080
    move v5, p3

    .line 1081
    .local v5, selectedPosition:I
    invoke-virtual {p1, p3}, Lcom/htc/widget/HtcAdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1082
    .local v3, macAddress:Ljava/lang/String;
    const/high16 v6, 0x7f0b

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1083
    .local v4, name:Ljava/lang/String;
    new-instance v6, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v7, p0, Lcom/htc/WifiRouter/UserManagement$15;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/htc/WifiRouter/UserManagement;->access$3000(Lcom/htc/WifiRouter/UserManagement;)Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f090052

    invoke-virtual {v6, v7, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    .line 1087
    .local v2, mBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    iget-object v6, p0, Lcom/htc/WifiRouter/UserManagement$15;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->mLayoutFactory:Landroid/view/LayoutInflater;
    invoke-static {v6}, Lcom/htc/WifiRouter/UserManagement;->access$3600(Lcom/htc/WifiRouter/UserManagement;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030001

    invoke-virtual {v6, v7, v9, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1088
    .local v1, contentView:Landroid/widget/LinearLayout;
    const v6, 0x7f0b0004

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1089
    const v6, 0x7f0b0007

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1090
    .local v0, clientip:Landroid/widget/TextView;
    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1091
    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 1095
    iget-object v6, p0, Lcom/htc/WifiRouter/UserManagement$15;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #calls: Lcom/htc/WifiRouter/UserManagement;->updateIPtable(Z)V
    invoke-static {v6, v8}, Lcom/htc/WifiRouter/UserManagement;->access$400(Lcom/htc/WifiRouter/UserManagement;Z)V

    .line 1096
    iget-object v6, p0, Lcom/htc/WifiRouter/UserManagement$15;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->ClientInfo:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/htc/WifiRouter/UserManagement;->access$300(Lcom/htc/WifiRouter/UserManagement;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1097
    iget-object v6, p0, Lcom/htc/WifiRouter/UserManagement$15;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->ClientInfo:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/htc/WifiRouter/UserManagement;->access$300(Lcom/htc/WifiRouter/UserManagement;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/WifiRouter/UserManagement$15;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->ClientInfo:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/WifiRouter/UserManagement;->access$300(Lcom/htc/WifiRouter/UserManagement;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1102
    :goto_0
    return-void

    .line 1099
    :cond_0
    const v6, 0x7f090059

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
