.class Lcom/android/mms/ui/ComposeMessageActivity$60;
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
    .line 10548
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$60;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

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

    .line 10550
    packed-switch p2, :pswitch_data_0

    .line 10570
    :cond_0
    :goto_0
    return-void

    .line 10552
    :pswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$60;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->showLayoutList()V
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$12100(Lcom/android/mms/ui/ComposeMessageActivity;)V

    goto :goto_0

    .line 10555
    :pswitch_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$60;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageBodyEditor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 10556
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$60;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageBodyEditor;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MessageBodyEditor;->showDurationDialog(I)V

    goto :goto_0

    .line 10560
    :pswitch_2
    invoke-static {}, Lcom/android/mms/ui/ComposeMessageActivity;->access$11200()Z

    move-result v1

    if-nez v1, :cond_1

    .line 10561
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$11202(Z)Z

    .line 10562
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$60;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->backupSendingOption()V

    .line 10565
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$60;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const-class v2, Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10566
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "sending_options"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 10567
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$60;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 10550
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
