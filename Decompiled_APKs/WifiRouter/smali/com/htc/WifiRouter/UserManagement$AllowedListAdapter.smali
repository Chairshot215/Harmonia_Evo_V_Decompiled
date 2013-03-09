.class final Lcom/htc/WifiRouter/UserManagement$AllowedListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "UserManagement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/WifiRouter/UserManagement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AllowedListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/WifiRouter/UserManagement;


# direct methods
.method public constructor <init>(Lcom/htc/WifiRouter/UserManagement;Landroid/content/Context;IILjava/util/List;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "resource"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p5, objects:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/WifiRouter/UserManagement$AllowedListAdapter;->this$0:Lcom/htc/WifiRouter/UserManagement;

    .line 162
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 164
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v4, 0x7f0b0001

    .line 168
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 169
    .local v2, result:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/htc/WifiRouter/UserManagement$AllowedListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, macAddress:Ljava/lang/String;
    sget-object v3, Lcom/htc/WifiRouter/WifiRouter;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 171
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    :goto_0
    iget-object v3, p0, Lcom/htc/WifiRouter/UserManagement$AllowedListAdapter;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->ClientInfo:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/WifiRouter/UserManagement;->access$300(Lcom/htc/WifiRouter/UserManagement;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 176
    iget-object v3, p0, Lcom/htc/WifiRouter/UserManagement$AllowedListAdapter;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->ClientInfo:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/WifiRouter/UserManagement;->access$300(Lcom/htc/WifiRouter/UserManagement;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    add-int/lit8 v0, v3, -0x2

    .line 177
    .local v0, deviceNamePosition:I
    const/high16 v3, 0x7f0b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/htc/WifiRouter/UserManagement$AllowedListAdapter;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->ClientInfo:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/WifiRouter/UserManagement;->access$300(Lcom/htc/WifiRouter/UserManagement;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    .end local v0           #deviceNamePosition:I
    :cond_0
    return-object v2

    .line 173
    :cond_1
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
