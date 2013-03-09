.class Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$7;
.super Ljava/lang/Object;
.source "EditContactActivity2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->getPhoneTypeAccountWarningDialog(Lcom/android/htccontacts/ui/EditContactActivity2;Lcom/android/htccontacts/model/AccountWithDataSet;Z)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;

.field final synthetic val$account:Lcom/android/htccontacts/model/AccountWithDataSet;

.field final synthetic val$addPhoneType:Z

.field final synthetic val$oldDisplayName:Ljava/lang/String;

.field final synthetic val$oldEntity:Lcom/android/htccontacts/model/EntityDelta;

.field final synthetic val$oldGroupList:Ljava/util/ArrayList;

.field final synthetic val$oldSource:Lcom/android/htccontacts/model/AccountType;

.field final synthetic val$target:Lcom/android/htccontacts/ui/EditContactActivity2;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;ZLcom/android/htccontacts/ui/EditContactActivity2;Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/AccountWithDataSet;Lcom/android/htccontacts/model/AccountType;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4803
    iput-object p1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$7;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;

    iput-boolean p2, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$7;->val$addPhoneType:Z

    iput-object p3, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$7;->val$target:Lcom/android/htccontacts/ui/EditContactActivity2;

    iput-object p4, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$7;->val$oldEntity:Lcom/android/htccontacts/model/EntityDelta;

    iput-object p5, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$7;->val$account:Lcom/android/htccontacts/model/AccountWithDataSet;

    iput-object p6, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$7;->val$oldSource:Lcom/android/htccontacts/model/AccountType;

    iput-object p7, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$7;->val$oldDisplayName:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$7;->val$oldGroupList:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 4805
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 4806
    iget-boolean v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$7;->val$addPhoneType:Z

    if-eqz v0, :cond_0

    .line 4807
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$7;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->mWritableAccount:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 4808
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$7;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->mWritableAccount:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4809
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$7;->val$target:Lcom/android/htccontacts/ui/EditContactActivity2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$7;->val$target:Lcom/android/htccontacts/ui/EditContactActivity2;

    invoke-virtual {v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$7;->val$target:Lcom/android/htccontacts/ui/EditContactActivity2;

    #getter for: Lcom/android/htccontacts/app/BaseActivity;->mIsDestroyed:Z
    invoke-static {v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$7900(Lcom/android/htccontacts/ui/EditContactActivity2;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4810
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$7;->val$target:Lcom/android/htccontacts/ui/EditContactActivity2;

    #calls: Lcom/android/htccontacts/ui/EditContactActivity2;->doRevertAction()Z
    invoke-static {v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$500(Lcom/android/htccontacts/ui/EditContactActivity2;)Z

    .line 4852
    :cond_0
    :goto_0
    return-void

    .line 4812
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$7;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->mWritableAccount:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v3, v0, :cond_2

    .line 4813
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$7;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->mWritableAccount:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 4814
    .local v7, account:Lcom/android/htccontacts/model/AccountWithDataSet;
    if-eqz v7, :cond_0

    const-string v0, "com.htc.android.pcsc"

    iget-object v1, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4815
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$7;->val$target:Lcom/android/htccontacts/ui/EditContactActivity2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$7;->val$target:Lcom/android/htccontacts/ui/EditContactActivity2;

    invoke-virtual {v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$7;->val$target:Lcom/android/htccontacts/ui/EditContactActivity2;

    #getter for: Lcom/android/htccontacts/app/BaseActivity;->mIsDestroyed:Z
    invoke-static {v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$8000(Lcom/android/htccontacts/ui/EditContactActivity2;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4816
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$7;->val$target:Lcom/android/htccontacts/ui/EditContactActivity2;

    #calls: Lcom/android/htccontacts/ui/EditContactActivity2;->doRevertAction()Z
    invoke-static {v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$500(Lcom/android/htccontacts/ui/EditContactActivity2;)Z

    goto :goto_0

    .line 4819
    .end local v7           #account:Lcom/android/htccontacts/model/AccountWithDataSet;
    :cond_2
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$7;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->mWritableAccount:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 4820
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$7;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;

    #calls: Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->getProperAccount()Lcom/android/htccontacts/model/AccountWithDataSet;
    invoke-static {v0}, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->access$8100(Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;)Lcom/android/htccontacts/model/AccountWithDataSet;

    move-result-object v9

    .line 4821
    .local v9, properAccount:Lcom/android/htccontacts/model/AccountWithDataSet;
    if-eqz v9, :cond_0

    .line 4823
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$7;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;

    #calls: Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->selectAccount(Lcom/android/htccontacts/model/AccountWithDataSet;Z)V
    invoke-static {v0, v9, v1}, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->access$6900(Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;Lcom/android/htccontacts/model/AccountWithDataSet;Z)V

    .line 4826
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$7;->val$target:Lcom/android/htccontacts/ui/EditContactActivity2;

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;
    invoke-static {v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$2900(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/model/EntityDeltaList;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/model/EntityDelta;

    .line 4827
    .local v2, newEntity:Lcom/android/htccontacts/model/EntityDelta;
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$7;->val$target:Lcom/android/htccontacts/ui/EditContactActivity2;

    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$7;->val$oldEntity:Lcom/android/htccontacts/model/EntityDelta;

    iget-object v3, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$7;->val$account:Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v4, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$7;->val$oldSource:Lcom/android/htccontacts/model/AccountType;

    iget-object v5, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$7;->val$oldDisplayName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$7;->val$oldGroupList:Ljava/util/ArrayList;

    #calls: Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->processTransferToNewEntityDelta(Lcom/android/htccontacts/ui/EditContactActivity2;Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/AccountWithDataSet;Lcom/android/htccontacts/model/AccountType;Ljava/lang/String;Ljava/util/ArrayList;)V
    invoke-static/range {v0 .. v6}, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->access$7000(Lcom/android/htccontacts/ui/EditContactActivity2;Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/AccountWithDataSet;Lcom/android/htccontacts/model/AccountType;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 4836
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$7;->val$target:Lcom/android/htccontacts/ui/EditContactActivity2;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$7;->val$target:Lcom/android/htccontacts/ui/EditContactActivity2;

    invoke-virtual {v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$7;->val$target:Lcom/android/htccontacts/ui/EditContactActivity2;

    #getter for: Lcom/android/htccontacts/app/BaseActivity;->mIsDestroyed:Z
    invoke-static {v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$8200(Lcom/android/htccontacts/ui/EditContactActivity2;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4837
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$7;->val$target:Lcom/android/htccontacts/ui/EditContactActivity2;

    invoke-virtual {v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v3, v9, Lcom/android/htccontacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/android/htccontacts/util/ContactsUtils;->showAccountLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4839
    .local v8, label:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$7;->val$target:Lcom/android/htccontacts/ui/EditContactActivity2;

    invoke-virtual {v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->addChangeAccountItemForInsertContact()V

    .line 4840
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$7;->val$target:Lcom/android/htccontacts/ui/EditContactActivity2;

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mEditor:Lcom/android/htccontacts/ui/widget/ContactEditorView2;
    invoke-static {v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$7100(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/widget/ContactEditorView2;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->setChangeAccountItemText(Ljava/lang/String;)V

    .line 4841
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$7;->val$target:Lcom/android/htccontacts/ui/EditContactActivity2;

    invoke-virtual {v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->bindAddContactEditors()V

    .line 4842
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$7;->val$target:Lcom/android/htccontacts/ui/EditContactActivity2;

    invoke-virtual {v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->setupHeader()V

    .line 4846
    .end local v8           #label:Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$7;->val$target:Lcom/android/htccontacts/ui/EditContactActivity2;

    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$7;->val$oldSource:Lcom/android/htccontacts/model/AccountType;

    iget-object v3, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$7;->val$account:Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v4, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$7;->val$oldGroupList:Ljava/util/ArrayList;

    #calls: Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->processTransferGroupDataToNewEnitiy(Lcom/android/htccontacts/ui/EditContactActivity2;Lcom/android/htccontacts/model/AccountType;Lcom/android/htccontacts/model/AccountWithDataSet;Ljava/util/ArrayList;)V
    invoke-static {v0, v1, v3, v4}, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->access$7200(Lcom/android/htccontacts/ui/EditContactActivity2;Lcom/android/htccontacts/model/AccountType;Lcom/android/htccontacts/model/AccountWithDataSet;Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method
