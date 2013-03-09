.class Lcom/android/htccontacts/MoveContactsActivity$1;
.super Landroid/os/Handler;
.source "MoveContactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/MoveContactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/MoveContactsActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/MoveContactsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/htccontacts/MoveContactsActivity$1;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 164
    iget v2, p1, Landroid/os/Message;->what:I

    .line 165
    .local v2, msgType:I
    packed-switch v2, :pswitch_data_0

    .line 186
    :goto_0
    return-void

    .line 167
    :pswitch_0
    iget-object v3, p0, Lcom/android/htccontacts/MoveContactsActivity$1;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    const/4 v4, 0x1

    #calls: Lcom/android/htccontacts/MoveContactsActivity;->pickAccountTypeAndName(Z)Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v3, v4}, Lcom/android/htccontacts/MoveContactsActivity;->access$200(Lcom/android/htccontacts/MoveContactsActivity;Z)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto :goto_0

    .line 170
    :pswitch_1
    iget-object v3, p0, Lcom/android/htccontacts/MoveContactsActivity$1;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    #getter for: Lcom/android/htccontacts/MoveContactsActivity;->mToAccountList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/htccontacts/MoveContactsActivity;->access$400(Lcom/android/htccontacts/MoveContactsActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/htccontacts/MoveContactsActivity$1;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    #getter for: Lcom/android/htccontacts/MoveContactsActivity;->mFromAccountIndex:I
    invoke-static {v4}, Lcom/android/htccontacts/MoveContactsActivity;->access$300(Lcom/android/htccontacts/MoveContactsActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 171
    iget-object v3, p0, Lcom/android/htccontacts/MoveContactsActivity$1;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    const/4 v4, 0x0

    #calls: Lcom/android/htccontacts/MoveContactsActivity;->pickAccountTypeAndName(Z)Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v3, v4}, Lcom/android/htccontacts/MoveContactsActivity;->access$200(Lcom/android/htccontacts/MoveContactsActivity;Z)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto :goto_0

    .line 174
    :pswitch_2
    const-string v4, "MoveContactsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "From:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/htccontacts/MoveContactsActivity$1;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    #getter for: Lcom/android/htccontacts/MoveContactsActivity;->mFromAccountList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/htccontacts/MoveContactsActivity;->access$500(Lcom/android/htccontacts/MoveContactsActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v6, p0, Lcom/android/htccontacts/MoveContactsActivity$1;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    #getter for: Lcom/android/htccontacts/MoveContactsActivity;->mFromAccountIndex:I
    invoke-static {v6}, Lcom/android/htccontacts/MoveContactsActivity;->access$300(Lcom/android/htccontacts/MoveContactsActivity;)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/MoveContactsActivity$AccountCount;

    iget-object v3, v3, Lcom/android/htccontacts/MoveContactsActivity$AccountCount;->type:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", To:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/htccontacts/MoveContactsActivity$1;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    #getter for: Lcom/android/htccontacts/MoveContactsActivity;->mToAccountList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/htccontacts/MoveContactsActivity;->access$400(Lcom/android/htccontacts/MoveContactsActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v6, p0, Lcom/android/htccontacts/MoveContactsActivity$1;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    #getter for: Lcom/android/htccontacts/MoveContactsActivity;->mToAccountIndex:I
    invoke-static {v6}, Lcom/android/htccontacts/MoveContactsActivity;->access$600(Lcom/android/htccontacts/MoveContactsActivity;)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/MoveContactsActivity$AccountCount;

    iget-object v3, v3, Lcom/android/htccontacts/MoveContactsActivity$AccountCount;->type:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v3, p0, Lcom/android/htccontacts/MoveContactsActivity$1;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    const v4, 0x7f070010

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/MoveContactsActivity;->showDialog(I)V

    goto :goto_0

    .line 178
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 179
    .local v0, displayName:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/htccontacts/MoveContactsActivity$1;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    const v5, 0x7f0a03e0

    #calls: Lcom/android/htccontacts/MoveContactsActivity;->getMovingMessage(I)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/htccontacts/MoveContactsActivity;->access$700(Lcom/android/htccontacts/MoveContactsActivity;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, message:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/htccontacts/MoveContactsActivity$1;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    #getter for: Lcom/android/htccontacts/MoveContactsActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v3}, Lcom/android/htccontacts/MoveContactsActivity;->access$800(Lcom/android/htccontacts/MoveContactsActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 183
    .end local v0           #displayName:Ljava/lang/String;
    .end local v1           #message:Ljava/lang/String;
    :pswitch_4
    iget-object v3, p0, Lcom/android/htccontacts/MoveContactsActivity$1;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    #calls: Lcom/android/htccontacts/MoveContactsActivity;->showMoveContactFinishDialog()V
    invoke-static {v3}, Lcom/android/htccontacts/MoveContactsActivity;->access$900(Lcom/android/htccontacts/MoveContactsActivity;)V

    goto/16 :goto_0

    .line 165
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
