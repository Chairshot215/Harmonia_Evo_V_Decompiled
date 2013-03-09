.class Lcom/htc/WifiRouter/UserManagement$11$1;
.super Ljava/lang/Object;
.source "UserManagement.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/WifiRouter/UserManagement$11;->onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/WifiRouter/UserManagement$11;

.field final synthetic val$macAddress:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/htc/WifiRouter/UserManagement$11;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 879
    iput-object p1, p0, Lcom/htc/WifiRouter/UserManagement$11$1;->this$1:Lcom/htc/WifiRouter/UserManagement$11;

    iput-object p2, p0, Lcom/htc/WifiRouter/UserManagement$11$1;->val$macAddress:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 883
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement$11$1;->this$1:Lcom/htc/WifiRouter/UserManagement$11;

    iget-object v0, v0, Lcom/htc/WifiRouter/UserManagement$11;->this$0:Lcom/htc/WifiRouter/UserManagement;

    iget-object v1, p0, Lcom/htc/WifiRouter/UserManagement$11$1;->val$macAddress:Ljava/lang/String;

    #calls: Lcom/htc/WifiRouter/UserManagement;->addMacToWhiteList(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/WifiRouter/UserManagement;->access$100(Lcom/htc/WifiRouter/UserManagement;Ljava/lang/String;)V

    .line 884
    return-void
.end method
