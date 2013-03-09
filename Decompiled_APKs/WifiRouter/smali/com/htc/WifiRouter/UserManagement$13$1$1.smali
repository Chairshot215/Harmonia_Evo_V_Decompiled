.class Lcom/htc/WifiRouter/UserManagement$13$1$1;
.super Ljava/lang/Object;
.source "UserManagement.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/WifiRouter/UserManagement$13$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/htc/WifiRouter/UserManagement$13$1;


# direct methods
.method constructor <init>(Lcom/htc/WifiRouter/UserManagement$13$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1028
    iput-object p1, p0, Lcom/htc/WifiRouter/UserManagement$13$1$1;->this$2:Lcom/htc/WifiRouter/UserManagement$13$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1030
    sget-object v0, Lcom/htc/WifiRouter/UserManagement;->mWhiteList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1031
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement$13$1$1;->this$2:Lcom/htc/WifiRouter/UserManagement$13$1;

    iget-object v0, v0, Lcom/htc/WifiRouter/UserManagement$13$1;->this$1:Lcom/htc/WifiRouter/UserManagement$13;

    iget-object v0, v0, Lcom/htc/WifiRouter/UserManagement$13;->this$0:Lcom/htc/WifiRouter/UserManagement;

    iget-object v1, p0, Lcom/htc/WifiRouter/UserManagement$13$1$1;->this$2:Lcom/htc/WifiRouter/UserManagement$13$1;

    iget v1, v1, Lcom/htc/WifiRouter/UserManagement$13$1;->val$selectedPosition:I

    #calls: Lcom/htc/WifiRouter/UserManagement;->addToWlistFromBlist(I)V
    invoke-static {v0, v1}, Lcom/htc/WifiRouter/UserManagement;->access$3700(Lcom/htc/WifiRouter/UserManagement;I)V

    .line 1032
    return-void
.end method
