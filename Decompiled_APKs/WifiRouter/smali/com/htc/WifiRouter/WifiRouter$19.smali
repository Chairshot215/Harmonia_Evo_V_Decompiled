.class Lcom/htc/WifiRouter/WifiRouter$19;
.super Ljava/lang/Object;
.source "WifiRouter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/WifiRouter/WifiRouter;
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
    .line 1031
    iput-object p1, p0, Lcom/htc/WifiRouter/WifiRouter$19;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1033
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1034
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter$19;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    const-class v2, Lcom/htc/WifiRouter/UserManagement;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1035
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter$19;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    invoke-virtual {v1, v0}, Lcom/htc/WifiRouter/WifiRouter;->startActivity(Landroid/content/Intent;)V

    .line 1036
    return-void
.end method
