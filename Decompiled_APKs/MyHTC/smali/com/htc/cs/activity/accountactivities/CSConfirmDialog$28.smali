.class Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$28;
.super Landroid/os/Handler;
.source "CSConfirmDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;
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
    .line 684
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$28;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/16 v3, 0xe

    const/16 v2, 0xd

    const/16 v1, 0xa

    const/4 v5, 0x7

    .line 687
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 719
    :cond_0
    :goto_0
    return-void

    .line 689
    :pswitch_0
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$28;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    #calls: Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->activityDestroyed()Z
    invoke-static {v0}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->access$000(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 690
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v5, :cond_1

    .line 691
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$28;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    const-string v1, "%s/Services/LegalDocs.svc/LegalDocs/Pending/%s/%s/content.html"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$28;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    invoke-static {v4}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getServerName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$28;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    invoke-static {v4}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getCSRegion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->TosURL:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->access$402(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 692
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$28;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    #calls: Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->createTermDialog()V
    invoke-static {v0}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->access$600(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;)V

    .line 693
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$28;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    invoke-virtual {v0, v5}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->showDialog(I)V

    goto :goto_0

    .line 695
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_2

    .line 696
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$28;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    invoke-virtual {v0, v1}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->showDialog(I)V

    goto :goto_0

    .line 697
    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_3

    .line 698
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$28;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    invoke-virtual {v0, v2}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->showDialog(I)V

    goto :goto_0

    .line 700
    :cond_3
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$28;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->showDialog(I)V

    goto :goto_0

    .line 704
    :pswitch_1
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$28;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    #calls: Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->activityDestroyed()Z
    invoke-static {v0}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->access$000(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 705
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x1f6

    if-ne v0, v1, :cond_4

    .line 706
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$28;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/htc/cs/util/CSStatusBarNotification;->cancel(Landroid/content/Context;I)V

    .line 707
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$28;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    invoke-static {v0}, Lcom/htc/cs/service/DashboardService;->removeAccount(Landroid/content/Context;)V

    .line 708
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$28;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    invoke-virtual {v0}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->finish()V

    .line 710
    :cond_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v3, :cond_5

    .line 711
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$28;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    invoke-virtual {v0, v3}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->showDialog(I)V

    goto/16 :goto_0

    .line 713
    :cond_5
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$28;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->showDialog(I)V

    goto/16 :goto_0

    .line 687
    nop

    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
