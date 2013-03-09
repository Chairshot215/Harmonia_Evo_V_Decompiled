.class Lcom/htc/android/mail/MailAccountUI$12;
.super Ljava/lang/Object;
.source "MailAccountUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailAccountUI;->updateScreen()V
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
    .line 829
    iput-object p1, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const v6, 0x7f0b0281

    const v7, 0x7f0b0280

    const/16 v5, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 831
    iget-object v4, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    #getter for: Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/htc/android/mail/MailAccountUI;->access$100(Lcom/htc/android/mail/MailAccountUI;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 929
    :goto_0
    return-void

    .line 832
    :cond_0
    iget-object v4, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v4, v4, Lcom/htc/android/mail/MailAccountUI;->mScreen1:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 833
    iget-object v4, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v4, v4, Lcom/htc/android/mail/MailAccountUI;->mScreen2:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 834
    iget-object v4, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v4, v4, Lcom/htc/android/mail/MailAccountUI;->mScreen3:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 835
    iget-object v4, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v4, v4, Lcom/htc/android/mail/MailAccountUI;->mScreen4:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 837
    iget-object v4, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v4, v4, Lcom/htc/android/mail/MailAccountUI;->btnL:Lcom/htc/android/mail/widget/MailFooterBarButton;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 838
    iget-object v4, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget v4, v4, Lcom/htc/android/mail/MailAccountUI;->curNewAccountStep:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 840
    :pswitch_0
    iget-object v4, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-boolean v4, v4, Lcom/htc/android/mail/MailAccountUI;->mInEditMode:Z

    if-eqz v4, :cond_1

    .line 841
    iget-object v4, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    const v5, 0x7f0b029a

    invoke-virtual {v4, v5}, Lcom/htc/android/mail/MailAccountUI;->setTitleText(I)V

    .line 849
    :goto_1
    iget-object v4, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-boolean v4, v4, Lcom/htc/android/mail/MailAccountUI;->mInEditMode:Z

    if-eqz v4, :cond_3

    .line 850
    iget-object v4, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v4, v4, Lcom/htc/android/mail/MailAccountUI;->btnL:Lcom/htc/android/mail/widget/MailFooterBarButton;

    const v5, 0x7f0b027f

    invoke-virtual {v4, v5}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(I)V

    .line 856
    :goto_2
    iget-object v4, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v4, v4, Lcom/htc/android/mail/MailAccountUI;->btnR:Lcom/htc/android/mail/widget/MailFooterBarButton;

    invoke-virtual {v4, v7}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(I)V

    .line 858
    iget-object v4, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v4, v4, Lcom/htc/android/mail/MailAccountUI;->mScreen1:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 859
    iget-object v3, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v4, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v4, v4, Lcom/htc/android/mail/MailAccountUI;->mEmailAddress:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/htc/android/mail/MailAccountUI;->mOriEmailAddr:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/htc/android/mail/MailAccountUI;->access$202(Lcom/htc/android/mail/MailAccountUI;Ljava/lang/String;)Ljava/lang/String;

    .line 861
    iget-object v3, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v3, v3, Lcom/htc/android/mail/MailAccountUI;->btnR:Lcom/htc/android/mail/widget/MailFooterBarButton;

    invoke-virtual {v3, v2}, Lcom/htc/android/mail/widget/MailFooterBarButton;->enableButton(Z)V

    .line 862
    iget-object v3, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v3, v3, Lcom/htc/android/mail/MailAccountUI;->btnL:Lcom/htc/android/mail/widget/MailFooterBarButton;

    invoke-virtual {v3, v2}, Lcom/htc/android/mail/widget/MailFooterBarButton;->enableButton(Z)V

    goto :goto_0

    .line 843
    :cond_1
    invoke-static {}, Lcom/htc/android/mail/Mail;->isHuxEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "Other"

    iget-object v5, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v5, v5, Lcom/htc/android/mail/MailAccountUI;->titleString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 844
    iget-object v4, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v6, v6, Lcom/htc/android/mail/MailAccountUI;->titleString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - Sign in"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/android/mail/MailAccountUI;->setTitleText(Ljava/lang/String;)V

    goto :goto_1

    .line 846
    :cond_2
    iget-object v4, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    const v5, 0x7f0b0090

    invoke-virtual {v4, v5}, Lcom/htc/android/mail/MailAccountUI;->setTitleText(I)V

    goto :goto_1

    .line 852
    :cond_3
    iget-object v4, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v4, v4, Lcom/htc/android/mail/MailAccountUI;->btnL:Lcom/htc/android/mail/widget/MailFooterBarButton;

    const v5, 0x7f0b006a

    invoke-virtual {v4, v5}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(I)V

    goto :goto_2

    .line 866
    :pswitch_1
    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    const v4, 0x7f0b00c8

    invoke-virtual {v2, v4}, Lcom/htc/android/mail/MailAccountUI;->setTitleText(I)V

    .line 867
    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v2, v2, Lcom/htc/android/mail/MailAccountUI;->btnL:Lcom/htc/android/mail/widget/MailFooterBarButton;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v4}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 868
    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v2, v2, Lcom/htc/android/mail/MailAccountUI;->btnL:Lcom/htc/android/mail/widget/MailFooterBarButton;

    invoke-virtual {v2, v6}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(I)V

    .line 869
    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v2, v2, Lcom/htc/android/mail/MailAccountUI;->btnR:Lcom/htc/android/mail/widget/MailFooterBarButton;

    invoke-virtual {v2, v7}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(I)V

    .line 871
    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v2, v2, Lcom/htc/android/mail/MailAccountUI;->mInEmailAddress:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 872
    .local v1, str:Ljava/lang/String;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_5

    .line 873
    :cond_4
    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v2, v2, Lcom/htc/android/mail/MailAccountUI;->mInEmailAddress:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 876
    :goto_3
    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v2, v2, Lcom/htc/android/mail/MailAccountUI;->mScreen2:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 875
    :cond_5
    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v2, v2, Lcom/htc/android/mail/MailAccountUI;->mInUsername:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_3

    .line 879
    .end local v1           #str:Ljava/lang/String;
    :pswitch_2
    iget-object v4, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    const v5, 0x7f0b0071

    invoke-virtual {v4, v5}, Lcom/htc/android/mail/MailAccountUI;->setTitleText(I)V

    .line 880
    iget-object v4, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v4, v4, Lcom/htc/android/mail/MailAccountUI;->btnL:Lcom/htc/android/mail/widget/MailFooterBarButton;

    invoke-virtual {v4, v6}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(I)V

    .line 881
    iget-object v4, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v4, v4, Lcom/htc/android/mail/MailAccountUI;->btnR:Lcom/htc/android/mail/widget/MailFooterBarButton;

    invoke-virtual {v4, v7}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(I)V

    .line 883
    iget-object v4, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v4, v4, Lcom/htc/android/mail/MailAccountUI;->mOutUsername:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v5, v5, Lcom/htc/android/mail/MailAccountUI;->mInUsername:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 885
    iget-object v4, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v4, v4, Lcom/htc/android/mail/MailAccountUI;->mOutPassword:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v5, v5, Lcom/htc/android/mail/MailAccountUI;->mInPassword:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 887
    iget-object v4, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v4, v4, Lcom/htc/android/mail/MailAccountUI;->mOutUsername:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 888
    iget-object v4, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v4, v4, Lcom/htc/android/mail/MailAccountUI;->mScreen3:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 889
    iget-object v4, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v4, v4, Lcom/htc/android/mail/MailAccountUI;->mRequireLogin:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget v5, v5, Lcom/htc/android/mail/MailAccountUI;->screen3requirelogin:I

    if-ne v5, v2, :cond_6

    :goto_4
    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    :cond_6
    move v2, v3

    goto :goto_4

    .line 892
    :pswitch_3
    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-boolean v2, v2, Lcom/htc/android/mail/MailAccountUI;->mInEditMode:Z

    if-eqz v2, :cond_b

    .line 893
    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    const v4, 0x7f0b029a

    invoke-virtual {v2, v4}, Lcom/htc/android/mail/MailAccountUI;->setTitleText(I)V

    .line 901
    :goto_5
    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v2, v2, Lcom/htc/android/mail/MailAccountUI;->btnL:Lcom/htc/android/mail/widget/MailFooterBarButton;

    invoke-virtual {v2, v6}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(I)V

    .line 902
    invoke-static {}, Lcom/htc/android/mail/MailAccountUI;->access$300()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "MailAccountUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCallingActivity>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget v5, v5, Lcom/htc/android/mail/MailAccountUI;->mCallingActivity:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    :cond_7
    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget v2, v2, Lcom/htc/android/mail/MailAccountUI;->mCallingActivity:I

    const/16 v4, 0x5e

    if-eq v2, v4, :cond_d

    .line 904
    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v2, v2, Lcom/htc/android/mail/MailAccountUI;->btnR:Lcom/htc/android/mail/widget/MailFooterBarButton;

    const v4, 0x7f0b006b

    invoke-virtual {v2, v4}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(I)V

    .line 908
    :goto_6
    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v2, v2, Lcom/htc/android/mail/MailAccountUI;->btnL:Lcom/htc/android/mail/widget/MailFooterBarButton;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v4}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 910
    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v2, v2, Lcom/htc/android/mail/MailAccountUI;->providerStr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_8

    .line 911
    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    const-string v4, ""

    iput-object v4, v2, Lcom/htc/android/mail/MailAccountUI;->providerStr:Ljava/lang/String;

    .line 912
    :cond_8
    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-boolean v2, v2, Lcom/htc/android/mail/MailAccountUI;->mInEditMode:Z

    if-nez v2, :cond_a

    .line 913
    invoke-static {}, Lcom/htc/android/mail/MailAccountUI;->access$300()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "MailAccountUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "providerStr>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v5, v5, Lcom/htc/android/mail/MailAccountUI;->providerStr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    :cond_9
    invoke-static {}, Lcom/htc/android/mail/Mail;->isHuxEnabled()Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "Verizon"

    iget-object v4, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v4, v4, Lcom/htc/android/mail/MailAccountUI;->providerStr:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 915
    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v2, v2, Lcom/htc/android/mail/MailAccountUI;->mEmailAddress:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 916
    .local v0, desc:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v2, v2, Lcom/htc/android/mail/MailAccountUI;->mDesc:Landroid/widget/EditText;

    const/16 v4, 0x40

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 920
    .end local v0           #desc:Ljava/lang/String;
    :goto_7
    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v2, v2, Lcom/htc/android/mail/MailAccountUI;->mName:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v4, v4, Lcom/htc/android/mail/MailAccountUI;->mEmailAddress:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 923
    :cond_a
    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v2, v2, Lcom/htc/android/mail/MailAccountUI;->mDesc:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 924
    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v4, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v4, v4, Lcom/htc/android/mail/MailAccountUI;->mDesc:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/htc/android/mail/MailAccountUI;->mOriDesc:Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/htc/android/mail/MailAccountUI;->access$402(Lcom/htc/android/mail/MailAccountUI;Ljava/lang/String;)Ljava/lang/String;

    .line 925
    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v2, v2, Lcom/htc/android/mail/MailAccountUI;->mScreen4:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 895
    :cond_b
    invoke-static {}, Lcom/htc/android/mail/Mail;->isHuxEnabled()Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "Other"

    iget-object v4, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v4, v4, Lcom/htc/android/mail/MailAccountUI;->titleString:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 896
    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v5, v5, Lcom/htc/android/mail/MailAccountUI;->titleString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - Sign in"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/android/mail/MailAccountUI;->setTitleText(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 898
    :cond_c
    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    const v4, 0x7f0b0090

    invoke-virtual {v2, v4}, Lcom/htc/android/mail/MailAccountUI;->setTitleText(I)V

    goto/16 :goto_5

    .line 906
    :cond_d
    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v2, v2, Lcom/htc/android/mail/MailAccountUI;->btnR:Lcom/htc/android/mail/widget/MailFooterBarButton;

    invoke-virtual {v2, v7}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(I)V

    goto/16 :goto_6

    .line 918
    :cond_e
    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v2, v2, Lcom/htc/android/mail/MailAccountUI;->mDesc:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/htc/android/mail/MailAccountUI$12;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v4, v4, Lcom/htc/android/mail/MailAccountUI;->mEmailAddress:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/android/mail/MailAccountUI;->getAddrDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 838
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
