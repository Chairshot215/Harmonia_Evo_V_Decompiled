.class Lcom/htc/android/mail/ComposeActivity$63;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ComposeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ComposeActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ComposeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 7965
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$63;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/16 v4, 0x11

    .line 7967
    invoke-static {}, Lcom/htc/android/mail/ComposeActivity;->access$1600()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ComposeActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachOpenOrRemove> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7968
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 8000
    :cond_1
    :goto_0
    return-void

    .line 7972
    :pswitch_0
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$63;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->curAttach:Lcom/htc/android/mail/Attachment;
    invoke-static {v1}, Lcom/htc/android/mail/ComposeActivity;->access$3600(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/Attachment;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/android/mail/Attachment;->attachStates:Lcom/htc/android/mail/Attachment$States;

    sget-object v2, Lcom/htc/android/mail/Attachment$States;->missing:Lcom/htc/android/mail/Attachment$States;

    if-ne v1, v2, :cond_2

    .line 7973
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$63;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v1, v4}, Lcom/htc/android/mail/ComposeActivity;->showDialog(I)V

    goto :goto_0

    .line 7977
    :cond_2
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$63;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->curAttach:Lcom/htc/android/mail/Attachment;
    invoke-static {v1}, Lcom/htc/android/mail/ComposeActivity;->access$3600(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/Attachment;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/android/mail/Attachment;->attachStates:Lcom/htc/android/mail/Attachment$States;

    sget-object v2, Lcom/htc/android/mail/Attachment$States;->missing:Lcom/htc/android/mail/Attachment$States;

    if-ne v1, v2, :cond_3

    .line 7978
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$63;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v1, v4}, Lcom/htc/android/mail/ComposeActivity;->showDialog(I)V

    goto :goto_0

    .line 7979
    :cond_3
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$63;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->curAttach:Lcom/htc/android/mail/Attachment;
    invoke-static {v1}, Lcom/htc/android/mail/ComposeActivity;->access$3600(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/Attachment;

    move-result-object v1

    iget-wide v1, v1, Lcom/htc/android/mail/Attachment;->attachSize:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_4

    .line 7980
    const-string v1, "ComposeActivity"

    const-string v2, "file size is zero, bad file>"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7981
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$63;->this$0:Lcom/htc/android/mail/ComposeActivity;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/ComposeActivity;->showDialog(I)V

    goto :goto_0

    .line 7984
    :cond_4
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$63;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v1}, Lcom/htc/android/mail/ComposeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 7986
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$63;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v1, v1, Lcom/htc/android/mail/ComposeActivity;->editTo:Landroid/widget/IMEAutoCompleteTextView;

    if-eqz v1, :cond_5

    .line 7987
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$63;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v1, v1, Lcom/htc/android/mail/ComposeActivity;->editTo:Landroid/widget/IMEAutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/IMEAutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 7989
    :cond_5
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$63;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->curAttach:Lcom/htc/android/mail/Attachment;
    invoke-static {v1}, Lcom/htc/android/mail/ComposeActivity;->access$3600(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/Attachment;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$63;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$63;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v3}, Lcom/htc/android/mail/ComposeActivity;->access$5200(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/MailCommon;->PlayMedia(Lcom/htc/android/mail/Attachment;Landroid/content/Context;I)V

    goto :goto_0

    .line 7994
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :pswitch_1
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$63;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$63;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->curBtn:Lcom/htc/widget/QuickContactBadge;
    invoke-static {v2}, Lcom/htc/android/mail/ComposeActivity;->access$3700(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/widget/QuickContactBadge;

    move-result-object v2

    #calls: Lcom/htc/android/mail/ComposeActivity;->removeAttachment(Landroid/view/View;)V
    invoke-static {v1, v2}, Lcom/htc/android/mail/ComposeActivity;->access$10100(Lcom/htc/android/mail/ComposeActivity;Landroid/view/View;)V

    goto/16 :goto_0

    .line 7997
    :pswitch_2
    invoke-static {}, Lcom/htc/android/mail/ComposeActivity;->access$1600()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ComposeActivity"

    const-string v2, "attach 3>"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7968
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
