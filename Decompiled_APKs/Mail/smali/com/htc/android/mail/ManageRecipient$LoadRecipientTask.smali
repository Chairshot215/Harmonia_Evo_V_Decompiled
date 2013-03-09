.class Lcom/htc/android/mail/ManageRecipient$LoadRecipientTask;
.super Lcom/htc/android/mail/util/DelayedProgressDialogTask;
.source "ManageRecipient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ManageRecipient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadRecipientTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/android/mail/util/DelayedProgressDialogTask",
        "<",
        "Ljava/lang/Void;",
        "Lcom/htc/android/mail/ManageRecipient;",
        "Landroid/os/Handler;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOADINTENT:I = 0x0

.field private static final SAVEINTENT:I = 0x1


# instance fields
.field mType:I

.field final synthetic this$0:Lcom/htc/android/mail/ManageRecipient;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/ManageRecipient;Lcom/htc/android/mail/ManageRecipient;Landroid/os/Handler;I)V
    .locals 0
    .parameter
    .parameter "target"
    .parameter "handler"
    .parameter "type"

    .prologue
    .line 934
    iput-object p1, p0, Lcom/htc/android/mail/ManageRecipient$LoadRecipientTask;->this$0:Lcom/htc/android/mail/ManageRecipient;

    .line 935
    invoke-direct {p0, p2, p3}, Lcom/htc/android/mail/util/DelayedProgressDialogTask;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    .line 936
    iput p4, p0, Lcom/htc/android/mail/ManageRecipient$LoadRecipientTask;->mType:I

    .line 937
    return-void
.end method


# virtual methods
.method protected bridge synthetic doHeavyTask()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 926
    invoke-virtual {p0}, Lcom/htc/android/mail/ManageRecipient$LoadRecipientTask;->doHeavyTask()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected doHeavyTask()Ljava/lang/Void;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 941
    iget-object v4, p0, Lcom/htc/android/mail/util/DelayedProgressDialogTask;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/ManageRecipient;

    .line 942
    .local v3, target:Lcom/htc/android/mail/ManageRecipient;
    if-nez v3, :cond_0

    .line 972
    :goto_0
    return-object v7

    .line 943
    :cond_0
    iget v4, p0, Lcom/htc/android/mail/ManageRecipient$LoadRecipientTask;->mType:I

    if-nez v4, :cond_1

    .line 944
    #calls: Lcom/htc/android/mail/ManageRecipient;->getReceiverList()V
    invoke-static {v3}, Lcom/htc/android/mail/ManageRecipient;->access$1700(Lcom/htc/android/mail/ManageRecipient;)V

    .line 945
    invoke-virtual {v3}, Lcom/htc/android/mail/ManageRecipient;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    #calls: Lcom/htc/android/mail/ManageRecipient;->fetchPhoto(Landroid/content/Context;)V
    invoke-static {v3, v4}, Lcom/htc/android/mail/ManageRecipient;->access$1800(Lcom/htc/android/mail/ManageRecipient;Landroid/content/Context;)V

    goto :goto_0

    .line 947
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 948
    .local v1, it:Landroid/content/Intent;
    sget-boolean v4, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v4, :cond_2

    .line 949
    const-string v4, "ManageRecipient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mLoadFinish="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    #getter for: Lcom/htc/android/mail/ManageRecipient;->mLoadFinish:Z
    invoke-static {v3}, Lcom/htc/android/mail/ManageRecipient;->access$1900(Lcom/htc/android/mail/ManageRecipient;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    :cond_2
    #getter for: Lcom/htc/android/mail/ManageRecipient;->mLoadFinish:Z
    invoke-static {v3}, Lcom/htc/android/mail/ManageRecipient;->access$1900(Lcom/htc/android/mail/ManageRecipient;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 951
    #getter for: Lcom/htc/android/mail/ManageRecipient;->toList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/android/mail/ManageRecipient;->access$900(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;

    .line 952
    .local v2, r:Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;
    const/4 v4, 0x0

    iput v4, v2, Lcom/htc/android/mail/ReceiverList;->group:I

    goto :goto_1

    .line 955
    .end local v2           #r:Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;
    :cond_3
    #getter for: Lcom/htc/android/mail/ManageRecipient;->ccList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/android/mail/ManageRecipient;->access$1200(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;

    .line 956
    .restart local v2       #r:Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;
    const/4 v4, 0x1

    iput v4, v2, Lcom/htc/android/mail/ReceiverList;->group:I

    goto :goto_2

    .line 959
    .end local v2           #r:Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;
    :cond_4
    #getter for: Lcom/htc/android/mail/ManageRecipient;->bccList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/android/mail/ManageRecipient;->access$1300(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;

    .line 960
    .restart local v2       #r:Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;
    const/4 v4, 0x2

    iput v4, v2, Lcom/htc/android/mail/ReceiverList;->group:I

    goto :goto_3

    .line 963
    .end local v2           #r:Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;
    :cond_5
    const-string v4, "to"

    #getter for: Lcom/htc/android/mail/ManageRecipient;->toList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/android/mail/ManageRecipient;->access$900(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 964
    const-string v4, "cc"

    #getter for: Lcom/htc/android/mail/ManageRecipient;->ccList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/android/mail/ManageRecipient;->access$1200(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 965
    const-string v4, "bcc"

    #getter for: Lcom/htc/android/mail/ManageRecipient;->bccList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/android/mail/ManageRecipient;->access$1300(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 966
    const-string v4, "need_reload"

    #getter for: Lcom/htc/android/mail/ManageRecipient;->mLoadFinish:Z
    invoke-static {v3}, Lcom/htc/android/mail/ManageRecipient;->access$1900(Lcom/htc/android/mail/ManageRecipient;)Z

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 970
    .end local v0           #i$:Ljava/util/Iterator;
    :goto_4
    const/4 v4, -0x1

    invoke-virtual {v3, v4, v1}, Lcom/htc/android/mail/ManageRecipient;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 968
    :cond_6
    const-string v4, "need_reload"

    #getter for: Lcom/htc/android/mail/ManageRecipient;->mLoadFinish:Z
    invoke-static {v3}, Lcom/htc/android/mail/ManageRecipient;->access$1900(Lcom/htc/android/mail/ManageRecipient;)Z

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_4
.end method

.method protected bridge synthetic doPostTask(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 926
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/ManageRecipient$LoadRecipientTask;->doPostTask(Ljava/lang/Void;)V

    return-void
.end method

.method protected doPostTask(Ljava/lang/Void;)V
    .locals 5
    .parameter "result"

    .prologue
    .line 977
    iget-object v2, p0, Lcom/htc/android/mail/util/DelayedProgressDialogTask;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/ManageRecipient;

    .line 978
    .local v0, target:Lcom/htc/android/mail/ManageRecipient;
    if-nez v0, :cond_1

    .line 998
    :cond_0
    :goto_0
    return-void

    .line 979
    :cond_1
    invoke-virtual {v0}, Lcom/htc/android/mail/ManageRecipient;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 981
    iget v2, p0, Lcom/htc/android/mail/ManageRecipient$LoadRecipientTask;->mType:I

    if-nez v2, :cond_3

    .line 983
    #getter for: Lcom/htc/android/mail/ManageRecipient;->toList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$900(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 984
    invoke-virtual {v0}, Lcom/htc/android/mail/ManageRecipient;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f0b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 990
    .local v1, tmp:Ljava/lang/String;
    :goto_1
    #getter for: Lcom/htc/android/mail/ManageRecipient;->headerBar:Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$1000(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #getter for: Lcom/htc/android/mail/ManageRecipient;->toList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$900(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;->setRightText(Ljava/lang/String;)V

    .line 991
    new-instance v2, Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;

    iget-object v3, p0, Lcom/htc/android/mail/ManageRecipient$LoadRecipientTask;->this$0:Lcom/htc/android/mail/ManageRecipient;

    invoke-virtual {v0}, Lcom/htc/android/mail/ManageRecipient;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;-><init>(Lcom/htc/android/mail/ManageRecipient;Landroid/content/Context;)V

    #setter for: Lcom/htc/android/mail/ManageRecipient;->adapter:Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;
    invoke-static {v0, v2}, Lcom/htc/android/mail/ManageRecipient;->access$602(Lcom/htc/android/mail/ManageRecipient;Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;)Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;

    .line 992
    #getter for: Lcom/htc/android/mail/ManageRecipient;->adapter:Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$600(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;

    move-result-object v2

    #getter for: Lcom/htc/android/mail/ManageRecipient;->toList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$900(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;->setList(Ljava/util/List;)V

    .line 993
    #getter for: Lcom/htc/android/mail/ManageRecipient;->adapter:Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$600(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;

    move-result-object v2

    #getter for: Lcom/htc/android/mail/ManageRecipient;->checkedList:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$800(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;->setChkList(Ljava/util/List;)V

    .line 994
    #getter for: Lcom/htc/android/mail/ManageRecipient;->listView:Lcom/htc/widget/HtcListView;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$2000(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/widget/HtcListView;

    move-result-object v2

    #getter for: Lcom/htc/android/mail/ManageRecipient;->adapter:Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$600(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 987
    .end local v1           #tmp:Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Lcom/htc/android/mail/ManageRecipient;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #tmp:Ljava/lang/String;
    goto :goto_1

    .line 996
    .end local v1           #tmp:Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Lcom/htc/android/mail/ManageRecipient;->finish()V

    goto/16 :goto_0
.end method
