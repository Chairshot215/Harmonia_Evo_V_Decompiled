.class Lcom/htc/WifiRouter/WifiRouter$14;
.super Ljava/lang/Object;
.source "WifiRouter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/WifiRouter/WifiRouter;->showInvalidSsidDialogDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/WifiRouter/WifiRouter;


# direct methods
.method constructor <init>(Lcom/htc/WifiRouter/WifiRouter;)V
    .locals 0
    .parameter

    .prologue
    .line 742
    iput-object p1, p0, Lcom/htc/WifiRouter/WifiRouter$14;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 744
    iget-object v0, p0, Lcom/htc/WifiRouter/WifiRouter$14;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    const/4 v1, 0x0

    #setter for: Lcom/htc/WifiRouter/WifiRouter;->mInvalidSsidDialogShowed:Z
    invoke-static {v0, v1}, Lcom/htc/WifiRouter/WifiRouter;->access$3002(Lcom/htc/WifiRouter/WifiRouter;Z)Z

    .line 745
    return-void
.end method
