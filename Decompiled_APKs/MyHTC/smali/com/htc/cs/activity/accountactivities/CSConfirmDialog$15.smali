.class Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$15;
.super Ljava/lang/Object;
.source "CSConfirmDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->createCSConfirmDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;


# direct methods
.method constructor <init>(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$15;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 329
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$15;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/htc/cs/util/CSStatusBarNotification;->cancel(Landroid/content/Context;I)V

    .line 330
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 331
    .local v0, myIntent:Landroid/content/Intent;
    const-string v1, "com.htc.cs"

    const-string v2, "com.htc.cs.activity.accountactivities.CS_login"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    const-string v1, "IntentSource"

    const-string v2, "thirdParty"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$15;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    invoke-virtual {v1, v0}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->startActivity(Landroid/content/Intent;)V

    .line 334
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$15;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    invoke-virtual {v1}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->finish()V

    .line 335
    return-void
.end method
