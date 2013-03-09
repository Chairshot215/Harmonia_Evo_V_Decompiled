.class Lcom/htc/android/mail/MailAccountUI$14;
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
    .line 945
    iput-object p1, p0, Lcom/htc/android/mail/MailAccountUI$14;->this$0:Lcom/htc/android/mail/MailAccountUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter "av"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/16 v4, 0x8f

    const/16 v3, 0x6e

    const/4 v2, 0x2

    .line 947
    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI$14;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-boolean v1, v1, Lcom/htc/android/mail/MailAccountUI;->m_bSecureInItemInit:Z

    if-nez v1, :cond_0

    .line 948
    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI$14;->this$0:Lcom/htc/android/mail/MailAccountUI;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/htc/android/mail/MailAccountUI;->m_bSecureInItemInit:Z

    .line 978
    :goto_0
    return-void

    .line 954
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI$14;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI;->mProtocol:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v1}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v0

    .line 955
    .local v0, ptc:I
    packed-switch p3, :pswitch_data_0

    .line 975
    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI$14;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI;->mPort:Landroid/widget/EditText;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 957
    :pswitch_0
    if-eq v0, v2, :cond_1

    .line 958
    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI$14;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI;->mPort:Landroid/widget/EditText;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 960
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI$14;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI;->mPort:Landroid/widget/EditText;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 963
    :pswitch_1
    if-eq v0, v2, :cond_2

    .line 964
    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI$14;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI;->mPort:Landroid/widget/EditText;

    const/16 v2, 0x3e3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 966
    :cond_2
    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI$14;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI;->mPort:Landroid/widget/EditText;

    const/16 v2, 0x3e1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 969
    :pswitch_2
    if-eq v0, v2, :cond_3

    .line 970
    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI$14;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI;->mPort:Landroid/widget/EditText;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 972
    :cond_3
    iget-object v1, p0, Lcom/htc/android/mail/MailAccountUI$14;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/MailAccountUI;->mPort:Landroid/widget/EditText;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 955
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
    .line 982
    return-void
.end method
