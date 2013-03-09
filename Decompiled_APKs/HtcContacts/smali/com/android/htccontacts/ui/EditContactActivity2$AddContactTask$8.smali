.class Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$8;
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
.method constructor <init>(Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;ZLcom/android/htccontacts/model/AccountWithDataSet;Lcom/android/htccontacts/ui/EditContactActivity2;Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/AccountType;Ljava/lang/String;Ljava/util/ArrayList;)V
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
    .line 4764
    iput-object p1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$8;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;

    iput-boolean p2, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$8;->val$addPhoneType:Z

    iput-object p3, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$8;->val$account:Lcom/android/htccontacts/model/AccountWithDataSet;

    iput-object p4, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$8;->val$target:Lcom/android/htccontacts/ui/EditContactActivity2;

    iput-object p5, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$8;->val$oldEntity:Lcom/android/htccontacts/model/EntityDelta;

    iput-object p6, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$8;->val$oldSource:Lcom/android/htccontacts/model/AccountType;

    iput-object p7, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$8;->val$oldDisplayName:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$8;->val$oldGroupList:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v3, 0x0

    .line 4766
    iget-boolean v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$8;->val$addPhoneType:Z

    if-eqz v0, :cond_0

    .line 4800
    :goto_0
    return-void

    .line 4772
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$8;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;

    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$8;->val$account:Lcom/android/htccontacts/model/AccountWithDataSet;

    #calls: Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->selectAccount(Lcom/android/htccontacts/model/AccountWithDataSet;Z)V
    invoke-static {v0, v1, v3}, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->access$6900(Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;Lcom/android/htccontacts/model/AccountWithDataSet;Z)V

    .line 4775
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$8;->val$target:Lcom/android/htccontacts/ui/EditContactActivity2;

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;
    invoke-static {v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$2900(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/model/EntityDeltaList;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/htccontacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/model/EntityDelta;

    .line 4776
    .local v2, newEntity:Lcom/android/htccontacts/model/EntityDelta;
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$8;->val$target:Lcom/android/htccontacts/ui/EditContactActivity2;

    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$8;->val$oldEntity:Lcom/android/htccontacts/model/EntityDelta;

    iget-object v3, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$8;->val$account:Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v4, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$8;->val$oldSource:Lcom/android/htccontacts/model/AccountType;

    iget-object v5, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$8;->val$oldDisplayName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$8;->val$oldGroupList:Ljava/util/ArrayList;

    #calls: Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->processTransferToNewEntityDelta(Lcom/android/htccontacts/ui/EditContactActivity2;Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/AccountWithDataSet;Lcom/android/htccontacts/model/AccountType;Ljava/lang/String;Ljava/util/ArrayList;)V
    invoke-static/range {v0 .. v6}, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->access$7000(Lcom/android/htccontacts/ui/EditContactActivity2;Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/AccountWithDataSet;Lcom/android/htccontacts/model/AccountType;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 4786
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$8;->val$target:Lcom/android/htccontacts/ui/EditContactActivity2;

    if-eqz v0, :cond_1

    .line 4787
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$8;->val$target:Lcom/android/htccontacts/ui/EditContactActivity2;

    invoke-virtual {v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$8;->val$account:Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$8;->val$account:Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v3, v3, Lcom/android/htccontacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/android/htccontacts/util/ContactsUtils;->showAccountLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4789
    .local v7, label:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$8;->val$target:Lcom/android/htccontacts/ui/EditContactActivity2;

    invoke-virtual {v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->addChangeAccountItemForInsertContact()V

    .line 4790
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$8;->val$target:Lcom/android/htccontacts/ui/EditContactActivity2;

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mEditor:Lcom/android/htccontacts/ui/widget/ContactEditorView2;
    invoke-static {v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$7100(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/widget/ContactEditorView2;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->setChangeAccountItemText(Ljava/lang/String;)V

    .line 4791
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$8;->val$target:Lcom/android/htccontacts/ui/EditContactActivity2;

    invoke-virtual {v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->bindAddContactEditors()V

    .line 4792
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$8;->val$target:Lcom/android/htccontacts/ui/EditContactActivity2;

    invoke-virtual {v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->setupHeader()V

    .line 4796
    .end local v7           #label:Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$8;->val$target:Lcom/android/htccontacts/ui/EditContactActivity2;

    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$8;->val$oldSource:Lcom/android/htccontacts/model/AccountType;

    iget-object v3, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$8;->val$account:Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v4, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$8;->val$oldGroupList:Ljava/util/ArrayList;

    #calls: Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->processTransferGroupDataToNewEnitiy(Lcom/android/htccontacts/ui/EditContactActivity2;Lcom/android/htccontacts/model/AccountType;Lcom/android/htccontacts/model/AccountWithDataSet;Ljava/util/ArrayList;)V
    invoke-static {v0, v1, v3, v4}, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->access$7200(Lcom/android/htccontacts/ui/EditContactActivity2;Lcom/android/htccontacts/model/AccountType;Lcom/android/htccontacts/model/AccountWithDataSet;Ljava/util/ArrayList;)V

    goto :goto_0
.end method
