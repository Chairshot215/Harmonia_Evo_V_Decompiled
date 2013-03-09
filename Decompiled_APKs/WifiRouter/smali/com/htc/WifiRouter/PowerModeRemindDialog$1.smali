.class Lcom/htc/WifiRouter/PowerModeRemindDialog$1;
.super Ljava/lang/Object;
.source "PowerModeRemindDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/WifiRouter/PowerModeRemindDialog;->showPowerModeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/WifiRouter/PowerModeRemindDialog;


# direct methods
.method constructor <init>(Lcom/htc/WifiRouter/PowerModeRemindDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/htc/WifiRouter/PowerModeRemindDialog$1;->this$0:Lcom/htc/WifiRouter/PowerModeRemindDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 113
    invoke-static {}, Lcom/htc/WifiRouter/PowerModeRemindDialog;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PowerModeRemindDialog"

    const-string v1, "no change power mode enable hotspot"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/htc/WifiRouter/PowerModeRemindDialog$1;->this$0:Lcom/htc/WifiRouter/PowerModeRemindDialog;

    invoke-virtual {v0}, Lcom/htc/WifiRouter/PowerModeRemindDialog;->finish()V

    .line 119
    return-void
.end method
