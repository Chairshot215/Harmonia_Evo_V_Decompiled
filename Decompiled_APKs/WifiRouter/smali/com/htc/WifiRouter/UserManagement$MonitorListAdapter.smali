.class final Lcom/htc/WifiRouter/UserManagement$MonitorListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "UserManagement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/WifiRouter/UserManagement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MonitorListAdapter"
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
.field mButtonAllowListener:Landroid/view/View$OnClickListener;

.field mButtonRejectListener:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lcom/htc/WifiRouter/UserManagement;


# direct methods
.method public constructor <init>(Lcom/htc/WifiRouter/UserManagement;Landroid/content/Context;IILjava/util/List;)V
    .locals 1
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
    .line 135
    .local p5, objects:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/WifiRouter/UserManagement$MonitorListAdapter;->this$0:Lcom/htc/WifiRouter/UserManagement;

    .line 136
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 116
    new-instance v0, Lcom/htc/WifiRouter/UserManagement$MonitorListAdapter$1;

    invoke-direct {v0, p0}, Lcom/htc/WifiRouter/UserManagement$MonitorListAdapter$1;-><init>(Lcom/htc/WifiRouter/UserManagement$MonitorListAdapter;)V

    iput-object v0, p0, Lcom/htc/WifiRouter/UserManagement$MonitorListAdapter;->mButtonAllowListener:Landroid/view/View$OnClickListener;

    .line 125
    new-instance v0, Lcom/htc/WifiRouter/UserManagement$MonitorListAdapter$2;

    invoke-direct {v0, p0}, Lcom/htc/WifiRouter/UserManagement$MonitorListAdapter$2;-><init>(Lcom/htc/WifiRouter/UserManagement$MonitorListAdapter;)V

    iput-object v0, p0, Lcom/htc/WifiRouter/UserManagement$MonitorListAdapter;->mButtonRejectListener:Landroid/view/View$OnClickListener;

    .line 138
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 142
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 143
    .local v4, result:Landroid/view/View;
    const v5, 0x7f0b0009

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 144
    .local v0, allow:Landroid/widget/Button;
    iget-object v5, p0, Lcom/htc/WifiRouter/UserManagement$MonitorListAdapter;->mButtonAllowListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    const v5, 0x7f0b000a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 146
    .local v3, reject:Landroid/widget/Button;
    iget-object v5, p0, Lcom/htc/WifiRouter/UserManagement$MonitorListAdapter;->mButtonRejectListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    invoke-virtual {p0, p1}, Lcom/htc/WifiRouter/UserManagement$MonitorListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, macAddress:Ljava/lang/String;
    const v5, 0x7f0b0008

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 150
    iget-object v5, p0, Lcom/htc/WifiRouter/UserManagement$MonitorListAdapter;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->ClientInfo:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/WifiRouter/UserManagement;->access$300(Lcom/htc/WifiRouter/UserManagement;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 151
    iget-object v5, p0, Lcom/htc/WifiRouter/UserManagement$MonitorListAdapter;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->ClientInfo:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/WifiRouter/UserManagement;->access$300(Lcom/htc/WifiRouter/UserManagement;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    add-int/lit8 v1, v5, -0x2

    .line 152
    .local v1, deviceNamePosition:I
    const/high16 v5, 0x7f0b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/htc/WifiRouter/UserManagement$MonitorListAdapter;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->ClientInfo:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/htc/WifiRouter/UserManagement;->access$300(Lcom/htc/WifiRouter/UserManagement;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    .end local v1           #deviceNamePosition:I
    :cond_0
    return-object v4
.end method
