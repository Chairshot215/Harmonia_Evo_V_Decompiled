.class Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$2;
.super Ljava/lang/Object;
.source "EditContactActivity2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->doInBackground(Lcom/android/htccontacts/ui/EditContactActivity2;[Ljava/lang/Void;)Lcom/android/htccontacts/ui/EditContactActivity2$DialogBuilderPackage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;

.field final synthetic val$accountAdapter:Landroid/widget/ArrayAdapter;

.field final synthetic val$sources:Lcom/android/htccontacts/model/AccountTypeManager;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;Landroid/widget/ArrayAdapter;Lcom/android/htccontacts/model/AccountTypeManager;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4286
    iput-object p1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$2;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;

    iput-object p2, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$2;->val$accountAdapter:Landroid/widget/ArrayAdapter;

    iput-object p3, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$2;->val$sources:Lcom/android/htccontacts/model/AccountTypeManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 15
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 4288
    invoke-interface/range {p1 .. p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 4289
    iget-object v12, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$2;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;

    #getter for: Lcom/android/htccontacts/util/WeakAsyncTask;->mTarget:Ljava/lang/ref/WeakReference;
    invoke-static {v12}, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->access$6400(Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;)Ljava/lang/ref/WeakReference;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/ui/EditContactActivity2;

    .line 4290
    .local v1, target:Lcom/android/htccontacts/ui/EditContactActivity2;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/htccontacts/ui/EditContactActivity2;->isFinishing()Z

    move-result v12

    if-nez v12, :cond_0

    #getter for: Lcom/android/htccontacts/app/BaseActivity;->mIsDestroyed:Z
    invoke-static {v1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$6500(Lcom/android/htccontacts/ui/EditContactActivity2;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 4403
    :cond_0
    :goto_0
    return-void

    .line 4294
    :cond_1
    iget-object v12, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$2;->val$accountAdapter:Landroid/widget/ArrayAdapter;

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 4295
    .local v4, account:Lcom/android/htccontacts/model/AccountWithDataSet;
    iget-object v12, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$2;->val$sources:Lcom/android/htccontacts/model/AccountTypeManager;

    iget-object v13, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v14, v4, Lcom/android/htccontacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v12, v13, v14}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountType;

    move-result-object v11

    .line 4298
    .local v11, source:Lcom/android/htccontacts/model/AccountType;
    invoke-virtual {v11, v1}, Lcom/android/htccontacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 4363
    .local v8, accountTypeLabel:Ljava/lang/CharSequence;
    const-string v12, "com.htc.android.pcsc"

    iget-object v13, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    if-eqz v1, :cond_2

    iget-object v12, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$2;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;

    #calls: Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->showPhoneTypeAccountWarningDialog(Landroid/content/Context;)Z
    invoke-static {v12, v1}, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->access$6600(Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 4364
    iget-object v12, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$2;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;

    const/4 v13, 0x0

    #calls: Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->getPhoneTypeAccountWarningDialog(Lcom/android/htccontacts/ui/EditContactActivity2;Lcom/android/htccontacts/model/AccountWithDataSet;Z)Landroid/app/Dialog;
    invoke-static {v12, v1, v4, v13}, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->access$6700(Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;Lcom/android/htccontacts/ui/EditContactActivity2;Lcom/android/htccontacts/model/AccountWithDataSet;Z)Landroid/app/Dialog;

    move-result-object v9

    .line 4365
    .local v9, d:Landroid/app/Dialog;
    #calls: Lcom/android/htccontacts/ui/EditContactActivity2;->showAndManageDialog(Landroid/app/Dialog;)V
    invoke-static {v1, v9}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$6800(Lcom/android/htccontacts/ui/EditContactActivity2;Landroid/app/Dialog;)V

    goto :goto_0

    .line 4369
    .end local v9           #d:Landroid/app/Dialog;
    :cond_2
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;
    invoke-static {v1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$2900(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/model/EntityDeltaList;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/htccontacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/model/EntityDelta;

    .line 4370
    .local v2, oldEntity:Lcom/android/htccontacts/model/EntityDelta;
    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Lcom/android/htccontacts/ui/EditContactActivity2;->getContactsSource(I)Lcom/android/htccontacts/model/AccountType;

    move-result-object v5

    .line 4373
    .local v5, oldSource:Lcom/android/htccontacts/model/AccountType;
    invoke-static {v1, v2}, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->obtainOwnGroupTitleList(Lcom/android/htccontacts/ui/EditContactActivity2;Lcom/android/htccontacts/model/EntityDelta;)Ljava/util/ArrayList;

    move-result-object v7

    .line 4374
    .local v7, oldTitleList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;>;"
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mPhoneNameEditableHeaderView:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;
    invoke-static {v1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$1200(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->getNewDisplayName()Ljava/lang/String;

    move-result-object v6

    .line 4377
    .local v6, oldDisplayName:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$2;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;

    const/4 v13, 0x0

    #calls: Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->selectAccount(Lcom/android/htccontacts/model/AccountWithDataSet;Z)V
    invoke-static {v12, v4, v13}, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->access$6900(Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;Lcom/android/htccontacts/model/AccountWithDataSet;Z)V

    .line 4380
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;
    invoke-static {v1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$2900(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/model/EntityDeltaList;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/htccontacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/model/EntityDelta;

    .line 4381
    .local v3, newEntity:Lcom/android/htccontacts/model/EntityDelta;
    #calls: Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->processTransferToNewEntityDelta(Lcom/android/htccontacts/ui/EditContactActivity2;Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/AccountWithDataSet;Lcom/android/htccontacts/model/AccountType;Ljava/lang/String;Ljava/util/ArrayList;)V
    invoke-static/range {v1 .. v7}, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->access$7000(Lcom/android/htccontacts/ui/EditContactActivity2;Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/AccountWithDataSet;Lcom/android/htccontacts/model/AccountType;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 4390
    if-eqz v1, :cond_3

    .line 4391
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 4392
    .local v10, label:Ljava/lang/String;
    :goto_1
    invoke-virtual {v1}, Lcom/android/htccontacts/ui/EditContactActivity2;->addChangeAccountItemForInsertContact()V

    .line 4393
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mEditor:Lcom/android/htccontacts/ui/widget/ContactEditorView2;
    invoke-static {v1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$7100(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/widget/ContactEditorView2;

    move-result-object v12

    invoke-virtual {v12, v10}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->setChangeAccountItemText(Ljava/lang/String;)V

    .line 4394
    invoke-virtual {v1}, Lcom/android/htccontacts/ui/EditContactActivity2;->bindAddContactEditors()V

    .line 4395
    invoke-virtual {v1}, Lcom/android/htccontacts/ui/EditContactActivity2;->setupHeader()V

    .line 4399
    .end local v10           #label:Ljava/lang/String;
    :cond_3
    #calls: Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->processTransferGroupDataToNewEnitiy(Lcom/android/htccontacts/ui/EditContactActivity2;Lcom/android/htccontacts/model/AccountType;Lcom/android/htccontacts/model/AccountWithDataSet;Ljava/util/ArrayList;)V
    invoke-static {v1, v5, v4, v7}, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->access$7200(Lcom/android/htccontacts/ui/EditContactActivity2;Lcom/android/htccontacts/model/AccountType;Lcom/android/htccontacts/model/AccountWithDataSet;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 4391
    :cond_4
    const-string v10, ""

    goto :goto_1
.end method
