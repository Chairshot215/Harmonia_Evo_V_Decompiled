.class Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$1;
.super Landroid/widget/ArrayAdapter;
.source "EditContactActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->doInBackground(Lcom/android/htccontacts/ui/EditContactActivity2;[Ljava/lang/Void;)Lcom/android/htccontacts/ui/EditContactActivity2$DialogBuilderPackage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/htccontacts/model/AccountWithDataSet;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;

.field final synthetic val$dialogInflater:Landroid/view/LayoutInflater;

.field final synthetic val$sources:Lcom/android/htccontacts/model/AccountTypeManager;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;Landroid/content/Context;ILjava/util/List;Lcom/android/htccontacts/model/AccountTypeManager;Landroid/view/LayoutInflater;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4249
    .local p4, x2:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    iput-object p1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$1;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;

    iput-object p5, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$1;->val$sources:Lcom/android/htccontacts/model/AccountTypeManager;

    iput-object p6, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$1;->val$dialogInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v10, 0x2020010

    const/4 v9, 0x0

    .line 4253
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$1;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 4254
    .local v0, account:Lcom/android/htccontacts/model/AccountWithDataSet;
    iget-object v6, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$1;->val$sources:Lcom/android/htccontacts/model/AccountTypeManager;

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/htccontacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountType;

    move-result-object v2

    .line 4257
    .local v2, source:Lcom/android/htccontacts/model/AccountType;
    iget-object v6, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$1;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;

    #getter for: Lcom/android/htccontacts/util/WeakAsyncTask;->mTarget:Ljava/lang/ref/WeakReference;
    invoke-static {v6}, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->access$6300(Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;)Ljava/lang/ref/WeakReference;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/ui/EditContactActivity2;

    .line 4264
    .local v3, target:Lcom/android/htccontacts/ui/EditContactActivity2;
    if-eqz v3, :cond_0

    .line 4265
    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Lcom/android/htccontacts/model/AccountType;->getDispalyAccountName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 4266
    .local v1, accountName:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4267
    iget-object v6, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$1;->val$dialogInflater:Landroid/view/LayoutInflater;

    const v7, 0x2090007

    invoke-virtual {v6, v7, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 4269
    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 4270
    .local v4, text1:Landroid/widget/TextView;
    invoke-virtual {v2, v3}, Lcom/android/htccontacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4281
    .end local v1           #accountName:Ljava/lang/CharSequence;
    .end local v4           #text1:Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-object p2

    .line 4272
    .restart local v1       #accountName:Ljava/lang/CharSequence;
    :cond_1
    iget-object v6, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$1;->val$dialogInflater:Landroid/view/LayoutInflater;

    const v7, 0x209004b

    invoke-virtual {v6, v7, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 4275
    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 4276
    .restart local v4       #text1:Landroid/widget/TextView;
    const v6, 0x2020014

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 4277
    .local v5, text2:Landroid/widget/TextView;
    invoke-virtual {v2, v3}, Lcom/android/htccontacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4278
    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Lcom/android/htccontacts/model/AccountType;->getDispalyAccountName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
