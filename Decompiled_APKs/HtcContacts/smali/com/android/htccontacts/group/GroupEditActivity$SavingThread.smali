.class Lcom/android/htccontacts/group/GroupEditActivity$SavingThread;
.super Ljava/lang/Thread;
.source "GroupEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/group/GroupEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SavingThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/group/GroupEditActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/group/GroupEditActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 605
    iput-object p1, p0, Lcom/android/htccontacts/group/GroupEditActivity$SavingThread;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 607
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity$SavingThread;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    invoke-virtual {v1}, Lcom/android/htccontacts/group/GroupEditActivity;->ProcessRemoveAccount()V

    .line 608
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity$SavingThread;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    iget-object v1, v1, Lcom/android/htccontacts/group/GroupEditActivity;->mAction:Ljava/lang/String;

    const-string v2, "android.intent.action.INSERT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 611
    :try_start_0
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity$SavingThread;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    invoke-virtual {v1}, Lcom/android/htccontacts/group/GroupEditActivity;->doInsert()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 612
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity$SavingThread;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    #calls: Lcom/android/htccontacts/group/GroupEditActivity;->dismissProgressDialog()V
    invoke-static {v1}, Lcom/android/htccontacts/group/GroupEditActivity;->access$400(Lcom/android/htccontacts/group/GroupEditActivity;)V

    .line 637
    :cond_0
    :goto_0
    return-void

    .line 615
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity$SavingThread;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    #calls: Lcom/android/htccontacts/group/GroupEditActivity;->dismissProgressDialog()V
    invoke-static {v1}, Lcom/android/htccontacts/group/GroupEditActivity;->access$400(Lcom/android/htccontacts/group/GroupEditActivity;)V

    .line 616
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity$SavingThread;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    iget-object v1, v1, Lcom/android/htccontacts/group/GroupEditActivity;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 617
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity$SavingThread;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    const/4 v2, 0x0

    #setter for: Lcom/android/htccontacts/group/GroupEditActivity;->mIsSaving:Z
    invoke-static {v1, v2}, Lcom/android/htccontacts/group/GroupEditActivity;->access$502(Lcom/android/htccontacts/group/GroupEditActivity;Z)Z
    :try_end_0
    .catch Lcom/android/htccontacts/group/GroupEditActivity$DataInvalidException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 619
    :catch_0
    move-exception v0

    .line 620
    .local v0, e:Lcom/android/htccontacts/group/GroupEditActivity$DataInvalidException;
    const-string v1, "HtcGroupEditActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SaveButton.onClick - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/htccontacts/group/GroupEditActivity$DataInvalidException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 622
    .end local v0           #e:Lcom/android/htccontacts/group/GroupEditActivity$DataInvalidException;
    :cond_2
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity$SavingThread;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    iget-object v1, v1, Lcom/android/htccontacts/group/GroupEditActivity;->mAction:Ljava/lang/String;

    const-string v2, "android.intent.action.EDIT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 624
    :try_start_1
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity$SavingThread;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    #getter for: Lcom/android/htccontacts/group/GroupEditActivity;->mOriginalName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/htccontacts/group/GroupEditActivity;->access$1000(Lcom/android/htccontacts/group/GroupEditActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity$SavingThread;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    #getter for: Lcom/android/htccontacts/group/GroupEditActivity;->mOriginalName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/htccontacts/group/GroupEditActivity;->access$1000(Lcom/android/htccontacts/group/GroupEditActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Favorite_8656150684447252476_6727701920173350445"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 625
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity$SavingThread;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    invoke-virtual {v1}, Lcom/android/htccontacts/group/GroupEditActivity;->doUpdateFavorite()V

    .line 630
    :goto_1
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity$SavingThread;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    iget-object v2, p0, Lcom/android/htccontacts/group/GroupEditActivity$SavingThread;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    iget-object v2, v2, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/group/GroupEditActivity;->doRearrangeData(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/htccontacts/group/GroupEditActivity$DataInvalidException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 632
    :catch_1
    move-exception v0

    .line 634
    .restart local v0       #e:Lcom/android/htccontacts/group/GroupEditActivity$DataInvalidException;
    const-string v1, "HtcGroupEditActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SaveButton.onClick - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/htccontacts/group/GroupEditActivity$DataInvalidException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 627
    .end local v0           #e:Lcom/android/htccontacts/group/GroupEditActivity$DataInvalidException;
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity$SavingThread;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    invoke-virtual {v1}, Lcom/android/htccontacts/group/GroupEditActivity;->doUpdate()V
    :try_end_2
    .catch Lcom/android/htccontacts/group/GroupEditActivity$DataInvalidException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method
