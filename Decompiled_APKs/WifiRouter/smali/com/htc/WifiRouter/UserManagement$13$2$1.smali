.class Lcom/htc/WifiRouter/UserManagement$13$2$1;
.super Ljava/lang/Object;
.source "UserManagement.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/WifiRouter/UserManagement$13$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/htc/WifiRouter/UserManagement$13$2;


# direct methods
.method constructor <init>(Lcom/htc/WifiRouter/UserManagement$13$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1047
    iput-object p1, p0, Lcom/htc/WifiRouter/UserManagement$13$2$1;->this$2:Lcom/htc/WifiRouter/UserManagement$13$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1050
    :try_start_0
    sget-object v0, Lcom/htc/WifiRouter/UserManagement;->mBlackList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/WifiRouter/UserManagement$13$2$1;->this$2:Lcom/htc/WifiRouter/UserManagement$13$2;

    iget v1, v1, Lcom/htc/WifiRouter/UserManagement$13$2;->val$selectedPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1051
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement$13$2$1;->this$2:Lcom/htc/WifiRouter/UserManagement$13$2;

    iget-object v0, v0, Lcom/htc/WifiRouter/UserManagement$13$2;->this$1:Lcom/htc/WifiRouter/UserManagement$13;

    iget-object v0, v0, Lcom/htc/WifiRouter/UserManagement$13;->this$0:Lcom/htc/WifiRouter/UserManagement;

    const/4 v1, 0x1

    #setter for: Lcom/htc/WifiRouter/UserManagement;->b_dirty:Z
    invoke-static {v0, v1}, Lcom/htc/WifiRouter/UserManagement;->access$3102(Lcom/htc/WifiRouter/UserManagement;Z)Z

    .line 1052
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement$13$2$1;->this$2:Lcom/htc/WifiRouter/UserManagement$13$2;

    iget-object v0, v0, Lcom/htc/WifiRouter/UserManagement$13$2;->this$1:Lcom/htc/WifiRouter/UserManagement$13;

    iget-object v0, v0, Lcom/htc/WifiRouter/UserManagement$13;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->blistAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v0}, Lcom/htc/WifiRouter/UserManagement;->access$3200(Lcom/htc/WifiRouter/UserManagement;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1055
    :goto_0
    return-void

    .line 1053
    :catch_0
    move-exception v0

    goto :goto_0
.end method
