.class Lcom/htc/WifiRouter/UserManagement$MonitorListAdapter$1;
.super Ljava/lang/Object;
.source "UserManagement.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/WifiRouter/UserManagement$MonitorListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/WifiRouter/UserManagement$MonitorListAdapter;


# direct methods
.method constructor <init>(Lcom/htc/WifiRouter/UserManagement$MonitorListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/htc/WifiRouter/UserManagement$MonitorListAdapter$1;->this$1:Lcom/htc/WifiRouter/UserManagement$MonitorListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object v0, v2

    check-cast v0, Landroid/widget/LinearLayout;

    .line 119
    .local v0, item:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, macaddress:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/WifiRouter/UserManagement$MonitorListAdapter$1;->this$1:Lcom/htc/WifiRouter/UserManagement$MonitorListAdapter;

    iget-object v2, v2, Lcom/htc/WifiRouter/UserManagement$MonitorListAdapter;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #calls: Lcom/htc/WifiRouter/UserManagement;->addMacToWhiteList(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/htc/WifiRouter/UserManagement;->access$100(Lcom/htc/WifiRouter/UserManagement;Ljava/lang/String;)V

    .line 122
    return-void
.end method
