.class Lcom/htc/WifiRouter/UserManagement$2;
.super Ljava/lang/Object;
.source "UserManagement.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/WifiRouter/UserManagement;->initLayout()V
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
    .line 614
    iput-object p1, p0, Lcom/htc/WifiRouter/UserManagement$2;->this$0:Lcom/htc/WifiRouter/UserManagement;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 616
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement$2;->this$0:Lcom/htc/WifiRouter/UserManagement;

    invoke-virtual {v0}, Lcom/htc/WifiRouter/UserManagement;->finish()V

    .line 617
    return-void
.end method
