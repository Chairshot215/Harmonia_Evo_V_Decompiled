.class Lcom/htc/WifiRouter/WifiTurnOffConfirm$1;
.super Ljava/lang/Object;
.source "WifiTurnOffConfirm.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/WifiRouter/WifiTurnOffConfirm;->showWifiTurnOffDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/WifiRouter/WifiTurnOffConfirm;


# direct methods
.method constructor <init>(Lcom/htc/WifiRouter/WifiTurnOffConfirm;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/htc/WifiRouter/WifiTurnOffConfirm$1;->this$0:Lcom/htc/WifiRouter/WifiTurnOffConfirm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 104
    invoke-static {}, Lcom/htc/WifiRouter/WifiTurnOffConfirm;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiTurnOffConfirm"

    const-string v1, "cancel turnoff wifi"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/htc/WifiRouter/WifiTurnOffConfirm$1;->this$0:Lcom/htc/WifiRouter/WifiTurnOffConfirm;

    invoke-virtual {v0}, Lcom/htc/WifiRouter/WifiTurnOffConfirm;->finish()V

    .line 108
    return-void
.end method
