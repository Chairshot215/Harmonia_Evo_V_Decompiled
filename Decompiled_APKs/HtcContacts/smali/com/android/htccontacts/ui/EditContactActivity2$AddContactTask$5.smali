.class Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$5;
.super Ljava/lang/Object;
.source "EditContactActivity2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->getWarningDialog(Lcom/android/htccontacts/ui/EditContactActivity2;Lcom/android/htccontacts/model/AccountWithDataSet;Ljava/lang/CharSequence;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;

.field final synthetic val$account:Lcom/android/htccontacts/model/AccountWithDataSet;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;Lcom/android/htccontacts/model/AccountWithDataSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4567
    iput-object p1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$5;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;

    iput-object p2, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$5;->val$account:Lcom/android/htccontacts/model/AccountWithDataSet;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 4570
    iget-object v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$5;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;

    iget-object v3, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$5;->val$account:Lcom/android/htccontacts/model/AccountWithDataSet;

    #calls: Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->selectAccount(Lcom/android/htccontacts/model/AccountWithDataSet;)V
    invoke-static {v2, v3}, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->access$7700(Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;Lcom/android/htccontacts/model/AccountWithDataSet;)V

    .line 4572
    iget-object v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$5;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;

    #getter for: Lcom/android/htccontacts/util/WeakAsyncTask;->mTarget:Ljava/lang/ref/WeakReference;
    invoke-static {v2}, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->access$7800(Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/ui/EditContactActivity2;

    .line 4573
    .local v1, target:Lcom/android/htccontacts/ui/EditContactActivity2;
    if-eqz v1, :cond_0

    .line 4576
    invoke-virtual {v1}, Lcom/android/htccontacts/ui/EditContactActivity2;->getApplication()Landroid/app/Application;

    move-result-object v2

    iget-object v3, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$5;->val$account:Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$5;->val$account:Lcom/android/htccontacts/model/AccountWithDataSet;

    iget-object v4, v4, Lcom/android/htccontacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/android/htccontacts/util/ContactsUtils;->showAccountLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4577
    .local v0, label:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/htccontacts/ui/EditContactActivity2;->addChangeAccountItemForInsertContact()V

    .line 4578
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mEditor:Lcom/android/htccontacts/ui/widget/ContactEditorView2;
    invoke-static {v1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$7100(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/widget/ContactEditorView2;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->setChangeAccountItemText(Ljava/lang/String;)V

    .line 4579
    invoke-virtual {v1}, Lcom/android/htccontacts/ui/EditContactActivity2;->bindAddContactEditors()V

    .line 4580
    invoke-virtual {v1}, Lcom/android/htccontacts/ui/EditContactActivity2;->setupHeader()V

    .line 4582
    .end local v0           #label:Ljava/lang/String;
    :cond_0
    return-void
.end method
