.class Lcom/htc/android/mail/MailAccountUI$15;
.super Ljava/lang/Object;
.source "MailAccountUI.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailAccountUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailAccountUI;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailAccountUI;)V
    .locals 0
    .parameter

    .prologue
    .line 985
    iput-object p1, p0, Lcom/htc/android/mail/MailAccountUI$15;->this$0:Lcom/htc/android/mail/MailAccountUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "av"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    .line 987
    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI$15;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-boolean v1, v1, Lcom/htc/android/mail/MailAccountUI;->m_bSecureOutItemInit:Z

    if-nez v1, :cond_0

    .line 988
    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI$15;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iput-boolean v3, v1, Lcom/htc/android/mail/MailAccountUI;->m_bSecureOutItemInit:Z

    .line 1011
    :goto_0
    return-void

    .line 992
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI$15;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI;->mProtocol:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v1}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v0

    .line 993
    .local v0, ptc:I
    packed-switch p3, :pswitch_data_0

    .line 1008
    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI$15;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI;->mOutPort:Landroid/widget/EditText;

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 995
    :pswitch_0
    invoke-static {}, Lcom/htc/android/mail/MailAccountUI;->access$300()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "MailAccountUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "providerStr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/MailAccountUI$15;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v3, v3, Lcom/htc/android/mail/MailAccountUI;->providerStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI$15;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI;->providerStr:Ljava/lang/String;

    const-string v2, "Mac"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 997
    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI$15;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI;->mOutPort:Landroid/widget/EditText;

    const/16 v2, 0x24b

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 999
    :cond_2
    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI$15;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI;->mOutPort:Landroid/widget/EditText;

    invoke-static {}, Lcom/htc/android/mail/MailAccountUI;->access$500()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1002
    :pswitch_1
    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI$15;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI;->mOutPort:Landroid/widget/EditText;

    invoke-static {}, Lcom/htc/android/mail/MailAccountUI;->access$500()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1005
    :pswitch_2
    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI$15;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI;->mOutPort:Landroid/widget/EditText;

    invoke-static {}, Lcom/htc/android/mail/MailAccountUI;->access$500()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 993
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onNothingSelected(Lcom/htc/widget/HtcAdapterView;)V
    .locals 0
    .parameter "av"

    .prologue
    .line 1013
    return-void
.end method
