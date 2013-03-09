.class Lcom/htc/WifiRouter/UserManagement$14;
.super Ljava/lang/Object;
.source "UserManagement.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 1067
    iput-object p1, p0, Lcom/htc/WifiRouter/UserManagement$14;->this$0:Lcom/htc/WifiRouter/UserManagement;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement$14;->this$0:Lcom/htc/WifiRouter/UserManagement;

    const/4 v1, 0x0

    #setter for: Lcom/htc/WifiRouter/UserManagement;->dialogIsOn:Z
    invoke-static {v0, v1}, Lcom/htc/WifiRouter/UserManagement;->access$3302(Lcom/htc/WifiRouter/UserManagement;Z)Z

    .line 1073
    return-void
.end method
