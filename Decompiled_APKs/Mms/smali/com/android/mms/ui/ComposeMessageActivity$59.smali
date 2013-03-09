.class Lcom/android/mms/ui/ComposeMessageActivity$59;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->showSettingList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 10503
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$59;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    .line 10505
    packed-switch p2, :pswitch_data_0

    .line 10528
    :goto_0
    return-void

    .line 10508
    :pswitch_0
    invoke-static {}, Lcom/android/mms/ui/ComposeMessageActivity;->access$11200()Z

    move-result v1

    if-nez v1, :cond_0

    .line 10509
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$11202(Z)Z

    .line 10510
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$59;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->backupSendingOption()V

    .line 10513
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$59;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const-class v2, Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10515
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "sending_options_MmsPriority"

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$59;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMmsPriority:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$11300(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10516
    const-string v1, "sending_options_SmsPriority"

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$59;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSmsPriority:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$11400(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10517
    const-string v1, "sending_options_SmsDeliveryReport"

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$59;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSmsDeliveryReport:Z
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$11500(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 10518
    const-string v1, "sending_options_MmsDeliveryReport"

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$59;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMmsDeliveryReport:Z
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$11600(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 10519
    const-string v1, "sending_options_MmsReadReport"

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$59;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMmsReadReport:Z
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$11700(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 10520
    const-string v1, "sending_options_SmsCallback"

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$59;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSmsCallback:Z
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$11800(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 10521
    const-string v1, "sending_options_MmsCallback"

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$59;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMmsCallback:Z
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$11900(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 10522
    const-string v1, "sending_options_CallbackNumber"

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$59;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mCallbackNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$12000(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10524
    const-string v1, "sending_options"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 10525
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$59;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 10505
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
