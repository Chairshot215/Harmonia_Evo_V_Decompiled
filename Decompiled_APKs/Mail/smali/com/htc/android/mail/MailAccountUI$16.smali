.class Lcom/htc/android/mail/MailAccountUI$16;
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
    .line 1016
    iput-object p1, p0, Lcom/htc/android/mail/MailAccountUI$16;->this$0:Lcom/htc/android/mail/MailAccountUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "av"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1020
    packed-switch p3, :pswitch_data_0

    .line 1031
    :goto_0
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$16;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-boolean v0, v0, Lcom/htc/android/mail/MailAccountUI;->m_bProtocolItemInit:Z

    if-nez v0, :cond_0

    .line 1032
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$16;->this$0:Lcom/htc/android/mail/MailAccountUI;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/android/mail/MailAccountUI;->m_bProtocolItemInit:Z

    .line 1050
    :goto_1
    return-void

    .line 1023
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$16;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v0, v0, Lcom/htc/android/mail/MailAccountUI;->mServerLabel:Landroid/widget/TextView;

    const v1, 0x7f0b0074

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1026
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$16;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v0, v0, Lcom/htc/android/mail/MailAccountUI;->mServerLabel:Landroid/widget/TextView;

    const v1, 0x7f0b0075

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1036
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$16;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v0, v0, Lcom/htc/android/mail/MailAccountUI;->mSecurityIn:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v0}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 1047
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$16;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v0, v0, Lcom/htc/android/mail/MailAccountUI;->mPort:Landroid/widget/EditText;

    invoke-static {}, Lcom/htc/android/mail/MailAccountUI;->access$600()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1038
    :pswitch_2
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$16;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v0, v0, Lcom/htc/android/mail/MailAccountUI;->mPort:Landroid/widget/EditText;

    invoke-static {}, Lcom/htc/android/mail/MailAccountUI;->access$600()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1041
    :pswitch_3
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$16;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v0, v0, Lcom/htc/android/mail/MailAccountUI;->mPort:Landroid/widget/EditText;

    invoke-static {}, Lcom/htc/android/mail/MailAccountUI;->access$700()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1044
    :pswitch_4
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$16;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v0, v0, Lcom/htc/android/mail/MailAccountUI;->mPort:Landroid/widget/EditText;

    invoke-static {}, Lcom/htc/android/mail/MailAccountUI;->access$600()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1020
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1036
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onNothingSelected(Lcom/htc/widget/HtcAdapterView;)V
    .locals 0
    .parameter "av"

    .prologue
    .line 1052
    return-void
.end method
