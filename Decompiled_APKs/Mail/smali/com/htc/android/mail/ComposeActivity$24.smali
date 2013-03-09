.class Lcom/htc/android/mail/ComposeActivity$24;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ComposeActivity;->inputHtcContactList()V
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
    .line 3138
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 3139
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v0}, Lcom/htc/android/mail/ComposeActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3281
    :cond_0
    :goto_0
    return-void

    .line 3142
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mToAddress:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$3900(Lcom/htc/android/mail/ComposeActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/android/mail/ComposeActivity;->mShowAllToFlag:Z

    .line 3143
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mCcAddress:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$4000(Lcom/htc/android/mail/ComposeActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/android/mail/ComposeActivity;->mShowAllCcFlag:Z

    .line 3144
    :cond_3
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mBccAddress:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$4100(Lcom/htc/android/mail/ComposeActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/android/mail/ComposeActivity;->mShowAllBccFlag:Z

    .line 3150
    :cond_4
    const/4 v8, 0x0

    .line 3151
    .local v8, onlyOne:Z
    const/4 v9, 0x0

    .line 3152
    .local v9, a:Lcom/htc/android/mail/Mailaddress;
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #calls: Lcom/htc/android/mail/ComposeActivity;->getModeToCcBcc()I
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$4200(Lcom/htc/android/mail/ComposeActivity;)I

    move-result v11

    .line 3153
    .local v11, mode_:I
    const-string v13, ""

    .line 3156
    .local v13, toAddrList_:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v0, v0, Lcom/htc/android/mail/ComposeActivity;->nameList2:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 3160
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v0, v0, Lcom/htc/android/mail/ComposeActivity;->nameList2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    const/4 v8, 0x1

    .line 3162
    :goto_1
    if-eqz v8, :cond_8

    .line 3163
    new-instance v9, Lcom/htc/android/mail/Mailaddress;

    .end local v9           #a:Lcom/htc/android/mail/Mailaddress;
    invoke-direct {v9}, Lcom/htc/android/mail/Mailaddress;-><init>()V

    .line 3164
    .restart local v9       #a:Lcom/htc/android/mail/Mailaddress;
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v0, v0, Lcom/htc/android/mail/ComposeActivity;->addrList2:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v9, Lcom/htc/android/mail/Mailaddress;->mEmail:Ljava/lang/String;

    .line 3165
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v0, v0, Lcom/htc/android/mail/ComposeActivity;->nameList2:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v9, Lcom/htc/android/mail/Mailaddress;->mDisplayName:Ljava/lang/String;

    .line 3166
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mDataHandler:Lcom/htc/android/mail/ComposeActivity$DataHandler;
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$4300(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/ComposeActivity$DataHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mDataHandler:Lcom/htc/android/mail/ComposeActivity$DataHandler;
    invoke-static {v1}, Lcom/htc/android/mail/ComposeActivity;->access$4300(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/ComposeActivity$DataHandler;

    move-result-object v1

    const/16 v2, 0x100

    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #calls: Lcom/htc/android/mail/ComposeActivity;->getModeToCcBcc()I
    invoke-static {v3}, Lcom/htc/android/mail/ComposeActivity;->access$4200(Lcom/htc/android/mail/ComposeActivity;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v9}, Lcom/htc/android/mail/ComposeActivity$DataHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ComposeActivity$DataHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3167
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v1, v1, Lcom/htc/android/mail/ComposeActivity;->addrList2:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v2, v2, Lcom/htc/android/mail/ComposeActivity;->nameList2:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v3, v3, Lcom/htc/android/mail/ComposeActivity;->idList2:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v5, v5, Lcom/htc/android/mail/ComposeActivity;->midList2:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v7, 0x0

    #calls: Lcom/htc/android/mail/ComposeActivity;->setMailSapphire(Ljava/lang/String;Ljava/lang/String;JJZZ)V
    invoke-static/range {v0 .. v8}, Lcom/htc/android/mail/ComposeActivity;->access$4400(Lcom/htc/android/mail/ComposeActivity;Ljava/lang/String;Ljava/lang/String;JJZZ)V

    .line 3206
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/htc/android/mail/ComposeActivity;->nameList2:Ljava/util/ArrayList;

    .line 3207
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/htc/android/mail/ComposeActivity;->addrList2:Ljava/util/ArrayList;

    .line 3208
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/htc/android/mail/ComposeActivity;->idList2:Ljava/util/ArrayList;

    .line 3209
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/htc/android/mail/ComposeActivity;->midList2:Ljava/util/ArrayList;

    .line 3211
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v0, v0, Lcom/htc/android/mail/ComposeActivity;->nameList1:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 3215
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v0, v0, Lcom/htc/android/mail/ComposeActivity;->nameList1:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    const/4 v8, 0x1

    .line 3217
    :goto_3
    if-eqz v8, :cond_c

    .line 3218
    new-instance v9, Lcom/htc/android/mail/Mailaddress;

    .end local v9           #a:Lcom/htc/android/mail/Mailaddress;
    invoke-direct {v9}, Lcom/htc/android/mail/Mailaddress;-><init>()V

    .line 3219
    .restart local v9       #a:Lcom/htc/android/mail/Mailaddress;
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v0, v0, Lcom/htc/android/mail/ComposeActivity;->addrList1:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v9, Lcom/htc/android/mail/Mailaddress;->mEmail:Ljava/lang/String;

    .line 3220
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v0, v0, Lcom/htc/android/mail/ComposeActivity;->nameList1:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v9, Lcom/htc/android/mail/Mailaddress;->mDisplayName:Ljava/lang/String;

    .line 3221
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mDataHandler:Lcom/htc/android/mail/ComposeActivity$DataHandler;
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$4300(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/ComposeActivity$DataHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mDataHandler:Lcom/htc/android/mail/ComposeActivity$DataHandler;
    invoke-static {v1}, Lcom/htc/android/mail/ComposeActivity;->access$4300(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/ComposeActivity$DataHandler;

    move-result-object v1

    const/16 v2, 0x100

    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #calls: Lcom/htc/android/mail/ComposeActivity;->getModeToCcBcc()I
    invoke-static {v3}, Lcom/htc/android/mail/ComposeActivity;->access$4200(Lcom/htc/android/mail/ComposeActivity;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v9}, Lcom/htc/android/mail/ComposeActivity$DataHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ComposeActivity$DataHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3222
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v1, v1, Lcom/htc/android/mail/ComposeActivity;->addrList1:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v2, v2, Lcom/htc/android/mail/ComposeActivity;->nameList1:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-wide/16 v3, -0x1

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    #calls: Lcom/htc/android/mail/ComposeActivity;->setMailSapphire(Ljava/lang/String;Ljava/lang/String;JJZZ)V
    invoke-static/range {v0 .. v8}, Lcom/htc/android/mail/ComposeActivity;->access$4400(Lcom/htc/android/mail/ComposeActivity;Ljava/lang/String;Ljava/lang/String;JJZZ)V

    .line 3261
    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/htc/android/mail/ComposeActivity;->nameList1:Ljava/util/ArrayList;

    .line 3262
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/htc/android/mail/ComposeActivity;->addrList1:Ljava/util/ArrayList;

    .line 3264
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/htc/android/mail/ComposeActivity;->midList1:Ljava/util/ArrayList;

    .line 3265
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v0, v0, Lcom/htc/android/mail/ComposeActivity;->contactDlg:Lcom/htc/android/mail/dialog/MailProcessDialog;

    if-eqz v0, :cond_0

    .line 3266
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v0, v0, Lcom/htc/android/mail/ComposeActivity;->contactDlg:Lcom/htc/android/mail/dialog/MailProcessDialog;

    invoke-virtual {v0}, Lcom/htc/android/mail/dialog/MailProcessDialog;->dismiss()V

    .line 3267
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/htc/android/mail/ComposeActivity;->contactDlg:Lcom/htc/android/mail/dialog/MailProcessDialog;

    .line 3268
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    const/4 v1, 0x0

    #setter for: Lcom/htc/android/mail/ComposeActivity;->procesingInputContact:Z
    invoke-static {v0, v1}, Lcom/htc/android/mail/ComposeActivity;->access$4702(Lcom/htc/android/mail/ComposeActivity;Z)Z

    goto/16 :goto_0

    .line 3160
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 3170
    :cond_8
    const-string v13, ""

    .line 3172
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v0, v0, Lcom/htc/android/mail/ComposeActivity;->nameList2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 3173
    .local v12, size:I
    const/4 v10, 0x0

    .local v10, index:I
    :goto_5
    if-ge v10, v12, :cond_a

    .line 3175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v0, v0, Lcom/htc/android/mail/ComposeActivity;->nameList2:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v1, v1, Lcom/htc/android/mail/ComposeActivity;->addrList2:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v4, 0x0

    #calls: Lcom/htc/android/mail/ComposeActivity;->getAddrString(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    invoke-static {v3, v0, v1, v4}, Lcom/htc/android/mail/ComposeActivity;->access$4500(Lcom/htc/android/mail/ComposeActivity;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 3177
    add-int/lit8 v0, v12, -0x1

    if-eq v10, v0, :cond_9

    .line 3178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 3173
    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 3181
    :cond_a
    packed-switch v11, :pswitch_data_0

    goto/16 :goto_2

    .line 3183
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v1, v1, Lcom/htc/android/mail/ComposeActivity;->receiverList:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    const/4 v3, 0x0

    #calls: Lcom/htc/android/mail/ComposeActivity;->setReceiver(Ljava/lang/String;Landroid/widget/LinearLayout;ZI)V
    invoke-static {v0, v13, v1, v2, v3}, Lcom/htc/android/mail/ComposeActivity;->access$4600(Lcom/htc/android/mail/ComposeActivity;Ljava/lang/String;Landroid/widget/LinearLayout;ZI)V

    goto/16 :goto_2

    .line 3186
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v1, v1, Lcom/htc/android/mail/ComposeActivity;->receiverList_cc:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    const/4 v3, 0x1

    #calls: Lcom/htc/android/mail/ComposeActivity;->setReceiver(Ljava/lang/String;Landroid/widget/LinearLayout;ZI)V
    invoke-static {v0, v13, v1, v2, v3}, Lcom/htc/android/mail/ComposeActivity;->access$4600(Lcom/htc/android/mail/ComposeActivity;Ljava/lang/String;Landroid/widget/LinearLayout;ZI)V

    goto/16 :goto_2

    .line 3189
    :pswitch_2
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v1, v1, Lcom/htc/android/mail/ComposeActivity;->receiverList_bcc:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    const/4 v3, 0x2

    #calls: Lcom/htc/android/mail/ComposeActivity;->setReceiver(Ljava/lang/String;Landroid/widget/LinearLayout;ZI)V
    invoke-static {v0, v13, v1, v2, v3}, Lcom/htc/android/mail/ComposeActivity;->access$4600(Lcom/htc/android/mail/ComposeActivity;Ljava/lang/String;Landroid/widget/LinearLayout;ZI)V

    goto/16 :goto_2

    .line 3215
    .end local v10           #index:I
    .end local v12           #size:I
    :cond_b
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 3225
    :cond_c
    const-string v13, ""

    .line 3227
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v0, v0, Lcom/htc/android/mail/ComposeActivity;->nameList1:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 3228
    .restart local v12       #size:I
    const/4 v10, 0x0

    .restart local v10       #index:I
    :goto_6
    if-ge v10, v12, :cond_e

    .line 3230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v0, v0, Lcom/htc/android/mail/ComposeActivity;->nameList1:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v1, v1, Lcom/htc/android/mail/ComposeActivity;->addrList1:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v4, 0x0

    #calls: Lcom/htc/android/mail/ComposeActivity;->getAddrString(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    invoke-static {v3, v0, v1, v4}, Lcom/htc/android/mail/ComposeActivity;->access$4500(Lcom/htc/android/mail/ComposeActivity;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 3232
    add-int/lit8 v0, v12, -0x1

    if-eq v10, v0, :cond_d

    .line 3233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 3228
    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 3236
    :cond_e
    packed-switch v11, :pswitch_data_1

    goto/16 :goto_4

    .line 3238
    :pswitch_3
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v1, v1, Lcom/htc/android/mail/ComposeActivity;->receiverList:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    const/4 v3, 0x0

    #calls: Lcom/htc/android/mail/ComposeActivity;->setReceiver(Ljava/lang/String;Landroid/widget/LinearLayout;ZI)V
    invoke-static {v0, v13, v1, v2, v3}, Lcom/htc/android/mail/ComposeActivity;->access$4600(Lcom/htc/android/mail/ComposeActivity;Ljava/lang/String;Landroid/widget/LinearLayout;ZI)V

    goto/16 :goto_4

    .line 3241
    :pswitch_4
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v1, v1, Lcom/htc/android/mail/ComposeActivity;->receiverList_cc:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    const/4 v3, 0x1

    #calls: Lcom/htc/android/mail/ComposeActivity;->setReceiver(Ljava/lang/String;Landroid/widget/LinearLayout;ZI)V
    invoke-static {v0, v13, v1, v2, v3}, Lcom/htc/android/mail/ComposeActivity;->access$4600(Lcom/htc/android/mail/ComposeActivity;Ljava/lang/String;Landroid/widget/LinearLayout;ZI)V

    goto/16 :goto_4

    .line 3244
    :pswitch_5
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$24;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v1, v1, Lcom/htc/android/mail/ComposeActivity;->receiverList_bcc:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    const/4 v3, 0x2

    #calls: Lcom/htc/android/mail/ComposeActivity;->setReceiver(Ljava/lang/String;Landroid/widget/LinearLayout;ZI)V
    invoke-static {v0, v13, v1, v2, v3}, Lcom/htc/android/mail/ComposeActivity;->access$4600(Lcom/htc/android/mail/ComposeActivity;Ljava/lang/String;Landroid/widget/LinearLayout;ZI)V

    goto/16 :goto_4

    .line 3181
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 3236
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
