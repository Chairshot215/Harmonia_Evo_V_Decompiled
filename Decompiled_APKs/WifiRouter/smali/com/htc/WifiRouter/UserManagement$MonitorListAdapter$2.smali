.class Lcom/htc/WifiRouter/UserManagement$MonitorListAdapter$2;
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
    .line 125
    iput-object p1, p0, Lcom/htc/WifiRouter/UserManagement$MonitorListAdapter$2;->this$1:Lcom/htc/WifiRouter/UserManagement$MonitorListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object v0, v2

    check-cast v0, Landroid/widget/LinearLayout;

    .line 128
    .local v0, item:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, macaddress:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/WifiRouter/UserManagement$MonitorListAdapter$2;->this$1:Lcom/htc/WifiRouter/UserManagement$MonitorListAdapter;

    iget-object v2, v2, Lcom/htc/WifiRouter/UserManagement$MonitorListAdapter;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #calls: Lcom/htc/WifiRouter/UserManagement;->addMacToBlackList(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/htc/WifiRouter/UserManagement;->access$200(Lcom/htc/WifiRouter/UserManagement;Ljava/lang/String;)V

    .line 131
    return-void
.end method
