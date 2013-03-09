.class Lcom/android/mms/ui/ComposeMessageActivity$52;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
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
    .line 9977
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$52;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 17
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 9979
    if-nez p2, :cond_3

    .line 9982
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportVVMTab()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9983
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9984
    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageActivity$52;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$52;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mThreadId:J
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7300(Lcom/android/mms/ui/ComposeMessageActivity;)J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ComposeMessageActivity$52;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mHtcThreadId:J
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$10500(Lcom/android/mms/ui/ComposeMessageActivity;)J

    move-result-wide v5

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-direct/range {v1 .. v8}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;JJZZ)V

    .line 9990
    .local v1, l:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageActivity$52;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v3, 0x7f0900ae

    const/4 v4, 0x0

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;IZ)V
    invoke-static {v2, v1, v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8300(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/content/DialogInterface$OnClickListener;IZ)V

    .line 10070
    .end local v1           #l:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;
    :cond_0
    :goto_1
    return-void

    .line 9986
    :cond_1
    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageActivity$52;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$52;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mThreadId:J
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7300(Lcom/android/mms/ui/ComposeMessageActivity;)J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ComposeMessageActivity$52;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mHtcThreadId:J
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$10500(Lcom/android/mms/ui/ComposeMessageActivity;)J

    move-result-wide v5

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v1 .. v8}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;JJZZ)V

    .restart local v1       #l:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;
    goto :goto_0

    .line 9988
    .end local v1           #l:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;
    :cond_2
    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageActivity$52;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$52;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->getThreadUri()Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$10600(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;Z)V

    .restart local v1       #l:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;
    goto :goto_0

    .line 9992
    .end local v1           #l:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;
    :cond_3
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_4

    .line 9994
    new-instance v16, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageActivity$52;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const-class v3, Lcom/android/mms/ui/DeleteBySelectActivity;

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 9997
    .local v16, myintent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageActivity$52;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->getThreadUri()Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$10600(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/net/Uri;

    move-result-object v12

    .line 9998
    .local v12, mBaseUri:Landroid/net/Uri;
    const-string v2, "ComposeMessageActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOptionsItemSelected MENU_SENSE20_DELETE which==1 mBaseUri= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9999
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageActivity$52;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageActivity;->mAppContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$52;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mThreadId:J
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7300(Lcom/android/mms/ui/ComposeMessageActivity;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/MessageUtils;->getAddressByThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v13

    .line 10000
    .local v13, myaddress:Ljava/lang/String;
    const-string v2, "title"

    const v3, 0x7f0902c6

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10001
    const-string v2, "uri"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 10002
    const-string v2, "projection"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$52;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->getMsgListQueryProjection()[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$10700(Lcom/android/mms/ui/ComposeMessageActivity;)[Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 10003
    const-string v2, "address"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10004
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageActivity$52;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/16 v3, 0x3d

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 10006
    .end local v12           #mBaseUri:Landroid/net/Uri;
    .end local v13           #myaddress:Ljava/lang/String;
    .end local v16           #myintent:Landroid/content/Intent;
    :cond_4
    const/4 v2, 0x2

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    .line 10008
    const-wide/16 v14, 0x0

    .line 10010
    .local v14, mycontactid:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageActivity$52;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mThreadId:J
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7300(Lcom/android/mms/ui/ComposeMessageActivity;)J

    move-result-wide v2

    const-wide/32 v4, 0x5f5e100

    cmp-long v2, v2, v4

    if-gez v2, :cond_5

    .line 10011
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageActivity$52;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mThreadId:J
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7300(Lcom/android/mms/ui/ComposeMessageActivity;)J

    move-result-wide v14

    .line 10013
    :cond_5
    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-lez v2, :cond_7

    .line 10014
    const/4 v9, 0x0

    .line 10015
    .local v9, addressList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageActivity$52;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v3, v2, Lcom/android/mms/ui/ComposeMessageActivity;->mAppContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageActivity$52;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mHtcThreadId:J
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$10500(Lcom/android/mms/ui/ComposeMessageActivity;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_6

    const/4 v2, 0x1

    :goto_2
    invoke-static {v3, v14, v15, v2}, Lcom/android/mms/ui/MessageUtils;->getContactThreadAddresses(Landroid/content/Context;JZ)Ljava/util/HashSet;

    move-result-object v9

    .line 10016
    const-string v2, "ComposeMessageActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOptionsItemSelected MENU_SENSE20_DELETE which==2 addressList= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10018
    new-instance v10, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageActivity$52;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v10, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 10019
    .local v10, alertDlg:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v2, 0x7f0902c7

    invoke-virtual {v10, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 10020
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageActivity$52;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageActivity;->PhoneNumberArray:[Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Lcom/android/mms/ui/ComposeMessageActivity$52$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/mms/ui/ComposeMessageActivity$52$1;-><init>(Lcom/android/mms/ui/ComposeMessageActivity$52;)V

    invoke-virtual {v10, v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 10026
    const v2, 0x20c015f

    new-instance v3, Lcom/android/mms/ui/ComposeMessageActivity$52$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/mms/ui/ComposeMessageActivity$52$2;-><init>(Lcom/android/mms/ui/ComposeMessageActivity$52;)V

    invoke-virtual {v10, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 10047
    const v2, 0x20c0164

    new-instance v3, Lcom/android/mms/ui/ComposeMessageActivity$52$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/mms/ui/ComposeMessageActivity$52$3;-><init>(Lcom/android/mms/ui/ComposeMessageActivity$52;)V

    invoke-virtual {v10, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 10052
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 10053
    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$52$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/mms/ui/ComposeMessageActivity$52$4;-><init>(Lcom/android/mms/ui/ComposeMessageActivity$52;)V

    invoke-virtual {v10, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 10059
    invoke-virtual {v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v11

    .line 10060
    .local v11, dlg:Landroid/app/Dialog;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageActivity$52;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mDlgArray:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$6600(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10061
    invoke-virtual {v11}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto/16 :goto_1

    .line 10015
    .end local v10           #alertDlg:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v11           #dlg:Landroid/app/Dialog;
    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    .line 10063
    .end local v9           #addressList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_7
    const-wide/16 v2, -0x1

    cmp-long v2, v14, v2

    if-eqz v2, :cond_0

    .line 10066
    const-wide/16 v2, -0x2

    cmp-long v2, v14, v2

    if-nez v2, :cond_0

    goto/16 :goto_1
.end method
