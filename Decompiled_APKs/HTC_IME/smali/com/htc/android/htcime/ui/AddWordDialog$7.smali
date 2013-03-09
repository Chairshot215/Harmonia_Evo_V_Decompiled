.class Lcom/htc/android/htcime/ui/AddWordDialog$7;
.super Landroid/content/BroadcastReceiver;
.source "AddWordDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/ui/AddWordDialog;->receiverRegister()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/ui/AddWordDialog;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/ui/AddWordDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/htc/android/htcime/ui/AddWordDialog$7;->this$0:Lcom/htc/android/htcime/ui/AddWordDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 335
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddWordDialog$7;->this$0:Lcom/htc/android/htcime/ui/AddWordDialog;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/AddWordDialog;->finish()V

    .line 339
    :cond_0
    return-void
.end method
