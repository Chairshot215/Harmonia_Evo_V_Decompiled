.class Lcom/android/mms/ui/ComposeMessageActivity$1;
.super Landroid/os/Handler;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
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
    .line 974
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 36
    .parameter "msg"

    .prologue
    .line 977
    const-string v3, "ComposeMessageActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handle message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 1582
    const-string v3, "ComposeMessageActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 981
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$100(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSMS2Email()Z

    move-result v3

    if-nez v3, :cond_1

    .line 982
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$100(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v6, v3}, Lcom/android/mms/ui/RecipientsEditor;->setPhoneNumberConstraint(Z)V

    .line 984
    :cond_1
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_4

    .line 985
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v6, 0x0

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSmsVcard:[B
    invoke-static {v3, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$202(Lcom/android/mms/ui/ComposeMessageActivity;[B)[B

    .line 986
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageActivity;->mAppContext:Landroid/content/Context;

    const v6, 0x7f090060

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 988
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditorPanel:Lcom/android/mms/ui/MessageEditorPanel;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageEditorPanel;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 989
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditorPanel:Lcom/android/mms/ui/MessageEditorPanel;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageEditorPanel;

    move-result-object v3

    iget-object v3, v3, Lcom/android/mms/ui/MessageEditorPanel;->mEditor:Landroid/view/View;

    check-cast v3, Landroid/widget/EditText;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 990
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditorPanel:Lcom/android/mms/ui/MessageEditorPanel;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageEditorPanel;

    move-result-object v3

    iget-object v3, v3, Lcom/android/mms/ui/MessageEditorPanel;->mAttachedBtn:Landroid/view/View;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 1018
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditorPanel:Lcom/android/mms/ui/MessageEditorPanel;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageEditorPanel;

    move-result-object v3

    iget-object v3, v3, Lcom/android/mms/ui/MessageEditorPanel;->mAttachedBtn:Landroid/view/View;

    check-cast v3, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditorPanel:Lcom/android/mms/ui/MessageEditorPanel;
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageEditorPanel;

    move-result-object v6

    iget-object v6, v6, Lcom/android/mms/ui/MessageEditorPanel;->mAttachedBtn:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_a

    const/16 v6, 0xff

    :goto_3
    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setAlpha(I)V

    .line 1019
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v6, 0x7f0e001e

    invoke-virtual {v3, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 982
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 994
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v6, 0x7f0e0022

    invoke-virtual {v3, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v30

    .line 995
    .local v30, space:Landroid/view/View;
    const/16 v17, 0x0

    .line 996
    .local v17, isCdmaVcard:Z
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x61

    if-eq v3, v6, :cond_5

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0xad

    if-ne v3, v6, :cond_8

    .line 998
    :cond_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v6, :cond_7

    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->isCdmaMo()Z

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_7

    .line 1000
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/vcard/VCardEntry;

    invoke-virtual {v6, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->setCdmaSmsVcardInEditor(Lcom/android/vcard/VCardEntry;)V

    .line 1001
    const/16 v17, 0x1

    .line 1011
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditorPanel:Lcom/android/mms/ui/MessageEditorPanel;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageEditorPanel;

    move-result-object v3

    if-eqz v3, :cond_2

    if-nez v17, :cond_2

    .line 1012
    if-eqz v30, :cond_6

    const/16 v3, 0x8

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1013
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditorPanel:Lcom/android/mms/ui/MessageEditorPanel;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageEditorPanel;

    move-result-object v3

    iget-object v3, v3, Lcom/android/mms/ui/MessageEditorPanel;->mEditor:Landroid/view/View;

    check-cast v3, Landroid/widget/EditText;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1014
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditorPanel:Lcom/android/mms/ui/MessageEditorPanel;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageEditorPanel;

    move-result-object v3

    iget-object v3, v3, Lcom/android/mms/ui/MessageEditorPanel;->mEditor:Landroid/view/View;

    check-cast v3, Landroid/widget/EditText;

    const v6, 0x7f0901de

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setHint(I)V

    .line 1015
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditorPanel:Lcom/android/mms/ui/MessageEditorPanel;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageEditorPanel;

    move-result-object v3

    iget-object v3, v3, Lcom/android/mms/ui/MessageEditorPanel;->mAttachedBtn:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_2

    .line 1003
    :cond_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/vcard/VCardEntry;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->setSmsVcardListView(Lcom/android/vcard/VCardEntry;)V
    invoke-static {v6, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$400(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/vcard/VCardEntry;)V

    goto :goto_4

    .line 1005
    :cond_8
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v6, :cond_9

    .line 1006
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/vcard/VCardEntry;

    invoke-virtual {v6, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->setCdmaSmsVcardInEditor(Lcom/android/vcard/VCardEntry;)V

    .line 1007
    const/16 v17, 0x1

    goto :goto_4

    .line 1009
    :cond_9
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/vcard/VCardEntry;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->setSmsVcardListView(Lcom/android/vcard/VCardEntry;)V
    invoke-static {v6, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$400(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/vcard/VCardEntry;)V

    goto :goto_4

    .line 1018
    .end local v17           #isCdmaVcard:Z
    .end local v30           #space:Landroid/view/View;
    :cond_a
    const/16 v6, 0x80

    goto/16 :goto_3

    .line 1029
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->initFocus()V
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$500(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 1032
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1033
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIsReply:Z
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$600(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1035
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgTextEditor:Lcom/android/mms/ui/MessageTextEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTextEditor;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgTextEditor:Lcom/android/mms/ui/MessageTextEditor;
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTextEditor;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->launchIME(Landroid/widget/EditText;)V

    goto/16 :goto_0

    .line 1037
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$100(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1038
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$100(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/RecipientsEditor;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1040
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$100(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->launchIME(Landroid/widget/EditText;)V

    goto/16 :goto_0

    .line 1043
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgTextEditor:Lcom/android/mms/ui/MessageTextEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTextEditor;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgTextEditor:Lcom/android/mms/ui/MessageTextEditor;
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTextEditor;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->launchIME(Landroid/widget/EditText;)V

    goto/16 :goto_0

    .line 1055
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .line 1056
    .local v24, pdu:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, v24

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->processAfterOnCreate(Lcom/google/android/mms/pdu/MultimediaMessagePdu;)V
    invoke-static {v3, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$800(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/google/android/mms/pdu/MultimediaMessagePdu;)V

    goto/16 :goto_0

    .line 1059
    .end local v24           #pdu:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->processAfterOnCreate()V
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$900(Lcom/android/mms/ui/ComposeMessageActivity;)V

    goto/16 :goto_0

    .line 1062
    :sswitch_5
    new-instance v15, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const-class v6, Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {v15, v3, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1064
    .local v15, intent:Landroid/content/Intent;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {v15, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1065
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v3, v15}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1068
    .end local v15           #intent:Landroid/content/Intent;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMediaPicker:Lcom/android/mms/ui/MediaPicker;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1000(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MediaPicker;

    move-result-object v3

    const/16 v6, 0x12

    invoke-virtual {v3, v6}, Lcom/android/mms/ui/MediaPicker;->setType(I)V

    .line 1069
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMediaPicker:Lcom/android/mms/ui/MediaPicker;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1000(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MediaPicker;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {v6, v3}, Lcom/android/mms/ui/MediaPicker;->setMessage(Landroid/net/Uri;)V

    .line 1071
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMediaPicker:Lcom/android/mms/ui/MediaPicker;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1000(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MediaPicker;

    move-result-object v6

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v7, 0x1

    if-ne v3, v7, :cond_d

    const/4 v3, 0x1

    :goto_5
    invoke-virtual {v6, v3}, Lcom/android/mms/ui/MediaPicker;->setFlage(Z)V

    .line 1073
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMediaPicker:Lcom/android/mms/ui/MediaPicker;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1000(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MediaPicker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MediaPicker;->start()V

    goto/16 :goto_0

    .line 1071
    :cond_d
    const/4 v3, 0x0

    goto :goto_5

    .line 1083
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v6, 0x0

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMessageUri:Landroid/net/Uri;
    invoke-static {v3, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1102(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1088
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const-wide/16 v6, 0x0

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgId:J
    invoke-static {v3, v6, v7}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1202(Lcom/android/mms/ui/ComposeMessageActivity;J)J

    .line 1090
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMediaPicker:Lcom/android/mms/ui/MediaPicker;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1000(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MediaPicker;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/android/mms/ui/MediaPicker;->setFlage(Z)V

    .line 1092
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgTextEditor:Lcom/android/mms/ui/MessageTextEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTextEditor;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1093
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportComposerEnhance()Z

    move-result v3

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageBodyEditor;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 1094
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgTextEditor:Lcom/android/mms/ui/MessageTextEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTextEditor;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageBodyEditor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageBodyEditor;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/mms/ui/MessageTextEditor;->setText(Ljava/lang/CharSequence;)V

    .line 1097
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgTextEditor:Lcom/android/mms/ui/MessageTextEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTextEditor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageTextEditor;->getText()Landroid/text/Editable;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgTextEditor:Lcom/android/mms/ui/MessageTextEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTextEditor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageTextEditor;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1098
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgTextEditor:Lcom/android/mms/ui/MessageTextEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTextEditor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageTextEditor;->clearText()V

    goto/16 :goto_0

    .line 1103
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMediaPicker:Lcom/android/mms/ui/MediaPicker;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1000(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MediaPicker;

    move-result-object v3

    const/16 v6, 0x10

    invoke-virtual {v3, v6}, Lcom/android/mms/ui/MediaPicker;->setType(I)V

    .line 1104
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMediaPicker:Lcom/android/mms/ui/MediaPicker;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1000(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MediaPicker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MediaPicker;->start()V

    goto/16 :goto_0

    .line 1107
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMediaPicker:Lcom/android/mms/ui/MediaPicker;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1000(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MediaPicker;

    move-result-object v3

    const/16 v6, 0x11

    invoke-virtual {v3, v6}, Lcom/android/mms/ui/MediaPicker;->setType(I)V

    .line 1108
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMediaPicker:Lcom/android/mms/ui/MediaPicker;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1000(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MediaPicker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MediaPicker;->start()V

    goto/16 :goto_0

    .line 1113
    :sswitch_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/mms/model/LocationModel;

    .line 1114
    .local v19, location:Lcom/android/mms/model/LocationModel;
    new-instance v21, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const-class v6, Lcom/android/mms/location/LocationMapActivity;

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1115
    .local v21, mapIntent:Landroid/content/Intent;
    const-string v3, "extra_selected_place"

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/LocationModel;->getPlaceBytes()[B

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1116
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/LocationModel;->getMapUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 1117
    const-string v3, "extra_image_path"

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/LocationModel;->getMapUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1118
    :cond_f
    const-string v3, "extra_startup_flag"

    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1119
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/16 v6, 0x33

    move-object/from16 v0, v21

    invoke-virtual {v3, v0, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1128
    .end local v19           #location:Lcom/android/mms/model/LocationModel;
    .end local v21           #mapIntent:Landroid/content/Intent;
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/mms/model/MediaModel;

    .line 1129
    .local v4, media:Lcom/android/mms/model/MediaModel;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgTextEditor:Lcom/android/mms/ui/MessageTextEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTextEditor;

    move-result-object v3

    if-nez v3, :cond_12

    const-string v5, ""

    .line 1131
    .local v5, mText:Ljava/lang/String;
    :goto_6
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageBodyEditor;

    move-result-object v3

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIsFromDraft:Z
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1400(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v7

    if-nez v7, :cond_10

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIsEditOriginal:Z
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1500(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v7

    if-eqz v7, :cond_13

    :cond_10
    const/4 v7, 0x1

    :goto_7
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMessageUri:Landroid/net/Uri;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/android/mms/ui/MessageBodyEditor;->converToRelated(Lcom/android/mms/model/MediaModel;Ljava/lang/String;ZZLandroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1148
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgTextEditor:Lcom/android/mms/ui/MessageTextEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTextEditor;

    move-result-object v3

    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgTextEditor:Lcom/android/mms/ui/MessageTextEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTextEditor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageTextEditor;->clearText()V

    .line 1151
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMediaPicker:Lcom/android/mms/ui/MediaPicker;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1000(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MediaPicker;

    move-result-object v3

    const/16 v6, 0x12

    invoke-virtual {v3, v6}, Lcom/android/mms/ui/MediaPicker;->setType(I)V

    .line 1152
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMediaPicker:Lcom/android/mms/ui/MediaPicker;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1000(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MediaPicker;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageBodyEditor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageBodyEditor;->getSlideshowUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/mms/ui/MediaPicker;->setMessage(Landroid/net/Uri;)V

    .line 1153
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMediaPicker:Lcom/android/mms/ui/MediaPicker;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1000(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MediaPicker;

    move-result-object v3

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/android/mms/ui/MediaPicker;->setFlage(Z)V

    .line 1154
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMediaPicker:Lcom/android/mms/ui/MediaPicker;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1000(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MediaPicker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MediaPicker;->start()V

    goto/16 :goto_0

    .line 1129
    .end local v5           #mText:Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgTextEditor:Lcom/android/mms/ui/MessageTextEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTextEditor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageTextEditor;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 1131
    .restart local v5       #mText:Ljava/lang/String;
    :cond_13
    const/4 v7, 0x0

    goto :goto_7

    .line 1133
    :catch_0
    move-exception v14

    .line 1134
    .local v14, e:Lcom/android/mms/ExceedMessageSizeException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v7, 0x7f090051

    invoke-virtual {v6, v7}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v8, 0x7f090162

    invoke-virtual {v7, v8}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1140
    .end local v14           #e:Lcom/android/mms/ExceedMessageSizeException;
    :catch_1
    move-exception v14

    .line 1141
    .local v14, e:Lcom/google/android/mms/MmsException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageActivity;->mAppContext:Landroid/content/Context;

    const v6, 0x7f090060

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1160
    .end local v4           #media:Lcom/android/mms/model/MediaModel;
    .end local v5           #mText:Ljava/lang/String;
    .end local v14           #e:Lcom/google/android/mms/MmsException;
    :sswitch_c
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 1162
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Landroid/content/ContentValues;

    .line 1163
    .local v35, values:Landroid/content/ContentValues;
    const-string v3, "slide_index"

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v25

    .line 1164
    .local v25, pos:I
    const-string v3, "slide_total"

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v34

    .line 1165
    .local v34, total:I
    const-string v3, "dur"

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 1166
    .local v13, dur:I
    new-instance v16, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageActivity;->mAppContext:Landroid/content/Context;

    const-class v6, Lcom/android/mms/ui/EditSlideDurationActivity;

    move-object/from16 v0, v16

    invoke-direct {v0, v3, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1167
    .local v16, intent1:Landroid/content/Intent;
    const-string v3, "slide_index"

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1168
    const-string v3, "slide_total"

    move-object/from16 v0, v16

    move/from16 v1, v34

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1169
    const-string v3, "dur"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1170
    const/4 v3, -0x1

    move/from16 v0, v25

    if-ne v0, v3, :cond_14

    .line 1171
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/16 v6, 0x37

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1173
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/16 v6, 0x36

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1177
    .end local v13           #dur:I
    .end local v16           #intent1:Landroid/content/Intent;
    .end local v25           #pos:I
    .end local v34           #total:I
    .end local v35           #values:Landroid/content/ContentValues;
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/16 v6, 0x38

    invoke-static {v3, v6}, Lcom/android/mms/ui/MessageUtils;->selectImage(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 1180
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/16 v6, 0x39

    invoke-static {v3, v6}, Lcom/android/mms/ui/MessageUtils;->selectVideo(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 1183
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/16 v6, 0x3a

    invoke-static {v3, v6}, Lcom/android/mms/ui/MessageUtils;->selectAudio(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 1186
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    if-eqz v3, :cond_0

    .line 1187
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListView;->resetPanelView()V

    .line 1188
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v6, v6, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageListView;->getHeight()I

    move-result v6

    const/16 v7, 0x3e8

    invoke-virtual {v3, v6, v7}, Lcom/android/mms/ui/MessageListView;->smoothScrollBy(II)V

    goto/16 :goto_0

    .line 1195
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageBodyEditor;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1196
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportAddSlideBefore()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1197
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->showAddSlideDialog()V
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1600(Lcom/android/mms/ui/ComposeMessageActivity;)V

    goto/16 :goto_0

    .line 1200
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageBodyEditor;

    move-result-object v3

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/android/mms/ui/MessageBodyEditor;->addNewSlide(Z)V

    goto/16 :goto_0

    .line 1208
    :sswitch_12
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1209
    .local v9, MmsSize:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgTextEditor:Lcom/android/mms/ui/MessageTextEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTextEditor;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->isResumed()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mStateWatcher:Lcom/android/mms/ui/StateWatcher;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/StateWatcher;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1211
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mStateWatcher:Lcom/android/mms/ui/StateWatcher;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/StateWatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/StateWatcher;->isMultimediaMessage()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1212
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgTextEditor:Lcom/android/mms/ui/MessageTextEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTextEditor;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/android/mms/ui/MessageTextEditor;->updateMmsSizeCounter(I)V

    goto/16 :goto_0

    .line 1213
    :cond_16
    if-gtz v9, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mStateWatcher:Lcom/android/mms/ui/StateWatcher;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/StateWatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/StateWatcher;->isMultimediaMessage()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1214
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgTextEditor:Lcom/android/mms/ui/MessageTextEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTextEditor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageTextEditor;->updateCounter()V

    goto/16 :goto_0

    .line 1225
    .end local v9           #MmsSize:I
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageBodyEditor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageBodyEditor;->recoveryMedia()V

    .line 1226
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageBodyEditor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageBodyEditor;->getText()Ljava/lang/String;

    move-result-object v5

    .line 1227
    .restart local v5       #mText:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgTextEditor:Lcom/android/mms/ui/MessageTextEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTextEditor;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgTextEditor:Lcom/android/mms/ui/MessageTextEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTextEditor;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/mms/ui/MessageTextEditor;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1232
    .end local v5           #mText:Ljava/lang/String;
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageBodyEditor;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {v6, v3}, Lcom/android/mms/ui/MessageBodyEditor;->recovery(Landroid/net/Uri;)V

    .line 1235
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v6, 0x0

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMessageUri:Landroid/net/Uri;
    invoke-static {v3, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1102(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;)Landroid/net/Uri;

    goto/16 :goto_0

    .line 1248
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageBodyEditor;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v6, v3}, Lcom/android/mms/ui/MessageBodyEditor;->clear(Z)V

    goto/16 :goto_0

    .line 1254
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mStateWatcher:Lcom/android/mms/ui/StateWatcher;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/StateWatcher;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1255
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mStateWatcher:Lcom/android/mms/ui/StateWatcher;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/StateWatcher;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->recipientsRequireMms()Z
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1800(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/mms/ui/StateWatcher;->updateHasNonSmsRecipients(Z)V

    goto/16 :goto_0

    .line 1259
    :sswitch_17
    const-string v3, "ComposeMessageActivity"

    const-string v6, "MSG_UPDATE_RECIPIENT_UI"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$100(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v3

    if-eqz v3, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$100(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/RecipientsEditor;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$100(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/RecipientsEditor;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1262
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->createRecipientText()V
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1900(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 1273
    :cond_17
    :goto_8
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThreadDetailTitleEnhance()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->isThreadMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1274
    const/16 v18, 0x0

    .line 1275
    .local v18, isGroup:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/RecipientList;->size()I

    move-result v3

    const/4 v6, 0x1

    if-le v3, v6, :cond_18

    .line 1276
    const/16 v18, 0x1

    .line 1277
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mAddressName:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2300(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/String;

    move-result-object v6

    move/from16 v0, v18

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->setAddressNamePhoto(Ljava/lang/String;Z)V
    invoke-static {v3, v6, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2400(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1265
    .end local v18           #isGroup:Z
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientButtonLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2000(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    if-eqz v3, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mStateWatcher:Lcom/android/mms/ui/StateWatcher;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/StateWatcher;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 1267
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->reDrawAllRecipientButtons()V
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2100(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 1269
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mStateWatcher:Lcom/android/mms/ui/StateWatcher;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/StateWatcher;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/RecipientList;->size()I

    move-result v3

    if-lez v3, :cond_1a

    const/4 v3, 0x1

    :goto_9
    invoke-virtual {v6, v3}, Lcom/android/mms/ui/StateWatcher;->updateHasRecipients(Z)V

    goto :goto_8

    :cond_1a
    const/4 v3, 0x0

    goto :goto_9

    .line 1285
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMegTimestampListAdapter:Lcom/android/mms/ui/MessageTimestampListAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2500(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTimestampListAdapter;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 1286
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMegTimestampListAdapter:Lcom/android/mms/ui/MessageTimestampListAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2500(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTimestampListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageTimestampListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 1287
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2600(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1288
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2600(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 1292
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/mms/ui/RecipientList$Recipient;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->syncOneRecipientButton(Lcom/android/mms/ui/RecipientList$Recipient;)V
    invoke-static {v6, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2700(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/RecipientList$Recipient;)V

    goto/16 :goto_0

    .line 1297
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgTextEditor:Lcom/android/mms/ui/MessageTextEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTextEditor;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1298
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgTextEditor:Lcom/android/mms/ui/MessageTextEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTextEditor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageTextEditor;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v12

    .line 1299
    .local v12, cur_pos:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgTextEditor:Lcom/android/mms/ui/MessageTextEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTextEditor;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/android/mms/ui/MessageTextEditor;->bringPointIntoView(I)Z

    goto/16 :goto_0

    .line 1307
    .end local v12           #cur_pos:I
    :sswitch_1b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Lcom/android/mms/msg/AbstractMessage;

    .line 1308
    .local v33, tmsg:Lcom/android/mms/msg/AbstractMessage;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v31, v0

    .line 1309
    .local v31, tblock:I
    new-instance v22, Lcom/android/mms/msg/TextMessage;

    move-object/from16 v0, v22

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/mms/msg/TextMessage;-><init>(Lcom/android/mms/msg/AbstractMessage;)V

    .line 1310
    .local v22, message:Lcom/android/mms/msg/TextMessage;
    new-instance v3, Ljava/lang/Thread;

    new-instance v6, Lcom/android/mms/ui/ComposeMessageActivity$1$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v31

    invoke-direct {v6, v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity$1$1;-><init>(Lcom/android/mms/ui/ComposeMessageActivity$1;Lcom/android/mms/msg/TextMessage;I)V

    invoke-direct {v3, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 1320
    .end local v22           #message:Lcom/android/mms/msg/TextMessage;
    .end local v31           #tblock:I
    .end local v33           #tmsg:Lcom/android/mms/msg/AbstractMessage;
    :sswitch_1c
    const-string v3, "ComposeMessageActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "do cancel notification> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    .line 1329
    .local v32, tid:I
    new-instance v3, Ljava/lang/Thread;

    new-instance v6, Lcom/android/mms/ui/ComposeMessageActivity$1$2;

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v6, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$1$2;-><init>(Lcom/android/mms/ui/ComposeMessageActivity$1;I)V

    invoke-direct {v3, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 1344
    .end local v32           #tid:I
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v6, 0x0

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->addMakeCallQuicklyOptionMenuIfNeed(Landroid/view/Menu;)I
    invoke-static {v3, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2900(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/view/Menu;)I

    move-result v20

    .line 1346
    .local v20, m_callType:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditorPanel:Lcom/android/mms/ui/MessageEditorPanel;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageEditorPanel;

    move-result-object v3

    if-eqz v3, :cond_1e

    const/4 v3, 0x1

    move/from16 v0, v20

    if-ne v0, v3, :cond_1e

    sget-object v3, Lcom/android/mms/ui/ComposeMessageActivity;->numberarray:[Ljava/lang/String;

    if-eqz v3, :cond_1e

    sget-object v3, Lcom/android/mms/ui/ComposeMessageActivity;->numberarray:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_1e

    sget v3, Lcom/android/mms/ui/ComposeMessageActivity;->recipient_defaultsel:I

    sget-object v6, Lcom/android/mms/ui/ComposeMessageActivity;->numberarray:[Ljava/lang/String;

    array-length v6, v6

    if-ge v3, v6, :cond_1e

    .line 1349
    sget-object v3, Lcom/android/mms/ui/ComposeMessageActivity;->numberarray:[Ljava/lang/String;

    sget v6, Lcom/android/mms/ui/ComposeMessageActivity;->recipient_defaultsel:I

    aget-object v27, v3, v6

    .line 1351
    .local v27, sel_value:Ljava/lang/String;
    sget-object v3, Lcom/android/mms/ui/ComposeMessageActivity;->menuitemarray:[Ljava/lang/String;

    sget v6, Lcom/android/mms/ui/ComposeMessageActivity;->recipient_defaultsel:I

    aget-object v26, v3, v6

    .line 1352
    .local v26, sel_menu_value:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mTitleDropdownListAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3000(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/BaseAdapter;

    move-result-object v3

    if-eqz v3, :cond_1c

    .line 1353
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mTitleDropdownListAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3000(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/BaseAdapter;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/MultiAddressDropDownListAdapter;

    sget v6, Lcom/android/mms/ui/ComposeMessageActivity;->recipient_defaultsel:I

    invoke-virtual {v3, v6}, Lcom/android/mms/ui/MultiAddressDropDownListAdapter;->setDefaultAddress(I)V

    .line 1356
    :cond_1c
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportReplyNumberIndicator()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1357
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditorPanel:Lcom/android/mms/ui/MessageEditorPanel;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageEditorPanel;

    move-result-object v3

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/android/mms/ui/MessageEditorPanel;->showReplyIndicatorView(Z)V

    .line 1358
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditorPanel:Lcom/android/mms/ui/MessageEditorPanel;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageEditorPanel;

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v3, v0, v6}, Lcom/android/mms/ui/MessageEditorPanel;->setReplyNumber(Ljava/lang/String;Z)V

    .line 1359
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditorHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v3

    const/16 v6, 0xf

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1373
    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, v26

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->setMultipleAddressTitle(Ljava/lang/String;)V
    invoke-static {v3, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3200(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;)V

    .line 1374
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mTitleDropdownListAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3000(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/BaseAdapter;

    move-result-object v3

    if-eqz v3, :cond_1e

    .line 1375
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mTitleDropdownListAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3000(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/BaseAdapter;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/MultiAddressDropDownListAdapter;

    sget-object v6, Lcom/android/mms/ui/ComposeMessageActivity;->menuitemarray:[Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/android/mms/ui/MultiAddressDropDownListAdapter;->setValue(Ljava/lang/Object;)V

    .line 1380
    .end local v26           #sel_menu_value:Ljava/lang/String;
    .end local v27           #sel_value:Ljava/lang/String;
    :cond_1e
    if-nez v20, :cond_0

    sget-object v3, Lcom/android/mms/ui/ComposeMessageActivity;->numberarray:[Ljava/lang/String;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/mms/ui/ComposeMessageActivity;->numberarray:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_0

    .line 1381
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    sget-object v6, Lcom/android/mms/ui/ComposeMessageActivity;->numberarray:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->setBubbleStyleHeader(Ljava/lang/String;)V
    invoke-static {v3, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3300(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1387
    .end local v20           #m_callType:I
    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditorPanel:Lcom/android/mms/ui/MessageEditorPanel;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageEditorPanel;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1388
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditorPanel:Lcom/android/mms/ui/MessageEditorPanel;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageEditorPanel;

    move-result-object v3

    iget-object v3, v3, Lcom/android/mms/ui/MessageEditorPanel;->mReplyNumberIndicator:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1f

    const/16 v28, 0x1

    .line 1389
    .local v28, showNum:Z
    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditorPanel:Lcom/android/mms/ui/MessageEditorPanel;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageEditorPanel;

    move-result-object v3

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Lcom/android/mms/ui/MessageEditorPanel;->setMsgEditPadding(Z)V

    goto/16 :goto_0

    .line 1388
    .end local v28           #showNum:Z
    :cond_1f
    const/16 v28, 0x0

    goto :goto_a

    .line 1396
    :sswitch_1f
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 1397
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/mms/model/MediaModel;

    .line 1398
    .restart local v4       #media:Lcom/android/mms/model/MediaModel;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgTextEditor:Lcom/android/mms/ui/MessageTextEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTextEditor;

    move-result-object v3

    if-nez v3, :cond_23

    const-string v5, ""

    .line 1400
    .restart local v5       #mText:Ljava/lang/String;
    :goto_b
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportConvertToRelatedForSingleFile()Z

    move-result v11

    .line 1401
    .local v11, bForceConvert:Z
    if-eqz v5, :cond_20

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_21

    :cond_20
    if-eqz v11, :cond_25

    :cond_21
    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->isVCard()Z

    move-result v3

    if-nez v3, :cond_25

    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->isVCalendar()Z

    move-result v3

    if-nez v3, :cond_25

    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->isLocation()Z

    move-result v3

    if-nez v3, :cond_25

    .line 1405
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageBodyEditor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageBodyEditor;->isEmptySlide()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1406
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageBodyEditor;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/android/mms/ui/MessageBodyEditor;->clear(Z)V

    .line 1407
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingHandler:Lcom/android/mms/ui/ComposeMessageActivity$WorkingHandler;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3400(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/ComposeMessageActivity$WorkingHandler;

    move-result-object v3

    const/16 v6, 0x4eea

    invoke-virtual {v3, v6, v4}, Lcom/android/mms/ui/ComposeMessageActivity$WorkingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    .line 1408
    .local v23, newmsg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingHandler:Lcom/android/mms/ui/ComposeMessageActivity$WorkingHandler;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3400(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/ComposeMessageActivity$WorkingHandler;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/android/mms/ui/ComposeMessageActivity$WorkingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1443
    .end local v23           #newmsg:Landroid/os/Message;
    :cond_22
    :goto_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSendMessageDirect:Z
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3500(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 1445
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$100(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1446
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$100(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    goto/16 :goto_0

    .line 1398
    .end local v5           #mText:Ljava/lang/String;
    .end local v11           #bForceConvert:Z
    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgTextEditor:Lcom/android/mms/ui/MessageTextEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTextEditor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageTextEditor;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_b

    .line 1411
    .restart local v5       #mText:Ljava/lang/String;
    .restart local v11       #bForceConvert:Z
    :cond_24
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageBodyEditor;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/MessageBodyEditor;->attachMedia(Lcom/android/mms/model/MediaModel;)V

    .line 1412
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    if-eqz v3, :cond_22

    .line 1413
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListView;->resetPanelView()V

    .line 1414
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v6, v6, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageListView;->getHeight()I

    move-result v6

    const/16 v7, 0x3e8

    invoke-virtual {v3, v6, v7}, Lcom/android/mms/ui/MessageListView;->smoothScrollBy(II)V
    :try_end_1
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_c

    .line 1416
    :catch_2
    move-exception v14

    .line 1417
    .local v14, e:Lcom/android/mms/ExceedMessageSizeException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v7, 0x7f090051

    invoke-virtual {v6, v7}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v8, 0x7f090162

    invoke-virtual {v7, v8}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1421
    .end local v14           #e:Lcom/android/mms/ExceedMessageSizeException;
    :catch_3
    move-exception v14

    .line 1422
    .local v14, e:Lcom/google/android/mms/MmsException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageActivity;->mAppContext:Landroid/content/Context;

    const v6, 0x7f090060

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1425
    .end local v14           #e:Lcom/google/android/mms/MmsException;
    :catch_4
    move-exception v14

    .line 1426
    .local v14, e:Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_c

    .line 1431
    .end local v14           #e:Ljava/lang/Exception;
    :cond_25
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageBodyEditor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageBodyEditor;->clearMedia()V

    .line 1432
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageBodyEditor;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/android/mms/ui/MessageBodyEditor;->clear(Z)V

    .line 1433
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageBodyEditor;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/MessageBodyEditor;->addMedia(Lcom/android/mms/model/MediaModel;)V

    .line 1435
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    if-eqz v3, :cond_22

    .line 1436
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListView;->requestLayout()V

    goto/16 :goto_c

    .line 1451
    :cond_26
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageBodyEditor;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1452
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageBodyEditor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageBodyEditor;->setDefaultFocus()V

    goto/16 :goto_0

    .line 1463
    .end local v4           #media:Lcom/android/mms/model/MediaModel;
    .end local v5           #mText:Ljava/lang/String;
    .end local v11           #bForceConvert:Z
    :sswitch_20
    :try_start_2
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/google/android/mms/MmsException;

    if-eqz v3, :cond_27

    .line 1464
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/mms/MmsException;

    throw v3
    :try_end_2
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_6

    .line 1489
    :catch_5
    move-exception v14

    .line 1490
    .local v14, e:Lcom/android/mms/ExceedMessageSizeException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v7, 0x7f090051

    invoke-virtual {v6, v7}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v8, 0x7f090162

    invoke-virtual {v7, v8}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1465
    .end local v14           #e:Lcom/android/mms/ExceedMessageSizeException;
    :cond_27
    :try_start_3
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/android/mms/ExceedMessageSizeException;

    if-eqz v3, :cond_28

    .line 1466
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/mms/ExceedMessageSizeException;

    throw v3
    :try_end_3
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_6

    .line 1494
    :catch_6
    move-exception v14

    .line 1495
    .local v14, e:Lcom/google/android/mms/MmsException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageActivity;->mAppContext:Landroid/content/Context;

    const v6, 0x7f090060

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1467
    .end local v14           #e:Lcom/google/android/mms/MmsException;
    :cond_28
    :try_start_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/net/Uri;

    .line 1468
    .local v29, slideshowUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageBodyEditor;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Lcom/android/mms/ui/MessageBodyEditor;->setSlideshow(Landroid/net/Uri;)V

    .line 1469
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageBodyEditor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageBodyEditor;->isExceedMaxSize()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1470
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageBodyEditor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageBodyEditor;->recoveryMedia()V

    .line 1471
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageBodyEditor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageBodyEditor;->getText()Ljava/lang/String;

    move-result-object v5

    .line 1472
    .restart local v5       #mText:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_29

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgTextEditor:Lcom/android/mms/ui/MessageTextEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTextEditor;

    move-result-object v3

    if-eqz v3, :cond_29

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgTextEditor:Lcom/android/mms/ui/MessageTextEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTextEditor;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/mms/ui/MessageTextEditor;->setText(Ljava/lang/CharSequence;)V

    .line 1473
    :cond_29
    new-instance v3, Lcom/android/mms/ExceedMessageSizeException;

    invoke-direct {v3}, Lcom/android/mms/ExceedMessageSizeException;-><init>()V

    throw v3

    .line 1476
    .end local v5           #mText:Ljava/lang/String;
    :cond_2a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, v29

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMessageUri:Landroid/net/Uri;
    invoke-static {v3, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1102(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1488
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->isResumed()Z

    move-result v3

    if-nez v3, :cond_2b

    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/util/DraftCache;->refresh()V
    :try_end_4
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lcom/google/android/mms/MmsException; {:try_start_4 .. :try_end_4} :catch_6

    .line 1500
    :cond_2b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgTextEditor:Lcom/android/mms/ui/MessageTextEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTextEditor;

    move-result-object v3

    if-eqz v3, :cond_2c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgTextEditor:Lcom/android/mms/ui/MessageTextEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTextEditor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageTextEditor;->clearText()V

    .line 1501
    :cond_2c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    if-eqz v3, :cond_2d

    .line 1502
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListView;->resetPanelView()V

    .line 1503
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v6, v6, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageListView;->getHeight()I

    move-result v6

    const/16 v7, 0x3e8

    invoke-virtual {v3, v6, v7}, Lcom/android/mms/ui/MessageListView;->smoothScrollBy(II)V

    .line 1509
    :cond_2d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSendMessageDirect:Z
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3500(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 1511
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$100(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1512
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$100(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    goto/16 :goto_0

    .line 1516
    :cond_2e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageBodyEditor;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1517
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMessageBodyEditor:Lcom/android/mms/ui/MessageBodyEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageBodyEditor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageBodyEditor;->setDefaultFocus()V

    goto/16 :goto_0

    .line 1527
    .end local v29           #slideshowUri:Landroid/net/Uri;
    :sswitch_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->finish()V

    goto/16 :goto_0

    .line 1534
    :sswitch_22
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mStateWatcher:Lcom/android/mms/ui/StateWatcher;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/StateWatcher;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 1535
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mStateWatcher:Lcom/android/mms/ui/StateWatcher;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/StateWatcher;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->recipientsRequireMms()Z
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1800(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/mms/ui/StateWatcher;->updateHasNonSmsRecipients(Z)V

    .line 1536
    :cond_2f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsWatcher:Lcom/android/mms/ui/ComposeMessageActivity$RecipientsTextWatcher;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3600(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/ComposeMessageActivity$RecipientsTextWatcher;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 1537
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsWatcher:Lcom/android/mms/ui/ComposeMessageActivity$RecipientsTextWatcher;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3600(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/ComposeMessageActivity$RecipientsTextWatcher;

    move-result-object v3

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsTextWatcher;->enableTextWatcher(Z)V

    .line 1538
    :cond_30
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$100(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v3

    if-eqz v3, :cond_31

    .line 1539
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$100(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientOnKeyListener:Landroid/view/View$OnKeyListener;
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3700(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/view/View$OnKeyListener;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/mms/ui/RecipientsEditor;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1542
    :cond_31
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$100(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    .line 1543
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .line 1544
    .local v10, address:Ljava/lang/String;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1549
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$100(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/android/mms/ui/RecipientsEditor;->setText(Ljava/lang/CharSequence;)V

    .line 1550
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$100(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v3

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/mms/ui/RecipientsEditor;->setSelection(I)V
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_7

    goto/16 :goto_0

    .line 1551
    :catch_7
    move-exception v14

    .line 1552
    .local v14, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "ComposeMessageActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "indexoutofbound: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1561
    .end local v10           #address:Ljava/lang/String;
    .end local v14           #e:Ljava/lang/IndexOutOfBoundsException;
    :sswitch_23
    const-string v3, "ComposeMessageActivity"

    const-string v6, "Remove FLAG_DISMISS_KEYGUARD!"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v6, 0x40

    invoke-virtual {v3, v6}, Landroid/view/Window;->clearFlags(I)V

    goto/16 :goto_0

    .line 1566
    :sswitch_24
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v6, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1571
    :sswitch_25
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageActivity;->mAppContext:Landroid/content/Context;

    const v6, 0x7f0903e1

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1572
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$100(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    goto/16 :goto_0

    .line 1576
    :sswitch_26
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v6, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 978
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_6
        0x3 -> :sswitch_7
        0x4 -> :sswitch_8
        0x5 -> :sswitch_b
        0x6 -> :sswitch_9
        0x7 -> :sswitch_4
        0x8 -> :sswitch_2
        0x9 -> :sswitch_0
        0xa -> :sswitch_1
        0xb -> :sswitch_1a
        0xc -> :sswitch_1b
        0xd -> :sswitch_1c
        0xe -> :sswitch_1d
        0xf -> :sswitch_1e
        0x10 -> :sswitch_1f
        0x11 -> :sswitch_21
        0x12 -> :sswitch_3
        0x13 -> :sswitch_22
        0x14 -> :sswitch_20
        0x15 -> :sswitch_23
        0x16 -> :sswitch_24
        0x17 -> :sswitch_26
        0x18 -> :sswitch_25
        0x1f -> :sswitch_c
        0x20 -> :sswitch_d
        0x21 -> :sswitch_e
        0x22 -> :sswitch_f
        0x23 -> :sswitch_10
        0x24 -> :sswitch_12
        0x4d -> :sswitch_a
        0x64 -> :sswitch_13
        0x65 -> :sswitch_18
        0xc8 -> :sswitch_14
        0x12c -> :sswitch_15
        0x12d -> :sswitch_11
        0x3e8 -> :sswitch_17
        0x3e9 -> :sswitch_19
        0x3ea -> :sswitch_16
    .end sparse-switch
.end method
