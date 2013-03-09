.class Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$25;
.super Ljava/lang/Object;
.source "CSConfirmDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->createTermDialog()V
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
    .line 545
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$25;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v4, 0x1

    .line 547
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$25;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/htc/cs/util/CSStatusBarNotification;->cancel(Landroid/content/Context;I)V

    .line 549
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$25;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    #getter for: Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->versionList:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->access$500(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 551
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$25;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    invoke-static {v1, v4}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setAgreeTerm(Landroid/content/Context;Z)V

    .line 552
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$25;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$25;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    #getter for: Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->versionList:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->access$500(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setLegalDocVersion(Landroid/content/Context;Ljava/lang/String;)V

    .line 554
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.cs.dashboard.sendversion"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 555
    .local v0, intentDashboard:Landroid/content/Intent;
    const-string v2, "version1"

    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$25;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    #getter for: Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->versionList:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->access$500(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 556
    const-string v2, "version2"

    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$25;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    #getter for: Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->versionList:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->access$500(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 557
    const-string v2, "version3"

    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$25;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    #getter for: Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->versionList:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->access$500(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 558
    const-string v2, "version4"

    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$25;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    #getter for: Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->versionList:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->access$500(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 559
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$25;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    invoke-virtual {v1, v0}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 562
    .end local v0           #intentDashboard:Landroid/content/Intent;
    :cond_0
    return-void
.end method
