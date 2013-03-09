.class Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$10;
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
    .line 232
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$10;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 234
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.cs.connectedservice.SMSConfirmAccount.OK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 235
    .local v0, mintent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$10;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    invoke-virtual {v1, v0}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->sendBroadcast(Landroid/content/Intent;)V

    .line 237
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$10;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    invoke-virtual {v1}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->finish()V

    .line 238
    return-void
.end method
